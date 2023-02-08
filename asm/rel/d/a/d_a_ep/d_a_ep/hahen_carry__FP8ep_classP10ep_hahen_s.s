lbl_80468E50:
/* 80468E50  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80468E54  7C 08 02 A6 */	mflr r0
/* 80468E58  90 01 00 44 */	stw r0, 0x44(r1)
/* 80468E5C  39 61 00 40 */	addi r11, r1, 0x40
/* 80468E60  4B EF 93 79 */	bl _savegpr_28
/* 80468E64  7C 9E 23 78 */	mr r30, r4
/* 80468E68  3C 80 80 47 */	lis r4, lit_3681@ha /* 0x8046AFC4@ha */
/* 80468E6C  3B E4 AF C4 */	addi r31, r4, lit_3681@l /* 0x8046AFC4@l */
/* 80468E70  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80468E74  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80468E78  80 A4 5D AC */	lwz r5, 0x5dac(r4)
/* 80468E7C  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80468E80  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80468E84  40 82 01 98 */	bne lbl_8046901C
/* 80468E88  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 80468E8C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80468E90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80468E94  40 81 01 40 */	ble lbl_80468FD4
/* 80468E98  38 00 00 04 */	li r0, 4
/* 80468E9C  98 1E 00 97 */	stb r0, 0x97(r30)
/* 80468EA0  38 00 00 00 */	li r0, 0
/* 80468EA4  98 1E 00 96 */	stb r0, 0x96(r30)
/* 80468EA8  B0 1E 00 28 */	sth r0, 0x28(r30)
/* 80468EAC  38 00 40 00 */	li r0, 0x4000
/* 80468EB0  B0 1E 00 2C */	sth r0, 0x2c(r30)
/* 80468EB4  A8 05 04 E6 */	lha r0, 0x4e6(r5)
/* 80468EB8  B0 1E 00 2A */	sth r0, 0x2a(r30)
/* 80468EBC  3B 84 56 B8 */	addi r28, r4, 0x56b8
/* 80468EC0  3B A0 00 01 */	li r29, 1
/* 80468EC4  7F 83 E3 78 */	mr r3, r28
/* 80468EC8  4B C0 A9 1D */	bl LockonTruth__12dAttention_cFv
/* 80468ECC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80468ED0  40 82 00 14 */	bne lbl_80468EE4
/* 80468ED4  80 1C 03 34 */	lwz r0, 0x334(r28)
/* 80468ED8  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 80468EDC  40 82 00 08 */	bne lbl_80468EE4
/* 80468EE0  3B A0 00 00 */	li r29, 0
lbl_80468EE4:
/* 80468EE4  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80468EE8  41 82 00 D8 */	beq lbl_80468FC0
/* 80468EEC  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80468EF0  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 80468EF4  7F 83 E3 78 */	mr r3, r28
/* 80468EF8  38 80 00 00 */	li r4, 0
/* 80468EFC  4B C0 A6 41 */	bl LockonTarget__12dAttention_cFl
/* 80468F00  7C 64 1B 79 */	or. r4, r3, r3
/* 80468F04  41 82 00 B0 */	beq lbl_80468FB4
/* 80468F08  38 61 00 0C */	addi r3, r1, 0xc
/* 80468F0C  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80468F10  38 BE 00 04 */	addi r5, r30, 4
/* 80468F14  4B DF DC 21 */	bl __mi__4cXyzCFRC3Vec
/* 80468F18  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80468F1C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80468F20  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80468F24  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80468F28  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 80468F2C  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80468F30  4B DF E7 45 */	bl cM_atan2s__Fff
/* 80468F34  B0 7E 00 2A */	sth r3, 0x2a(r30)
/* 80468F38  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80468F3C  EC 20 00 32 */	fmuls f1, f0, f0
/* 80468F40  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80468F44  EC 00 00 32 */	fmuls f0, f0, f0
/* 80468F48  EC 41 00 2A */	fadds f2, f1, f0
/* 80468F4C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80468F50  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80468F54  40 81 00 0C */	ble lbl_80468F60
/* 80468F58  FC 00 10 34 */	frsqrte f0, f2
/* 80468F5C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80468F60:
/* 80468F60  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80468F64  4B DF E7 11 */	bl cM_atan2s__Fff
/* 80468F68  7C 03 00 D0 */	neg r0, r3
/* 80468F6C  7C 04 07 34 */	extsh r4, r0
/* 80468F70  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80468F74  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80468F78  80 63 00 00 */	lwz r3, 0(r3)
/* 80468F7C  38 04 F8 00 */	addi r0, r4, -2048
/* 80468F80  7C 04 07 34 */	extsh r4, r0
/* 80468F84  4B BA 33 C1 */	bl mDoMtx_XrotS__FPA4_fs
/* 80468F88  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80468F8C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80468F90  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80468F94  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80468F98  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80468F9C  38 61 00 24 */	addi r3, r1, 0x24
/* 80468FA0  38 81 00 18 */	addi r4, r1, 0x18
/* 80468FA4  4B E0 7F 49 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80468FA8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80468FAC  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 80468FB0  48 00 00 6C */	b lbl_8046901C
lbl_80468FB4:
/* 80468FB4  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80468FB8  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 80468FBC  48 00 00 60 */	b lbl_8046901C
lbl_80468FC0:
/* 80468FC0  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80468FC4  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 80468FC8  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80468FCC  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 80468FD0  48 00 00 4C */	b lbl_8046901C
lbl_80468FD4:
/* 80468FD4  38 00 00 01 */	li r0, 1
/* 80468FD8  98 1E 00 97 */	stb r0, 0x97(r30)
/* 80468FDC  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008010C@ha */
/* 80468FE0  38 03 01 0C */	addi r0, r3, 0x010C /* 0x0008010C@l */
/* 80468FE4  90 01 00 08 */	stw r0, 8(r1)
/* 80468FE8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80468FEC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80468FF0  80 63 00 00 */	lwz r3, 0(r3)
/* 80468FF4  38 81 00 08 */	addi r4, r1, 8
/* 80468FF8  38 BE 00 04 */	addi r5, r30, 4
/* 80468FFC  38 C0 00 00 */	li r6, 0
/* 80469000  38 E0 00 00 */	li r7, 0
/* 80469004  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80469008  FC 40 08 90 */	fmr f2, f1
/* 8046900C  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 80469010  FC 80 18 90 */	fmr f4, f3
/* 80469014  39 00 00 00 */	li r8, 0
/* 80469018  4B E4 29 6D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8046901C:
/* 8046901C  39 61 00 40 */	addi r11, r1, 0x40
/* 80469020  4B EF 92 05 */	bl _restgpr_28
/* 80469024  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80469028  7C 08 03 A6 */	mtlr r0
/* 8046902C  38 21 00 40 */	addi r1, r1, 0x40
/* 80469030  4E 80 00 20 */	blr 
