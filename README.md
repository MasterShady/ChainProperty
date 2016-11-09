# ChainProperty

##usage

`#import "UIView+ChainProperty.h"`

```obj
    UITextField *tf1 = [UITextField new];
    [self.view addSubview:tf1];
    //必须以propertyConfigure开头
    tf1.propertyConfigure.frame(CGRectMake(0, 200, 300, 50)).backgroundColor([UIColor redColor]).text(@"whata nice day")
    .textColor([UIColor blackColor]).borderColor([UIColor yellowColor]).borderWidth(0.5).textAlignment(NSTextAlignmentCenter);
```