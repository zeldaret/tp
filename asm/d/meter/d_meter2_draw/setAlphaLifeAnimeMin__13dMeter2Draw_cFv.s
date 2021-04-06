lbl_80214DF4:
/* 80214DF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80214DF8  7C 08 02 A6 */	mflr r0
/* 80214DFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80214E00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80214E04  7C 7F 1B 78 */	mr r31, r3
/* 80214E08  80 63 01 24 */	lwz r3, 0x124(r3)
/* 80214E0C  48 04 0A 1D */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 80214E10  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 80214E14  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80214E18  41 82 00 28 */	beq lbl_80214E40
/* 80214E1C  80 7F 01 24 */	lwz r3, 0x124(r31)
/* 80214E20  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80214E24  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 80214E28  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 80214E2C  48 04 09 A5 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80214E30  7F E3 FB 78 */	mr r3, r31
/* 80214E34  80 9F 01 24 */	lwz r4, 0x124(r31)
/* 80214E38  38 A0 00 05 */	li r5, 5
/* 80214E3C  48 00 5B 8D */	bl setAlphaAnimeMin__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_80214E40:
/* 80214E40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80214E44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80214E48  7C 08 03 A6 */	mtlr r0
/* 80214E4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80214E50  4E 80 00 20 */	blr 
