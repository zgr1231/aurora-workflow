/*
 * Created on 2014-8-27 下午12:03:22
 * $Id$
 */
package aurora.bpm.define;

public interface IFlowElementsContainer {
    
    public void addFlowElement( IFlowElement node ); 
    
    public IFlowElement getFlowElement( String id );
    
    public void validate();

}
