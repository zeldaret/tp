lbl_8098F208:
/* 8098F208  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8098F20C  7C 08 02 A6 */	mflr r0
/* 8098F210  90 01 00 24 */	stw r0, 0x24(r1)
/* 8098F214  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8098F218  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8098F21C  7C 7E 1B 78 */	mr r30, r3
/* 8098F220  83 E3 09 50 */	lwz r31, 0x950(r3)
/* 8098F224  38 81 00 0C */	addi r4, r1, 0xc
/* 8098F228  38 A1 00 08 */	addi r5, r1, 8
/* 8098F22C  7F C6 F3 78 */	mr r6, r30
/* 8098F230  38 E0 00 00 */	li r7, 0
/* 8098F234  4B 7C 44 E4 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 8098F238  2C 03 00 00 */	cmpwi r3, 0
/* 8098F23C  41 82 00 4C */	beq lbl_8098F288
/* 8098F240  7F C3 F3 78 */	mr r3, r30
/* 8098F244  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8098F248  3C A0 80 99 */	lis r5, lit_4627@ha
/* 8098F24C  C0 25 19 A4 */	lfs f1, lit_4627@l(r5)
/* 8098F250  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 8098F254  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8098F258  7D 89 03 A6 */	mtctr r12
/* 8098F25C  4E 80 04 21 */	bctrl 
/* 8098F260  7F C3 F3 78 */	mr r3, r30
/* 8098F264  80 81 00 08 */	lwz r4, 8(r1)
/* 8098F268  3C A0 80 99 */	lis r5, lit_4627@ha
/* 8098F26C  C0 25 19 A4 */	lfs f1, lit_4627@l(r5)
/* 8098F270  38 A0 00 00 */	li r5, 0
/* 8098F274  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 8098F278  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8098F27C  7D 89 03 A6 */	mtctr r12
/* 8098F280  4E 80 04 21 */	bctrl 
/* 8098F284  48 00 00 20 */	b lbl_8098F2A4
lbl_8098F288:
/* 8098F288  2C 1F 00 00 */	cmpwi r31, 0
/* 8098F28C  41 82 00 18 */	beq lbl_8098F2A4
/* 8098F290  80 1E 09 50 */	lwz r0, 0x950(r30)
/* 8098F294  2C 00 00 00 */	cmpwi r0, 0
/* 8098F298  40 82 00 0C */	bne lbl_8098F2A4
/* 8098F29C  7F C3 F3 78 */	mr r3, r30
/* 8098F2A0  4B FF F8 2D */	bl setExpressionTalkAfter__11daNpcChin_cFv
lbl_8098F2A4:
/* 8098F2A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8098F2A8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8098F2AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8098F2B0  7C 08 03 A6 */	mtlr r0
/* 8098F2B4  38 21 00 20 */	addi r1, r1, 0x20
/* 8098F2B8  4E 80 00 20 */	blr 
