lbl_809DD3D8:
/* 809DD3D8  2C 04 00 00 */	cmpwi r4, 0
/* 809DD3DC  4D 80 00 20 */	bltlr 
/* 809DD3E0  2C 04 00 05 */	cmpwi r4, 5
/* 809DD3E4  4C 80 00 20 */	bgelr 
/* 809DD3E8  A8 03 0E 20 */	lha r0, 0xe20(r3)
/* 809DD3EC  7C 04 00 00 */	cmpw r4, r0
/* 809DD3F0  4D 82 00 20 */	beqlr 
/* 809DD3F4  B0 83 0E 20 */	sth r4, 0xe20(r3)
/* 809DD3F8  4E 80 00 20 */	blr 
