lbl_80B9BA94:
/* 80B9BA94  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B9BA98  7C 08 02 A6 */	mflr r0
/* 80B9BA9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B9BAA0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B9BAA4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B9BAA8  7C 7E 1B 78 */	mr r30, r3
/* 80B9BAAC  3C 80 80 BA */	lis r4, lit_3755@ha
/* 80B9BAB0  3B E4 C9 20 */	addi r31, r4, lit_3755@l
/* 80B9BAB4  48 00 01 19 */	bl initCcSph__13daObjLv5Key_cFv
/* 80B9BAB8  7F C3 F3 78 */	mr r3, r30
/* 80B9BABC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80B9BAC0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80B9BAC4  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 80B9BAC8  C0 9F 00 10 */	lfs f4, 0x10(r31)
/* 80B9BACC  C0 BF 00 14 */	lfs f5, 0x14(r31)
/* 80B9BAD0  C0 DF 00 18 */	lfs f6, 0x18(r31)
/* 80B9BAD4  4B 47 EA 74 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80B9BAD8  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80B9BADC  D0 1E 09 58 */	stfs f0, 0x958(r30)
/* 80B9BAE0  D0 1E 09 5C */	stfs f0, 0x95c(r30)
/* 80B9BAE4  D0 1E 09 60 */	stfs f0, 0x960(r30)
/* 80B9BAE8  38 00 00 00 */	li r0, 0
/* 80B9BAEC  98 1E 09 45 */	stb r0, 0x945(r30)
/* 80B9BAF0  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80B9BAF4  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80B9BAF8  80 64 00 00 */	lwz r3, 0(r4)
/* 80B9BAFC  80 04 00 04 */	lwz r0, 4(r4)
/* 80B9BB00  90 7E 09 48 */	stw r3, 0x948(r30)
/* 80B9BB04  90 1E 09 4C */	stw r0, 0x94c(r30)
/* 80B9BB08  80 04 00 08 */	lwz r0, 8(r4)
/* 80B9BB0C  90 1E 09 50 */	stw r0, 0x950(r30)
/* 80B9BB10  3C 60 80 BA */	lis r3, lit_3759@ha
/* 80B9BB14  38 83 C9 B8 */	addi r4, r3, lit_3759@l
/* 80B9BB18  80 64 00 00 */	lwz r3, 0(r4)
/* 80B9BB1C  80 04 00 04 */	lwz r0, 4(r4)
/* 80B9BB20  90 61 00 08 */	stw r3, 8(r1)
/* 80B9BB24  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B9BB28  80 04 00 08 */	lwz r0, 8(r4)
/* 80B9BB2C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B9BB30  7F C3 F3 78 */	mr r3, r30
/* 80B9BB34  38 81 00 08 */	addi r4, r1, 8
/* 80B9BB38  38 A0 00 01 */	li r5, 1
/* 80B9BB3C  48 00 01 F5 */	bl setAction__13daObjLv5Key_cFM13daObjLv5Key_cFPCvPvi_vi
/* 80B9BB40  38 60 00 04 */	li r3, 4
/* 80B9BB44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B9BB48  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B9BB4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B9BB50  7C 08 03 A6 */	mtlr r0
/* 80B9BB54  38 21 00 20 */	addi r1, r1, 0x20
/* 80B9BB58  4E 80 00 20 */	blr 
