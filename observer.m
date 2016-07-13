
[self addObserver:self forKeyPath:@"self.tableView.contentOffset" options:NSKeyValueObservingOptionNew context:nil];

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context
{
    PDLog(@"%@ %@ %@ %@",keyPath,object,change,context);
}