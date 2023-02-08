lbl_801CF0B4:
/* 801CF0B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CF0B8  7C 08 02 A6 */	mflr r0
/* 801CF0BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CF0C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CF0C4  93 C1 00 08 */	stw r30, 8(r1)
/* 801CF0C8  7C 7E 1B 78 */	mr r30, r3
/* 801CF0CC  7C 9F 23 78 */	mr r31, r4
/* 801CF0D0  88 04 00 01 */	lbz r0, 1(r4)
/* 801CF0D4  28 00 00 04 */	cmplwi r0, 4
/* 801CF0D8  40 82 00 38 */	bne lbl_801CF110
/* 801CF0DC  38 00 00 00 */	li r0, 0
/* 801CF0E0  90 1E 00 D4 */	stw r0, 0xd4(r30)
/* 801CF0E4  48 00 00 1C */	b lbl_801CF100
lbl_801CF0E8:
/* 801CF0E8  7F C3 F3 78 */	mr r3, r30
/* 801CF0EC  7F E4 FB 78 */	mr r4, r31
/* 801CF0F0  4B E6 E2 D1 */	bl renderingDecoration__18dRenderingFDAmap_cFPCQ211dDrawPath_c10line_class
/* 801CF0F4  80 7E 00 D4 */	lwz r3, 0xd4(r30)
/* 801CF0F8  38 03 00 01 */	addi r0, r3, 1
/* 801CF0FC  90 1E 00 D4 */	stw r0, 0xd4(r30)
lbl_801CF100:
/* 801CF100  80 1E 00 D4 */	lwz r0, 0xd4(r30)
/* 801CF104  2C 00 00 02 */	cmpwi r0, 2
/* 801CF108  41 80 FF E0 */	blt lbl_801CF0E8
/* 801CF10C  48 00 00 08 */	b lbl_801CF114
lbl_801CF110:
/* 801CF110  4B E6 D8 3D */	bl rendering__11dDrawPath_cFPCQ211dDrawPath_c10line_class
lbl_801CF114:
/* 801CF114  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CF118  83 C1 00 08 */	lwz r30, 8(r1)
/* 801CF11C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CF120  7C 08 03 A6 */	mtlr r0
/* 801CF124  38 21 00 10 */	addi r1, r1, 0x10
/* 801CF128  4E 80 00 20 */	blr 
