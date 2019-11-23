namespace SeniorSistemas.Examples.Helloworld
{
    
    /// This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
    
    using System;
    using System.Collections;
    using System.Collections.Generic;
    			
    ///<summary>
    /// Output payload for command exportPedido
    ///</summary>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("sdl", "25.1.1")]
    public class ExportPedidoOutput
    {
        
        ///<summary>
        /// TBD
        ///</summary>
        public string ExportJobId { get; set; }
        
        /// <summary>
        /// Constructor for ExportPedidoOutput
        /// </summary>
        /// <param name="exportJobId">
        ///<summary>
        /// TBD
        ///</summary>
        /// </param>
        public ExportPedidoOutput(string exportJobId)
        {
            this.ExportJobId = exportJobId;
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
