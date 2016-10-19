namespace COMP229_F2016_Midterm_XuemeiWang.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Todos")]
    public partial class Todo
    {
        public int TodoID { get; set; }

        [Required]
        [StringLength(50)]
        public string TodoDescription { get; set; }

        public string TodoNotes { get; set; }

        public bool Completed { get; set; }
    }
}
