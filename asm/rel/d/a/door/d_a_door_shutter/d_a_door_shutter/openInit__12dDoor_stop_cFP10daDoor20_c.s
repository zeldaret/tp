lbl_8046634C:
/* 8046634C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80466350  7C 08 02 A6 */	mflr r0
/* 80466354  90 01 00 24 */	stw r0, 0x24(r1)
/* 80466358  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8046635C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80466360  7C 9E 23 78 */	mr r30, r4
/* 80466364  3C 80 80 46 */	lis r4, lit_4018@ha /* 0x80466820@ha */
/* 80466368  3B E4 68 20 */	addi r31, r4, lit_4018@l /* 0x80466820@l */
/* 8046636C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80466370  D0 03 00 04 */	stfs f0, 4(r3)
/* 80466374  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80466378  38 00 00 01 */	li r0, 1
/* 8046637C  98 03 00 0B */	stb r0, 0xb(r3)
/* 80466380  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80466384  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80466388  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8046638C  3C 80 80 46 */	lis r4, d_a_door_shutter__stringBase0@ha /* 0x804668D8@ha */
/* 80466390  38 84 68 D8 */	addi r4, r4, d_a_door_shutter__stringBase0@l /* 0x804668D8@l */
/* 80466394  38 84 01 94 */	addi r4, r4, 0x194
/* 80466398  4B F0 25 FD */	bl strcmp
/* 8046639C  2C 03 00 00 */	cmpwi r3, 0
/* 804663A0  40 82 00 54 */	bne lbl_804663F4
/* 804663A4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 804663A8  7C 03 07 74 */	extsb r3, r0
/* 804663AC  4B BC 6C C1 */	bl dComIfGp_getReverb__Fi
/* 804663B0  7C 67 1B 78 */	mr r7, r3
/* 804663B4  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800C3@ha */
/* 804663B8  38 03 00 C3 */	addi r0, r3, 0x00C3 /* 0x000800C3@l */
/* 804663BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 804663C0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804663C4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804663C8  80 63 00 00 */	lwz r3, 0(r3)
/* 804663CC  38 81 00 0C */	addi r4, r1, 0xc
/* 804663D0  38 BE 05 38 */	addi r5, r30, 0x538
/* 804663D4  38 C0 00 00 */	li r6, 0
/* 804663D8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804663DC  FC 40 08 90 */	fmr f2, f1
/* 804663E0  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 804663E4  FC 80 18 90 */	fmr f4, f3
/* 804663E8  39 00 00 00 */	li r8, 0
/* 804663EC  4B E4 55 99 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804663F0  48 00 00 50 */	b lbl_80466440
lbl_804663F4:
/* 804663F4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 804663F8  7C 03 07 74 */	extsb r3, r0
/* 804663FC  4B BC 6C 71 */	bl dComIfGp_getReverb__Fi
/* 80466400  7C 67 1B 78 */	mr r7, r3
/* 80466404  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080010@ha */
/* 80466408  38 03 00 10 */	addi r0, r3, 0x0010 /* 0x00080010@l */
/* 8046640C  90 01 00 08 */	stw r0, 8(r1)
/* 80466410  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80466414  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80466418  80 63 00 00 */	lwz r3, 0(r3)
/* 8046641C  38 81 00 08 */	addi r4, r1, 8
/* 80466420  38 BE 05 38 */	addi r5, r30, 0x538
/* 80466424  38 C0 00 00 */	li r6, 0
/* 80466428  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8046642C  FC 40 08 90 */	fmr f2, f1
/* 80466430  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80466434  FC 80 18 90 */	fmr f4, f3
/* 80466438  39 00 00 00 */	li r8, 0
/* 8046643C  4B E4 55 49 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80466440:
/* 80466440  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80466444  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80466448  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046644C  7C 08 03 A6 */	mtlr r0
/* 80466450  38 21 00 20 */	addi r1, r1, 0x20
/* 80466454  4E 80 00 20 */	blr 
