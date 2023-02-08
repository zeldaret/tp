lbl_8059D454:
/* 8059D454  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059D458  7C 08 02 A6 */	mflr r0
/* 8059D45C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059D460  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059D464  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8059D468  7C 7E 1B 78 */	mr r30, r3
/* 8059D46C  3C 60 80 5A */	lis r3, M_attr__15daObjYobikusa_c@ha /* 0x8059DE7C@ha */
/* 8059D470  3B E3 DE 7C */	addi r31, r3, M_attr__15daObjYobikusa_c@l /* 0x8059DE7C@l */
/* 8059D474  38 7E 07 40 */	addi r3, r30, 0x740
/* 8059D478  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8059D47C  38 9F 00 00 */	addi r4, r31, 0
/* 8059D480  C0 44 00 24 */	lfs f2, 0x24(r4)
/* 8059D484  4B CD 32 BD */	bl cLib_chaseF__FPfff
/* 8059D488  38 9F 00 00 */	addi r4, r31, 0
/* 8059D48C  C0 04 00 28 */	lfs f0, 0x28(r4)
/* 8059D490  D0 1E 07 44 */	stfs f0, 0x744(r30)
/* 8059D494  A8 1E 07 68 */	lha r0, 0x768(r30)
/* 8059D498  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8059D49C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8059D4A0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8059D4A4  7C 23 04 2E */	lfsx f1, r3, r0
/* 8059D4A8  C0 1E 07 44 */	lfs f0, 0x744(r30)
/* 8059D4AC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059D4B0  FC 00 00 1E */	fctiwz f0, f0
/* 8059D4B4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8059D4B8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8059D4BC  B0 1E 07 58 */	sth r0, 0x758(r30)
/* 8059D4C0  A8 7E 07 68 */	lha r3, 0x768(r30)
/* 8059D4C4  A8 04 00 3C */	lha r0, 0x3c(r4)
/* 8059D4C8  7C 03 02 14 */	add r0, r3, r0
/* 8059D4CC  B0 1E 07 68 */	sth r0, 0x768(r30)
/* 8059D4D0  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8059D4D4  C0 1E 07 40 */	lfs f0, 0x740(r30)
/* 8059D4D8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8059D4DC  40 82 00 28 */	bne lbl_8059D504
/* 8059D4E0  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8059D4E4  C0 1E 07 44 */	lfs f0, 0x744(r30)
/* 8059D4E8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8059D4EC  40 82 00 18 */	bne lbl_8059D504
/* 8059D4F0  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 8059D4F4  60 00 00 10 */	ori r0, r0, 0x10
/* 8059D4F8  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8059D4FC  38 60 00 01 */	li r3, 1
/* 8059D500  48 00 00 08 */	b lbl_8059D508
lbl_8059D504:
/* 8059D504  38 60 00 00 */	li r3, 0
lbl_8059D508:
/* 8059D508  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059D50C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8059D510  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059D514  7C 08 03 A6 */	mtlr r0
/* 8059D518  38 21 00 20 */	addi r1, r1, 0x20
/* 8059D51C  4E 80 00 20 */	blr 
