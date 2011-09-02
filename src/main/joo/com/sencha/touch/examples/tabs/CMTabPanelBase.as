package com.sencha.touch.examples.tabs {

import com.sencha.touch.examples.tabs.config.cmTabPanelBase;

import ext.Carousel;
import ext.Component;
import ext.Container;

import ext.Ext;
import ext.List;
import ext.Panel;
import ext.config.panel;
import ext.config.store;
import ext.data.Store;
import ext.form.Number;

public class CMTabPanelBase extends List {

  public function CMTabPanelBase(config:cmTabPanelBase = null) {

    var listStore:Store = new Store(store({
      model: 'Contact',
      sorters: 'firstName',
      getGroupString : function(record) {
        return record.get('firstName')[0];
      },
      data: [
        {firstName: 'Julio', lastName: 'Benesh', comment: 'Hallo EOP!'},
        {firstName: 'Julio', lastName: 'Minich', comment: 'Blog Krokers Look @ IT: Ist der Boom bei #Groupon & Co. vorbei? - http://bit.ly'},
        {firstName: 'Tania', lastName: 'Ricco', comment:'Fires before the orientation changes, if the monitorOrientation configuration is set to true. Return false to stop th...'},
        {firstName: 'Odessa', lastName: 'Steuck', comment:'Enable or disable the component.'},
        {firstName: 'Nelson', lastName: 'Raber', comment:'BUILD SUCCESS'},
        {firstName: 'Tyrone', lastName: 'Scannell', comment:'The requested profile "internal-licenses" could not be activated because it does not exist.'},
        {firstName: 'Allan', lastName: 'Disbrow', comment:'BUILD SUCCESS'},
        {firstName: 'Cody', lastName: 'Herrell', comment:'Fires before the component is hidden when calling the hide method. Return false from an event handler to stop the hid'},
        {firstName: 'Julio', lastName: 'Burgoyne', comment:'Enable or disable the component.'},
        {firstName: 'Jessie', lastName: 'Boedeker', comment:'BUILD SUCCESS'},
        {firstName: 'Allan', lastName: 'Leyendecker', comment:'Fires before the orientation changes, if the monitorOrientation configuration is set to true. Return false to stop th...'},
        {firstName: 'Javier', lastName: 'Lockley', comment:'BUILD SUCCESS'},
        {firstName: 'Guy', lastName: 'Reasor', comment:'BUILD SUCCESS'},
        {firstName: 'Jamie', lastName: 'Brummer', comment:'Fires before the orientation changes, if the monitorOrientation configuration is set to true. Return false to stop th...'},
        {firstName: 'Jessie', lastName: 'Casa', comment:'The requested profile "internal-licenses" could not be activated because it does not exist.'},
        {firstName: 'Marcie', lastName: 'Ricca', comment:'Fires before the component is hidden when calling the hide method. Return false from an event handler to stop the hid'},

      ]
    }));

    super(cmTabPanelBase(Ext.apply({
      store: listStore,
      itemTpl:'<div class="contact"> <font color="gray" ><strong>{firstName}</strong> {lastName}</font> | <font color="black" >{comment}</font></div>'
    }, config)));

    this.addListener("beforecardswitch", function(container:Container, newCard:Component, oldCard:Component, index:ext.form.Number, animated:Boolean):void {
      trace("switch: " + index);

//      var panelCfg:panel = new ext.config.panel({html:"asdsad"});
//      var panel:Panel = new Panel(panelCfg);
//
//      newCard = panel;
    })

  }

//  override public function next():void {
//    trace("next!");
//    super.next();
//    var panelCfg:panel = new ext.config.panel({html:"asdsad", cls:"card card1", height:500, text:"asd"});
//    var panel:Panel = new Panel(panelCfg);
//
//    this.add({text:'Button 1'});
//    this.doLayout();
//
//
//  }

  public function tracing():void {
    trace("asdasdsdsd");
  }
}
}
