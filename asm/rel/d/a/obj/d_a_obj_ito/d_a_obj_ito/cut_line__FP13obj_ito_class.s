lbl_8047B9E0:
/* 8047B9E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8047B9E4  7C 08 02 A6 */	mflr r0
/* 8047B9E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8047B9EC  39 61 00 30 */	addi r11, r1, 0x30
/* 8047B9F0  4B EE 67 E5 */	bl _savegpr_27
/* 8047B9F4  7C 7F 1B 78 */	mr r31, r3
/* 8047B9F8  80 03 04 A4 */	lwz r0, 0x4a4(r3)
/* 8047B9FC  90 01 00 08 */	stw r0, 8(r1)
/* 8047BA00  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8047BA04  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8047BA08  38 81 00 08 */	addi r4, r1, 8
/* 8047BA0C  4B B9 DD ED */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8047BA10  7C 7C 1B 78 */	mr r28, r3
/* 8047BA14  3B 60 00 00 */	li r27, 0
/* 8047BA18  3B C0 00 00 */	li r30, 0
/* 8047BA1C  3B A0 00 00 */	li r29, 0
lbl_8047BA20:
/* 8047BA20  80 7F 10 54 */	lwz r3, 0x1054(r31)
/* 8047BA24  7C 63 E8 2E */	lwzx r3, r3, r29
/* 8047BA28  28 1C 00 00 */	cmplwi r28, 0
/* 8047BA2C  41 82 00 4C */	beq lbl_8047BA78
/* 8047BA30  88 1F 05 70 */	lbz r0, 0x570(r31)
/* 8047BA34  28 00 00 00 */	cmplwi r0, 0
/* 8047BA38  40 82 00 24 */	bne lbl_8047BA5C
/* 8047BA3C  7C 9C F2 14 */	add r4, r28, r30
/* 8047BA40  C0 04 06 84 */	lfs f0, 0x684(r4)
/* 8047BA44  D0 03 00 00 */	stfs f0, 0(r3)
/* 8047BA48  C0 04 06 88 */	lfs f0, 0x688(r4)
/* 8047BA4C  D0 03 00 04 */	stfs f0, 4(r3)
/* 8047BA50  C0 04 06 8C */	lfs f0, 0x68c(r4)
/* 8047BA54  D0 03 00 08 */	stfs f0, 8(r3)
/* 8047BA58  48 00 00 20 */	b lbl_8047BA78
lbl_8047BA5C:
/* 8047BA5C  7C 9C F2 14 */	add r4, r28, r30
/* 8047BA60  C0 04 06 CC */	lfs f0, 0x6cc(r4)
/* 8047BA64  D0 03 00 00 */	stfs f0, 0(r3)
/* 8047BA68  C0 04 06 D0 */	lfs f0, 0x6d0(r4)
/* 8047BA6C  D0 03 00 04 */	stfs f0, 4(r3)
/* 8047BA70  C0 04 06 D4 */	lfs f0, 0x6d4(r4)
/* 8047BA74  D0 03 00 08 */	stfs f0, 8(r3)
lbl_8047BA78:
/* 8047BA78  7F E3 FB 78 */	mr r3, r31
/* 8047BA7C  38 9F 10 3C */	addi r4, r31, 0x103c
/* 8047BA80  7F 65 DB 78 */	mr r5, r27
/* 8047BA84  4B FF FA 81 */	bl cut_line_calc__FP13obj_ito_classP5ito_si
/* 8047BA88  88 1F 10 38 */	lbz r0, 0x1038(r31)
/* 8047BA8C  7C 00 07 75 */	extsb. r0, r0
/* 8047BA90  41 82 00 3C */	beq lbl_8047BACC
/* 8047BA94  C0 3F 14 E8 */	lfs f1, 0x14e8(r31)
/* 8047BA98  3C 60 80 48 */	lis r3, lit_3820@ha /* 0x8047D820@ha */
/* 8047BA9C  C0 03 D8 20 */	lfs f0, lit_3820@l(r3)  /* 0x8047D820@l */
/* 8047BAA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8047BAA4  40 81 00 28 */	ble lbl_8047BACC
/* 8047BAA8  7F E3 FB 78 */	mr r3, r31
/* 8047BAAC  38 9F 12 98 */	addi r4, r31, 0x1298
/* 8047BAB0  7F 65 DB 78 */	mr r5, r27
/* 8047BAB4  4B FF FA 51 */	bl cut_line_calc__FP13obj_ito_classP5ito_si
/* 8047BAB8  38 7F 14 E8 */	addi r3, r31, 0x14e8
/* 8047BABC  3C 80 80 48 */	lis r4, lit_3946@ha /* 0x8047D83C@ha */
/* 8047BAC0  C0 24 D8 3C */	lfs f1, lit_3946@l(r4)  /* 0x8047D83C@l */
/* 8047BAC4  FC 40 08 90 */	fmr f2, f1
/* 8047BAC8  4B DF 3F B9 */	bl cLib_addCalc0__FPfff
lbl_8047BACC:
/* 8047BACC  3B 7B 00 01 */	addi r27, r27, 1
/* 8047BAD0  2C 1B 00 06 */	cmpwi r27, 6
/* 8047BAD4  3B DE 00 0C */	addi r30, r30, 0xc
/* 8047BAD8  3B BD 00 20 */	addi r29, r29, 0x20
/* 8047BADC  41 80 FF 44 */	blt lbl_8047BA20
/* 8047BAE0  39 61 00 30 */	addi r11, r1, 0x30
/* 8047BAE4  4B EE 67 3D */	bl _restgpr_27
/* 8047BAE8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8047BAEC  7C 08 03 A6 */	mtlr r0
/* 8047BAF0  38 21 00 30 */	addi r1, r1, 0x30
/* 8047BAF4  4E 80 00 20 */	blr 
