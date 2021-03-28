lbl_801EB080:
/* 801EB080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801EB084  7C 08 02 A6 */	mflr r0
/* 801EB088  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EB08C  80 63 00 54 */	lwz r3, 0x54(r3)
/* 801EB090  4B FC 3B 11 */	bl setPos__15dKantera_icon_cFff
/* 801EB094  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801EB098  7C 08 03 A6 */	mtlr r0
/* 801EB09C  38 21 00 10 */	addi r1, r1, 0x10
/* 801EB0A0  4E 80 00 20 */	blr 
