//
//  canvas.cpp
//  AirStroke
//
//  Created by Minoru Sakurai on 2015/10/08.
//  Copyright (c) 2015年 Minoru Sakurai. All rights reserved.
//

#include "airstroke/app/canvas.h"

namespace airstroke {
namespace app {
void Canvas::setup() {
  
}
void Canvas::exit() {
}
void Canvas::update() {
}
void Canvas::draw() {
  glPushAttrib(GL_ALL_ATTRIB_BITS);
  ci::gl::enableDepthRead();
  ci::gl::enableDepthWrite();
  ci::gl::pushMatrices();
  ci::gl::setMatrices(camera_);

  ci::gl::color(1, 0, 0);
  ci::gl::drawCube(ci::Vec3f::zero(), ci::Vec3f(10, 10, 10));

  ci::gl::popMatrices();
  glPopAttrib();
}
void Canvas::reshape(const ci::Area& viewport) {
  const auto aspect_ratio = static_cast<float>(viewport.x2) / viewport.y2;
  camera_.setAspectRatio(aspect_ratio);
}
void Canvas::keyDown(const takram::cinder::KeyEvent& event) {
}
void Canvas::keyUp(const takram::cinder::KeyEvent& event) {
}
void Canvas::mouseDown(const takram::cinder::MouseEvent& event) {
}
void Canvas::mouseUp(const takram::cinder::MouseEvent& event) {
}
void Canvas::mouseDrag(const takram::cinder::MouseEvent& event) {
}
void Canvas::mouseMove(const takram::cinder::MouseEvent& event) {
}
void Canvas::mouseWheel(const takram::cinder::MouseEvent& event) {
}
void Canvas::touchesBegin(const takram::cinder::TouchEvent& event) {
}
void Canvas::touchesMove(const takram::cinder::TouchEvent& event) {
}
void Canvas::touchesEnd(const takram::cinder::TouchEvent& event) {
}
void Canvas::fileDrop(const takram::cinder::FileDropEvent& event) {
}
//takram::ParameterGroups Canvas::exposeParameters() {
//}
void Canvas::parameterChange(const takram::ParameterBase& parameter) {
}
}  // namespace app
}  // namespace airstroke