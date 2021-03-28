lbl_8057EC60:
/* 8057EC60  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8057EC64  7C 08 02 A6 */	mflr r0
/* 8057EC68  90 01 00 54 */	stw r0, 0x54(r1)
/* 8057EC6C  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 8057EC70  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8057EC74  7C 7E 1B 78 */	mr r30, r3
/* 8057EC78  3C 60 80 58 */	lis r3, lit_3656@ha
/* 8057EC7C  3B E3 F5 70 */	addi r31, r3, lit_3656@l
/* 8057EC80  88 1E 09 34 */	lbz r0, 0x934(r30)
/* 8057EC84  28 00 00 00 */	cmplwi r0, 0
/* 8057EC88  41 82 00 60 */	beq lbl_8057ECE8
/* 8057EC8C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8057EC90  7C 03 07 74 */	extsb r3, r0
/* 8057EC94  4B AA E3 D8 */	b dComIfGp_getReverb__Fi
/* 8057EC98  7C 67 1B 78 */	mr r7, r3
/* 8057EC9C  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008013A@ha */
/* 8057ECA0  38 03 01 3A */	addi r0, r3, 0x013A /* 0x0008013A@l */
/* 8057ECA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057ECA8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8057ECAC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8057ECB0  80 63 00 00 */	lwz r3, 0(r3)
/* 8057ECB4  38 81 00 24 */	addi r4, r1, 0x24
/* 8057ECB8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8057ECBC  38 C0 00 00 */	li r6, 0
/* 8057ECC0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8057ECC4  FC 40 08 90 */	fmr f2, f1
/* 8057ECC8  C0 7F 00 8C */	lfs f3, 0x8c(r31)
/* 8057ECCC  FC 80 18 90 */	fmr f4, f3
/* 8057ECD0  39 00 00 00 */	li r8, 0
/* 8057ECD4  4B D2 D8 38 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8057ECD8  88 7E 09 34 */	lbz r3, 0x934(r30)
/* 8057ECDC  38 03 FF FF */	addi r0, r3, -1
/* 8057ECE0  98 1E 09 34 */	stb r0, 0x934(r30)
/* 8057ECE4  48 00 00 30 */	b lbl_8057ED14
lbl_8057ECE8:
/* 8057ECE8  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008013A@ha */
/* 8057ECEC  38 03 01 3A */	addi r0, r3, 0x013A /* 0x0008013A@l */
/* 8057ECF0  90 01 00 20 */	stw r0, 0x20(r1)
/* 8057ECF4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8057ECF8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8057ECFC  80 63 00 00 */	lwz r3, 0(r3)
/* 8057ED00  38 81 00 20 */	addi r4, r1, 0x20
/* 8057ED04  38 A0 00 00 */	li r5, 0
/* 8057ED08  4B D2 EB A8 */	b seStop__7Z2SeMgrF10JAISoundIDUl
/* 8057ED0C  7F C3 F3 78 */	mr r3, r30
/* 8057ED10  48 00 01 1D */	bl mode_init_explosion__10daGpTaru_cFv
lbl_8057ED14:
/* 8057ED14  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8057ED18  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8057ED1C  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8057ED20  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8057ED24  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8057ED28  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8057ED2C  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8057ED30  EC 01 00 28 */	fsubs f0, f1, f0
/* 8057ED34  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8057ED38  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 8057ED3C  3C 60 80 58 */	lis r3, l_HIO@ha
/* 8057ED40  39 43 F8 E4 */	addi r10, r3, l_HIO@l
/* 8057ED44  C0 0A 00 34 */	lfs f0, 0x34(r10)
/* 8057ED48  EC 01 00 32 */	fmuls f0, f1, f0
/* 8057ED4C  EC 02 00 2A */	fadds f0, f2, f0
/* 8057ED50  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8057ED54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8057ED58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8057ED5C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8057ED60  38 00 00 FF */	li r0, 0xff
/* 8057ED64  90 01 00 08 */	stw r0, 8(r1)
/* 8057ED68  38 80 00 00 */	li r4, 0
/* 8057ED6C  90 81 00 0C */	stw r4, 0xc(r1)
/* 8057ED70  38 00 FF FF */	li r0, -1
/* 8057ED74  90 01 00 10 */	stw r0, 0x10(r1)
/* 8057ED78  90 81 00 14 */	stw r4, 0x14(r1)
/* 8057ED7C  90 81 00 18 */	stw r4, 0x18(r1)
/* 8057ED80  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8057ED84  80 9E 09 4C */	lwz r4, 0x94c(r30)
/* 8057ED88  38 A0 00 00 */	li r5, 0
/* 8057ED8C  38 C0 01 DF */	li r6, 0x1df
/* 8057ED90  38 E1 00 28 */	addi r7, r1, 0x28
/* 8057ED94  39 1E 01 0C */	addi r8, r30, 0x10c
/* 8057ED98  39 20 00 00 */	li r9, 0
/* 8057ED9C  39 4A 00 20 */	addi r10, r10, 0x20
/* 8057EDA0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8057EDA4  4B AC E7 28 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8057EDA8  90 7E 09 4C */	stw r3, 0x94c(r30)
/* 8057EDAC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8057EDB0  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 8057EDB4  80 1E 09 44 */	lwz r0, 0x944(r30)
/* 8057EDB8  1C 00 30 00 */	mulli r0, r0, 0x3000
/* 8057EDBC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8057EDC0  7C 64 02 14 */	add r3, r4, r0
/* 8057EDC4  C0 23 00 04 */	lfs f1, 4(r3)
/* 8057EDC8  C0 1E 09 38 */	lfs f0, 0x938(r30)
/* 8057EDCC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8057EDD0  FC 00 00 1E */	fctiwz f0, f0
/* 8057EDD4  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8057EDD8  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8057EDDC  B0 1E 09 3C */	sth r0, 0x93c(r30)
/* 8057EDE0  80 1E 09 44 */	lwz r0, 0x944(r30)
/* 8057EDE4  1C 00 30 00 */	mulli r0, r0, 0x3000
/* 8057EDE8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8057EDEC  7C 24 04 2E */	lfsx f1, r4, r0
/* 8057EDF0  C0 1E 09 38 */	lfs f0, 0x938(r30)
/* 8057EDF4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8057EDF8  FC 00 00 1E */	fctiwz f0, f0
/* 8057EDFC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8057EE00  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8057EE04  B0 1E 09 40 */	sth r0, 0x940(r30)
/* 8057EE08  80 7E 09 44 */	lwz r3, 0x944(r30)
/* 8057EE0C  38 03 00 01 */	addi r0, r3, 1
/* 8057EE10  90 1E 09 44 */	stw r0, 0x944(r30)
/* 8057EE14  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8057EE18  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8057EE1C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8057EE20  7C 08 03 A6 */	mtlr r0
/* 8057EE24  38 21 00 50 */	addi r1, r1, 0x50
/* 8057EE28  4E 80 00 20 */	blr 
