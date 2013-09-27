//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace _14_TimeMachine2.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel;
    using System.ComponentModel.DataAnnotations;

    public partial class ENTRY
    {
        public int entry_id { get; set; }
        [Display(Name = "Start Time")]
        public Nullable<System.DateTime> entry_begin_time { get; set; }
        [Required]
        [Display(Name = "End Time")]
        public Nullable<System.DateTime> entry_end_time { get; set; }
        [Display(Name = "Total Time")]
        public Nullable<int> entry_total_time { get; set; }
        [Display(Name = "Work Accomplished")]
        [Required]
        public string entry_work_accomplished { get; set; }
        [Display(Name = "Comment")]
        public string entry_comment { get; set; }
        [Required]
        [Display(Name = "Student")]
        public string entry_user_id { get; set; }
        [Display(Name = "Project")]
        [Required]
        public Nullable<int> entry_project_id { get; set; }
        [Required]
        [Display(Name = "Location")]
        public Nullable<int> entry_location_id { get; set; }
        [Display(Name = "Category")]
        [Required]
        public Nullable<int> entry_category_id { get; set; }


        public virtual CATEGORY CATEGORY { get; set; }
        public virtual LOCATION LOCATION { get; set; }
        public virtual PROJECT PROJECT { get; set; }
        public virtual USER USER { get; set; }

    }
}
