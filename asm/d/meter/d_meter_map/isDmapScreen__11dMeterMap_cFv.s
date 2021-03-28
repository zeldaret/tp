lbl_8020E70C:
/* 8020E70C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020E710  7C 08 02 A6 */	mflr r0
/* 8020E714  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020E718  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8020E71C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8020E720  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 8020E724  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8020E728  7D 89 03 A6 */	mtctr r12
/* 8020E72C  4E 80 04 21 */	bctrl 
/* 8020E730  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8020E734  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 8020E738  20 00 00 01 */	subfic r0, r0, 1
/* 8020E73C  7C 00 00 34 */	cntlzw r0, r0
/* 8020E740  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8020E744  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020E748  7C 08 03 A6 */	mtlr r0
/* 8020E74C  38 21 00 10 */	addi r1, r1, 0x10
/* 8020E750  4E 80 00 20 */	blr 
