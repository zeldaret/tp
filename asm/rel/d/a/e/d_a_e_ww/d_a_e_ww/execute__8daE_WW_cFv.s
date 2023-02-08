lbl_807EDCC4:
/* 807EDCC4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807EDCC8  7C 08 02 A6 */	mflr r0
/* 807EDCCC  90 01 00 34 */	stw r0, 0x34(r1)
/* 807EDCD0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807EDCD4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 807EDCD8  7C 7E 1B 78 */	mr r30, r3
/* 807EDCDC  3C 60 80 7F */	lis r3, lit_3905@ha /* 0x807EF770@ha */
/* 807EDCE0  3B E3 F7 70 */	addi r31, r3, lit_3905@l /* 0x807EF770@l */
/* 807EDCE4  80 7E 07 28 */	lwz r3, 0x728(r30)
/* 807EDCE8  2C 03 00 00 */	cmpwi r3, 0
/* 807EDCEC  41 82 00 0C */	beq lbl_807EDCF8
/* 807EDCF0  38 03 FF FF */	addi r0, r3, -1
/* 807EDCF4  90 1E 07 28 */	stw r0, 0x728(r30)
lbl_807EDCF8:
/* 807EDCF8  80 7E 07 2C */	lwz r3, 0x72c(r30)
/* 807EDCFC  2C 03 00 00 */	cmpwi r3, 0
/* 807EDD00  41 82 00 0C */	beq lbl_807EDD0C
/* 807EDD04  38 03 FF FF */	addi r0, r3, -1
/* 807EDD08  90 1E 07 2C */	stw r0, 0x72c(r30)
lbl_807EDD0C:
/* 807EDD0C  A0 7E 07 24 */	lhz r3, 0x724(r30)
/* 807EDD10  28 03 00 00 */	cmplwi r3, 0
/* 807EDD14  41 82 00 0C */	beq lbl_807EDD20
/* 807EDD18  38 03 FF FF */	addi r0, r3, -1
/* 807EDD1C  B0 1E 07 24 */	sth r0, 0x724(r30)
lbl_807EDD20:
/* 807EDD20  80 7E 07 30 */	lwz r3, 0x730(r30)
/* 807EDD24  2C 03 00 00 */	cmpwi r3, 0
/* 807EDD28  41 82 00 0C */	beq lbl_807EDD34
/* 807EDD2C  38 03 FF FF */	addi r0, r3, -1
/* 807EDD30  90 1E 07 30 */	stw r0, 0x730(r30)
lbl_807EDD34:
/* 807EDD34  80 7E 07 34 */	lwz r3, 0x734(r30)
/* 807EDD38  2C 03 00 00 */	cmpwi r3, 0
/* 807EDD3C  41 82 00 0C */	beq lbl_807EDD48
/* 807EDD40  38 03 FF FF */	addi r0, r3, -1
/* 807EDD44  90 1E 07 34 */	stw r0, 0x734(r30)
lbl_807EDD48:
/* 807EDD48  80 7E 07 38 */	lwz r3, 0x738(r30)
/* 807EDD4C  2C 03 00 00 */	cmpwi r3, 0
/* 807EDD50  41 82 00 0C */	beq lbl_807EDD5C
/* 807EDD54  38 03 FF FF */	addi r0, r3, -1
/* 807EDD58  90 1E 07 38 */	stw r0, 0x738(r30)
lbl_807EDD5C:
/* 807EDD5C  80 7E 07 3C */	lwz r3, 0x73c(r30)
/* 807EDD60  2C 03 00 00 */	cmpwi r3, 0
/* 807EDD64  41 82 00 0C */	beq lbl_807EDD70
/* 807EDD68  38 03 FF FF */	addi r0, r3, -1
/* 807EDD6C  90 1E 07 3C */	stw r0, 0x73c(r30)
lbl_807EDD70:
/* 807EDD70  80 7E 07 40 */	lwz r3, 0x740(r30)
/* 807EDD74  2C 03 00 00 */	cmpwi r3, 0
/* 807EDD78  41 82 00 0C */	beq lbl_807EDD84
/* 807EDD7C  38 03 FF FF */	addi r0, r3, -1
/* 807EDD80  90 1E 07 40 */	stw r0, 0x740(r30)
lbl_807EDD84:
/* 807EDD84  38 C0 00 00 */	li r6, 0
/* 807EDD88  38 60 00 00 */	li r3, 0
/* 807EDD8C  48 00 00 1C */	b lbl_807EDDA8
lbl_807EDD90:
/* 807EDD90  38 A3 07 44 */	addi r5, r3, 0x744
/* 807EDD94  7C 9E 28 2E */	lwzx r4, r30, r5
/* 807EDD98  2C 04 00 00 */	cmpwi r4, 0
/* 807EDD9C  41 82 00 0C */	beq lbl_807EDDA8
/* 807EDDA0  38 04 FF FF */	addi r0, r4, -1
/* 807EDDA4  7C 1E 29 2E */	stwx r0, r30, r5
lbl_807EDDA8:
/* 807EDDA8  2C 06 00 00 */	cmpwi r6, 0
/* 807EDDAC  38 C6 00 01 */	addi r6, r6, 1
/* 807EDDB0  38 63 00 04 */	addi r3, r3, 4
/* 807EDDB4  40 82 FF DC */	bne lbl_807EDD90
/* 807EDDB8  7F C3 F3 78 */	mr r3, r30
/* 807EDDBC  4B FF F9 D1 */	bl action__8daE_WW_cFv
/* 807EDDC0  7F C3 F3 78 */	mr r3, r30
/* 807EDDC4  4B FF FC B5 */	bl mtx_set__8daE_WW_cFv
/* 807EDDC8  7F C3 F3 78 */	mr r3, r30
/* 807EDDCC  4B FF FD 35 */	bl cc_set__8daE_WW_cFv
/* 807EDDD0  7F C3 F3 78 */	mr r3, r30
/* 807EDDD4  4B FF 9A 79 */	bl setHeadAngle__8daE_WW_cFv
/* 807EDDD8  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807EDDDC  80 63 00 04 */	lwz r3, 4(r3)
/* 807EDDE0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807EDDE4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807EDDE8  38 63 00 60 */	addi r3, r3, 0x60
/* 807EDDEC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807EDDF0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807EDDF4  4B B5 86 BD */	bl PSMTXCopy
/* 807EDDF8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807EDDFC  FC 40 08 90 */	fmr f2, f1
/* 807EDE00  FC 60 08 90 */	fmr f3, f1
/* 807EDE04  4B 81 EF 99 */	bl transM__14mDoMtx_stack_cFfff
/* 807EDE08  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807EDE0C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807EDE10  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807EDE14  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807EDE18  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807EDE1C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807EDE20  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 807EDE24  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807EDE28  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807EDE2C  D0 01 00 08 */	stfs f0, 8(r1)
/* 807EDE30  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807EDE34  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 807EDE38  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807EDE3C  7F C3 F3 78 */	mr r3, r30
/* 807EDE40  38 9E 05 B8 */	addi r4, r30, 0x5b8
/* 807EDE44  38 A1 00 14 */	addi r5, r1, 0x14
/* 807EDE48  38 C1 00 08 */	addi r6, r1, 8
/* 807EDE4C  48 00 14 A9 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 807EDE50  38 60 00 01 */	li r3, 1
/* 807EDE54  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807EDE58  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 807EDE5C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807EDE60  7C 08 03 A6 */	mtlr r0
/* 807EDE64  38 21 00 30 */	addi r1, r1, 0x30
/* 807EDE68  4E 80 00 20 */	blr 
