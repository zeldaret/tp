lbl_80145164:
/* 80145164  3C 80 80 3B */	lis r4, item_resource__10dItem_data@ha
/* 80145168  38 84 C5 A0 */	addi r4, r4, item_resource__10dItem_data@l
/* 8014516C  88 03 09 2A */	lbz r0, 0x92a(r3)
/* 80145170  1C 00 00 18 */	mulli r0, r0, 0x18
/* 80145174  7C 64 02 14 */	add r3, r4, r0
/* 80145178  88 63 00 0E */	lbz r3, 0xe(r3)
/* 8014517C  4E 80 00 20 */	blr 
