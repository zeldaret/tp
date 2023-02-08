lbl_80CDDB48:
/* 80CDDB48  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80CDDB4C  7C 08 02 A6 */	mflr r0
/* 80CDDB50  90 01 00 94 */	stw r0, 0x94(r1)
/* 80CDDB54  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80CDDB58  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80CDDB5C  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80CDDB60  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 80CDDB64  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 80CDDB68  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 80CDDB6C  39 61 00 60 */	addi r11, r1, 0x60
/* 80CDDB70  4B 68 46 51 */	bl _savegpr_22
/* 80CDDB74  7C 7D 1B 78 */	mr r29, r3
/* 80CDDB78  3C 60 80 CE */	lis r3, m__20daObj_SMTile_Param_c@ha /* 0x80CDE35C@ha */
/* 80CDDB7C  3B E3 E3 5C */	addi r31, r3, m__20daObj_SMTile_Param_c@l /* 0x80CDE35C@l */
/* 80CDDB80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CDDB84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CDDB88  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 80CDDB8C  4B 32 E8 51 */	bl mDoMtx_YrotS__FPA4_fs
/* 80CDDB90  3B C0 00 00 */	li r30, 0
/* 80CDDB94  3B 80 00 00 */	li r28, 0
/* 80CDDB98  3B 60 00 00 */	li r27, 0
/* 80CDDB9C  C3 DF 00 08 */	lfs f30, 8(r31)
/* 80CDDBA0  3C 60 80 CE */	lis r3, l_tileMoveData@ha /* 0x80CDE3A4@ha */
/* 80CDDBA4  3B 03 E3 A4 */	addi r24, r3, l_tileMoveData@l /* 0x80CDE3A4@l */
/* 80CDDBA8  CB FF 00 18 */	lfd f31, 0x18(r31)
/* 80CDDBAC  3F 20 43 30 */	lis r25, 0x4330
/* 80CDDBB0  C3 BF 00 00 */	lfs f29, 0(r31)
/* 80CDDBB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CDDBB8  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_80CDDBBC:
/* 80CDDBBC  D3 C1 00 14 */	stfs f30, 0x14(r1)
/* 80CDDBC0  D3 C1 00 18 */	stfs f30, 0x18(r1)
/* 80CDDBC4  D3 C1 00 1C */	stfs f30, 0x1c(r1)
/* 80CDDBC8  7E F8 DA 14 */	add r23, r24, r27
/* 80CDDBCC  88 17 00 00 */	lbz r0, 0(r23)
/* 80CDDBD0  7C 00 07 74 */	extsb r0, r0
/* 80CDDBD4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CDDBD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CDDBDC  93 21 00 20 */	stw r25, 0x20(r1)
/* 80CDDBE0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80CDDBE4  EC 40 F8 28 */	fsubs f2, f0, f31
/* 80CDDBE8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80CDDBEC  88 17 00 01 */	lbz r0, 1(r23)
/* 80CDDBF0  7C 00 07 74 */	extsb r0, r0
/* 80CDDBF4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CDDBF8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80CDDBFC  93 21 00 28 */	stw r25, 0x28(r1)
/* 80CDDC00  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80CDDC04  EC 20 F8 28 */	fsubs f1, f0, f31
/* 80CDDC08  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80CDDC0C  D0 41 00 08 */	stfs f2, 8(r1)
/* 80CDDC10  D3 C1 00 0C */	stfs f30, 0xc(r1)
/* 80CDDC14  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80CDDC18  FC 00 10 18 */	frsp f0, f2
/* 80CDDC1C  EC 00 07 72 */	fmuls f0, f0, f29
/* 80CDDC20  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CDDC24  FC 00 08 18 */	frsp f0, f1
/* 80CDDC28  EC 00 07 72 */	fmuls f0, f0, f29
/* 80CDDC2C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CDDC30  7F 43 D3 78 */	mr r3, r26
/* 80CDDC34  38 81 00 08 */	addi r4, r1, 8
/* 80CDDC38  7E DD E2 14 */	add r22, r29, r28
/* 80CDDC3C  38 B6 06 8C */	addi r5, r22, 0x68c
/* 80CDDC40  4B 66 91 2D */	bl PSMTXMultVec
/* 80CDDC44  88 17 00 03 */	lbz r0, 3(r23)
/* 80CDDC48  2C 00 00 02 */	cmpwi r0, 2
/* 80CDDC4C  41 82 00 4C */	beq lbl_80CDDC98
/* 80CDDC50  40 80 00 14 */	bge lbl_80CDDC64
/* 80CDDC54  2C 00 00 00 */	cmpwi r0, 0
/* 80CDDC58  41 82 00 18 */	beq lbl_80CDDC70
/* 80CDDC5C  40 80 00 28 */	bge lbl_80CDDC84
/* 80CDDC60  48 00 00 5C */	b lbl_80CDDCBC
lbl_80CDDC64:
/* 80CDDC64  2C 00 00 04 */	cmpwi r0, 4
/* 80CDDC68  40 80 00 54 */	bge lbl_80CDDCBC
/* 80CDDC6C  48 00 00 40 */	b lbl_80CDDCAC
lbl_80CDDC70:
/* 80CDDC70  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80CDDC74  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80CDDC78  EC 01 00 2A */	fadds f0, f1, f0
/* 80CDDC7C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CDDC80  48 00 00 3C */	b lbl_80CDDCBC
lbl_80CDDC84:
/* 80CDDC84  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80CDDC88  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80CDDC8C  EC 01 00 2A */	fadds f0, f1, f0
/* 80CDDC90  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CDDC94  48 00 00 28 */	b lbl_80CDDCBC
lbl_80CDDC98:
/* 80CDDC98  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80CDDC9C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80CDDCA0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CDDCA4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CDDCA8  48 00 00 14 */	b lbl_80CDDCBC
lbl_80CDDCAC:
/* 80CDDCAC  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80CDDCB0  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80CDDCB4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CDDCB8  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_80CDDCBC:
/* 80CDDCBC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80CDDCC0  EC 00 07 72 */	fmuls f0, f0, f29
/* 80CDDCC4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CDDCC8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80CDDCCC  EC 00 07 72 */	fmuls f0, f0, f29
/* 80CDDCD0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CDDCD4  7F 43 D3 78 */	mr r3, r26
/* 80CDDCD8  38 81 00 14 */	addi r4, r1, 0x14
/* 80CDDCDC  38 B6 05 90 */	addi r5, r22, 0x590
/* 80CDDCE0  4B 66 90 8D */	bl PSMTXMultVec
/* 80CDDCE4  3B DE 00 01 */	addi r30, r30, 1
/* 80CDDCE8  2C 1E 00 15 */	cmpwi r30, 0x15
/* 80CDDCEC  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80CDDCF0  3B 7B 00 04 */	addi r27, r27, 4
/* 80CDDCF4  41 80 FE C8 */	blt lbl_80CDDBBC
/* 80CDDCF8  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80CDDCFC  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80CDDD00  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 80CDDD04  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80CDDD08  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 80CDDD0C  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 80CDDD10  39 61 00 60 */	addi r11, r1, 0x60
/* 80CDDD14  4B 68 44 F9 */	bl _restgpr_22
/* 80CDDD18  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80CDDD1C  7C 08 03 A6 */	mtlr r0
/* 80CDDD20  38 21 00 90 */	addi r1, r1, 0x90
/* 80CDDD24  4E 80 00 20 */	blr 
