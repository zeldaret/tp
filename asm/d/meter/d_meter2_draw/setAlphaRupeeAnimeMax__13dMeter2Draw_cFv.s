lbl_80216990:
/* 80216990  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80216994  7C 08 02 A6 */	mflr r0
/* 80216998  90 01 00 34 */	stw r0, 0x34(r1)
/* 8021699C  39 61 00 30 */	addi r11, r1, 0x30
/* 802169A0  48 14 B8 35 */	bl _savegpr_27
/* 802169A4  7C 7B 1B 78 */	mr r27, r3
/* 802169A8  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802169AC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802169B0  C0 43 03 58 */	lfs f2, 0x358(r3)
/* 802169B4  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 802169B8  C0 03 03 48 */	lfs f0, 0x348(r3)
/* 802169BC  EC 21 00 32 */	fmuls f1, f1, f0
/* 802169C0  EC 02 00 72 */	fmuls f0, f2, f1
/* 802169C4  D0 01 00 08 */	stfs f0, 8(r1)
/* 802169C8  C0 03 03 78 */	lfs f0, 0x378(r3)
/* 802169CC  EC 00 00 72 */	fmuls f0, f0, f1
/* 802169D0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802169D4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802169D8  3B 80 00 00 */	li r28, 0
/* 802169DC  3B E0 00 00 */	li r31, 0
/* 802169E0  3B C1 00 08 */	addi r30, r1, 8
lbl_802169E4:
/* 802169E4  3B BF 02 B4 */	addi r29, r31, 0x2b4
/* 802169E8  7C 7B E8 2E */	lwzx r3, r27, r29
/* 802169EC  48 03 EE 3D */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 802169F0  7C 1E FC 2E */	lfsx f0, r30, r31
/* 802169F4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 802169F8  41 82 00 20 */	beq lbl_80216A18
/* 802169FC  7C 7B E8 2E */	lwzx r3, r27, r29
/* 80216A00  FC 20 00 90 */	fmr f1, f0
/* 80216A04  48 03 ED CD */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 80216A08  7F 63 DB 78 */	mr r3, r27
/* 80216A0C  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80216A10  38 A0 00 05 */	li r5, 5
/* 80216A14  48 00 40 91 */	bl setAlphaAnimeMax__13dMeter2Draw_cFP13CPaneMgrAlphas
lbl_80216A18:
/* 80216A18  3B 9C 00 01 */	addi r28, r28, 1
/* 80216A1C  2C 1C 00 03 */	cmpwi r28, 3
/* 80216A20  3B FF 00 04 */	addi r31, r31, 4
/* 80216A24  41 80 FF C0 */	blt lbl_802169E4
/* 80216A28  39 61 00 30 */	addi r11, r1, 0x30
/* 80216A2C  48 14 B7 F5 */	bl _restgpr_27
/* 80216A30  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80216A34  7C 08 03 A6 */	mtlr r0
/* 80216A38  38 21 00 30 */	addi r1, r1, 0x30
/* 80216A3C  4E 80 00 20 */	blr 
