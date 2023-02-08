lbl_80BB9DB4:
/* 80BB9DB4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BB9DB8  7C 08 02 A6 */	mflr r0
/* 80BB9DBC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BB9DC0  39 61 00 40 */	addi r11, r1, 0x40
/* 80BB9DC4  4B 7A 84 19 */	bl _savegpr_29
/* 80BB9DC8  7C 7D 1B 78 */	mr r29, r3
/* 80BB9DCC  7C 9E 23 78 */	mr r30, r4
/* 80BB9DD0  3C 60 80 BC */	lis r3, l_cull_box@ha /* 0x80BBA7B0@ha */
/* 80BB9DD4  3B E3 A7 B0 */	addi r31, r3, l_cull_box@l /* 0x80BBA7B0@l */
/* 80BB9DD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB9DDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB9DE0  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80BB9DE4  80 03 05 80 */	lwz r0, 0x580(r3)
/* 80BB9DE8  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80BB9DEC  41 82 00 E8 */	beq lbl_80BB9ED4
/* 80BB9DF0  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80BB9DF4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BB9DF8  38 9F 00 18 */	addi r4, r31, 0x18
/* 80BB9DFC  C0 04 00 04 */	lfs f0, 4(r4)
/* 80BB9E00  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BB9E04  C0 04 00 08 */	lfs f0, 8(r4)
/* 80BB9E08  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BB9E0C  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 80BB9E10  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BB9E14  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 80BB9E18  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BB9E1C  C0 04 00 20 */	lfs f0, 0x20(r4)
/* 80BB9E20  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BB9E24  7F A4 EB 78 */	mr r4, r29
/* 80BB9E28  38 A1 00 18 */	addi r5, r1, 0x18
/* 80BB9E2C  38 C1 00 0C */	addi r6, r1, 0xc
/* 80BB9E30  4B 47 88 25 */	bl dLib_checkActorInRectangle__FP10fopAc_ac_cP10fopAc_ac_cPC4cXyzPC4cXyz
/* 80BB9E34  2C 03 00 00 */	cmpwi r3, 0
/* 80BB9E38  41 82 00 9C */	beq lbl_80BB9ED4
/* 80BB9E3C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80BB9E40  D0 1D 05 B8 */	stfs f0, 0x5b8(r29)
/* 80BB9E44  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80BB9E48  D0 3D 05 D0 */	stfs f1, 0x5d0(r29)
/* 80BB9E4C  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80BB9E50  D0 1D 05 D4 */	stfs f0, 0x5d4(r29)
/* 80BB9E54  D0 3D 05 D8 */	stfs f1, 0x5d8(r29)
/* 80BB9E58  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB9E5C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BB9E60  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80BB9E64  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 80BB9E68  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 80BB9E6C  4B 78 CA 7D */	bl PSMTXTrans
/* 80BB9E70  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB9E74  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BB9E78  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80BB9E7C  4B 45 25 B9 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BB9E80  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB9E84  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BB9E88  38 9D 05 D0 */	addi r4, r29, 0x5d0
/* 80BB9E8C  7C 85 23 78 */	mr r5, r4
/* 80BB9E90  4B 78 CE DD */	bl PSMTXMultVec
/* 80BB9E94  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080119@ha */
/* 80BB9E98  38 03 01 19 */	addi r0, r3, 0x0119 /* 0x00080119@l */
/* 80BB9E9C  90 01 00 08 */	stw r0, 8(r1)
/* 80BB9EA0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BB9EA4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BB9EA8  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB9EAC  38 81 00 08 */	addi r4, r1, 8
/* 80BB9EB0  38 BD 05 D0 */	addi r5, r29, 0x5d0
/* 80BB9EB4  38 C0 00 00 */	li r6, 0
/* 80BB9EB8  38 E0 00 00 */	li r7, 0
/* 80BB9EBC  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80BB9EC0  FC 40 08 90 */	fmr f2, f1
/* 80BB9EC4  C0 7F 00 5C */	lfs f3, 0x5c(r31)
/* 80BB9EC8  FC 80 18 90 */	fmr f4, f3
/* 80BB9ECC  39 00 00 00 */	li r8, 0
/* 80BB9ED0  4B 6F 1A B5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80BB9ED4:
/* 80BB9ED4  7F A3 EB 78 */	mr r3, r29
/* 80BB9ED8  48 00 01 A9 */	bl event_proc_call__11daObjBmSh_cFv
/* 80BB9EDC  7F A3 EB 78 */	mr r3, r29
/* 80BB9EE0  48 00 03 8D */	bl mode_proc_call__11daObjBmSh_cFv
/* 80BB9EE4  38 1D 05 6C */	addi r0, r29, 0x56c
/* 80BB9EE8  90 1E 00 00 */	stw r0, 0(r30)
/* 80BB9EEC  7F A3 EB 78 */	mr r3, r29
/* 80BB9EF0  4B FF FB F5 */	bl setBaseMtx__11daObjBmSh_cFv
/* 80BB9EF4  80 7D 05 C4 */	lwz r3, 0x5c4(r29)
/* 80BB9EF8  38 03 00 01 */	addi r0, r3, 1
/* 80BB9EFC  90 1D 05 C4 */	stw r0, 0x5c4(r29)
/* 80BB9F00  7F A3 EB 78 */	mr r3, r29
/* 80BB9F04  48 00 00 B9 */	bl checkAnySw__11daObjBmSh_cFv
/* 80BB9F08  98 7D 05 B1 */	stb r3, 0x5b1(r29)
/* 80BB9F0C  7F A3 EB 78 */	mr r3, r29
/* 80BB9F10  48 00 01 35 */	bl checkMySw__11daObjBmSh_cFv
/* 80BB9F14  98 7D 05 CD */	stb r3, 0x5cd(r29)
/* 80BB9F18  38 60 00 01 */	li r3, 1
/* 80BB9F1C  39 61 00 40 */	addi r11, r1, 0x40
/* 80BB9F20  4B 7A 83 09 */	bl _restgpr_29
/* 80BB9F24  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BB9F28  7C 08 03 A6 */	mtlr r0
/* 80BB9F2C  38 21 00 40 */	addi r1, r1, 0x40
/* 80BB9F30  4E 80 00 20 */	blr 
