lbl_80AC9D5C:
/* 80AC9D5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AC9D60  7C 08 02 A6 */	mflr r0
/* 80AC9D64  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AC9D68  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80AC9D6C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80AC9D70  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AC9D74  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AC9D78  7C 7E 1B 78 */	mr r30, r3
/* 80AC9D7C  48 00 05 DD */	bl selectAction__12daNpc_seiD_cFv
/* 80AC9D80  7F C3 F3 78 */	mr r3, r30
/* 80AC9D84  48 00 01 05 */	bl srchActors__12daNpc_seiD_cFv
/* 80AC9D88  3C 60 80 AD */	lis r3, m__18daNpc_seiD_Param_c@ha
/* 80AC9D8C  3B E3 B3 5C */	addi r31, r3, m__18daNpc_seiD_Param_c@l
/* 80AC9D90  C3 FF 00 90 */	lfs f31, 0x90(r31)
/* 80AC9D94  38 60 00 28 */	li r3, 0x28
/* 80AC9D98  48 00 00 DD */	bl getDistTable__12dAttention_cFi
/* 80AC9D9C  D3 E3 00 00 */	stfs f31, 0(r3)
/* 80AC9DA0  38 60 00 28 */	li r3, 0x28
/* 80AC9DA4  48 00 00 D1 */	bl getDistTable__12dAttention_cFi
/* 80AC9DA8  D3 E3 00 04 */	stfs f31, 4(r3)
/* 80AC9DAC  38 60 00 27 */	li r3, 0x27
/* 80AC9DB0  48 00 00 C5 */	bl getDistTable__12dAttention_cFi
/* 80AC9DB4  D3 E3 00 00 */	stfs f31, 0(r3)
/* 80AC9DB8  38 60 00 27 */	li r3, 0x27
/* 80AC9DBC  48 00 00 B9 */	bl getDistTable__12dAttention_cFi
/* 80AC9DC0  D3 E3 00 04 */	stfs f31, 4(r3)
/* 80AC9DC4  38 00 00 27 */	li r0, 0x27
/* 80AC9DC8  98 1E 05 44 */	stb r0, 0x544(r30)
/* 80AC9DCC  98 1E 05 45 */	stb r0, 0x545(r30)
/* 80AC9DD0  98 1E 05 47 */	stb r0, 0x547(r30)
/* 80AC9DD4  38 00 00 00 */	li r0, 0
/* 80AC9DD8  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80AC9DDC  3C 60 80 AD */	lis r3, m__18daNpc_seiD_Param_c@ha
/* 80AC9DE0  38 63 B3 5C */	addi r3, r3, m__18daNpc_seiD_Param_c@l
/* 80AC9DE4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80AC9DE8  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 80AC9DEC  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 80AC9DF0  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 80AC9DF4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80AC9DF8  FC 00 00 1E */	fctiwz f0, f0
/* 80AC9DFC  D8 01 00 08 */	stfd f0, 8(r1)
/* 80AC9E00  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AC9E04  98 1E 08 78 */	stb r0, 0x878(r30)
/* 80AC9E08  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80AC9E0C  D0 1E 0D EC */	stfs f0, 0xdec(r30)
/* 80AC9E10  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80AC9E14  D0 1E 0D F0 */	stfs f0, 0xdf0(r30)
/* 80AC9E18  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80AC9E1C  C0 3E 0D F0 */	lfs f1, 0xdf0(r30)
/* 80AC9E20  4B 5A C1 20 */	b SetWallR__12dBgS_AcchCirFf
/* 80AC9E24  3C 60 80 AD */	lis r3, m__18daNpc_seiD_Param_c@ha
/* 80AC9E28  38 63 B3 5C */	addi r3, r3, m__18daNpc_seiD_Param_c@l
/* 80AC9E2C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80AC9E30  D0 1E 08 D0 */	stfs f0, 0x8d0(r30)
/* 80AC9E34  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80AC9E38  D0 1E 0D E8 */	stfs f0, 0xde8(r30)
/* 80AC9E3C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80AC9E40  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80AC9E44  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80AC9E48  D0 1E 0A 80 */	stfs f0, 0xa80(r30)
/* 80AC9E4C  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80AC9E50  D0 1E 0A 84 */	stfs f0, 0xa84(r30)
/* 80AC9E54  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80AC9E58  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80AC9E5C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AC9E60  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AC9E64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AC9E68  7C 08 03 A6 */	mtlr r0
/* 80AC9E6C  38 21 00 30 */	addi r1, r1, 0x30
/* 80AC9E70  4E 80 00 20 */	blr 
