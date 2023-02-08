lbl_80652B28:
/* 80652B28  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80652B2C  7C 08 02 A6 */	mflr r0
/* 80652B30  90 01 00 64 */	stw r0, 0x64(r1)
/* 80652B34  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80652B38  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80652B3C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80652B40  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80652B44  39 61 00 40 */	addi r11, r1, 0x40
/* 80652B48  4B D0 F6 95 */	bl _savegpr_29
/* 80652B4C  7C 7E 1B 78 */	mr r30, r3
/* 80652B50  3C 60 80 65 */	lis r3, lit_3800@ha /* 0x8065332C@ha */
/* 80652B54  3B E3 33 2C */	addi r31, r3, lit_3800@l /* 0x8065332C@l */
/* 80652B58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80652B5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80652B60  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80652B64  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80652B68  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80652B6C  41 82 00 24 */	beq lbl_80652B90
/* 80652B70  38 00 00 03 */	li r0, 3
/* 80652B74  98 1E 05 84 */	stb r0, 0x584(r30)
/* 80652B78  28 03 00 00 */	cmplwi r3, 0
/* 80652B7C  41 82 00 0C */	beq lbl_80652B88
/* 80652B80  80 03 00 04 */	lwz r0, 4(r3)
/* 80652B84  48 00 00 08 */	b lbl_80652B8C
lbl_80652B88:
/* 80652B88  38 00 FF FF */	li r0, -1
lbl_80652B8C:
/* 80652B8C  90 1E 05 7C */	stw r0, 0x57c(r30)
lbl_80652B90:
/* 80652B90  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80652B94  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80652B98  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80652B9C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80652BA0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80652BA4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80652BA8  88 1E 05 85 */	lbz r0, 0x585(r30)
/* 80652BAC  28 00 00 00 */	cmplwi r0, 0
/* 80652BB0  41 82 00 34 */	beq lbl_80652BE4
/* 80652BB4  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 80652BB8  38 81 00 08 */	addi r4, r1, 8
/* 80652BBC  4B 9C 6E 01 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80652BC0  80 61 00 08 */	lwz r3, 8(r1)
/* 80652BC4  28 03 00 00 */	cmplwi r3, 0
/* 80652BC8  41 82 00 1C */	beq lbl_80652BE4
/* 80652BCC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80652BD0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80652BD4  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80652BD8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80652BDC  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80652BE0  D0 01 00 2C */	stfs f0, 0x2c(r1)
lbl_80652BE4:
/* 80652BE4  8B BE 05 87 */	lbz r29, 0x587(r30)
/* 80652BE8  38 00 00 00 */	li r0, 0
/* 80652BEC  98 1E 05 87 */	stb r0, 0x587(r30)
/* 80652BF0  98 1E 05 86 */	stb r0, 0x586(r30)
/* 80652BF4  88 1E 05 85 */	lbz r0, 0x585(r30)
/* 80652BF8  28 00 00 00 */	cmplwi r0, 0
/* 80652BFC  41 82 00 0C */	beq lbl_80652C08
/* 80652C00  38 00 00 01 */	li r0, 1
/* 80652C04  98 1E 05 87 */	stb r0, 0x587(r30)
lbl_80652C08:
/* 80652C08  88 1E 05 84 */	lbz r0, 0x584(r30)
/* 80652C0C  28 00 00 00 */	cmplwi r0, 0
/* 80652C10  41 82 00 0C */	beq lbl_80652C1C
/* 80652C14  38 00 00 01 */	li r0, 1
/* 80652C18  98 1E 05 86 */	stb r0, 0x586(r30)
lbl_80652C1C:
/* 80652C1C  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80652C20  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80652C24  EF E1 00 28 */	fsubs f31, f1, f0
/* 80652C28  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 80652C2C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80652C30  EF C2 00 28 */	fsubs f30, f2, f0
/* 80652C34  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80652C38  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80652C3C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80652C40  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80652C44  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80652C48  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80652C4C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80652C50  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80652C54  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80652C58  38 61 00 0C */	addi r3, r1, 0xc
/* 80652C5C  38 81 00 18 */	addi r4, r1, 0x18
/* 80652C60  4B CF 47 3D */	bl PSVECSquareDistance
/* 80652C64  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80652C68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80652C6C  40 81 00 08 */	ble lbl_80652C74
/* 80652C70  48 00 00 0C */	b lbl_80652C7C
lbl_80652C74:
/* 80652C74  C8 1F 00 08 */	lfd f0, 8(r31)
/* 80652C78  FC 01 00 40 */	fcmpo cr0, f1, f0
lbl_80652C7C:
/* 80652C7C  FC 20 F8 90 */	fmr f1, f31
/* 80652C80  FC 40 F0 90 */	fmr f2, f30
/* 80652C84  4B C1 49 F1 */	bl cM_atan2s__Fff
/* 80652C88  7C 64 1B 78 */	mr r4, r3
/* 80652C8C  38 7E 05 8E */	addi r3, r30, 0x58e
/* 80652C90  38 A0 00 08 */	li r5, 8
/* 80652C94  38 C0 04 00 */	li r6, 0x400
/* 80652C98  4B C1 D9 71 */	bl cLib_addCalcAngleS2__FPssss
/* 80652C9C  28 1D 00 00 */	cmplwi r29, 0
/* 80652CA0  40 82 00 34 */	bne lbl_80652CD4
/* 80652CA4  88 1E 05 87 */	lbz r0, 0x587(r30)
/* 80652CA8  28 00 00 00 */	cmplwi r0, 0
/* 80652CAC  41 82 00 28 */	beq lbl_80652CD4
/* 80652CB0  A8 1E 05 8C */	lha r0, 0x58c(r30)
/* 80652CB4  2C 00 00 00 */	cmpwi r0, 0
/* 80652CB8  40 82 00 14 */	bne lbl_80652CCC
/* 80652CBC  FC 20 F8 90 */	fmr f1, f31
/* 80652CC0  FC 40 F0 90 */	fmr f2, f30
/* 80652CC4  4B C1 49 B1 */	bl cM_atan2s__Fff
/* 80652CC8  B0 7E 05 8E */	sth r3, 0x58e(r30)
lbl_80652CCC:
/* 80652CCC  38 00 04 00 */	li r0, 0x400
/* 80652CD0  B0 1E 05 90 */	sth r0, 0x590(r30)
lbl_80652CD4:
/* 80652CD4  38 7E 05 8C */	addi r3, r30, 0x58c
/* 80652CD8  38 80 00 00 */	li r4, 0
/* 80652CDC  38 A0 00 08 */	li r5, 8
/* 80652CE0  38 C0 00 40 */	li r6, 0x40
/* 80652CE4  4B C1 D9 25 */	bl cLib_addCalcAngleS2__FPssss
/* 80652CE8  A8 7E 05 8C */	lha r3, 0x58c(r30)
/* 80652CEC  A8 1E 05 90 */	lha r0, 0x590(r30)
/* 80652CF0  7C 03 02 14 */	add r0, r3, r0
/* 80652CF4  B0 1E 05 8C */	sth r0, 0x58c(r30)
/* 80652CF8  A8 1E 05 8C */	lha r0, 0x58c(r30)
/* 80652CFC  2C 00 14 00 */	cmpwi r0, 0x1400
/* 80652D00  40 81 00 14 */	ble lbl_80652D14
/* 80652D04  38 00 14 00 */	li r0, 0x1400
/* 80652D08  B0 1E 05 8C */	sth r0, 0x58c(r30)
/* 80652D0C  38 00 00 00 */	li r0, 0
/* 80652D10  B0 1E 05 90 */	sth r0, 0x590(r30)
lbl_80652D14:
/* 80652D14  38 7E 05 90 */	addi r3, r30, 0x590
/* 80652D18  38 80 00 00 */	li r4, 0
/* 80652D1C  38 A0 00 80 */	li r5, 0x80
/* 80652D20  4B C1 DE 71 */	bl cLib_chaseAngleS__FPsss
/* 80652D24  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80652D28  88 1E 05 84 */	lbz r0, 0x584(r30)
/* 80652D2C  28 00 00 00 */	cmplwi r0, 0
/* 80652D30  40 82 00 10 */	bne lbl_80652D40
/* 80652D34  88 1E 05 85 */	lbz r0, 0x585(r30)
/* 80652D38  28 00 00 00 */	cmplwi r0, 0
/* 80652D3C  41 82 00 08 */	beq lbl_80652D44
lbl_80652D40:
/* 80652D40  C0 3F 00 14 */	lfs f1, 0x14(r31)
lbl_80652D44:
/* 80652D44  38 7E 05 88 */	addi r3, r30, 0x588
/* 80652D48  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80652D4C  C0 7F 00 1C */	lfs f3, 0x1c(r31)
/* 80652D50  4B C1 CC ED */	bl cLib_addCalc2__FPffff
/* 80652D54  38 A0 00 00 */	li r5, 0
/* 80652D58  38 00 00 02 */	li r0, 2
/* 80652D5C  7C 09 03 A6 */	mtctr r0
lbl_80652D60:
/* 80652D60  38 85 05 84 */	addi r4, r5, 0x584
/* 80652D64  7C 7E 20 AE */	lbzx r3, r30, r4
/* 80652D68  28 03 00 00 */	cmplwi r3, 0
/* 80652D6C  41 82 00 0C */	beq lbl_80652D78
/* 80652D70  38 03 FF FF */	addi r0, r3, -1
/* 80652D74  7C 1E 21 AE */	stbx r0, r30, r4
lbl_80652D78:
/* 80652D78  38 A5 00 01 */	addi r5, r5, 1
/* 80652D7C  42 00 FF E4 */	bdnz lbl_80652D60
/* 80652D80  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80652D84  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80652D88  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80652D8C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80652D90  39 61 00 40 */	addi r11, r1, 0x40
/* 80652D94  4B D0 F4 95 */	bl _restgpr_29
/* 80652D98  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80652D9C  7C 08 03 A6 */	mtlr r0
/* 80652DA0  38 21 00 60 */	addi r1, r1, 0x60
/* 80652DA4  4E 80 00 20 */	blr 
