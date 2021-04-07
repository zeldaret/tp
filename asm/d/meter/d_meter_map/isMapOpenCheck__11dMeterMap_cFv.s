lbl_8020D900:
/* 8020D900  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020D904  7C 08 02 A6 */	mflr r0
/* 8020D908  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020D90C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8020D910  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8020D914  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 8020D918  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8020D91C  7D 89 03 A6 */	mtctr r12
/* 8020D920  4E 80 04 21 */	bctrl 
/* 8020D924  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8020D928  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 8020D92C  20 60 00 07 */	subfic r3, r0, 7
/* 8020D930  30 03 FF FF */	addic r0, r3, -1
/* 8020D934  7C 60 19 10 */	subfe r3, r0, r3
/* 8020D938  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020D93C  7C 08 03 A6 */	mtlr r0
/* 8020D940  38 21 00 10 */	addi r1, r1, 0x10
/* 8020D944  4E 80 00 20 */	blr 
