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
    
    public partial class TEST_RESULT_DETAILS
    {
        public int RESULT_ID { get; set; }
        public string QUESTION { get; set; }
        public string ANSWER { get; set; }
        public Nullable<bool> IS_CORRECT { get; set; }
    
        public virtual TEST_RESULT TEST_RESULT { get; set; }
    }
}
