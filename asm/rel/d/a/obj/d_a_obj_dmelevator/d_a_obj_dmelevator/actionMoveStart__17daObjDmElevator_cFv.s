lbl_80BDF0A0:
/* 80BDF0A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BDF0A4  7C 08 02 A6 */	mflr r0
/* 80BDF0A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BDF0AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BDF0B0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BDF0B4  7C 7E 1B 78 */	mr r30, r3
/* 80BDF0B8  3C 80 80 BE */	lis r4, l_swOffset@ha /* 0x80BDF870@ha */
/* 80BDF0BC  3B E4 F8 70 */	addi r31, r4, l_swOffset@l /* 0x80BDF870@l */
/* 80BDF0C0  48 00 02 F9 */	bl moveProc__17daObjDmElevator_cFv
/* 80BDF0C4  2C 03 00 00 */	cmpwi r3, 0
/* 80BDF0C8  41 82 00 88 */	beq lbl_80BDF150
/* 80BDF0CC  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80BDF0D0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BDF0D4  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80BDF0D8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BDF0DC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80BDF0E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BDF0E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BDF0E8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80BDF0EC  38 80 00 04 */	li r4, 4
/* 80BDF0F0  38 A0 00 1F */	li r5, 0x1f
/* 80BDF0F4  38 C1 00 0C */	addi r6, r1, 0xc
/* 80BDF0F8  4B 49 09 2D */	bl StartShock__12dVibration_cFii4cXyz
/* 80BDF0FC  38 00 00 00 */	li r0, 0
/* 80BDF100  98 1E 05 E2 */	stb r0, 0x5e2(r30)
/* 80BDF104  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BDF108  7C 03 07 74 */	extsb r3, r0
/* 80BDF10C  4B 44 DF 61 */	bl dComIfGp_getReverb__Fi
/* 80BDF110  7C 67 1B 78 */	mr r7, r3
/* 80BDF114  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080159@ha */
/* 80BDF118  38 03 01 59 */	addi r0, r3, 0x0159 /* 0x00080159@l */
/* 80BDF11C  90 01 00 08 */	stw r0, 8(r1)
/* 80BDF120  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BDF124  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BDF128  80 63 00 00 */	lwz r3, 0(r3)
/* 80BDF12C  38 81 00 08 */	addi r4, r1, 8
/* 80BDF130  38 BE 05 38 */	addi r5, r30, 0x538
/* 80BDF134  38 C0 00 00 */	li r6, 0
/* 80BDF138  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80BDF13C  FC 40 08 90 */	fmr f2, f1
/* 80BDF140  C0 7F 00 6C */	lfs f3, 0x6c(r31)
/* 80BDF144  FC 80 18 90 */	fmr f4, f3
/* 80BDF148  39 00 00 00 */	li r8, 0
/* 80BDF14C  4B 6C C8 39 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BDF150:
/* 80BDF150  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BDF154  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BDF158  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BDF15C  7C 08 03 A6 */	mtlr r0
/* 80BDF160  38 21 00 20 */	addi r1, r1, 0x20
/* 80BDF164  4E 80 00 20 */	blr 
