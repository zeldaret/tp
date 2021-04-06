lbl_80AC7C1C:
/* 80AC7C1C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AC7C20  7C 08 02 A6 */	mflr r0
/* 80AC7C24  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AC7C28  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80AC7C2C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80AC7C30  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AC7C34  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AC7C38  7C 7E 1B 78 */	mr r30, r3
/* 80AC7C3C  48 00 05 DD */	bl selectAction__12daNpc_seiC_cFv
/* 80AC7C40  7F C3 F3 78 */	mr r3, r30
/* 80AC7C44  48 00 01 05 */	bl srchActors__12daNpc_seiC_cFv
/* 80AC7C48  3C 60 80 AD */	lis r3, m__18daNpc_seiC_Param_c@ha /* 0x80AC921C@ha */
/* 80AC7C4C  3B E3 92 1C */	addi r31, r3, m__18daNpc_seiC_Param_c@l /* 0x80AC921C@l */
/* 80AC7C50  C3 FF 00 90 */	lfs f31, 0x90(r31)
/* 80AC7C54  38 60 00 28 */	li r3, 0x28
/* 80AC7C58  48 00 00 DD */	bl getDistTable__12dAttention_cFi
/* 80AC7C5C  D3 E3 00 00 */	stfs f31, 0(r3)
/* 80AC7C60  38 60 00 28 */	li r3, 0x28
/* 80AC7C64  48 00 00 D1 */	bl getDistTable__12dAttention_cFi
/* 80AC7C68  D3 E3 00 04 */	stfs f31, 4(r3)
/* 80AC7C6C  38 60 00 27 */	li r3, 0x27
/* 80AC7C70  48 00 00 C5 */	bl getDistTable__12dAttention_cFi
/* 80AC7C74  D3 E3 00 00 */	stfs f31, 0(r3)
/* 80AC7C78  38 60 00 27 */	li r3, 0x27
/* 80AC7C7C  48 00 00 B9 */	bl getDistTable__12dAttention_cFi
/* 80AC7C80  D3 E3 00 04 */	stfs f31, 4(r3)
/* 80AC7C84  38 00 00 27 */	li r0, 0x27
/* 80AC7C88  98 1E 05 44 */	stb r0, 0x544(r30)
/* 80AC7C8C  98 1E 05 45 */	stb r0, 0x545(r30)
/* 80AC7C90  98 1E 05 47 */	stb r0, 0x547(r30)
/* 80AC7C94  38 00 00 00 */	li r0, 0
/* 80AC7C98  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80AC7C9C  3C 60 80 AD */	lis r3, m__18daNpc_seiC_Param_c@ha /* 0x80AC921C@ha */
/* 80AC7CA0  38 63 92 1C */	addi r3, r3, m__18daNpc_seiC_Param_c@l /* 0x80AC921C@l */
/* 80AC7CA4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80AC7CA8  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 80AC7CAC  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 80AC7CB0  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 80AC7CB4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80AC7CB8  FC 00 00 1E */	fctiwz f0, f0
/* 80AC7CBC  D8 01 00 08 */	stfd f0, 8(r1)
/* 80AC7CC0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AC7CC4  98 1E 08 78 */	stb r0, 0x878(r30)
/* 80AC7CC8  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80AC7CCC  D0 1E 0D EC */	stfs f0, 0xdec(r30)
/* 80AC7CD0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80AC7CD4  D0 1E 0D F0 */	stfs f0, 0xdf0(r30)
/* 80AC7CD8  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80AC7CDC  C0 3E 0D F0 */	lfs f1, 0xdf0(r30)
/* 80AC7CE0  4B 5A E2 61 */	bl SetWallR__12dBgS_AcchCirFf
/* 80AC7CE4  3C 60 80 AD */	lis r3, m__18daNpc_seiC_Param_c@ha /* 0x80AC921C@ha */
/* 80AC7CE8  38 63 92 1C */	addi r3, r3, m__18daNpc_seiC_Param_c@l /* 0x80AC921C@l */
/* 80AC7CEC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80AC7CF0  D0 1E 08 D0 */	stfs f0, 0x8d0(r30)
/* 80AC7CF4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80AC7CF8  D0 1E 0D E8 */	stfs f0, 0xde8(r30)
/* 80AC7CFC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80AC7D00  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80AC7D04  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80AC7D08  D0 1E 0A 80 */	stfs f0, 0xa80(r30)
/* 80AC7D0C  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80AC7D10  D0 1E 0A 84 */	stfs f0, 0xa84(r30)
/* 80AC7D14  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80AC7D18  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80AC7D1C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AC7D20  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AC7D24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AC7D28  7C 08 03 A6 */	mtlr r0
/* 80AC7D2C  38 21 00 30 */	addi r1, r1, 0x30
/* 80AC7D30  4E 80 00 20 */	blr 
