lbl_802E5E08:
/* 802E5E08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E5E0C  7C 08 02 A6 */	mflr r0
/* 802E5E10  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E5E14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E5E18  7C 7F 1B 78 */	mr r31, r3
/* 802E5E1C  48 00 00 21 */	bl drawProcessBar__10JUTProcBarFv
/* 802E5E20  7F E3 FB 78 */	mr r3, r31
/* 802E5E24  48 00 11 7D */	bl drawHeapBar__10JUTProcBarFv
/* 802E5E28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E5E2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E5E30  7C 08 03 A6 */	mtlr r0
/* 802E5E34  38 21 00 10 */	addi r1, r1, 0x10
/* 802E5E38  4E 80 00 20 */	blr 
