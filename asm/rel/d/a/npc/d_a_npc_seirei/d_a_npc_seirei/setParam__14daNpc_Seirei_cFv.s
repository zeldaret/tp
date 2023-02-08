lbl_80AD5EEC:
/* 80AD5EEC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AD5EF0  7C 08 02 A6 */	mflr r0
/* 80AD5EF4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AD5EF8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80AD5EFC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80AD5F00  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AD5F04  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AD5F08  7C 7E 1B 78 */	mr r30, r3
/* 80AD5F0C  48 00 06 F9 */	bl selectAction__14daNpc_Seirei_cFv
/* 80AD5F10  7F C3 F3 78 */	mr r3, r30
/* 80AD5F14  48 00 01 3D */	bl srchActors__14daNpc_Seirei_cFv
/* 80AD5F18  3C 60 80 AD */	lis r3, m__20daNpc_Seirei_Param_c@ha /* 0x80AD7CA8@ha */
/* 80AD5F1C  3B E3 7C A8 */	addi r31, r3, m__20daNpc_Seirei_Param_c@l /* 0x80AD7CA8@l */
/* 80AD5F20  C3 FF 00 90 */	lfs f31, 0x90(r31)
/* 80AD5F24  38 60 00 28 */	li r3, 0x28
/* 80AD5F28  48 00 01 0D */	bl getDistTable__12dAttention_cFi
/* 80AD5F2C  D3 E3 00 00 */	stfs f31, 0(r3)
/* 80AD5F30  38 60 00 28 */	li r3, 0x28
/* 80AD5F34  48 00 01 01 */	bl getDistTable__12dAttention_cFi
/* 80AD5F38  D3 E3 00 04 */	stfs f31, 4(r3)
/* 80AD5F3C  38 60 00 27 */	li r3, 0x27
/* 80AD5F40  48 00 00 F5 */	bl getDistTable__12dAttention_cFi
/* 80AD5F44  D3 E3 00 00 */	stfs f31, 0(r3)
/* 80AD5F48  38 60 00 27 */	li r3, 0x27
/* 80AD5F4C  48 00 00 E9 */	bl getDistTable__12dAttention_cFi
/* 80AD5F50  D3 E3 00 04 */	stfs f31, 4(r3)
/* 80AD5F54  38 00 00 27 */	li r0, 0x27
/* 80AD5F58  98 1E 05 44 */	stb r0, 0x544(r30)
/* 80AD5F5C  98 1E 05 45 */	stb r0, 0x545(r30)
/* 80AD5F60  98 1E 05 47 */	stb r0, 0x547(r30)
/* 80AD5F64  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80AD5F68  54 04 A6 3E */	rlwinm r4, r0, 0x14, 0x18, 0x1f
/* 80AD5F6C  28 04 00 FF */	cmplwi r4, 0xff
/* 80AD5F70  41 82 00 2C */	beq lbl_80AD5F9C
/* 80AD5F74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AD5F78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AD5F7C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80AD5F80  7C 05 07 74 */	extsb r5, r0
/* 80AD5F84  4B 55 F3 DD */	bl isSwitch__10dSv_info_cCFii
/* 80AD5F88  2C 03 00 00 */	cmpwi r3, 0
/* 80AD5F8C  41 82 00 10 */	beq lbl_80AD5F9C
/* 80AD5F90  38 00 00 08 */	li r0, 8
/* 80AD5F94  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80AD5F98  48 00 00 0C */	b lbl_80AD5FA4
lbl_80AD5F9C:
/* 80AD5F9C  38 00 00 00 */	li r0, 0
/* 80AD5FA0  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80AD5FA4:
/* 80AD5FA4  3C 60 80 AD */	lis r3, m__20daNpc_Seirei_Param_c@ha /* 0x80AD7CA8@ha */
/* 80AD5FA8  38 63 7C A8 */	addi r3, r3, m__20daNpc_Seirei_Param_c@l /* 0x80AD7CA8@l */
/* 80AD5FAC  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80AD5FB0  FC 00 00 1E */	fctiwz f0, f0
/* 80AD5FB4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80AD5FB8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AD5FBC  98 1E 08 78 */	stb r0, 0x878(r30)
/* 80AD5FC0  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80AD5FC4  D0 1E 0D EC */	stfs f0, 0xdec(r30)
/* 80AD5FC8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80AD5FCC  D0 1E 0D F0 */	stfs f0, 0xdf0(r30)
/* 80AD5FD0  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 80AD5FD4  D0 1E 0D F8 */	stfs f0, 0xdf8(r30)
/* 80AD5FD8  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80AD5FDC  C0 3E 0D F0 */	lfs f1, 0xdf0(r30)
/* 80AD5FE0  4B 59 FF 61 */	bl SetWallR__12dBgS_AcchCirFf
/* 80AD5FE4  3C 60 80 AD */	lis r3, m__20daNpc_Seirei_Param_c@ha /* 0x80AD7CA8@ha */
/* 80AD5FE8  38 63 7C A8 */	addi r3, r3, m__20daNpc_Seirei_Param_c@l /* 0x80AD7CA8@l */
/* 80AD5FEC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80AD5FF0  D0 1E 08 D0 */	stfs f0, 0x8d0(r30)
/* 80AD5FF4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80AD5FF8  D0 1E 0D E8 */	stfs f0, 0xde8(r30)
/* 80AD5FFC  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80AD6000  D0 1E 0A 80 */	stfs f0, 0xa80(r30)
/* 80AD6004  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80AD6008  D0 1E 0A 84 */	stfs f0, 0xa84(r30)
/* 80AD600C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80AD6010  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80AD6014  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80AD6018  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80AD601C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AD6020  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AD6024  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AD6028  7C 08 03 A6 */	mtlr r0
/* 80AD602C  38 21 00 30 */	addi r1, r1, 0x30
/* 80AD6030  4E 80 00 20 */	blr 
