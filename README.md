# ZHNframeLayout
模仿masonry的frame布局框架
用连式编程的的方式来写frame，还是挺爽的。但是受限于frame设置的前后顺序问题，还是要遵循一些设置的先后顺序的。需要在同一个父控件里面，这样frame的设置才能够这样设置。加段代码直观感受一下。
```
    [newView ZHN_makeFrame:^(ZHNframeLayoutMaker *maker) {
        
        maker.left.eaqualTo(tempView.zhn_left).withOffset(100);
        maker.top.eaqualTo(tempView.zhn_top).withOffset(100);
        maker.weidth.zhn_eaqualTo(100);
        maker.height.zhn_eaqualTo(100);
    }];
```

