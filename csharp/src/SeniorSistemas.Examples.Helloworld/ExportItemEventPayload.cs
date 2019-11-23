namespace SeniorSistemas.Examples.Helloworld
{
    
    /// This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
    
    using System;
    using System.Collections;
    using System.Collections.Generic;
    			
    ///<summary>
    /// Payload for ExportItemEventPayload
    ///</summary>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("sdl", "25.1.1")]
    public class ExportItemEventPayload
    {
        
        ///<summary>
        /// TBD
        ///</summary>
        public ExportEventStatus Eventpl { get; set; }
        
        /// <summary>
        /// Constructor for ExportItemEventPayload
        /// </summary>
        /// <param name="eventpl">
        ///<summary>
        /// TBD
        ///</summary>
        /// </param>
        public ExportItemEventPayload(ExportEventStatus eventpl)
        {
            this.Eventpl = eventpl;
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
