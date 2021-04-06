lbl_8080C24C:
/* 8080C24C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8080C250  7C 08 02 A6 */	mflr r0
/* 8080C254  90 01 00 34 */	stw r0, 0x34(r1)
/* 8080C258  39 61 00 30 */	addi r11, r1, 0x30
/* 8080C25C  4B B5 5F 81 */	bl _savegpr_29
/* 8080C260  7C 7F 1B 78 */	mr r31, r3
/* 8080C264  3C 60 80 81 */	lis r3, lit_3925@ha /* 0x80815994@ha */
/* 8080C268  3B A3 59 94 */	addi r29, r3, lit_3925@l /* 0x80815994@l */
/* 8080C26C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8080C270  38 9F 06 70 */	addi r4, r31, 0x670
/* 8080C274  4B A6 49 91 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8080C278  7C 7E 1B 78 */	mr r30, r3
/* 8080C27C  4B A5 B5 F1 */	bl cM_rnd__Fv
/* 8080C280  38 60 00 01 */	li r3, 1
/* 8080C284  98 7F 06 A8 */	stb r3, 0x6a8(r31)
/* 8080C288  88 1F 06 A8 */	lbz r0, 0x6a8(r31)
/* 8080C28C  28 00 00 00 */	cmplwi r0, 0
/* 8080C290  40 82 00 78 */	bne lbl_8080C308
/* 8080C294  C0 1D 00 D4 */	lfs f0, 0xd4(r29)
/* 8080C298  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080C29C  40 80 00 6C */	bge lbl_8080C308
/* 8080C2A0  80 9F 07 8C */	lwz r4, 0x78c(r31)
/* 8080C2A4  54 80 06 B5 */	rlwinm. r0, r4, 0, 0x1a, 0x1a
/* 8080C2A8  41 82 00 60 */	beq lbl_8080C308
/* 8080C2AC  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 8080C2B0  40 82 00 58 */	bne lbl_8080C308
/* 8080C2B4  98 7F 06 A8 */	stb r3, 0x6a8(r31)
/* 8080C2B8  38 00 00 02 */	li r0, 2
/* 8080C2BC  98 1F 06 A5 */	stb r0, 0x6a5(r31)
/* 8080C2C0  C0 3D 00 D8 */	lfs f1, 0xd8(r29)
/* 8080C2C4  4B A5 B6 C9 */	bl cM_rndFX__Ff
/* 8080C2C8  7F C0 07 34 */	extsh r0, r30
/* 8080C2CC  C8 5D 00 A8 */	lfd f2, 0xa8(r29)
/* 8080C2D0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8080C2D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8080C2D8  3C 00 43 30 */	lis r0, 0x4330
/* 8080C2DC  90 01 00 08 */	stw r0, 8(r1)
/* 8080C2E0  C8 01 00 08 */	lfd f0, 8(r1)
/* 8080C2E4  EC 00 10 28 */	fsubs f0, f0, f2
/* 8080C2E8  EC 00 08 2A */	fadds f0, f0, f1
/* 8080C2EC  FC 00 00 1E */	fctiwz f0, f0
/* 8080C2F0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8080C2F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8080C2F8  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8080C2FC  38 00 00 03 */	li r0, 3
/* 8080C300  90 1F 06 98 */	stw r0, 0x698(r31)
/* 8080C304  48 00 00 58 */	b lbl_8080C35C
lbl_8080C308:
/* 8080C308  A8 1F 06 EA */	lha r0, 0x6ea(r31)
/* 8080C30C  7C 1E 00 50 */	subf r0, r30, r0
/* 8080C310  7C 00 07 35 */	extsh. r0, r0
/* 8080C314  40 80 00 10 */	bge lbl_8080C324
/* 8080C318  38 00 00 02 */	li r0, 2
/* 8080C31C  98 1F 06 A5 */	stb r0, 0x6a5(r31)
/* 8080C320  48 00 00 0C */	b lbl_8080C32C
lbl_8080C324:
/* 8080C324  38 00 00 03 */	li r0, 3
/* 8080C328  98 1F 06 A5 */	stb r0, 0x6a5(r31)
lbl_8080C32C:
/* 8080C32C  88 1F 06 CB */	lbz r0, 0x6cb(r31)
/* 8080C330  28 00 00 00 */	cmplwi r0, 0
/* 8080C334  41 82 00 10 */	beq lbl_8080C344
/* 8080C338  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 8080C33C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8080C340  48 00 00 14 */	b lbl_8080C354
lbl_8080C344:
/* 8080C344  3C 60 80 81 */	lis r3, l_HIO@ha /* 0x80815D38@ha */
/* 8080C348  38 63 5D 38 */	addi r3, r3, l_HIO@l /* 0x80815D38@l */
/* 8080C34C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8080C350  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_8080C354:
/* 8080C354  7F E3 FB 78 */	mr r3, r31
/* 8080C358  4B FF FE A5 */	bl setSurpriseAway__8daE_YM_cFv
lbl_8080C35C:
/* 8080C35C  39 61 00 30 */	addi r11, r1, 0x30
/* 8080C360  4B B5 5E C9 */	bl _restgpr_29
/* 8080C364  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8080C368  7C 08 03 A6 */	mtlr r0
/* 8080C36C  38 21 00 30 */	addi r1, r1, 0x30
/* 8080C370  4E 80 00 20 */	blr 
