package com.materialbackgroud

import android.graphics.Color
import com.facebook.react.module.annotations.ReactModule
import com.facebook.react.uimanager.SimpleViewManager
import com.facebook.react.uimanager.ThemedReactContext
import com.facebook.react.uimanager.ViewManagerDelegate
import com.facebook.react.uimanager.annotations.ReactProp
import com.facebook.react.viewmanagers.MaterialBackgroudViewManagerInterface
import com.facebook.react.viewmanagers.MaterialBackgroudViewManagerDelegate

@ReactModule(name = MaterialBackgroudViewManager.NAME)
class MaterialBackgroudViewManager : SimpleViewManager<MaterialBackgroudView>(),
  MaterialBackgroudViewManagerInterface<MaterialBackgroudView> {
  private val mDelegate: ViewManagerDelegate<MaterialBackgroudView>

  init {
    mDelegate = MaterialBackgroudViewManagerDelegate(this)
  }

  override fun getDelegate(): ViewManagerDelegate<MaterialBackgroudView>? {
    return mDelegate
  }

  override fun getName(): String {
    return NAME
  }

  public override fun createViewInstance(context: ThemedReactContext): MaterialBackgroudView {
    return MaterialBackgroudView(context)
  }

  @ReactProp(name = "color")
  override fun setColor(view: MaterialBackgroudView?, color: String?) {
    view?.setBackgroundColor(Color.parseColor(color))
  }

  companion object {
    const val NAME = "MaterialBackgroudView"
  }
}
