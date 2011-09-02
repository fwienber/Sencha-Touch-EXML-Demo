package com.sencha.touch.examples.tabs.config {

import ext.config.carousel;
import ext.config.list;

[ExtConfig(target="com.sencha.touch.examples.tabs.CMTabPanelBase", xtype)]
public class cmTabPanelBase extends list {

  public static native function get xtype():String;

  public function cmTabPanelBase(config:Object = null) {

    super(config || {});
  }

  public native function get attribute():String;

  public native function set attribute(value:String):void;
}
}
