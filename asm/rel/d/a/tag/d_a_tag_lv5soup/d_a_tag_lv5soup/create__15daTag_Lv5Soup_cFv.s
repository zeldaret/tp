lbl_80D5AD58:
/* 80D5AD58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5AD5C  7C 08 02 A6 */	mflr r0
/* 80D5AD60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5AD64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5AD68  93 C1 00 08 */	stw r30, 8(r1)
/* 80D5AD6C  7C 7E 1B 78 */	mr r30, r3
/* 80D5AD70  3C 80 80 D6 */	lis r4, lit_3655@ha
/* 80D5AD74  3B E4 B1 5C */	addi r31, r4, lit_3655@l
/* 80D5AD78  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D5AD7C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D5AD80  40 82 00 28 */	bne lbl_80D5ADA8
/* 80D5AD84  28 1E 00 00 */	cmplwi r30, 0
/* 80D5AD88  41 82 00 14 */	beq lbl_80D5AD9C
/* 80D5AD8C  4B 2B DD D8 */	b __ct__10fopAc_ac_cFv
/* 80D5AD90  3C 60 80 D6 */	lis r3, __vt__15daTag_Lv5Soup_c@ha
/* 80D5AD94  38 03 B1 DC */	addi r0, r3, __vt__15daTag_Lv5Soup_c@l
/* 80D5AD98  90 1E 05 68 */	stw r0, 0x568(r30)
lbl_80D5AD9C:
/* 80D5AD9C  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80D5ADA0  60 00 00 08 */	ori r0, r0, 8
/* 80D5ADA4  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80D5ADA8:
/* 80D5ADA8  7F C3 F3 78 */	mr r3, r30
/* 80D5ADAC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80D5ADB0  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80D5ADB4  FC 60 08 90 */	fmr f3, f1
/* 80D5ADB8  C0 9F 00 08 */	lfs f4, 8(r31)
/* 80D5ADBC  C0 BF 00 0C */	lfs f5, 0xc(r31)
/* 80D5ADC0  FC C0 20 90 */	fmr f6, f4
/* 80D5ADC4  4B 2B F7 84 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80D5ADC8  38 00 00 00 */	li r0, 0
/* 80D5ADCC  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80D5ADD0  38 60 00 04 */	li r3, 4
/* 80D5ADD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5ADD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D5ADDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5ADE0  7C 08 03 A6 */	mtlr r0
/* 80D5ADE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5ADE8  4E 80 00 20 */	blr 
