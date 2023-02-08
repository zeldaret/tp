lbl_80216D2C:
/* 80216D2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80216D30  7C 08 02 A6 */	mflr r0
/* 80216D34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80216D38  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80216D3C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80216D40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80216D44  7C 7F 1B 78 */	mr r31, r3
/* 80216D48  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80216D4C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80216D50  C0 43 03 68 */	lfs f2, 0x368(r3)
/* 80216D54  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 80216D58  C0 03 03 48 */	lfs f0, 0x348(r3)
/* 80216D5C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80216D60  EF E2 00 32 */	fmuls f31, f2, f0
/* 80216D64  80 7F 02 E0 */	lwz r3, 0x2e0(r31)
/* 80216D68  48 03 EA C1 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80216D6C  FC 1F 08 00 */	fcmpu cr0, f31, f1
/* 80216D70  41 82 00 20 */	beq lbl_80216D90
/* 80216D74  80 7F 02 E0 */	lwz r3, 0x2e0(r31)
/* 80216D78  FC 20 F8 90 */	fmr f1, f31
/* 80216D7C  48 03 EA 55 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80216D80  7F E3 FB 78 */	mr r3, r31
/* 80216D84  80 9F 02 E0 */	lwz r4, 0x2e0(r31)
/* 80216D88  38 A0 00 05 */	li r5, 5
/* 80216D8C  48 00 3D 19 */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_80216D90:
/* 80216D90  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80216D94  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80216D98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80216D9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80216DA0  7C 08 03 A6 */	mtlr r0
/* 80216DA4  38 21 00 20 */	addi r1, r1, 0x20
/* 80216DA8  4E 80 00 20 */	blr 
