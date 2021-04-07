lbl_80181F70:
/* 80181F70  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80181F74  7C 08 02 A6 */	mflr r0
/* 80181F78  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80181F7C  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80181F80  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80181F84  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80181F88  48 1E 02 4D */	bl _savegpr_27
/* 80181F8C  7C 7D 1B 78 */	mr r29, r3
/* 80181F90  7F BB EB 78 */	mr r27, r29
/* 80181F94  3B DD 02 48 */	addi r30, r29, 0x248
/* 80181F98  4B E9 C3 71 */	bl fopCamM_GetParam__FP12camera_class
/* 80181F9C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80181FA0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80181FA4  1C 03 00 38 */	mulli r0, r3, 0x38
/* 80181FA8  7C 64 02 14 */	add r3, r4, r0
/* 80181FAC  88 03 5D 78 */	lbz r0, 0x5d78(r3)
/* 80181FB0  7C 00 07 74 */	extsb r0, r0
/* 80181FB4  3B E4 0F 38 */	addi r31, r4, 0xf38
/* 80181FB8  1C 60 00 2C */	mulli r3, r0, 0x2c
/* 80181FBC  3B 83 4E 10 */	addi r28, r3, 0x4e10
/* 80181FC0  7F 9F E2 14 */	add r28, r31, r28
/* 80181FC4  7F 63 DB 78 */	mr r3, r27
/* 80181FC8  4B E9 C3 41 */	bl fopCamM_GetParam__FP12camera_class
/* 80181FCC  7C 7B 1B 78 */	mr r27, r3
/* 80181FD0  C0 1E 09 20 */	lfs f0, 0x920(r30)
/* 80181FD4  FC 00 00 1E */	fctiwz f0, f0
/* 80181FD8  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 80181FDC  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80181FE0  7F 83 E3 78 */	mr r3, r28
/* 80181FE4  C0 22 9C A0 */	lfs f1, lit_5656(r2)
/* 80181FE8  C8 C2 9C 98 */	lfd f6, lit_4448(r2)
/* 80181FEC  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 80181FF0  90 81 00 74 */	stw r4, 0x74(r1)
/* 80181FF4  3C 00 43 30 */	lis r0, 0x4330
/* 80181FF8  90 01 00 70 */	stw r0, 0x70(r1)
/* 80181FFC  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 80182000  EC 40 30 28 */	fsubs f2, f0, f6
/* 80182004  C0 62 9D 08 */	lfs f3, lit_8020(r2)
/* 80182008  C0 A2 9C FC */	lfs f5, lit_8017(r2)
/* 8018200C  C0 82 9C F8 */	lfs f4, lit_8016(r2)
/* 80182010  90 81 00 7C */	stw r4, 0x7c(r1)
/* 80182014  90 01 00 78 */	stw r0, 0x78(r1)
/* 80182018  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 8018201C  EC 00 30 28 */	fsubs f0, f0, f6
/* 80182020  EC 04 00 32 */	fmuls f0, f4, f0
/* 80182024  EC 85 00 28 */	fsubs f4, f5, f0
/* 80182028  4B EC FA B5 */	bl setScissor__14dDlst_window_cFffff
/* 8018202C  38 7D 01 00 */	addi r3, r29, 0x100
/* 80182030  C0 3D 00 D0 */	lfs f1, 0xd0(r29)
/* 80182034  C0 5D 00 D4 */	lfs f2, 0xd4(r29)
/* 80182038  C0 7D 00 C8 */	lfs f3, 0xc8(r29)
/* 8018203C  C0 9D 00 CC */	lfs f4, 0xcc(r29)
/* 80182040  48 1C 4E E9 */	bl C_MTXPerspective
/* 80182044  38 7D 01 40 */	addi r3, r29, 0x140
/* 80182048  38 9D 00 D8 */	addi r4, r29, 0xd8
/* 8018204C  38 BD 00 E4 */	addi r5, r29, 0xe4
/* 80182050  38 DD 00 F0 */	addi r6, r29, 0xf0
/* 80182054  A8 FD 00 FC */	lha r7, 0xfc(r29)
/* 80182058  4B E8 A6 B9 */	bl mDoMtx_lookAt__FPA4_fPC3VecPC3VecPC3Vecs
/* 8018205C  38 7D 01 40 */	addi r3, r29, 0x140
/* 80182060  3C 80 80 43 */	lis r4, j3dSys@ha /* 0x80434AC8@ha */
/* 80182064  38 84 4A C8 */	addi r4, r4, j3dSys@l /* 0x80434AC8@l */
/* 80182068  48 1C 44 49 */	bl PSMTXCopy
/* 8018206C  38 7D 01 40 */	addi r3, r29, 0x140
/* 80182070  38 9D 01 70 */	addi r4, r29, 0x170
/* 80182074  48 1C 45 3D */	bl PSMTXInverse
/* 80182078  80 6D 85 C4 */	lwz r3, data_80450B44(r13)
/* 8018207C  38 9D 01 40 */	addi r4, r29, 0x140
/* 80182080  38 BD 00 D8 */	addi r5, r29, 0xd8
/* 80182084  38 DD 00 E4 */	addi r6, r29, 0xe4
/* 80182088  C0 3D 00 D0 */	lfs f1, 0xd0(r29)
/* 8018208C  C0 5D 00 D4 */	lfs f2, 0xd4(r29)
/* 80182090  3C E0 80 40 */	lis r7, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80182094  38 E7 61 C0 */	addi r7, r7, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80182098  80 07 5D 7C */	lwz r0, 0x5d7c(r7)
/* 8018209C  54 07 CF FE */	rlwinm r7, r0, 0x19, 0x1f, 0x1f
/* 801820A0  7F 68 DB 78 */	mr r8, r27
/* 801820A4  39 20 00 00 */	li r9, 0
/* 801820A8  48 13 B2 35 */	bl setAudioCamera__10Z2AudienceFPA4_fR3VecR3Vecffbib
/* 801820AC  38 61 00 14 */	addi r3, r1, 0x14
/* 801820B0  4B EF 54 CD */	bl __ct__11dBgS_GndChkFv
/* 801820B4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801820B8  60 00 00 02 */	ori r0, r0, 2
/* 801820BC  90 01 00 64 */	stw r0, 0x64(r1)
/* 801820C0  38 61 00 14 */	addi r3, r1, 0x14
/* 801820C4  38 9D 00 D8 */	addi r4, r29, 0xd8
/* 801820C8  48 0E 5C 61 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 801820CC  7F E3 FB 78 */	mr r3, r31
/* 801820D0  38 81 00 14 */	addi r4, r1, 0x14
/* 801820D4  4B EF 23 CD */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 801820D8  FF E0 08 90 */	fmr f31, f1
/* 801820DC  C0 02 9C AC */	lfs f0, lit_5659(r2)
/* 801820E0  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 801820E4  41 82 00 88 */	beq lbl_8018216C
/* 801820E8  7F E3 FB 78 */	mr r3, r31
/* 801820EC  3B 61 00 28 */	addi r27, r1, 0x28
/* 801820F0  7F 64 DB 78 */	mr r4, r27
/* 801820F4  38 A0 01 00 */	li r5, 0x100
/* 801820F8  4B EF 2F D9 */	bl ChkGrpInf__4dBgSFRC13cBgS_PolyInfoUl
/* 801820FC  28 03 00 00 */	cmplwi r3, 0
/* 80182100  41 82 00 14 */	beq lbl_80182114
/* 80182104  38 00 00 06 */	li r0, 6
/* 80182108  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8018210C  90 03 04 D4 */	stw r0, 0x4d4(r3)
/* 80182110  48 00 00 18 */	b lbl_80182128
lbl_80182114:
/* 80182114  7F 63 DB 78 */	mr r3, r27
/* 80182118  48 02 93 A9 */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 8018211C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80182120  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80182124  90 03 04 D4 */	stw r0, 0x4d4(r3)
lbl_80182128:
/* 80182128  7F E3 FB 78 */	mr r3, r31
/* 8018212C  7F 64 DB 78 */	mr r4, r27
/* 80182130  4B EF 2F 51 */	bl GetGrpSoundId__4dBgSFRC13cBgS_PolyInfo
/* 80182134  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80182138  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8018213C  38 63 04 C4 */	addi r3, r3, 0x4c4
/* 80182140  48 13 46 45 */	bl setCameraGroupInfo__11Z2StatusMgrFUc
/* 80182144  C0 1D 00 D8 */	lfs f0, 0xd8(r29)
/* 80182148  D0 01 00 08 */	stfs f0, 8(r1)
/* 8018214C  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80182150  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 80182154  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80182158  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8018215C  38 63 04 C4 */	addi r3, r3, 0x4c4
/* 80182160  38 81 00 08 */	addi r4, r1, 8
/* 80182164  48 13 45 FD */	bl setCameraPolygonPos__11Z2StatusMgrFP3Vec
/* 80182168  48 00 00 14 */	b lbl_8018217C
lbl_8018216C:
/* 8018216C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80182170  38 63 04 C4 */	addi r3, r3, 0x4c4
/* 80182174  38 80 00 00 */	li r4, 0
/* 80182178  48 13 45 E9 */	bl setCameraPolygonPos__11Z2StatusMgrFP3Vec
lbl_8018217C:
/* 8018217C  38 7D 01 40 */	addi r3, r29, 0x140
/* 80182180  38 9D 01 E0 */	addi r4, r29, 0x1e0
/* 80182184  48 1C 43 2D */	bl PSMTXCopy
/* 80182188  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8018218C  D0 1D 01 EC */	stfs f0, 0x1ec(r29)
/* 80182190  D0 1D 01 FC */	stfs f0, 0x1fc(r29)
/* 80182194  D0 1D 02 0C */	stfs f0, 0x20c(r29)
/* 80182198  38 7D 01 00 */	addi r3, r29, 0x100
/* 8018219C  38 9D 01 40 */	addi r4, r29, 0x140
/* 801821A0  38 BD 01 A0 */	addi r5, r29, 0x1a0
/* 801821A4  4B E8 A7 2D */	bl mDoMtx_concatProjView__FPA4_CfPA4_CfPA4_f
/* 801821A8  7F C3 F3 78 */	mr r3, r30
/* 801821AC  4B FE 0F A9 */	bl Draw__9dCamera_cFv
/* 801821B0  38 61 00 14 */	addi r3, r1, 0x14
/* 801821B4  38 80 FF FF */	li r4, -1
/* 801821B8  4B EF 54 39 */	bl __dt__11dBgS_GndChkFv
/* 801821BC  38 60 00 01 */	li r3, 1
/* 801821C0  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 801821C4  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 801821C8  39 61 00 A0 */	addi r11, r1, 0xa0
/* 801821CC  48 1E 00 55 */	bl _restgpr_27
/* 801821D0  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 801821D4  7C 08 03 A6 */	mtlr r0
/* 801821D8  38 21 00 B0 */	addi r1, r1, 0xb0
/* 801821DC  4E 80 00 20 */	blr 
