//
//  canvas.h
//  AirStroke
//
//  Created by Minoru Sakurai on 2015/10/08.
//  Copyright (c) 2015年 Minoru Sakurai. All rights reserved.
//

#ifndef __AirStroke__canvas__
#define __AirStroke__canvas__

#include <stdio.h>

#include "cinder/Camera.h"
#include "takram/cinder.h"

namespace airstroke {
namespace app {

class Canvas : public takram::cinder::RunnableBase {
 public:
  // Constructors
  Canvas() = default;
  ~Canvas() = default;
  
  // takram::cinder::RunnableBase
  void setup() override;
  void exit() override;
  void update() override;
  void draw() override;
  void reshape(const ci::Area& viewport) override;
  void keyDown(const takram::cinder::KeyEvent& event) override;
  void keyUp(const takram::cinder::KeyEvent& event) override;
  void mouseDown(const takram::cinder::MouseEvent& event) override;
  void mouseUp(const takram::cinder::MouseEvent& event) override;
  void mouseDrag(const takram::cinder::MouseEvent& event) override;
  void mouseMove(const takram::cinder::MouseEvent& event) override;
  void mouseWheel(const takram::cinder::MouseEvent& event) override;
  void touchesBegin(const takram::cinder::TouchEvent& event) override;
  void touchesMove(const takram::cinder::TouchEvent& event) override;
  void touchesEnd(const takram::cinder::TouchEvent& event) override;
  void fileDrop(const takram::cinder::FileDropEvent& event) override;
//  takram::ParameterGroups exposeParameters() override;
  void parameterChange(const takram::ParameterBase& parameter) override;

 private:
  ci::CameraPersp camera_;
};

}  // namespace app
}  // namespace airstroke

#endif /* defined(__AirStroke__canvas__) */
