lbl_8028FE88:
/* 8028FE88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028FE8C  7C 08 02 A6 */	mflr r0
/* 8028FE90  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028FE94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8028FE98  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8028FE9C  7C 7E 1B 78 */	mr r30, r3
/* 8028FEA0  7C 9F 23 78 */	mr r31, r4
/* 8028FEA4  48 0A D8 51 */	bl OSDisableInterrupts
/* 8028FEA8  90 61 00 08 */	stw r3, 8(r1)
/* 8028FEAC  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 8028FEB0  41 82 00 10 */	beq lbl_8028FEC0
/* 8028FEB4  38 00 00 01 */	li r0, 1
/* 8028FEB8  98 1E 00 84 */	stb r0, 0x84(r30)
/* 8028FEBC  48 00 00 20 */	b lbl_8028FEDC
lbl_8028FEC0:
/* 8028FEC0  88 1E 00 84 */	lbz r0, 0x84(r30)
/* 8028FEC4  28 00 00 00 */	cmplwi r0, 0
/* 8028FEC8  41 82 00 0C */	beq lbl_8028FED4
/* 8028FECC  38 7E 00 7C */	addi r3, r30, 0x7c
/* 8028FED0  48 0B 1D C9 */	bl OSWakeupThread
lbl_8028FED4:
/* 8028FED4  38 00 00 00 */	li r0, 0
/* 8028FED8  98 1E 00 84 */	stb r0, 0x84(r30)
lbl_8028FEDC:
/* 8028FEDC  80 61 00 08 */	lwz r3, 8(r1)
/* 8028FEE0  48 0A D8 3D */	bl OSRestoreInterrupts
/* 8028FEE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8028FEE8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8028FEEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028FEF0  7C 08 03 A6 */	mtlr r0
/* 8028FEF4  38 21 00 20 */	addi r1, r1, 0x20
/* 8028FEF8  4E 80 00 20 */	blr 
