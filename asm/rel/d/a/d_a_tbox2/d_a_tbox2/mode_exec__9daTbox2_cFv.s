lbl_80497790:
/* 80497790  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80497794  7C 08 02 A6 */	mflr r0
/* 80497798  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049779C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804977A0  7C 7F 1B 78 */	mr r31, r3
/* 804977A4  48 00 00 69 */	bl action__9daTbox2_cFv
/* 804977A8  7F E3 FB 78 */	mr r3, r31
/* 804977AC  38 80 00 00 */	li r4, 0
/* 804977B0  4B B8 2F 1C */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 804977B4  38 7F 07 2C */	addi r3, r31, 0x72c
/* 804977B8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 804977BC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 804977C0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 804977C4  4B BD F2 E8 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 804977C8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804977CC  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 804977D0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804977D4  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 804977D8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804977DC  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 804977E0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804977E4  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 804977E8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804977EC  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 804977F0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804977F4  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 804977F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804977FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80497800  7C 08 03 A6 */	mtlr r0
/* 80497804  38 21 00 10 */	addi r1, r1, 0x10
/* 80497808  4E 80 00 20 */	blr 
