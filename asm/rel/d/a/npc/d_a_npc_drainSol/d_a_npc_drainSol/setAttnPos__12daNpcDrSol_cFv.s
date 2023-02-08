lbl_809AEFDC:
/* 809AEFDC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809AEFE0  7C 08 02 A6 */	mflr r0
/* 809AEFE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 809AEFE8  39 61 00 30 */	addi r11, r1, 0x30
/* 809AEFEC  4B 9B 31 F1 */	bl _savegpr_29
/* 809AEFF0  7C 7F 1B 78 */	mr r31, r3
/* 809AEFF4  3C 80 80 9B */	lis r4, m__18daNpcDrSol_Param_c@ha /* 0x809AF9A4@ha */
/* 809AEFF8  3B A4 F9 A4 */	addi r29, r4, m__18daNpcDrSol_Param_c@l /* 0x809AF9A4@l */
/* 809AEFFC  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809AF000  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809AF004  7D 89 03 A6 */	mtctr r12
/* 809AF008  4E 80 04 21 */	bctrl 
/* 809AF00C  C0 1D 01 04 */	lfs f0, 0x104(r29)
/* 809AF010  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809AF014  C0 1D 01 08 */	lfs f0, 0x108(r29)
/* 809AF018  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809AF01C  C0 1D 00 FC */	lfs f0, 0xfc(r29)
/* 809AF020  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809AF024  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809AF028  80 63 00 04 */	lwz r3, 4(r3)
/* 809AF02C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809AF030  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809AF034  38 63 00 C0 */	addi r3, r3, 0xc0
/* 809AF038  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809AF03C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809AF040  4B 99 74 71 */	bl PSMTXCopy
/* 809AF044  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809AF048  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809AF04C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 809AF050  D0 1F 08 E4 */	stfs f0, 0x8e4(r31)
/* 809AF054  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 809AF058  D0 1F 08 E8 */	stfs f0, 0x8e8(r31)
/* 809AF05C  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 809AF060  D0 1F 08 EC */	stfs f0, 0x8ec(r31)
/* 809AF064  7F C3 F3 78 */	mr r3, r30
/* 809AF068  38 81 00 14 */	addi r4, r1, 0x14
/* 809AF06C  38 BF 05 38 */	addi r5, r31, 0x538
/* 809AF070  4B 99 7C FD */	bl PSMTXMultVec
/* 809AF074  C0 5F 08 EC */	lfs f2, 0x8ec(r31)
/* 809AF078  C0 3F 08 E8 */	lfs f1, 0x8e8(r31)
/* 809AF07C  C0 1D 00 00 */	lfs f0, 0(r29)
/* 809AF080  EC 21 00 2A */	fadds f1, f1, f0
/* 809AF084  C0 1F 08 E4 */	lfs f0, 0x8e4(r31)
/* 809AF088  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 809AF08C  D0 3F 05 54 */	stfs f1, 0x554(r31)
/* 809AF090  D0 5F 05 58 */	stfs f2, 0x558(r31)
/* 809AF094  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809AF098  80 63 00 04 */	lwz r3, 4(r3)
/* 809AF09C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809AF0A0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809AF0A4  38 63 00 60 */	addi r3, r3, 0x60
/* 809AF0A8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809AF0AC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809AF0B0  4B 99 74 01 */	bl PSMTXCopy
/* 809AF0B4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 809AF0B8  D0 01 00 08 */	stfs f0, 8(r1)
/* 809AF0BC  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 809AF0C0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809AF0C4  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 809AF0C8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809AF0CC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 809AF0D0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809AF0D4  38 7F 0D 04 */	addi r3, r31, 0xd04
/* 809AF0D8  38 81 00 08 */	addi r4, r1, 8
/* 809AF0DC  4B 8C 01 01 */	bl SetC__8cM3dGCylFRC4cXyz
/* 809AF0E0  38 7F 0D 04 */	addi r3, r31, 0xd04
/* 809AF0E4  38 9D 00 00 */	addi r4, r29, 0
/* 809AF0E8  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 809AF0EC  4B 8C 01 0D */	bl SetH__8cM3dGCylFf
/* 809AF0F0  38 7F 0D 04 */	addi r3, r31, 0xd04
/* 809AF0F4  38 9D 00 00 */	addi r4, r29, 0
/* 809AF0F8  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 809AF0FC  4B 8C 01 05 */	bl SetR__8cM3dGCylFf
/* 809AF100  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809AF104  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809AF108  38 63 23 3C */	addi r3, r3, 0x233c
/* 809AF10C  38 9F 0B E0 */	addi r4, r31, 0xbe0
/* 809AF110  4B 8B 5A 99 */	bl Set__4cCcSFP8cCcD_Obj
/* 809AF114  39 61 00 30 */	addi r11, r1, 0x30
/* 809AF118  4B 9B 31 11 */	bl _restgpr_29
/* 809AF11C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809AF120  7C 08 03 A6 */	mtlr r0
/* 809AF124  38 21 00 30 */	addi r1, r1, 0x30
/* 809AF128  4E 80 00 20 */	blr 
