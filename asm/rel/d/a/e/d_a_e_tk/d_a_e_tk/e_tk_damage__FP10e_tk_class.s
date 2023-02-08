lbl_807B9354:
/* 807B9354  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B9358  7C 08 02 A6 */	mflr r0
/* 807B935C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B9360  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807B9364  7C 7F 1B 78 */	mr r31, r3
/* 807B9368  3C 80 80 7C */	lis r4, lit_3762@ha /* 0x807BA26C@ha */
/* 807B936C  38 C4 A2 6C */	addi r6, r4, lit_3762@l /* 0x807BA26C@l */
/* 807B9370  38 00 00 06 */	li r0, 6
/* 807B9374  B0 03 06 9E */	sth r0, 0x69e(r3)
/* 807B9378  38 80 00 01 */	li r4, 1
/* 807B937C  98 83 06 A0 */	stb r4, 0x6a0(r3)
/* 807B9380  A8 03 06 78 */	lha r0, 0x678(r3)
/* 807B9384  2C 00 00 01 */	cmpwi r0, 1
/* 807B9388  41 82 00 34 */	beq lbl_807B93BC
/* 807B938C  40 80 00 7C */	bge lbl_807B9408
/* 807B9390  2C 00 00 00 */	cmpwi r0, 0
/* 807B9394  40 80 00 08 */	bge lbl_807B939C
/* 807B9398  48 00 00 70 */	b lbl_807B9408
lbl_807B939C:
/* 807B939C  38 80 00 06 */	li r4, 6
/* 807B93A0  C0 26 00 4C */	lfs f1, 0x4c(r6)
/* 807B93A4  38 A0 00 00 */	li r5, 0
/* 807B93A8  C0 46 00 30 */	lfs f2, 0x30(r6)
/* 807B93AC  4B FF EE 89 */	bl anm_init__FP10e_tk_classifUcf
/* 807B93B0  38 00 00 01 */	li r0, 1
/* 807B93B4  B0 1F 06 78 */	sth r0, 0x678(r31)
/* 807B93B8  48 00 00 50 */	b lbl_807B9408
lbl_807B93BC:
/* 807B93BC  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 807B93C0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807B93C4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807B93C8  40 82 00 18 */	bne lbl_807B93E0
/* 807B93CC  C0 26 00 14 */	lfs f1, 0x14(r6)
/* 807B93D0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807B93D4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807B93D8  41 82 00 08 */	beq lbl_807B93E0
/* 807B93DC  38 80 00 00 */	li r4, 0
lbl_807B93E0:
/* 807B93E0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807B93E4  41 82 00 24 */	beq lbl_807B9408
/* 807B93E8  7F E3 FB 78 */	mr r3, r31
/* 807B93EC  38 9F 05 38 */	addi r4, r31, 0x538
/* 807B93F0  38 A0 00 0A */	li r5, 0xa
/* 807B93F4  38 C0 00 00 */	li r6, 0
/* 807B93F8  38 E0 00 11 */	li r7, 0x11
/* 807B93FC  4B 86 36 DD */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 807B9400  7F E3 FB 78 */	mr r3, r31
/* 807B9404  4B 86 08 79 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_807B9408:
/* 807B9408  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807B940C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B9410  7C 08 03 A6 */	mtlr r0
/* 807B9414  38 21 00 10 */	addi r1, r1, 0x10
/* 807B9418  4E 80 00 20 */	blr 
