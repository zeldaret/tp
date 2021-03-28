lbl_8065D03C:
/* 8065D03C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8065D040  7C 08 02 A6 */	mflr r0
/* 8065D044  90 01 00 24 */	stw r0, 0x24(r1)
/* 8065D048  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8065D04C  7C 7F 1B 78 */	mr r31, r3
/* 8065D050  3C 80 80 66 */	lis r4, lit_5984@ha
/* 8065D054  38 A4 32 20 */	addi r5, r4, lit_5984@l
/* 8065D058  80 85 00 00 */	lwz r4, 0(r5)
/* 8065D05C  80 05 00 04 */	lwz r0, 4(r5)
/* 8065D060  90 81 00 08 */	stw r4, 8(r1)
/* 8065D064  90 01 00 0C */	stw r0, 0xc(r1)
/* 8065D068  80 05 00 08 */	lwz r0, 8(r5)
/* 8065D06C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8065D070  38 81 00 08 */	addi r4, r1, 8
/* 8065D074  4B FF C0 75 */	bl checkProcess__7daCow_cFM7daCow_cFPCvPv_v
/* 8065D078  2C 03 00 00 */	cmpwi r3, 0
/* 8065D07C  41 82 00 0C */	beq lbl_8065D088
/* 8065D080  38 60 00 01 */	li r3, 1
/* 8065D084  48 00 00 20 */	b lbl_8065D0A4
lbl_8065D088:
/* 8065D088  48 00 5C FD */	bl checkNowWolf__9daPy_py_cFv
/* 8065D08C  28 03 00 00 */	cmplwi r3, 0
/* 8065D090  41 82 00 10 */	beq lbl_8065D0A0
/* 8065D094  7F E3 FB 78 */	mr r3, r31
/* 8065D098  4B FF FF 25 */	bl isAngry__7daCow_cFv
/* 8065D09C  48 00 00 08 */	b lbl_8065D0A4
lbl_8065D0A0:
/* 8065D0A0  38 60 00 00 */	li r3, 0
lbl_8065D0A4:
/* 8065D0A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8065D0A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8065D0AC  7C 08 03 A6 */	mtlr r0
/* 8065D0B0  38 21 00 20 */	addi r1, r1, 0x20
/* 8065D0B4  4E 80 00 20 */	blr 
