lbl_805BD05C:
/* 805BD05C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 805BD060  7C 08 02 A6 */	mflr r0
/* 805BD064  90 01 00 84 */	stw r0, 0x84(r1)
/* 805BD068  39 61 00 80 */	addi r11, r1, 0x80
/* 805BD06C  4B DA 51 71 */	bl _savegpr_29
/* 805BD070  7C 7D 1B 78 */	mr r29, r3
/* 805BD074  3C 60 80 5C */	lis r3, lit_3800@ha /* 0x805C6C74@ha */
/* 805BD078  3B E3 6C 74 */	addi r31, r3, lit_3800@l /* 0x805C6C74@l */
/* 805BD07C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805BD080  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805BD084  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 805BD088  38 61 00 14 */	addi r3, r1, 0x14
/* 805BD08C  4B AB A4 F1 */	bl __ct__11dBgS_GndChkFv
/* 805BD090  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805BD094  D0 01 00 08 */	stfs f0, 8(r1)
/* 805BD098  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 805BD09C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805BD0A0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 805BD0A4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805BD0A8  C0 1F 03 6C */	lfs f0, 0x36c(r31)
/* 805BD0AC  EC 01 00 2A */	fadds f0, f1, f0
/* 805BD0B0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805BD0B4  38 61 00 14 */	addi r3, r1, 0x14
/* 805BD0B8  38 81 00 08 */	addi r4, r1, 8
/* 805BD0BC  4B CA AC 6D */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 805BD0C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805BD0C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805BD0C8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 805BD0CC  38 81 00 14 */	addi r4, r1, 0x14
/* 805BD0D0  4B AB 73 D1 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 805BD0D4  D0 3D 07 34 */	stfs f1, 0x734(r29)
/* 805BD0D8  C0 1F 03 68 */	lfs f0, 0x368(r31)
/* 805BD0DC  C0 3D 07 34 */	lfs f1, 0x734(r29)
/* 805BD0E0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805BD0E4  41 82 00 10 */	beq lbl_805BD0F4
/* 805BD0E8  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805BD0EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805BD0F0  40 80 00 0C */	bge lbl_805BD0FC
lbl_805BD0F4:
/* 805BD0F4  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 805BD0F8  D0 1D 07 34 */	stfs f0, 0x734(r29)
lbl_805BD0FC:
/* 805BD0FC  C0 3D 07 34 */	lfs f1, 0x734(r29)
/* 805BD100  3C 60 80 5C */	lis r3, l_HIO@ha /* 0x805C790C@ha */
/* 805BD104  38 63 79 0C */	addi r3, r3, l_HIO@l /* 0x805C790C@l */
/* 805BD108  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 805BD10C  EC 21 00 2A */	fadds f1, f1, f0
/* 805BD110  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805BD114  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805BD118  4C 40 13 82 */	cror 2, 0, 2
/* 805BD11C  40 82 00 18 */	bne lbl_805BD134
/* 805BD120  38 61 00 14 */	addi r3, r1, 0x14
/* 805BD124  38 80 FF FF */	li r4, -1
/* 805BD128  4B AB A4 C9 */	bl __dt__11dBgS_GndChkFv
/* 805BD12C  38 60 00 01 */	li r3, 1
/* 805BD130  48 00 00 14 */	b lbl_805BD144
lbl_805BD134:
/* 805BD134  38 61 00 14 */	addi r3, r1, 0x14
/* 805BD138  38 80 FF FF */	li r4, -1
/* 805BD13C  4B AB A4 B5 */	bl __dt__11dBgS_GndChkFv
/* 805BD140  38 60 00 00 */	li r3, 0
lbl_805BD144:
/* 805BD144  39 61 00 80 */	addi r11, r1, 0x80
/* 805BD148  4B DA 50 E1 */	bl _restgpr_29
/* 805BD14C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805BD150  7C 08 03 A6 */	mtlr r0
/* 805BD154  38 21 00 80 */	addi r1, r1, 0x80
/* 805BD158  4E 80 00 20 */	blr 
