//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace KiMang
{
    using System;
    using System.Collections.Generic;
    
    public partial class HRMS_EMPLOYEE
    {
        public string EMPLOYEE_ID { get; set; }
        public Nullable<System.TimeSpan> TimeIn { get; set; }
        public string Working_Days { get; set; }
    
        public virtual EMPLOYEE EMPLOYEE { get; set; }
    }
}
