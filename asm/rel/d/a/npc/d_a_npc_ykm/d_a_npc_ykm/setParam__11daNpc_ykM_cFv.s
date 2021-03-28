lbl_80B54BD0:
/* 80B54BD0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B54BD4  7C 08 02 A6 */	mflr r0
/* 80B54BD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B54BDC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80B54BE0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80B54BE4  39 61 00 20 */	addi r11, r1, 0x20
/* 80B54BE8  4B 80 D5 F0 */	b _savegpr_28
/* 80B54BEC  7C 7E 1B 78 */	mr r30, r3
/* 80B54BF0  3C 80 80 B6 */	lis r4, m__17daNpc_ykM_Param_c@ha
/* 80B54BF4  3B E4 D7 94 */	addi r31, r4, m__17daNpc_ykM_Param_c@l
/* 80B54BF8  48 00 1C 15 */	bl selectAction__11daNpc_ykM_cFv
/* 80B54BFC  7F C3 F3 78 */	mr r3, r30
/* 80B54C00  48 00 04 A5 */	bl srchActors__11daNpc_ykM_cFv
/* 80B54C04  88 1E 14 74 */	lbz r0, 0x1474(r30)
/* 80B54C08  28 00 00 05 */	cmplwi r0, 5
/* 80B54C0C  41 82 01 44 */	beq lbl_80B54D50
/* 80B54C10  28 00 00 06 */	cmplwi r0, 6
/* 80B54C14  41 82 01 3C */	beq lbl_80B54D50
/* 80B54C18  3B 80 00 0A */	li r28, 0xa
/* 80B54C1C  3B BF 00 00 */	addi r29, r31, 0
/* 80B54C20  C3 FD 00 90 */	lfs f31, 0x90(r29)
/* 80B54C24  38 60 00 47 */	li r3, 0x47
/* 80B54C28  48 00 02 21 */	bl getDistTable__12dAttention_cFi
/* 80B54C2C  D3 E3 00 00 */	stfs f31, 0(r3)
/* 80B54C30  38 60 00 47 */	li r3, 0x47
/* 80B54C34  48 00 02 15 */	bl getDistTable__12dAttention_cFi
/* 80B54C38  D3 E3 00 04 */	stfs f31, 4(r3)
/* 80B54C3C  C3 FD 00 94 */	lfs f31, 0x94(r29)
/* 80B54C40  38 60 00 46 */	li r3, 0x46
/* 80B54C44  48 00 02 05 */	bl getDistTable__12dAttention_cFi
/* 80B54C48  D3 E3 00 00 */	stfs f31, 0(r3)
/* 80B54C4C  38 60 00 46 */	li r3, 0x46
/* 80B54C50  48 00 01 F9 */	bl getDistTable__12dAttention_cFi
/* 80B54C54  D3 E3 00 04 */	stfs f31, 4(r3)
/* 80B54C58  3B A0 00 04 */	li r29, 4
/* 80B54C5C  88 1E 14 74 */	lbz r0, 0x1474(r30)
/* 80B54C60  28 00 00 01 */	cmplwi r0, 1
/* 80B54C64  41 82 00 0C */	beq lbl_80B54C70
/* 80B54C68  28 00 00 02 */	cmplwi r0, 2
/* 80B54C6C  40 82 00 48 */	bne lbl_80B54CB4
lbl_80B54C70:
/* 80B54C70  28 00 00 01 */	cmplwi r0, 1
/* 80B54C74  40 82 00 38 */	bne lbl_80B54CAC
/* 80B54C78  C3 FF 01 28 */	lfs f31, 0x128(r31)
/* 80B54C7C  38 60 00 47 */	li r3, 0x47
/* 80B54C80  48 00 01 C9 */	bl getDistTable__12dAttention_cFi
/* 80B54C84  D3 E3 00 00 */	stfs f31, 0(r3)
/* 80B54C88  38 60 00 47 */	li r3, 0x47
/* 80B54C8C  48 00 01 BD */	bl getDistTable__12dAttention_cFi
/* 80B54C90  D3 E3 00 04 */	stfs f31, 4(r3)
/* 80B54C94  38 60 00 46 */	li r3, 0x46
/* 80B54C98  48 00 01 B1 */	bl getDistTable__12dAttention_cFi
/* 80B54C9C  D3 E3 00 00 */	stfs f31, 0(r3)
/* 80B54CA0  38 60 00 46 */	li r3, 0x46
/* 80B54CA4  48 00 01 A5 */	bl getDistTable__12dAttention_cFi
/* 80B54CA8  D3 E3 00 04 */	stfs f31, 4(r3)
lbl_80B54CAC:
/* 80B54CAC  63 BD 00 80 */	ori r29, r29, 0x80
/* 80B54CB0  48 00 00 4C */	b lbl_80B54CFC
lbl_80B54CB4:
/* 80B54CB4  28 00 00 04 */	cmplwi r0, 4
/* 80B54CB8  40 82 00 44 */	bne lbl_80B54CFC
/* 80B54CBC  C3 FF 01 2C */	lfs f31, 0x12c(r31)
/* 80B54CC0  38 60 00 47 */	li r3, 0x47
/* 80B54CC4  48 00 01 85 */	bl getDistTable__12dAttention_cFi
/* 80B54CC8  D3 E3 00 00 */	stfs f31, 0(r3)
/* 80B54CCC  C3 FF 01 30 */	lfs f31, 0x130(r31)
/* 80B54CD0  38 60 00 47 */	li r3, 0x47
/* 80B54CD4  48 00 01 75 */	bl getDistTable__12dAttention_cFi
/* 80B54CD8  D3 E3 00 04 */	stfs f31, 4(r3)
/* 80B54CDC  C3 FF 00 F8 */	lfs f31, 0xf8(r31)
/* 80B54CE0  38 60 00 46 */	li r3, 0x46
/* 80B54CE4  48 00 01 65 */	bl getDistTable__12dAttention_cFi
/* 80B54CE8  D3 E3 00 00 */	stfs f31, 0(r3)
/* 80B54CEC  C3 FF 01 34 */	lfs f31, 0x134(r31)
/* 80B54CF0  38 60 00 46 */	li r3, 0x46
/* 80B54CF4  48 00 01 55 */	bl getDistTable__12dAttention_cFi
/* 80B54CF8  D3 E3 00 04 */	stfs f31, 4(r3)
lbl_80B54CFC:
/* 80B54CFC  38 60 00 47 */	li r3, 0x47
/* 80B54D00  48 00 01 49 */	bl getDistTable__12dAttention_cFi
/* 80B54D04  93 A3 00 18 */	stw r29, 0x18(r3)
/* 80B54D08  38 60 00 46 */	li r3, 0x46
/* 80B54D0C  48 00 01 3D */	bl getDistTable__12dAttention_cFi
/* 80B54D10  93 A3 00 18 */	stw r29, 0x18(r3)
/* 80B54D14  38 00 00 47 */	li r0, 0x47
/* 80B54D18  98 1E 05 44 */	stb r0, 0x544(r30)
/* 80B54D1C  88 1E 05 44 */	lbz r0, 0x544(r30)
/* 80B54D20  98 1E 05 45 */	stb r0, 0x545(r30)
/* 80B54D24  38 00 00 46 */	li r0, 0x46
/* 80B54D28  98 1E 05 47 */	stb r0, 0x547(r30)
/* 80B54D2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B54D30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B54D34  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80B54D38  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80B54D3C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80B54D40  41 82 00 08 */	beq lbl_80B54D48
/* 80B54D44  67 9C 00 80 */	oris r28, r28, 0x80
lbl_80B54D48:
/* 80B54D48  93 9E 05 5C */	stw r28, 0x55c(r30)
/* 80B54D4C  48 00 00 0C */	b lbl_80B54D58
lbl_80B54D50:
/* 80B54D50  38 00 00 00 */	li r0, 0
/* 80B54D54  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80B54D58:
/* 80B54D58  38 7F 00 00 */	addi r3, r31, 0
/* 80B54D5C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B54D60  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 80B54D64  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 80B54D68  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 80B54D6C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80B54D70  FC 00 00 1E */	fctiwz f0, f0
/* 80B54D74  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B54D78  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B54D7C  98 1E 08 78 */	stb r0, 0x878(r30)
/* 80B54D80  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80B54D84  D0 1E 0D EC */	stfs f0, 0xdec(r30)
/* 80B54D88  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B54D8C  D0 1E 0D F0 */	stfs f0, 0xdf0(r30)
/* 80B54D90  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80B54D94  D0 1E 0D F8 */	stfs f0, 0xdf8(r30)
/* 80B54D98  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80B54D9C  C0 3E 0D F0 */	lfs f1, 0xdf0(r30)
/* 80B54DA0  4B 52 11 A0 */	b SetWallR__12dBgS_AcchCirFf
/* 80B54DA4  38 7F 00 00 */	addi r3, r31, 0
/* 80B54DA8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B54DAC  D0 1E 08 D0 */	stfs f0, 0x8d0(r30)
/* 80B54DB0  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80B54DB4  60 00 01 00 */	ori r0, r0, 0x100
/* 80B54DB8  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 80B54DBC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B54DC0  D0 1E 0D E8 */	stfs f0, 0xde8(r30)
/* 80B54DC4  88 1E 15 7B */	lbz r0, 0x157b(r30)
/* 80B54DC8  28 00 00 00 */	cmplwi r0, 0
/* 80B54DCC  41 82 00 10 */	beq lbl_80B54DDC
/* 80B54DD0  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80B54DD4  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 80B54DD8  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_80B54DDC:
/* 80B54DDC  88 1E 14 74 */	lbz r0, 0x1474(r30)
/* 80B54DE0  28 00 00 03 */	cmplwi r0, 3
/* 80B54DE4  40 82 00 18 */	bne lbl_80B54DFC
/* 80B54DE8  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80B54DEC  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 80B54DF0  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 80B54DF4  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 80B54DF8  D0 1E 0D E8 */	stfs f0, 0xde8(r30)
lbl_80B54DFC:
/* 80B54DFC  38 7F 00 00 */	addi r3, r31, 0
/* 80B54E00  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B54E04  D0 1E 0A 80 */	stfs f0, 0xa80(r30)
/* 80B54E08  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80B54E0C  D0 1E 0A 84 */	stfs f0, 0xa84(r30)
/* 80B54E10  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B54E14  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80B54E18  38 00 00 00 */	li r0, 0
/* 80B54E1C  98 1E 15 74 */	stb r0, 0x1574(r30)
/* 80B54E20  98 1E 15 75 */	stb r0, 0x1575(r30)
/* 80B54E24  B0 1E 0D 8C */	sth r0, 0xd8c(r30)
/* 80B54E28  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80B54E2C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80B54E30  39 61 00 20 */	addi r11, r1, 0x20
/* 80B54E34  4B 80 D3 F0 */	b _restgpr_28
/* 80B54E38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B54E3C  7C 08 03 A6 */	mtlr r0
/* 80B54E40  38 21 00 30 */	addi r1, r1, 0x30
/* 80B54E44  4E 80 00 20 */	blr 
