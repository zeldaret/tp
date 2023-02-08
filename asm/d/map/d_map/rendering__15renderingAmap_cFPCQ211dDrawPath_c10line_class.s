lbl_80028A30:
/* 80028A30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80028A34  7C 08 02 A6 */	mflr r0
/* 80028A38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80028A3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80028A40  93 C1 00 08 */	stw r30, 8(r1)
/* 80028A44  7C 7E 1B 78 */	mr r30, r3
/* 80028A48  7C 9F 23 78 */	mr r31, r4
/* 80028A4C  88 84 00 00 */	lbz r4, 0(r4)
/* 80028A50  81 83 00 00 */	lwz r12, 0(r3)
/* 80028A54  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80028A58  7D 89 03 A6 */	mtctr r12
/* 80028A5C  4E 80 04 21 */	bctrl 
/* 80028A60  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80028A64  41 82 00 88 */	beq lbl_80028AEC
/* 80028A68  7F C3 F3 78 */	mr r3, r30
/* 80028A6C  48 00 01 49 */	bl isDrawOutSideTrim__15renderingAmap_cFv
/* 80028A70  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80028A74  41 82 00 2C */	beq lbl_80028AA0
/* 80028A78  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 80028A7C  2C 00 00 02 */	cmpwi r0, 2
/* 80028A80  41 82 00 20 */	beq lbl_80028AA0
/* 80028A84  88 1F 00 01 */	lbz r0, 1(r31)
/* 80028A88  28 00 00 02 */	cmplwi r0, 2
/* 80028A8C  40 82 00 60 */	bne lbl_80028AEC
/* 80028A90  7F C3 F3 78 */	mr r3, r30
/* 80028A94  7F E4 FB 78 */	mr r4, r31
/* 80028A98  48 01 49 29 */	bl renderingDecoration__18dRenderingFDAmap_cFPCQ211dDrawPath_c10line_class
/* 80028A9C  48 00 00 50 */	b lbl_80028AEC
lbl_80028AA0:
/* 80028AA0  88 1F 00 01 */	lbz r0, 1(r31)
/* 80028AA4  28 00 00 04 */	cmplwi r0, 4
/* 80028AA8  40 82 00 38 */	bne lbl_80028AE0
/* 80028AAC  38 00 00 00 */	li r0, 0
/* 80028AB0  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 80028AB4  48 00 00 1C */	b lbl_80028AD0
lbl_80028AB8:
/* 80028AB8  7F C3 F3 78 */	mr r3, r30
/* 80028ABC  7F E4 FB 78 */	mr r4, r31
/* 80028AC0  48 01 49 01 */	bl renderingDecoration__18dRenderingFDAmap_cFPCQ211dDrawPath_c10line_class
/* 80028AC4  80 7E 00 3C */	lwz r3, 0x3c(r30)
/* 80028AC8  38 03 00 01 */	addi r0, r3, 1
/* 80028ACC  90 1E 00 3C */	stw r0, 0x3c(r30)
lbl_80028AD0:
/* 80028AD0  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 80028AD4  2C 00 00 02 */	cmpwi r0, 2
/* 80028AD8  41 80 FF E0 */	blt lbl_80028AB8
/* 80028ADC  48 00 00 10 */	b lbl_80028AEC
lbl_80028AE0:
/* 80028AE0  7F C3 F3 78 */	mr r3, r30
/* 80028AE4  7F E4 FB 78 */	mr r4, r31
/* 80028AE8  48 01 3E 65 */	bl rendering__11dDrawPath_cFPCQ211dDrawPath_c10line_class
lbl_80028AEC:
/* 80028AEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80028AF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80028AF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80028AF8  7C 08 03 A6 */	mtlr r0
/* 80028AFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80028B00  4E 80 00 20 */	blr 
