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
        [Required]
        public int entry_id { get; set; }

        [Display(Name = "Begin Time")]
        [DisplayFormat(DataFormatString = "{0:dddd, M/d/yyyy h:mm tt}")]
        [Required(ErrorMessage = "required")]
        public Nullable<System.DateTime> entry_begin_time { get; set; }

        [Display(Name = "End Time")]
        [DisplayFormat(DataFormatString = "{0:dddd, M/d/yyyy h:mm tt}")]
        [Required(ErrorMessage = "required")]
        public Nullable<System.DateTime> entry_end_time { get; set; }

        [Display(Name = "Hours")]
        public Nullable<int> entry_total_time { get; set; }

        [Display(Name = "Work Accomplished")]
        [Required(ErrorMessage = "required")]
        public string entry_work_accomplished { get; set; }

        [Display(Name = "Comment")]
        public string entry_comment { get; set; }

        [Display(Name = "Student")]
        public string entry_user_id { get; set; }

        [Display(Name = "Project")]
        [Required(ErrorMessage = "required")]
        public Nullable<int> entry_project_id { get; set; }

        [Display(Name = "Location")]
        [Required(ErrorMessage = "required")]
        public Nullable<int> entry_location_id { get; set; }

        [Display(Name = "Category")]
        [Required(ErrorMessage = "required")]
        public Nullable<int> entry_category_id { get; set; }


        public virtual CATEGORY CATEGORY { get; set; }
        public virtual LOCATION LOCATION { get; set; }
        public virtual PROJECT PROJECT { get; set; }
        public virtual USER USER { get; set; }

    }
}
