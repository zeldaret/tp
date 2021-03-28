lbl_80145180:
/* 80145180  3C 80 80 3B */	lis r4, item_resource__10dItem_data@ha
/* 80145184  38 84 C5 A0 */	addi r4, r4, item_resource__10dItem_data@l
/* 80145188  88 03 09 2A */	lbz r0, 0x92a(r3)
/* 8014518C  1C 00 00 18 */	mulli r0, r0, 0x18
/* 80145190  7C 64 02 14 */	add r3, r4, r0
/* 80145194  88 63 00 0F */	lbz r3, 0xf(r3)
/* 80145198  4E 80 00 20 */	blr 
