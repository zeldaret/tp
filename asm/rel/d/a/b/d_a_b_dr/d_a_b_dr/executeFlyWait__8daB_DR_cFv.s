lbl_805BD98C:
/* 805BD98C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805BD990  7C 08 02 A6 */	mflr r0
/* 805BD994  90 01 00 34 */	stw r0, 0x34(r1)
/* 805BD998  39 61 00 30 */	addi r11, r1, 0x30
/* 805BD99C  4B DA 48 3D */	bl _savegpr_28
/* 805BD9A0  7C 7F 1B 78 */	mr r31, r3
/* 805BD9A4  3C 60 80 5C */	lis r3, lit_3800@ha /* 0x805C6C74@ha */
/* 805BD9A8  3B A3 6C 74 */	addi r29, r3, lit_3800@l /* 0x805C6C74@l */
/* 805BD9AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805BD9B0  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805BD9B4  83 9E 5D AC */	lwz r28, 0x5dac(r30)
/* 805BD9B8  38 7F 05 2C */	addi r3, r31, 0x52c
/* 805BD9BC  C0 3D 00 00 */	lfs f1, 0(r29)
/* 805BD9C0  C0 5D 00 24 */	lfs f2, 0x24(r29)
/* 805BD9C4  4B CB 20 BD */	bl cLib_addCalc0__FPfff
/* 805BD9C8  7F E3 FB 78 */	mr r3, r31
/* 805BD9CC  38 80 00 00 */	li r4, 0
/* 805BD9D0  4B FF E8 79 */	bl mHabatakiAnmSet__8daB_DR_cFi
/* 805BD9D4  80 1F 07 0C */	lwz r0, 0x70c(r31)
/* 805BD9D8  2C 00 00 01 */	cmpwi r0, 1
/* 805BD9DC  41 82 00 88 */	beq lbl_805BDA64
/* 805BD9E0  40 80 00 10 */	bge lbl_805BD9F0
/* 805BD9E4  2C 00 00 00 */	cmpwi r0, 0
/* 805BD9E8  40 80 00 14 */	bge lbl_805BD9FC
/* 805BD9EC  48 00 01 74 */	b lbl_805BDB60
lbl_805BD9F0:
/* 805BD9F0  2C 00 00 03 */	cmpwi r0, 3
/* 805BD9F4  40 80 01 6C */	bge lbl_805BDB60
/* 805BD9F8  48 00 00 A8 */	b lbl_805BDAA0
lbl_805BD9FC:
/* 805BD9FC  80 1F 0A 5C */	lwz r0, 0xa5c(r31)
/* 805BDA00  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805BDA04  90 1F 0A 5C */	stw r0, 0xa5c(r31)
/* 805BDA08  7F E3 FB 78 */	mr r3, r31
/* 805BDA0C  38 80 00 00 */	li r4, 0
/* 805BDA10  4B FF DC 3D */	bl mStatusONOFF__8daB_DR_cFi
/* 805BDA14  7F E3 FB 78 */	mr r3, r31
/* 805BDA18  4B FF F2 01 */	bl mAllClr__8daB_DR_cFv
/* 805BDA1C  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 805BDA20  D0 1F 07 24 */	stfs f0, 0x724(r31)
/* 805BDA24  7F E3 FB 78 */	mr r3, r31
/* 805BDA28  4B FF F4 7D */	bl revolutionMove__8daB_DR_cFv
/* 805BDA2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805BDA30  41 82 00 28 */	beq lbl_805BDA58
/* 805BDA34  38 00 00 C8 */	li r0, 0xc8
/* 805BDA38  B0 1F 07 50 */	sth r0, 0x750(r31)
/* 805BDA3C  3C 60 80 5C */	lis r3, l_HIO@ha /* 0x805C790C@ha */
/* 805BDA40  38 63 79 0C */	addi r3, r3, l_HIO@l /* 0x805C790C@l */
/* 805BDA44  A8 03 00 4A */	lha r0, 0x4a(r3)
/* 805BDA48  90 1F 07 C8 */	stw r0, 0x7c8(r31)
/* 805BDA4C  38 00 00 02 */	li r0, 2
/* 805BDA50  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 805BDA54  48 00 01 0C */	b lbl_805BDB60
lbl_805BDA58:
/* 805BDA58  38 00 00 01 */	li r0, 1
/* 805BDA5C  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 805BDA60  48 00 01 00 */	b lbl_805BDB60
lbl_805BDA64:
/* 805BDA64  7F E3 FB 78 */	mr r3, r31
/* 805BDA68  4B FF F4 3D */	bl revolutionMove__8daB_DR_cFv
/* 805BDA6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805BDA70  41 82 00 F0 */	beq lbl_805BDB60
/* 805BDA74  38 00 00 C8 */	li r0, 0xc8
/* 805BDA78  B0 1F 07 50 */	sth r0, 0x750(r31)
/* 805BDA7C  3C 60 80 5C */	lis r3, l_HIO@ha /* 0x805C790C@ha */
/* 805BDA80  38 63 79 0C */	addi r3, r3, l_HIO@l /* 0x805C790C@l */
/* 805BDA84  A8 03 00 4A */	lha r0, 0x4a(r3)
/* 805BDA88  90 1F 07 C8 */	stw r0, 0x7c8(r31)
/* 805BDA8C  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 805BDA90  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 805BDA94  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 805BDA98  38 00 00 02 */	li r0, 2
/* 805BDA9C  90 1F 07 0C */	stw r0, 0x70c(r31)
lbl_805BDAA0:
/* 805BDAA0  38 00 00 00 */	li r0, 0
/* 805BDAA4  98 1F 07 D6 */	stb r0, 0x7d6(r31)
/* 805BDAA8  7F E3 FB 78 */	mr r3, r31
/* 805BDAAC  4B FF F9 39 */	bl normalHoverMove__8daB_DR_cFv
/* 805BDAB0  7F E3 FB 78 */	mr r3, r31
/* 805BDAB4  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 805BDAB8  4B A5 CC 59 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805BDABC  7C 64 1B 78 */	mr r4, r3
/* 805BDAC0  38 7F 04 DE */	addi r3, r31, 0x4de
/* 805BDAC4  A8 BF 07 50 */	lha r5, 0x750(r31)
/* 805BDAC8  38 C0 02 00 */	li r6, 0x200
/* 805BDACC  4B CB 2B 3D */	bl cLib_addCalcAngleS2__FPssss
/* 805BDAD0  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 805BDAD4  D0 01 00 08 */	stfs f0, 8(r1)
/* 805BDAD8  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 805BDADC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805BDAE0  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 805BDAE4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805BDAE8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805BDAEC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805BDAF0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805BDAF4  38 81 00 08 */	addi r4, r1, 8
/* 805BDAF8  C0 3D 00 00 */	lfs f1, 0(r29)
/* 805BDAFC  C0 5D 00 1C */	lfs f2, 0x1c(r29)
/* 805BDB00  C0 7D 00 20 */	lfs f3, 0x20(r29)
/* 805BDB04  4B CB 1F B5 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 805BDB08  C0 3F 07 20 */	lfs f1, 0x720(r31)
/* 805BDB0C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 805BDB10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805BDB14  41 80 00 14 */	blt lbl_805BDB28
/* 805BDB18  7F E3 FB 78 */	mr r3, r31
/* 805BDB1C  4B FF F5 41 */	bl mPlayerHighCheck__8daB_DR_cFv
/* 805BDB20  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805BDB24  41 82 00 18 */	beq lbl_805BDB3C
lbl_805BDB28:
/* 805BDB28  7F E3 FB 78 */	mr r3, r31
/* 805BDB2C  38 80 00 05 */	li r4, 5
/* 805BDB30  38 A0 00 00 */	li r5, 0
/* 805BDB34  4B FF D9 81 */	bl setActionMode__8daB_DR_cFii
/* 805BDB38  48 00 00 74 */	b lbl_805BDBAC
lbl_805BDB3C:
/* 805BDB3C  38 7F 07 C8 */	addi r3, r31, 0x7c8
/* 805BDB40  48 00 90 9D */	bl func_805C6BDC
/* 805BDB44  2C 03 00 00 */	cmpwi r3, 0
/* 805BDB48  40 82 00 18 */	bne lbl_805BDB60
/* 805BDB4C  7F E3 FB 78 */	mr r3, r31
/* 805BDB50  38 80 00 07 */	li r4, 7
/* 805BDB54  38 A0 00 00 */	li r5, 0
/* 805BDB58  4B FF D9 5D */	bl setActionMode__8daB_DR_cFii
/* 805BDB5C  48 00 00 50 */	b lbl_805BDBAC
lbl_805BDB60:
/* 805BDB60  80 1F 07 0C */	lwz r0, 0x70c(r31)
/* 805BDB64  2C 00 00 0A */	cmpwi r0, 0xa
/* 805BDB68  40 80 00 1C */	bge lbl_805BDB84
/* 805BDB6C  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 805BDB70  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 805BDB74  A8 BF 07 50 */	lha r5, 0x750(r31)
/* 805BDB78  38 C0 04 00 */	li r6, 0x400
/* 805BDB7C  4B CB 2A 8D */	bl cLib_addCalcAngleS2__FPssss
/* 805BDB80  48 00 00 18 */	b lbl_805BDB98
lbl_805BDB84:
/* 805BDB84  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 805BDB88  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 805BDB8C  A8 BF 07 50 */	lha r5, 0x750(r31)
/* 805BDB90  38 C0 02 00 */	li r6, 0x200
/* 805BDB94  4B CB 2A 75 */	bl cLib_addCalcAngleS2__FPssss
lbl_805BDB98:
/* 805BDB98  38 7F 07 50 */	addi r3, r31, 0x750
/* 805BDB9C  38 80 00 08 */	li r4, 8
/* 805BDBA0  38 A0 00 0A */	li r5, 0xa
/* 805BDBA4  38 C0 00 14 */	li r6, 0x14
/* 805BDBA8  4B CB 2A 61 */	bl cLib_addCalcAngleS2__FPssss
lbl_805BDBAC:
/* 805BDBAC  39 61 00 30 */	addi r11, r1, 0x30
/* 805BDBB0  4B DA 46 75 */	bl _restgpr_28
/* 805BDBB4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805BDBB8  7C 08 03 A6 */	mtlr r0
/* 805BDBBC  38 21 00 30 */	addi r1, r1, 0x30
/* 805BDBC0  4E 80 00 20 */	blr 
