using Microsoft.AspNetCore.Mvc;
using QRCoder;
using System.Drawing;
using System.IO;
using System.Linq;
using Microsoft.EntityFrameworkCore;
using GurNet.API.Models;
using static System.Net.Mime.MediaTypeNames;
using GurNet.API.models;

namespace GurNet.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class StudentsController : ControllerBase
    {
        private readonly StudentContext _context;

        public StudentsController(StudentContext context)
        {
            _context = context;
        }

        // GET: api/Students
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Student>>> GetStudents()
        {
          if (_context.Students == null)
          {
              return NotFound();
          }
            return await _context.Students.ToListAsync();
        }

        // GET: api/Students/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Student>> GetStudent(int id)
        {
            if (_context.Students == null)
            {
                return NotFound();
            }
            var student = await _context.Students.FindAsync(id);

            if (student == null)
            {
                return NotFound();
            }

            return student;
        }

        // PUT: api/Students/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutStudent(int id, Student student)
        {
            if (id != student.student_id)
            {
                return BadRequest();
            }

            _context.Entry(student).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!StudentExists(id))
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

        // POST: api/Students
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Student>> PostStudent(Student student)
        {
          if (_context.Students == null)
          {
              return Problem("Entity set 'StudentContext.Students'  is null.");
          }
            _context.Students.Add(student);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetStudent", new { id = student.student_id }, student);
        }

        // DELETE: api/Students/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteStudent(int id)
        {
            if (_context.Students == null)
            {
                return NotFound();
            }
            var student = await _context.Students.FindAsync(id);
            if (student == null)
            {
                return NotFound();
            }

            _context.Students.Remove(student);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool StudentExists(int id)
        {
            return (_context.Students?.Any(e => e.student_id == id)).GetValueOrDefault();
        }
        [HttpGet("qrcode/{id}")]
        // QrCodeGenerator by StudentUserName
        public async Task<IActionResult> GetStudentQRCode(int id) {
            if (_context.Students == null)
            {
                return NotFound();
            }
            var student = await _context.Students.FindAsync(id);
            if (student == null) {
                return NotFound();
            }
            byte[] QR = new byte[0];
            if (!string.IsNullOrEmpty(student.identification_code))
            {
                QRCodeGenerator codeGenerator = new QRCodeGenerator();
                QRCodeData data = codeGenerator.CreateQrCode(student.identification_code, QRCodeGenerator.ECCLevel.Q);
                BitmapByteQRCode bitmap = new BitmapByteQRCode(data);
                QR = bitmap.GetGraphic(20);
            }

            return File(QR, "image/png", "QRCode.png");

        }
        //[HttpGet("usfind")]
        //public async Task<Student> GetStudentByUserIdAsync(int userId)
        //{
        //    return _context.Students
        //        .Include(s => s.first_name)
        //        .Where(s => s.user. == userId);
        //}
    }
}
