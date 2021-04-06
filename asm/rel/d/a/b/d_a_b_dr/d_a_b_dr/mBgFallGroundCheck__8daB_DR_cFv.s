lbl_805BD15C:
/* 805BD15C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 805BD160  7C 08 02 A6 */	mflr r0
/* 805BD164  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 805BD168  39 61 00 B0 */	addi r11, r1, 0xb0
/* 805BD16C  4B DA 50 71 */	bl _savegpr_29
/* 805BD170  7C 7D 1B 78 */	mr r29, r3
/* 805BD174  3C 60 80 5C */	lis r3, lit_3800@ha /* 0x805C6C74@ha */
/* 805BD178  3B E3 6C 74 */	addi r31, r3, lit_3800@l /* 0x805C6C74@l */
/* 805BD17C  38 61 00 4C */	addi r3, r1, 0x4c
/* 805BD180  4B AB A3 FD */	bl __ct__11dBgS_GndChkFv
/* 805BD184  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805BD188  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805BD18C  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 805BD190  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 805BD194  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 805BD198  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805BD19C  C0 1F 03 6C */	lfs f0, 0x36c(r31)
/* 805BD1A0  EC 01 00 2A */	fadds f0, f1, f0
/* 805BD1A4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805BD1A8  38 61 00 4C */	addi r3, r1, 0x4c
/* 805BD1AC  38 81 00 40 */	addi r4, r1, 0x40
/* 805BD1B0  4B CA AB 79 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 805BD1B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805BD1B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805BD1BC  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 805BD1C0  7F C3 F3 78 */	mr r3, r30
/* 805BD1C4  38 81 00 4C */	addi r4, r1, 0x4c
/* 805BD1C8  4B AB 72 D9 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 805BD1CC  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 805BD1D0  C0 5F 03 68 */	lfs f2, 0x368(r31)
/* 805BD1D4  FC 00 08 18 */	frsp f0, f1
/* 805BD1D8  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 805BD1DC  40 82 00 0C */	bne lbl_805BD1E8
/* 805BD1E0  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 805BD1E4  D0 01 00 44 */	stfs f0, 0x44(r1)
lbl_805BD1E8:
/* 805BD1E8  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 805BD1EC  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 805BD1F0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805BD1F4  40 80 00 08 */	bge lbl_805BD1FC
/* 805BD1F8  D0 21 00 44 */	stfs f1, 0x44(r1)
lbl_805BD1FC:
/* 805BD1FC  80 1D 08 5C */	lwz r0, 0x85c(r29)
/* 805BD200  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 805BD204  40 82 00 30 */	bne lbl_805BD234
/* 805BD208  C0 3F 03 80 */	lfs f1, 0x380(r31)
/* 805BD20C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 805BD210  EC 21 00 2A */	fadds f1, f1, f0
/* 805BD214  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805BD218  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805BD21C  41 81 00 18 */	bgt lbl_805BD234
/* 805BD220  38 61 00 4C */	addi r3, r1, 0x4c
/* 805BD224  38 80 FF FF */	li r4, -1
/* 805BD228  4B AB A3 C9 */	bl __dt__11dBgS_GndChkFv
/* 805BD22C  38 60 00 00 */	li r3, 0
/* 805BD230  48 00 01 9C */	b lbl_805BD3CC
lbl_805BD234:
/* 805BD234  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805BD238  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 805BD23C  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 805BD240  C0 3F 03 80 */	lfs f1, 0x380(r31)
/* 805BD244  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 805BD248  EC 01 00 2A */	fadds f0, f1, f0
/* 805BD24C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805BD250  40 80 00 08 */	bge lbl_805BD258
/* 805BD254  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
lbl_805BD258:
/* 805BD258  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 805BD25C  C0 3F 03 80 */	lfs f1, 0x380(r31)
/* 805BD260  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 805BD264  EC 01 00 2A */	fadds f0, f1, f0
/* 805BD268  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805BD26C  40 80 00 08 */	bge lbl_805BD274
/* 805BD270  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
lbl_805BD274:
/* 805BD274  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805BD278  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 805BD27C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 805BD280  80 63 00 04 */	lwz r3, 4(r3)
/* 805BD284  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805BD288  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805BD28C  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 805BD290  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805BD294  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805BD298  4B D8 92 19 */	bl PSMTXCopy
/* 805BD29C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805BD2A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805BD2A4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 805BD2A8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805BD2AC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805BD2B0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805BD2B4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 805BD2B8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805BD2BC  C0 1D 07 34 */	lfs f0, 0x734(r29)
/* 805BD2C0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805BD2C4  3C 60 80 5C */	lis r3, l_HIO@ha /* 0x805C790C@ha */
/* 805BD2C8  38 63 79 0C */	addi r3, r3, l_HIO@l /* 0x805C790C@l */
/* 805BD2CC  C0 03 00 08 */	lfs f0, 8(r3)
/* 805BD2D0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805BD2D4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805BD2D8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805BD2DC  38 60 00 00 */	li r3, 0
/* 805BD2E0  90 61 00 08 */	stw r3, 8(r1)
/* 805BD2E4  90 61 00 0C */	stw r3, 0xc(r1)
/* 805BD2E8  38 00 FF FF */	li r0, -1
/* 805BD2EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805BD2F0  90 61 00 14 */	stw r3, 0x14(r1)
/* 805BD2F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805BD2F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805BD2FC  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 805BD300  80 9D 28 0C */	lwz r4, 0x280c(r29)
/* 805BD304  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000899F@ha */
/* 805BD308  38 A5 89 9F */	addi r5, r5, 0x899F /* 0x0000899F@l */
/* 805BD30C  38 DD 09 20 */	addi r6, r29, 0x920
/* 805BD310  38 E1 00 34 */	addi r7, r1, 0x34
/* 805BD314  39 1D 01 0C */	addi r8, r29, 0x10c
/* 805BD318  39 3D 04 E4 */	addi r9, r29, 0x4e4
/* 805BD31C  39 41 00 28 */	addi r10, r1, 0x28
/* 805BD320  4B A9 03 85 */	bl setPoly__13dPa_control_cFUlUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 805BD324  90 7D 28 0C */	stw r3, 0x280c(r29)
/* 805BD328  80 1D 07 10 */	lwz r0, 0x710(r29)
/* 805BD32C  2C 00 00 12 */	cmpwi r0, 0x12
/* 805BD330  41 82 00 0C */	beq lbl_805BD33C
/* 805BD334  2C 00 00 22 */	cmpwi r0, 0x22
/* 805BD338  40 82 00 30 */	bne lbl_805BD368
lbl_805BD33C:
/* 805BD33C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704DF@ha */
/* 805BD340  38 03 04 DF */	addi r0, r3, 0x04DF /* 0x000704DF@l */
/* 805BD344  90 01 00 18 */	stw r0, 0x18(r1)
/* 805BD348  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 805BD34C  38 81 00 18 */	addi r4, r1, 0x18
/* 805BD350  38 A0 00 00 */	li r5, 0
/* 805BD354  38 C0 FF FF */	li r6, -1
/* 805BD358  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 805BD35C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805BD360  7D 89 03 A6 */	mtctr r12
/* 805BD364  4E 80 04 21 */	bctrl 
lbl_805BD368:
/* 805BD368  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 805BD36C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 805BD370  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 805BD374  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805BD378  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 805BD37C  38 7E 4C 9C */	addi r3, r30, 0x4c9c
/* 805BD380  38 80 00 07 */	li r4, 7
/* 805BD384  38 A0 00 1F */	li r5, 0x1f
/* 805BD388  38 C1 00 1C */	addi r6, r1, 0x1c
/* 805BD38C  4B AB 26 99 */	bl StartShock__12dVibration_cFii4cXyz
/* 805BD390  7F A3 EB 78 */	mr r3, r29
/* 805BD394  38 80 00 00 */	li r4, 0
/* 805BD398  4B FF E2 B5 */	bl mStatusONOFF__8daB_DR_cFi
/* 805BD39C  88 9D 07 EC */	lbz r4, 0x7ec(r29)
/* 805BD3A0  28 04 00 FF */	cmplwi r4, 0xff
/* 805BD3A4  41 82 00 18 */	beq lbl_805BD3BC
/* 805BD3A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805BD3AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805BD3B0  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 805BD3B4  7C 05 07 74 */	extsb r5, r0
/* 805BD3B8  4B A7 7E F9 */	bl offSwitch__10dSv_info_cFii
lbl_805BD3BC:
/* 805BD3BC  38 61 00 4C */	addi r3, r1, 0x4c
/* 805BD3C0  38 80 FF FF */	li r4, -1
/* 805BD3C4  4B AB A2 2D */	bl __dt__11dBgS_GndChkFv
/* 805BD3C8  38 60 00 01 */	li r3, 1
lbl_805BD3CC:
/* 805BD3CC  39 61 00 B0 */	addi r11, r1, 0xb0
/* 805BD3D0  4B DA 4E 59 */	bl _restgpr_29
/* 805BD3D4  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 805BD3D8  7C 08 03 A6 */	mtlr r0
/* 805BD3DC  38 21 00 B0 */	addi r1, r1, 0xb0
/* 805BD3E0  4E 80 00 20 */	blr 
