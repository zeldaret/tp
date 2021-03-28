lbl_80AC57C4:
/* 80AC57C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AC57C8  7C 08 02 A6 */	mflr r0
/* 80AC57CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AC57D0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80AC57D4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80AC57D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AC57DC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AC57E0  7C 7E 1B 78 */	mr r30, r3
/* 80AC57E4  48 00 05 DD */	bl selectAction__12daNpc_seiB_cFv
/* 80AC57E8  7F C3 F3 78 */	mr r3, r30
/* 80AC57EC  48 00 01 05 */	bl srchActors__12daNpc_seiB_cFv
/* 80AC57F0  3C 60 80 AC */	lis r3, m__18daNpc_seiB_Param_c@ha
/* 80AC57F4  3B E3 70 24 */	addi r31, r3, m__18daNpc_seiB_Param_c@l
/* 80AC57F8  C3 FF 00 90 */	lfs f31, 0x90(r31)
/* 80AC57FC  38 60 00 28 */	li r3, 0x28
/* 80AC5800  48 00 00 DD */	bl getDistTable__12dAttention_cFi
/* 80AC5804  D3 E3 00 00 */	stfs f31, 0(r3)
/* 80AC5808  38 60 00 28 */	li r3, 0x28
/* 80AC580C  48 00 00 D1 */	bl getDistTable__12dAttention_cFi
/* 80AC5810  D3 E3 00 04 */	stfs f31, 4(r3)
/* 80AC5814  38 60 00 27 */	li r3, 0x27
/* 80AC5818  48 00 00 C5 */	bl getDistTable__12dAttention_cFi
/* 80AC581C  D3 E3 00 00 */	stfs f31, 0(r3)
/* 80AC5820  38 60 00 27 */	li r3, 0x27
/* 80AC5824  48 00 00 B9 */	bl getDistTable__12dAttention_cFi
/* 80AC5828  D3 E3 00 04 */	stfs f31, 4(r3)
/* 80AC582C  38 00 00 27 */	li r0, 0x27
/* 80AC5830  98 1E 05 44 */	stb r0, 0x544(r30)
/* 80AC5834  98 1E 05 45 */	stb r0, 0x545(r30)
/* 80AC5838  98 1E 05 47 */	stb r0, 0x547(r30)
/* 80AC583C  38 00 00 00 */	li r0, 0
/* 80AC5840  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80AC5844  3C 60 80 AC */	lis r3, m__18daNpc_seiB_Param_c@ha
/* 80AC5848  38 63 70 24 */	addi r3, r3, m__18daNpc_seiB_Param_c@l
/* 80AC584C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80AC5850  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 80AC5854  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 80AC5858  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 80AC585C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80AC5860  FC 00 00 1E */	fctiwz f0, f0
/* 80AC5864  D8 01 00 08 */	stfd f0, 8(r1)
/* 80AC5868  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AC586C  98 1E 08 78 */	stb r0, 0x878(r30)
/* 80AC5870  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80AC5874  D0 1E 0D EC */	stfs f0, 0xdec(r30)
/* 80AC5878  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80AC587C  D0 1E 0D F0 */	stfs f0, 0xdf0(r30)
/* 80AC5880  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80AC5884  C0 3E 0D F0 */	lfs f1, 0xdf0(r30)
/* 80AC5888  4B 5B 06 B8 */	b SetWallR__12dBgS_AcchCirFf
/* 80AC588C  3C 60 80 AC */	lis r3, m__18daNpc_seiB_Param_c@ha
/* 80AC5890  38 63 70 24 */	addi r3, r3, m__18daNpc_seiB_Param_c@l
/* 80AC5894  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80AC5898  D0 1E 08 D0 */	stfs f0, 0x8d0(r30)
/* 80AC589C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80AC58A0  D0 1E 0D E8 */	stfs f0, 0xde8(r30)
/* 80AC58A4  C0 03 00 04 */	lfs f0, 4(r3)
/* 80AC58A8  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80AC58AC  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80AC58B0  D0 1E 0A 80 */	stfs f0, 0xa80(r30)
/* 80AC58B4  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80AC58B8  D0 1E 0A 84 */	stfs f0, 0xa84(r30)
/* 80AC58BC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80AC58C0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80AC58C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AC58C8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AC58CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AC58D0  7C 08 03 A6 */	mtlr r0
/* 80AC58D4  38 21 00 30 */	addi r1, r1, 0x30
/* 80AC58D8  4E 80 00 20 */	blr 
