lbl_807BACF8:
/* 807BACF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807BACFC  7C 08 02 A6 */	mflr r0
/* 807BAD00  90 01 00 24 */	stw r0, 0x24(r1)
/* 807BAD04  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807BAD08  93 C1 00 18 */	stw r30, 0x18(r1)
/* 807BAD0C  7C 7F 1B 78 */	mr r31, r3
/* 807BAD10  3C 80 80 7C */	lis r4, lit_3762@ha /* 0x807BBDA8@ha */
/* 807BAD14  3B C4 BD A8 */	addi r30, r4, lit_3762@l /* 0x807BBDA8@l */
/* 807BAD18  A8 03 06 6C */	lha r0, 0x66c(r3)
/* 807BAD1C  2C 00 00 01 */	cmpwi r0, 1
/* 807BAD20  41 82 00 40 */	beq lbl_807BAD60
/* 807BAD24  40 80 00 10 */	bge lbl_807BAD34
/* 807BAD28  2C 00 00 00 */	cmpwi r0, 0
/* 807BAD2C  40 80 00 14 */	bge lbl_807BAD40
/* 807BAD30  48 00 01 74 */	b lbl_807BAEA4
lbl_807BAD34:
/* 807BAD34  2C 00 00 03 */	cmpwi r0, 3
/* 807BAD38  40 80 01 6C */	bge lbl_807BAEA4
/* 807BAD3C  48 00 01 1C */	b lbl_807BAE58
lbl_807BAD40:
/* 807BAD40  38 00 00 01 */	li r0, 1
/* 807BAD44  B0 1F 06 6C */	sth r0, 0x66c(r31)
/* 807BAD48  38 80 00 05 */	li r4, 5
/* 807BAD4C  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 807BAD50  38 A0 00 00 */	li r5, 0
/* 807BAD54  C0 5E 00 24 */	lfs f2, 0x24(r30)
/* 807BAD58  4B FF F8 5D */	bl anm_init__FP11e_tk2_classifUcf
/* 807BAD5C  48 00 01 48 */	b lbl_807BAEA4
lbl_807BAD60:
/* 807BAD60  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 807BAD64  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807BAD68  FC 00 00 1E */	fctiwz f0, f0
/* 807BAD6C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807BAD70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BAD74  2C 00 00 18 */	cmpwi r0, 0x18
/* 807BAD78  40 82 00 48 */	bne lbl_807BADC0
/* 807BAD7C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807BAD80  7C 07 07 74 */	extsb r7, r0
/* 807BAD84  38 00 00 00 */	li r0, 0
/* 807BAD88  90 01 00 08 */	stw r0, 8(r1)
/* 807BAD8C  38 60 01 D2 */	li r3, 0x1d2
/* 807BAD90  28 1F 00 00 */	cmplwi r31, 0
/* 807BAD94  41 82 00 0C */	beq lbl_807BADA0
/* 807BAD98  80 9F 00 04 */	lwz r4, 4(r31)
/* 807BAD9C  48 00 00 08 */	b lbl_807BADA4
lbl_807BADA0:
/* 807BADA0  38 80 FF FF */	li r4, -1
lbl_807BADA4:
/* 807BADA4  38 A0 00 01 */	li r5, 1
/* 807BADA8  38 DF 05 38 */	addi r6, r31, 0x538
/* 807BADAC  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 807BADB0  39 20 00 00 */	li r9, 0
/* 807BADB4  39 40 FF FF */	li r10, -1
/* 807BADB8  4B 85 F1 39 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 807BADBC  90 7F 06 98 */	stw r3, 0x698(r31)
lbl_807BADC0:
/* 807BADC0  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 807BADC4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 807BADC8  FC 00 00 1E */	fctiwz f0, f0
/* 807BADCC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807BADD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BADD4  2C 00 00 1C */	cmpwi r0, 0x1c
/* 807BADD8  40 82 00 0C */	bne lbl_807BADE4
/* 807BADDC  38 00 00 01 */	li r0, 1
/* 807BADE0  98 1F 06 95 */	stb r0, 0x695(r31)
lbl_807BADE4:
/* 807BADE4  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 807BADE8  38 80 00 01 */	li r4, 1
/* 807BADEC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807BADF0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807BADF4  40 82 00 18 */	bne lbl_807BAE0C
/* 807BADF8  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 807BADFC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807BAE00  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807BAE04  41 82 00 08 */	beq lbl_807BAE0C
/* 807BAE08  38 80 00 00 */	li r4, 0
lbl_807BAE0C:
/* 807BAE0C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807BAE10  41 82 00 94 */	beq lbl_807BAEA4
/* 807BAE14  7F E3 FB 78 */	mr r3, r31
/* 807BAE18  38 80 00 0A */	li r4, 0xa
/* 807BAE1C  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 807BAE20  38 A0 00 02 */	li r5, 2
/* 807BAE24  FC 40 08 90 */	fmr f2, f1
/* 807BAE28  4B FF F7 8D */	bl anm_init__FP11e_tk2_classifUcf
/* 807BAE2C  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 807BAE30  4B AA CB 25 */	bl cM_rndF__Ff
/* 807BAE34  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 807BAE38  EC 00 08 2A */	fadds f0, f0, f1
/* 807BAE3C  FC 00 00 1E */	fctiwz f0, f0
/* 807BAE40  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807BAE44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BAE48  B0 1F 06 8A */	sth r0, 0x68a(r31)
/* 807BAE4C  38 00 00 02 */	li r0, 2
/* 807BAE50  B0 1F 06 6C */	sth r0, 0x66c(r31)
/* 807BAE54  48 00 00 50 */	b lbl_807BAEA4
lbl_807BAE58:
/* 807BAE58  A8 1F 06 8A */	lha r0, 0x68a(r31)
/* 807BAE5C  2C 00 00 00 */	cmpwi r0, 0
/* 807BAE60  40 82 00 10 */	bne lbl_807BAE70
/* 807BAE64  38 00 00 00 */	li r0, 0
/* 807BAE68  B0 1F 06 6C */	sth r0, 0x66c(r31)
/* 807BAE6C  48 00 00 38 */	b lbl_807BAEA4
lbl_807BAE70:
/* 807BAE70  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 807BAE74  3C 80 80 7C */	lis r4, l_HIO@ha /* 0x807BBF50@ha */
/* 807BAE78  38 84 BF 50 */	addi r4, r4, l_HIO@l /* 0x807BBF50@l */
/* 807BAE7C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 807BAE80  EC 21 00 2A */	fadds f1, f1, f0
/* 807BAE84  38 80 60 00 */	li r4, 0x6000
/* 807BAE88  4B FF F9 21 */	bl pl_check__FP11e_tk2_classfs
/* 807BAE8C  2C 03 00 00 */	cmpwi r3, 0
/* 807BAE90  40 82 00 14 */	bne lbl_807BAEA4
/* 807BAE94  38 00 00 01 */	li r0, 1
/* 807BAE98  B0 1F 06 6A */	sth r0, 0x66a(r31)
/* 807BAE9C  38 00 00 03 */	li r0, 3
/* 807BAEA0  B0 1F 06 6C */	sth r0, 0x66c(r31)
lbl_807BAEA4:
/* 807BAEA4  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 807BAEA8  A8 9F 06 80 */	lha r4, 0x680(r31)
/* 807BAEAC  38 A0 00 04 */	li r5, 4
/* 807BAEB0  38 C0 08 00 */	li r6, 0x800
/* 807BAEB4  4B AB 57 55 */	bl cLib_addCalcAngleS2__FPssss
/* 807BAEB8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807BAEBC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 807BAEC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807BAEC4  7C 08 03 A6 */	mtlr r0
/* 807BAEC8  38 21 00 20 */	addi r1, r1, 0x20
/* 807BAECC  4E 80 00 20 */	blr 
