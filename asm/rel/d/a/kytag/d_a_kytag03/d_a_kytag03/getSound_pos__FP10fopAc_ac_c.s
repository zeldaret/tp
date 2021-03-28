lbl_80856280:
/* 80856280  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80856284  7C 08 02 A6 */	mflr r0
/* 80856288  90 01 00 44 */	stw r0, 0x44(r1)
/* 8085628C  39 61 00 40 */	addi r11, r1, 0x40
/* 80856290  4B B0 BF 4C */	b _savegpr_29
/* 80856294  7C 7F 1B 78 */	mr r31, r3
/* 80856298  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8085629C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 808562A0  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 808562A4  7C 00 07 74 */	extsb r0, r0
/* 808562A8  1C 00 00 38 */	mulli r0, r0, 0x38
/* 808562AC  7C 63 02 14 */	add r3, r3, r0
/* 808562B0  80 83 5D 74 */	lwz r4, 0x5d74(r3)
/* 808562B4  38 61 00 08 */	addi r3, r1, 8
/* 808562B8  38 84 02 48 */	addi r4, r4, 0x248
/* 808562BC  4B 92 BB A8 */	b Eye__9dCamera_cFv
/* 808562C0  C0 01 00 08 */	lfs f0, 8(r1)
/* 808562C4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 808562C8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 808562CC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 808562D0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 808562D4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 808562D8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 808562DC  54 03 86 3E */	rlwinm r3, r0, 0x10, 0x18, 0x1f
/* 808562E0  28 03 00 FF */	cmplwi r3, 0xff
/* 808562E4  41 82 00 58 */	beq lbl_8085633C
/* 808562E8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 808562EC  7C 04 07 74 */	extsb r4, r0
/* 808562F0  4B 7F B4 FC */	b dPath_GetRoomPath__Fii
/* 808562F4  7C 7D 1B 78 */	mr r29, r3
/* 808562F8  3C 60 80 43 */	lis r3, g_mEnvSeMgr@ha
/* 808562FC  3B C3 DD 70 */	addi r30, r3, g_mEnvSeMgr@l
/* 80856300  48 00 00 34 */	b lbl_80856334
lbl_80856304:
/* 80856304  38 61 00 14 */	addi r3, r1, 0x14
/* 80856308  38 81 00 20 */	addi r4, r1, 0x20
/* 8085630C  7F A5 EB 78 */	mr r5, r29
/* 80856310  4B FF FB C9 */	bl dEnvSe_getNearPathPos__FP4cXyzP4cXyzP5dPath
/* 80856314  7F C3 F3 78 */	mr r3, r30
/* 80856318  38 81 00 14 */	addi r4, r1, 0x14
/* 8085631C  4B A7 2F AC */	b registWolfSmellSePos__10Z2EnvSeMgrFP3Vec
/* 80856320  7F A3 EB 78 */	mr r3, r29
/* 80856324  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80856328  7C 04 07 74 */	extsb r4, r0
/* 8085632C  4B 7F B5 6C */	b dPath_GetNextRoomPath__FPC5dPathi
/* 80856330  7C 7D 1B 78 */	mr r29, r3
lbl_80856334:
/* 80856334  28 1D 00 00 */	cmplwi r29, 0
/* 80856338  40 82 FF CC */	bne lbl_80856304
lbl_8085633C:
/* 8085633C  39 61 00 40 */	addi r11, r1, 0x40
/* 80856340  4B B0 BE E8 */	b _restgpr_29
/* 80856344  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80856348  7C 08 03 A6 */	mtlr r0
/* 8085634C  38 21 00 40 */	addi r1, r1, 0x40
/* 80856350  4E 80 00 20 */	blr 
