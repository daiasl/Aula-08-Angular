namespace SeniorSistemas.Examples.Helloworld
{
    
    /// This is a generated file. DO NOT EDIT ANY CODE HERE, YOUR CHANGES WILL BE LOST.
    
    /// <summary> Handler interface for listPedido.</summary>
	[System.CodeDom.Compiler.GeneratedCodeAttribute("sdl", "25.1.1")]
    public interface IListPedido
    {
    	
        ///<summary>
        /// The 'list' request primitive for the Pedido entity.
        ///</summary>
        Pedido.PagedResults ListPedido(Pedido.PageRequest request);
        
    }
}
