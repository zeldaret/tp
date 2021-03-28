lbl_804756D4:
/* 804756D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804756D8  7C 08 02 A6 */	mflr r0
/* 804756DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804756E0  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 804756E4  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 804756E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804756EC  7C 7F 1B 78 */	mr r31, r3
/* 804756F0  4B FF 9F B5 */	bl data__12daObjCarry_cFv
/* 804756F4  C3 E3 00 1C */	lfs f31, 0x1c(r3)
/* 804756F8  7F E3 FB 78 */	mr r3, r31
/* 804756FC  4B FF 9F A9 */	bl data__12daObjCarry_cFv
/* 80475700  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80475704  EC 20 F8 2A */	fadds f1, f0, f31
/* 80475708  3C 60 80 48 */	lis r3, lit_3899@ha
/* 8047570C  C0 03 A3 54 */	lfs f0, lit_3899@l(r3)
/* 80475710  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80475714  4C 40 13 82 */	cror 2, 0, 2
/* 80475718  7C 00 00 26 */	mfcr r0
/* 8047571C  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
/* 80475720  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80475724  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80475728  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047572C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80475730  7C 08 03 A6 */	mtlr r0
/* 80475734  38 21 00 20 */	addi r1, r1, 0x20
/* 80475738  4E 80 00 20 */	blr 
