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
    
    public partial class SUBJECT
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SUBJECT()
        {
            this.STUDENT_PROGRESS = new HashSet<STUDENT_PROGRESS>();
        }
    
        public int SUBJECT_ID { get; set; }
        public string SUBJECT_NAME { get; set; }
        public Nullable<int> DEPT_ID { get; set; }
        public Nullable<int> CLASS_ID { get; set; }
    
        public virtual CLASS CLASS { get; set; }
        public virtual DEPARTMENT DEPARTMENT { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<STUDENT_PROGRESS> STUDENT_PROGRESS { get; set; }
    }
}