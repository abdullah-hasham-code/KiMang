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
    
    public partial class Report_Filter
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Report_Filter()
        {
            this.Report_Filter_Mapping = new HashSet<Report_Filter_Mapping>();
        }
    
        public int Filter_ID { get; set; }
        public string Filter_Name { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Report_Filter_Mapping> Report_Filter_Mapping { get; set; }
    }
}