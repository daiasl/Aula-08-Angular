namespace SeniorSistemas.Examples.Helloworld
{
    
    /// This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
    
    using System;
    using System.Collections;
    using System.Collections.Generic;
    			
    ///<summary>
    /// Input payload for command createBulkPedido
    ///</summary>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("sdl", "25.1.1")]
    public class CreateBulkPedidoInput
    {
        
        ///<summary>
        /// Entities for bulk creation
        ///</summary>
        public IList<Pedido> Entities { get; set; }
        
        /// <summary>
        /// Constructor for CreateBulkPedidoInput
        /// </summary>
        /// <param name="entities">
        ///<summary>
        /// Entities for bulk creation
        ///</summary>
        /// </param>
        public CreateBulkPedidoInput(IList<Pedido> entities)
        {
            this.Entities = entities;
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
