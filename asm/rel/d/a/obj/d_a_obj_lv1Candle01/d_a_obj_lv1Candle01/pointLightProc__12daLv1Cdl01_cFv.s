lbl_80C571C4:
/* 80C571C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C571C8  7C 08 02 A6 */	mflr r0
/* 80C571CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C571D0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C571D4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C571D8  7C 7E 1B 78 */	mr r30, r3
/* 80C571DC  3C 60 80 C5 */	lis r3, mCcDObjInfo__12daLv1Cdl01_c@ha /* 0x80C5785C@ha */
/* 80C571E0  3B E3 78 5C */	addi r31, r3, mCcDObjInfo__12daLv1Cdl01_c@l /* 0x80C5785C@l */
/* 80C571E4  88 1E 07 40 */	lbz r0, 0x740(r30)
/* 80C571E8  28 00 00 00 */	cmplwi r0, 0
/* 80C571EC  40 82 00 70 */	bne lbl_80C5725C
/* 80C571F0  80 1F 00 44 */	lwz r0, 0x44(r31)
/* 80C571F4  90 01 00 08 */	stw r0, 8(r1)
/* 80C571F8  88 1E 07 30 */	lbz r0, 0x730(r30)
/* 80C571FC  28 00 00 00 */	cmplwi r0, 0
/* 80C57200  41 82 00 20 */	beq lbl_80C57220
/* 80C57204  38 7E 07 44 */	addi r3, r30, 0x744
/* 80C57208  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80C5720C  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 80C57210  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 80C57214  C0 9F 00 50 */	lfs f4, 0x50(r31)
/* 80C57218  4B 61 87 65 */	bl cLib_addCalc__FPfffff
/* 80C5721C  48 00 00 1C */	b lbl_80C57238
lbl_80C57220:
/* 80C57220  38 7E 07 44 */	addi r3, r30, 0x744
/* 80C57224  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80C57228  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 80C5722C  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 80C57230  C0 9F 00 50 */	lfs f4, 0x50(r31)
/* 80C57234  4B 61 87 49 */	bl cLib_addCalc__FPfffff
lbl_80C57238:
/* 80C57238  C0 3E 07 44 */	lfs f1, 0x744(r30)
/* 80C5723C  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80C57240  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C57244  4C 41 13 82 */	cror 2, 1, 2
/* 80C57248  40 82 00 14 */	bne lbl_80C5725C
/* 80C5724C  38 7E 07 34 */	addi r3, r30, 0x734
/* 80C57250  38 81 00 08 */	addi r4, r1, 8
/* 80C57254  38 A0 00 00 */	li r5, 0
/* 80C57258  4B 55 2B 09 */	bl dKy_BossLight_set__FP4cXyzP8_GXColorfUc
lbl_80C5725C:
/* 80C5725C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C57260  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C57264  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C57268  7C 08 03 A6 */	mtlr r0
/* 80C5726C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C57270  4E 80 00 20 */	blr 
