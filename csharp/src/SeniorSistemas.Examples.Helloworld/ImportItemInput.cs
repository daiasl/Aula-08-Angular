namespace SeniorSistemas.Examples.Helloworld
{
    
    /// This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
    
    using System;
    using System.Collections;
    using System.Collections.Generic;
    			
    ///<summary>
    /// Input payload for command importItem
    ///</summary>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("sdl", "25.1.1")]
    public class ImportItemInput
    {
        
        ///<summary>
        /// TBD
        ///</summary>
        public ImportConfig Config { get; set; }
        
        /// <summary>
        /// Constructor for ImportItemInput
        /// </summary>
        /// <param name="config">
        ///<summary>
        /// TBD
        ///</summary>
        /// </param>
        public ImportItemInput(ImportConfig config)
        {
            this.Config = config;
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
