package yoga;

@:jsRequire('yoga-layout')
extern enum abstract FlexDirection(Int) {
	@:native('FLEX_DIRECTION_COLUMN') var Column;
	@:native('FLEX_DIRECTION_COLUMN_REVERSE') var ColumnReverse;
	@:native('FLEX_DIRECTION_ROW') var Row;
	@:native('FLEX_DIRECTION_ROW_REVERSE') var RowReverse;
}
