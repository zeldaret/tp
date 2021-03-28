lbl_801D29B8:
/* 801D29B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D29BC  7C 08 02 A6 */	mflr r0
/* 801D29C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D29C4  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 801D29C8  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 801D29CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801D29D0  7C 7F 1B 78 */	mr r31, r3
/* 801D29D4  4B FF FE FD */	bl getMapScissorAreaCenterPosY__18dMenu_Fmap2DBack_cFv
/* 801D29D8  FF E0 08 90 */	fmr f31, f1
/* 801D29DC  7F E3 FB 78 */	mr r3, r31
/* 801D29E0  4B FF FE A1 */	bl getMapScissorAreaCenterPosX__18dMenu_Fmap2DBack_cFv
/* 801D29E4  7F E3 FB 78 */	mr r3, r31
/* 801D29E8  FC 40 F8 90 */	fmr f2, f31
/* 801D29EC  38 9F 0F 8C */	addi r4, r31, 0xf8c
/* 801D29F0  38 BF 0F 90 */	addi r5, r31, 0xf90
/* 801D29F4  4B FF E5 89 */	bl calcAllMapPosWorld__18dMenu_Fmap2DBack_cFffPfPf
/* 801D29F8  C0 3F 0F 8C */	lfs f1, 0xf8c(r31)
/* 801D29FC  C0 1F 0F C8 */	lfs f0, 0xfc8(r31)
/* 801D2A00  EC 01 00 2A */	fadds f0, f1, f0
/* 801D2A04  D0 1F 0F 8C */	stfs f0, 0xf8c(r31)
/* 801D2A08  C0 3F 0F 90 */	lfs f1, 0xf90(r31)
/* 801D2A0C  C0 1F 0F CC */	lfs f0, 0xfcc(r31)
/* 801D2A10  EC 01 00 2A */	fadds f0, f1, f0
/* 801D2A14  D0 1F 0F 90 */	stfs f0, 0xf90(r31)
/* 801D2A18  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 801D2A1C  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 801D2A20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801D2A24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D2A28  7C 08 03 A6 */	mtlr r0
/* 801D2A2C  38 21 00 20 */	addi r1, r1, 0x20
/* 801D2A30  4E 80 00 20 */	blr 
