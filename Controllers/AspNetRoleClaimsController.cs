﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Project2API.Models;

namespace Project2API.Controllers
{
    [Route("api/[controller]")]
    [Authorize]
    [ApiController]
    public class AspNetRoleClaimsController : ControllerBase
    {
        private readonly ConnectedOfficeContext _context;

        public AspNetRoleClaimsController(ConnectedOfficeContext context)
        {
            _context = context;
        }

        // GET: api/AspNetRoleClaims
        [HttpGet]
        public async Task<ActionResult<IEnumerable<AspNetRoleClaims>>> GetAspNetRoleClaims()
        {
            return await _context.AspNetRoleClaims.ToListAsync();
        }

        // GET: api/AspNetRoleClaims/5
        [HttpGet("{id}")]
        public async Task<ActionResult<AspNetRoleClaims>> GetAspNetRoleClaims(int id)
        {
            var aspNetRoleClaims = await _context.AspNetRoleClaims.FindAsync(id);

            if (aspNetRoleClaims == null)
            {
                return NotFound();
            }

            return aspNetRoleClaims;
        }

        // PUT: api/AspNetRoleClaims/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPut("{id}")]
        public async Task<IActionResult> PutAspNetRoleClaims(int id, AspNetRoleClaims aspNetRoleClaims)
        {
            if (id != aspNetRoleClaims.Id)
            {
                return BadRequest();
            }

            _context.Entry(aspNetRoleClaims).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!AspNetRoleClaimsExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/AspNetRoleClaims
        // To protect from overposting attacks, enable the specific properties you want to bind to, for
        // more details, see https://go.microsoft.com/fwlink/?linkid=2123754.
        [HttpPost]
        public async Task<ActionResult<AspNetRoleClaims>> PostAspNetRoleClaims(AspNetRoleClaims aspNetRoleClaims)
        {
            _context.AspNetRoleClaims.Add(aspNetRoleClaims);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetAspNetRoleClaims", new { id = aspNetRoleClaims.Id }, aspNetRoleClaims);
        }

        // DELETE: api/AspNetRoleClaims/5
        [HttpDelete("{id}")]
        public async Task<ActionResult<AspNetRoleClaims>> DeleteAspNetRoleClaims(int id)
        {
            var aspNetRoleClaims = await _context.AspNetRoleClaims.FindAsync(id);
            if (aspNetRoleClaims == null)
            {
                return NotFound();
            }

            _context.AspNetRoleClaims.Remove(aspNetRoleClaims);
            await _context.SaveChangesAsync();

            return aspNetRoleClaims;
        }

        private bool AspNetRoleClaimsExists(int id)
        {
            return _context.AspNetRoleClaims.Any(e => e.Id == id);
        }
    }
}
