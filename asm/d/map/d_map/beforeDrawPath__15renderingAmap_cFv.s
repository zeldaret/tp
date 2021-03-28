lbl_80028960:
/* 80028960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80028964  7C 08 02 A6 */	mflr r0
/* 80028968  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002896C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80028970  7C 7F 1B 78 */	mr r31, r3
/* 80028974  48 00 02 41 */	bl isDrawOutSideTrim__15renderingAmap_cFv
/* 80028978  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8002897C  41 82 00 40 */	beq lbl_800289BC
/* 80028980  38 00 00 00 */	li r0, 0
/* 80028984  90 1F 00 38 */	stw r0, 0x38(r31)
/* 80028988  7F E3 FB 78 */	mr r3, r31
/* 8002898C  48 00 02 C1 */	bl getOutSideBlackLineNumber__15renderingAmap_cFv
lbl_80028990:
/* 80028990  7F E3 FB 78 */	mr r3, r31
/* 80028994  81 9F 00 00 */	lwz r12, 0(r31)
/* 80028998  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8002899C  7D 89 03 A6 */	mtctr r12
/* 800289A0  4E 80 04 21 */	bctrl 
/* 800289A4  7F E3 FB 78 */	mr r3, r31
/* 800289A8  48 00 02 B9 */	bl isOutSideBlackLine__15renderingAmap_cFv
/* 800289AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800289B0  40 82 FF E0 */	bne lbl_80028990
/* 800289B4  38 00 00 02 */	li r0, 2
/* 800289B8  90 1F 00 38 */	stw r0, 0x38(r31)
lbl_800289BC:
/* 800289BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800289C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800289C4  7C 08 03 A6 */	mtlr r0
/* 800289C8  38 21 00 10 */	addi r1, r1, 0x10
/* 800289CC  4E 80 00 20 */	blr 
