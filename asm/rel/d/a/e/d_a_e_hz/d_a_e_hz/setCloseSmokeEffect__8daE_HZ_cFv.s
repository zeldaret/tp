lbl_806EB2E8:
/* 806EB2E8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 806EB2EC  7C 08 02 A6 */	mflr r0
/* 806EB2F0  90 01 00 94 */	stw r0, 0x94(r1)
/* 806EB2F4  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 806EB2F8  7C 7F 1B 78 */	mr r31, r3
/* 806EB2FC  38 61 00 28 */	addi r3, r1, 0x28
/* 806EB300  4B 98 C2 7D */	bl __ct__11dBgS_GndChkFv
/* 806EB304  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806EB308  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806EB30C  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 806EB310  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 806EB314  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 806EB318  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806EB31C  3C 60 80 6F */	lis r3, lit_3966@ha /* 0x806F0860@ha */
/* 806EB320  C0 03 08 60 */	lfs f0, lit_3966@l(r3)  /* 0x806F0860@l */
/* 806EB324  EC 01 00 2A */	fadds f0, f1, f0
/* 806EB328  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806EB32C  38 61 00 28 */	addi r3, r1, 0x28
/* 806EB330  38 81 00 1C */	addi r4, r1, 0x1c
/* 806EB334  4B B7 C9 F5 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 806EB338  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806EB33C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806EB340  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806EB344  38 81 00 28 */	addi r4, r1, 0x28
/* 806EB348  4B 98 91 59 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 806EB34C  3C 60 80 6F */	lis r3, lit_4378@ha /* 0x806F08D0@ha */
/* 806EB350  C0 03 08 D0 */	lfs f0, lit_4378@l(r3)  /* 0x806F08D0@l */
/* 806EB354  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 806EB358  41 82 00 48 */	beq lbl_806EB3A0
/* 806EB35C  38 60 00 00 */	li r3, 0
/* 806EB360  90 61 00 08 */	stw r3, 8(r1)
/* 806EB364  38 00 FF FF */	li r0, -1
/* 806EB368  90 01 00 0C */	stw r0, 0xc(r1)
/* 806EB36C  90 61 00 10 */	stw r3, 0x10(r1)
/* 806EB370  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806EB374  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806EB378  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 806EB37C  3C 80 00 01 */	lis r4, 0x0001 /* 0x000082E2@ha */
/* 806EB380  38 84 82 E2 */	addi r4, r4, 0x82E2 /* 0x000082E2@l */
/* 806EB384  38 A1 00 3C */	addi r5, r1, 0x3c
/* 806EB388  38 DF 06 84 */	addi r6, r31, 0x684
/* 806EB38C  38 FF 01 0C */	addi r7, r31, 0x10c
/* 806EB390  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 806EB394  39 20 00 00 */	li r9, 0
/* 806EB398  39 40 00 00 */	li r10, 0
/* 806EB39C  4B 96 1C CD */	bl setPoly__13dPa_control_cFUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
lbl_806EB3A0:
/* 806EB3A0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007021E@ha */
/* 806EB3A4  38 03 02 1E */	addi r0, r3, 0x021E /* 0x0007021E@l */
/* 806EB3A8  90 01 00 18 */	stw r0, 0x18(r1)
/* 806EB3AC  38 7F 05 C8 */	addi r3, r31, 0x5c8
/* 806EB3B0  38 81 00 18 */	addi r4, r1, 0x18
/* 806EB3B4  38 A0 00 00 */	li r5, 0
/* 806EB3B8  38 C0 FF FF */	li r6, -1
/* 806EB3BC  81 9F 05 C8 */	lwz r12, 0x5c8(r31)
/* 806EB3C0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806EB3C4  7D 89 03 A6 */	mtctr r12
/* 806EB3C8  4E 80 04 21 */	bctrl 
/* 806EB3CC  38 61 00 28 */	addi r3, r1, 0x28
/* 806EB3D0  38 80 FF FF */	li r4, -1
/* 806EB3D4  4B 98 C2 1D */	bl __dt__11dBgS_GndChkFv
/* 806EB3D8  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 806EB3DC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 806EB3E0  7C 08 03 A6 */	mtlr r0
/* 806EB3E4  38 21 00 90 */	addi r1, r1, 0x90
/* 806EB3E8  4E 80 00 20 */	blr 
