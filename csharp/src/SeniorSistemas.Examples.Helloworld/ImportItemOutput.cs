namespace SeniorSistemas.Examples.Helloworld
{
    
    /// This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
    
    using System;
    using System.Collections;
    using System.Collections.Generic;
    			
    ///<summary>
    /// Output payload for command importItem
    ///</summary>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("sdl", "25.1.1")]
    public class ImportItemOutput
    {
        
        ///<summary>
        /// TBD
        ///</summary>
        public string ImportJobId { get; set; }
        
        /// <summary>
        /// Constructor for ImportItemOutput
        /// </summary>
        /// <param name="importJobId">
        ///<summary>
        /// TBD
        ///</summary>
        /// </param>
        public ImportItemOutput(string importJobId)
        {
            this.ImportJobId = importJobId;
        }
        
        public virtual void Validate()
        {
        	Validate(new ArrayList());
        }
        
        internal virtual void Validate(IList validated)
        {
            HelloWorldValidator.Validate(this, validated);
        }
    }
}
