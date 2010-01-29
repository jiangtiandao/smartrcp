package cn.smartinvoke.smartrcp.core;

import java.util.Map;

import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.ui.part.ViewPart;

import cn.smartinvoke.gui.FlashViewer;
import cn.smartinvoke.rcp.CLayoutBasicInfo;
import cn.smartinvoke.rcp.CPerspective;
import cn.smartinvoke.util.ImageManager;

public class FlashViewPart extends ViewPart {
	public static final String ID = "cn.smartinvoke.smartrcp.core.FlashViewPart"; //$NON-NLS-1$
	private CLayoutBasicInfo layoutInfo;

	private FlashViewer flashViewer;

	@Override
	public void createPartControl(Composite parent) {
		try {
			String secondId = this.getViewSite().getSecondaryId();
			Map<Integer, CLayoutBasicInfo> layoutMap = Perspective.swfLayoutMap;
			layoutInfo = layoutMap.get(Integer.valueOf(secondId));
			String viewId = layoutInfo.getViewId();
			if (viewId != null) {
				if(layoutInfo.isModuleSwf){
				  String[] paths = new String[] {
						CPerspective.getRuntimeSWFPath(),
						CPerspective.getRuntimeSwfFolder() + "/" + viewId };
				  flashViewer = new FlashViewer(secondId, parent, paths);
				}else{
				  flashViewer = new FlashViewer(secondId, parent, CPerspective.getRuntimeSwfFolder() + "/" + viewId);
				}
				// 设置布局信息
				this.setViewTitle(layoutInfo.getTitle());
				
				// 设置图标
				if (layoutInfo.image != null) {
					ImageDescriptor imageDescriptor = ImageManager
							.getImageDescriptor(layoutInfo.image);
					if (imageDescriptor != null) {
						this.setTitleImage(imageDescriptor.createImage());
					}
				}
				//加载swf
				if(layoutInfo.autoLoad){
					flashViewer.loadFlash();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		;
	}

	public FlashViewer getFlashViewer() {
		return flashViewer;
	}
    public void setViewTitle(String title){
    	super.setPartName(title);
    }
    public String getViewTitle(){
    	return this.getPartName();
    }
	@Override
	public void setFocus() {

	}

	public void dispose() {
		//删除透视图对象中的layout信息对象
		try{
		 Perspective.swfLayoutMap.remove(Integer.valueOf(this.flashViewer.getAppId()));
		 if (this.flashViewer != null) {
			this.flashViewer.dispose();
		 }
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}