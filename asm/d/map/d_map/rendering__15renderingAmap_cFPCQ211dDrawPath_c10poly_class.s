lbl_80028B3C:
/* 80028B3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80028B40  7C 08 02 A6 */	mflr r0
/* 80028B44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80028B48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80028B4C  93 C1 00 08 */	stw r30, 8(r1)
/* 80028B50  7C 7E 1B 78 */	mr r30, r3
/* 80028B54  7C 9F 23 78 */	mr r31, r4
/* 80028B58  88 84 00 00 */	lbz r4, 0(r4)
/* 80028B5C  81 83 00 00 */	lwz r12, 0(r3)
/* 80028B60  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80028B64  7D 89 03 A6 */	mtctr r12
/* 80028B68  4E 80 04 21 */	bctrl 
/* 80028B6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80028B70  41 82 00 2C */	beq lbl_80028B9C
/* 80028B74  7F C3 F3 78 */	mr r3, r30
/* 80028B78  48 00 00 3D */	bl isDrawOutSideTrim__15renderingAmap_cFv
/* 80028B7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80028B80  41 82 00 10 */	beq lbl_80028B90
/* 80028B84  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 80028B88  2C 00 00 02 */	cmpwi r0, 2
/* 80028B8C  40 82 00 10 */	bne lbl_80028B9C
lbl_80028B90:
/* 80028B90  7F C3 F3 78 */	mr r3, r30
/* 80028B94  7F E4 FB 78 */	mr r4, r31
/* 80028B98  48 01 3E A9 */	bl rendering__11dDrawPath_cFPCQ211dDrawPath_c10poly_class
lbl_80028B9C:
/* 80028B9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80028BA0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80028BA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80028BA8  7C 08 03 A6 */	mtlr r0
/* 80028BAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80028BB0  4E 80 00 20 */	blr 
