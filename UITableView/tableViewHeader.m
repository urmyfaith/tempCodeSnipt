
/*
使用下面的方式而不是
*/

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return [[UITableViewHeaderFooterView alloc]initWithFrame:CGRectZero];
}

-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    return [[UITableViewHeaderFooterView alloc]initWithFrame:CGRectZero];
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return CGFLOAT_MIN;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return CGFLOAT_MIN;
}

/*
	不要使用下面的方式
*/

_tableView.tableFooterView = [[UITableViewHeaderFooterView alloc]initWithFrame:CGRectZero];
_tableView.tableFooterView = [[UITableViewHeaderFooterView alloc]initWithFrame:CGRectZero];



/*
tableView 自动高度的时候,不能出现下面的返回高度的函数.
*/
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44.0;
}