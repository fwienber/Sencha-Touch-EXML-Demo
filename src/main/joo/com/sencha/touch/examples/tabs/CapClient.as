package com.sencha.touch.examples.tabs {

import com.coremedia.cap.Cap;
import com.coremedia.cap.common.CapConnection;
import com.coremedia.cap.common.CapLoginService;
import com.coremedia.cap.common.CapSession;
import com.coremedia.cap.content.Content;
import com.coremedia.cap.user.User;
import com.sencha.touch.examples.tabs.config.main;

public class CapClient {

  public static function main():void {
    Cap.prepare(function(connection:CapConnection):void {
      var loginService:CapLoginService = connection.getLoginService();
      loginService.retrieveSession(function(session:CapSession):void {
        if (session) {
          sessionEstablished(session);
        } else {
          var userName:String = window.prompt("User name?", "test1");
          var promptMsg:String = "Password for " + userName + "?";
          loginService.login(userName, "", window.prompt(promptMsg, ""), function onLogin(session:CapSession):void {
            if (session) {
              sessionEstablished(session);
            } else {
              loginService.login(userName, "", window.prompt("Try again. " + promptMsg, ""), onLogin);
            }
          });
        }
      });
    });
  }

  private static function sessionEstablished(session:CapSession):void {
    session.getUser().load(function(user:User):void {
      user.getHomeFolder().load(function(homeFolder:Content):void {
        Main.main(com.sencha.touch.examples.tabs.config.main({ user: user.getName()}));
        
//        if (window.confirm("Current user is " + user.getName() + " with home folder " + homeFolder.getName() + ". Close now?")) {
//          session.close(function():void {
//            window.alert("Session closed.");
//          });
//        }
      });
    });
  }
}
}
