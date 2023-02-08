lbl_80D252C8:
/* 80D252C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D252CC  7C 08 02 A6 */	mflr r0
/* 80D252D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D252D4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D252D8  7C 7F 1B 78 */	mr r31, r3
/* 80D252DC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D252E0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D252E4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80D252E8  4B 2F 56 7D */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80D252EC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D252F0  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80D252F4  28 04 00 FF */	cmplwi r4, 0xff
/* 80D252F8  41 82 00 34 */	beq lbl_80D2532C
/* 80D252FC  3C 60 80 D2 */	lis r3, lit_3788@ha /* 0x80D26B88@ha */
/* 80D25300  C0 63 6B 88 */	lfs f3, lit_3788@l(r3)  /* 0x80D26B88@l */
/* 80D25304  3C 60 80 D2 */	lis r3, lit_4164@ha /* 0x80D26BCC@ha */
/* 80D25308  C8 43 6B CC */	lfd f2, lit_4164@l(r3)  /* 0x80D26BCC@l */
/* 80D2530C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D25310  3C 00 43 30 */	lis r0, 0x4330
/* 80D25314  90 01 00 08 */	stw r0, 8(r1)
/* 80D25318  C8 01 00 08 */	lfd f0, 8(r1)
/* 80D2531C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80D25320  EC 03 00 32 */	fmuls f0, f3, f0
/* 80D25324  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D25328  41 80 00 1C */	blt lbl_80D25344
lbl_80D2532C:
/* 80D2532C  28 04 00 FF */	cmplwi r4, 0xff
/* 80D25330  40 82 00 1C */	bne lbl_80D2534C
/* 80D25334  3C 60 80 D2 */	lis r3, lit_4162@ha /* 0x80D26BC4@ha */
/* 80D25338  C0 03 6B C4 */	lfs f0, lit_4162@l(r3)  /* 0x80D26BC4@l */
/* 80D2533C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D25340  40 80 00 0C */	bge lbl_80D2534C
lbl_80D25344:
/* 80D25344  38 60 00 01 */	li r3, 1
/* 80D25348  48 00 00 08 */	b lbl_80D25350
lbl_80D2534C:
/* 80D2534C  38 60 00 00 */	li r3, 0
lbl_80D25350:
/* 80D25350  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D25354  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D25358  7C 08 03 A6 */	mtlr r0
/* 80D2535C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D25360  4E 80 00 20 */	blr 
