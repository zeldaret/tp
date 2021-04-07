lbl_80CA82F4:
/* 80CA82F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CA82F8  7C 08 02 A6 */	mflr r0
/* 80CA82FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CA8300  39 61 00 20 */	addi r11, r1, 0x20
/* 80CA8304  4B 6B 9E D9 */	bl _savegpr_29
/* 80CA8308  7C 7D 1B 78 */	mr r29, r3
/* 80CA830C  3C 60 80 CB */	lis r3, lit_3659@ha /* 0x80CA8474@ha */
/* 80CA8310  3B C3 84 74 */	addi r30, r3, lit_3659@l /* 0x80CA8474@l */
/* 80CA8314  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CA8318  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CA831C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CA8320  38 80 01 00 */	li r4, 0x100
/* 80CA8324  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80CA8328  38 C0 00 00 */	li r6, 0
/* 80CA832C  38 E0 00 FF */	li r7, 0xff
/* 80CA8330  3D 00 80 45 */	lis r8, g_whiteColor@ha /* 0x80450608@ha */
/* 80CA8334  39 08 06 08 */	addi r8, r8, g_whiteColor@l /* 0x80450608@l */
/* 80CA8338  7D 09 43 78 */	mr r9, r8
/* 80CA833C  39 40 00 00 */	li r10, 0
/* 80CA8340  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80CA8344  4B 3A 4E 75 */	bl setSimple__13dPa_control_cFUsPC4cXyzPC12dKy_tevstr_cUcRC8_GXColorRC8_GXColorif
/* 80CA8348  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CA834C  38 80 01 01 */	li r4, 0x101
/* 80CA8350  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80CA8354  38 C0 00 00 */	li r6, 0
/* 80CA8358  38 E0 00 FF */	li r7, 0xff
/* 80CA835C  3D 00 80 45 */	lis r8, g_whiteColor@ha /* 0x80450608@ha */
/* 80CA8360  39 08 06 08 */	addi r8, r8, g_whiteColor@l /* 0x80450608@l */
/* 80CA8364  7D 09 43 78 */	mr r9, r8
/* 80CA8368  39 40 00 00 */	li r10, 0
/* 80CA836C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80CA8370  4B 3A 4E 49 */	bl setSimple__13dPa_control_cFUsPC4cXyzPC12dKy_tevstr_cUcRC8_GXColorRC8_GXColorif
/* 80CA8374  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80CA8378  38 80 01 03 */	li r4, 0x103
/* 80CA837C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80CA8380  38 C0 00 00 */	li r6, 0
/* 80CA8384  38 E0 00 FF */	li r7, 0xff
/* 80CA8388  3D 00 80 45 */	lis r8, g_whiteColor@ha /* 0x80450608@ha */
/* 80CA838C  39 08 06 08 */	addi r8, r8, g_whiteColor@l /* 0x80450608@l */
/* 80CA8390  7D 09 43 78 */	mr r9, r8
/* 80CA8394  39 40 00 00 */	li r10, 0
/* 80CA8398  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80CA839C  4B 3A 4E 1D */	bl setSimple__13dPa_control_cFUsPC4cXyzPC12dKy_tevstr_cUcRC8_GXColorRC8_GXColorif
/* 80CA83A0  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008026C@ha */
/* 80CA83A4  38 03 02 6C */	addi r0, r3, 0x026C /* 0x0008026C@l */
/* 80CA83A8  90 01 00 08 */	stw r0, 8(r1)
/* 80CA83AC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CA83B0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CA83B4  80 63 00 00 */	lwz r3, 0(r3)
/* 80CA83B8  38 81 00 08 */	addi r4, r1, 8
/* 80CA83BC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80CA83C0  38 C0 00 00 */	li r6, 0
/* 80CA83C4  38 E0 00 00 */	li r7, 0
/* 80CA83C8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80CA83CC  FC 40 08 90 */	fmr f2, f1
/* 80CA83D0  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80CA83D4  FC 80 18 90 */	fmr f4, f3
/* 80CA83D8  39 00 00 00 */	li r8, 0
/* 80CA83DC  4B 60 41 31 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CA83E0  38 60 00 01 */	li r3, 1
/* 80CA83E4  39 61 00 20 */	addi r11, r1, 0x20
/* 80CA83E8  4B 6B 9E 41 */	bl _restgpr_29
/* 80CA83EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CA83F0  7C 08 03 A6 */	mtlr r0
/* 80CA83F4  38 21 00 20 */	addi r1, r1, 0x20
/* 80CA83F8  4E 80 00 20 */	blr 
