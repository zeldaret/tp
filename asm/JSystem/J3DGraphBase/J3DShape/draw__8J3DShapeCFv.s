lbl_803155E0:
/* 803155E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803155E4  7C 08 02 A6 */	mflr r0
/* 803155E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803155EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803155F0  7C 7F 1B 78 */	mr r31, r3
/* 803155F4  38 00 00 00 */	li r0, 0
/* 803155F8  90 0D 90 50 */	stw r0, sOldVcdVatCmd__8J3DShape(r13)
/* 803155FC  4B FF FD 05 */	bl loadPreDrawSetting__8J3DShapeCFv
/* 80315600  7F E3 FB 78 */	mr r3, r31
/* 80315604  81 9F 00 00 */	lwz r12, 0(r31)
/* 80315608  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8031560C  7D 89 03 A6 */	mtctr r12
/* 80315610  4E 80 04 21 */	bctrl 
/* 80315614  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80315618  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031561C  7C 08 03 A6 */	mtlr r0
/* 80315620  38 21 00 10 */	addi r1, r1, 0x10
/* 80315624  4E 80 00 20 */	blr 
