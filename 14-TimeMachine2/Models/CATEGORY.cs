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
    
    public partial class CATEGORY
    {
        public CATEGORY()
        {
            this.ENTRies = new HashSet<ENTRY>();
        }
    
        public int category_id { get; set; }
        public string category_name { get; set; }
        public System.DateTime category_created_on { get; set; }
        public string category_created_by { get; set; }
    
        public virtual ICollection<ENTRY> ENTRies { get; set; }
    }
}
