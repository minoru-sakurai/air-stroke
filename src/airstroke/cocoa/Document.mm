//
//  airstroke/cocoa/document.mm
//
//  MIT License
//
//  Copyright (C) 2014 Minoru Sakurai
//
//  Permission is hereby granted, free of charge, to any person obtaining a
//  copy of this software and associated documentation files (the "Software"),
//  to deal in the Software without restriction, including without limitation
//  the rights to use, copy, modify, merge, publish, distribute, sublicense,
//  and/or sell copies of the Software, and to permit persons to whom the
//  Software is furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
//  THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
//  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
//  DEALINGS IN THE SOFTWARE.
//

#import "Document.h"

#include "airstroke/app/canvas.h"

@interface Document () {
 @private
  airstroke::app::Canvas _canvas;
}

@property (nonatomic, assign) IBOutlet TDECinderView *cinderView;

@end

@implementation Document

- (instancetype)init {
    self = [super init];
    if (self) {
    // Add your subclass-specific initialization here.
    }
    return self;
}

- (void)awakeFromNib {
  [super awakeFromNib];

  [_cinderView setDelegate:self];
  
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController {
  [super windowControllerDidLoadNib:aController];
}

+ (BOOL)autosavesInPlace {
  return YES;
}

- (NSString *)windowNibName {
  return @"Document";
}

- (NSData *)dataOfType:(NSString *)typeName error:(NSError **)outError {
  [NSException raise:@"UnimplementedMethod"
              format:@"%@ is unimplemented", NSStringFromSelector(_cmd)];
  return nil;
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName
               error:(NSError **)outError {
  [NSException raise:@"UnimplementedMethod"
              format:@"%@ is unimplemented", NSStringFromSelector(_cmd)];
  return YES;
}


#pragma mark TDECinderViewDelegate

- (void)cinderViewSetup:(TDECinderView *)cinderView {
  _canvas.setup();
}

- (void)cinderViewUpdate:(TDECinderView *)cinderView {
  _canvas.update();
}

- (void)cinderViewDraw:(TDECinderView *)cinderView {
  _canvas.draw();
}

- (void)cinderView:(TDECinderView *)cinderView
           reshape:(TDECinderAreaConstRef)viewport {
  assert(viewport);
  _canvas.reshape(*TDECinderAreaCast(viewport));
}

- (void)cinderView:(TDECinderView *)cinderView
           keyDown:(TDECinderKeyEventRef)event {
  assert(event);
  _canvas.keyDown(*TDECinderKeyEventCast(event));
}

- (void)cinderView:(TDECinderView *)cinderView
             keyUp:(TDECinderKeyEventRef)event {
  assert(event);
  _canvas.keyUp(*TDECinderKeyEventCast(event));
}

- (void)cinderView:(TDECinderView *)cinderView
         mouseDown:(TDECinderMouseEventRef)event {
  assert(event);
  _canvas.mouseDown(*TDECinderMouseEventCast(event));
}

- (void)cinderView:(TDECinderView *)cinderView
           mouseUp:(TDECinderMouseEventRef)event {
  assert(event);
  _canvas.mouseUp(*TDECinderMouseEventCast(event));
}

- (void)cinderView:(TDECinderView *)cinderView
         mouseDrag:(TDECinderMouseEventRef)event {
  assert(event);
  _canvas.mouseDrag(*TDECinderMouseEventCast(event));
}

- (void)cinderView:(TDECinderView *)cinderView
         mouseMove:(TDECinderMouseEventRef)event {
  assert(event);
  _canvas.mouseMove(*TDECinderMouseEventCast(event));
}

- (void)cinderView:(TDECinderView *)cinderView
        mouseWheel:(TDECinderMouseEventRef)event {
  assert(event);
  _canvas.mouseWheel(*TDECinderMouseEventCast(event));
}

- (void)cinderView:(TDECinderView *)cinderView
      touchesBegin:(TDECinderTouchEventRef)event {
  assert(event);
  _canvas.touchesBegin(*TDECinderTouchEventCast(event));
}

- (void)cinderView:(TDECinderView *)cinderView
       touchesMove:(TDECinderTouchEventRef)event {
  assert(event);
  _canvas.touchesMove(*TDECinderTouchEventCast(event));
}

- (void)cinderView:(TDECinderView *)cinderView
        touchesEnd:(TDECinderTouchEventRef)event {
  assert(event);
  _canvas.touchesEnd(*TDECinderTouchEventCast(event));
}

- (void)cinderView:(TDECinderView *)cinderView
          fileDrop:(TDECinderFileDropEventRef)event {
  assert(event);
  _canvas.fileDrop(*TDECinderFileDropEventCast(event));
}

@end
