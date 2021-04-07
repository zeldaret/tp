lbl_8047E350:
/* 8047E350  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8047E354  7C 08 02 A6 */	mflr r0
/* 8047E358  90 01 00 94 */	stw r0, 0x94(r1)
/* 8047E35C  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8047E360  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8047E364  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8047E368  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 8047E36C  39 61 00 70 */	addi r11, r1, 0x70
/* 8047E370  4B EE 3E 65 */	bl _savegpr_27
/* 8047E374  7C 9C 23 78 */	mr r28, r4
/* 8047E378  7C BD 2B 78 */	mr r29, r5
/* 8047E37C  7C DB 33 78 */	mr r27, r6
/* 8047E380  3C 60 80 48 */	lis r3, lit_1109@ha /* 0x80481888@ha */
/* 8047E384  3B C3 18 88 */	addi r30, r3, lit_1109@l /* 0x80481888@l */
/* 8047E388  3C 60 80 48 */	lis r3, M_lin5__Q212daObjMovebox5Bgc_c@ha /* 0x80480F28@ha */
/* 8047E38C  3B E3 0F 28 */	addi r31, r3, M_lin5__Q212daObjMovebox5Bgc_c@l /* 0x80480F28@l */
/* 8047E390  88 1E 12 60 */	lbz r0, 0x1260(r30)
/* 8047E394  7C 00 07 75 */	extsb. r0, r0
/* 8047E398  40 82 00 24 */	bne lbl_8047E3BC
/* 8047E39C  38 7E 12 64 */	addi r3, r30, 0x1264
/* 8047E3A0  4B BF 9B BD */	bl __ct__14dBgS_ObjLinChkFv
/* 8047E3A4  3C 80 80 07 */	lis r4, __dt__14dBgS_ObjLinChkFv@ha /* 0x80077FB8@ha */
/* 8047E3A8  38 84 7F B8 */	addi r4, r4, __dt__14dBgS_ObjLinChkFv@l /* 0x80077FB8@l */
/* 8047E3AC  38 BE 12 54 */	addi r5, r30, 0x1254
/* 8047E3B0  4B FF F6 C9 */	bl __register_global_object
/* 8047E3B4  38 00 00 01 */	li r0, 1
/* 8047E3B8  98 1E 12 60 */	stb r0, 0x1260(r30)
lbl_8047E3BC:
/* 8047E3BC  A8 1C 04 B6 */	lha r0, 0x4b6(r28)
/* 8047E3C0  7C 00 DA 14 */	add r0, r0, r27
/* 8047E3C4  7C 04 07 34 */	extsh r4, r0
/* 8047E3C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8047E3CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8047E3D0  7C 9B 23 78 */	mr r27, r4
/* 8047E3D4  4B B8 E0 09 */	bl mDoMtx_YrotS__FPA4_fs
/* 8047E3D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8047E3DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8047E3E0  38 80 40 00 */	li r4, 0x4000
/* 8047E3E4  4B B8 DF B9 */	bl mDoMtx_XrotM__FPA4_fs
/* 8047E3E8  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8047E3EC  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8047E3F0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8047E3F4  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 8047E3F8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8047E3FC  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8047E400  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8047E404  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8047E408  3C 80 80 43 */	lis r4, BaseY__4cXyz@ha /* 0x80430D24@ha */
/* 8047E40C  38 84 0D 24 */	addi r4, r4, BaseY__4cXyz@l /* 0x80430D24@l */
/* 8047E410  38 A1 00 14 */	addi r5, r1, 0x14
/* 8047E414  4B EC 89 59 */	bl PSMTXMultVec
/* 8047E418  7F 83 E3 78 */	mr r3, r28
/* 8047E41C  48 00 02 95 */	bl attr__Q212daObjMovebox5Act_cCFv
/* 8047E420  C0 23 00 70 */	lfs f1, 0x70(r3)
/* 8047E424  C0 1F 01 D0 */	lfs f0, 0x1d0(r31)
/* 8047E428  EC 20 00 72 */	fmuls f1, f0, f1
/* 8047E42C  C0 1F 01 D8 */	lfs f0, 0x1d8(r31)
/* 8047E430  EC 20 08 2A */	fadds f1, f0, f1
/* 8047E434  38 61 00 14 */	addi r3, r1, 0x14
/* 8047E438  7C 64 1B 78 */	mr r4, r3
/* 8047E43C  4B EC 8C 9D */	bl PSVECScale
/* 8047E440  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8047E444  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8047E448  38 80 40 00 */	li r4, 0x4000
/* 8047E44C  4B B8 DF 51 */	bl mDoMtx_XrotM__FPA4_fs
/* 8047E450  C0 3D 00 08 */	lfs f1, 8(r29)
/* 8047E454  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8047E458  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8047E45C  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 8047E460  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8047E464  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8047E468  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8047E46C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8047E470  38 81 00 2C */	addi r4, r1, 0x2c
/* 8047E474  38 A1 00 20 */	addi r5, r1, 0x20
/* 8047E478  4B EC 88 F5 */	bl PSMTXMultVec
/* 8047E47C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8047E480  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8047E484  7F 64 DB 78 */	mr r4, r27
/* 8047E488  4B B8 DF 55 */	bl mDoMtx_YrotS__FPA4_fs
/* 8047E48C  38 61 00 20 */	addi r3, r1, 0x20
/* 8047E490  4B B8 E9 45 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 8047E494  7F 83 E3 78 */	mr r3, r28
/* 8047E498  48 00 02 19 */	bl attr__Q212daObjMovebox5Act_cCFv
/* 8047E49C  C3 C3 00 70 */	lfs f30, 0x70(r3)
/* 8047E4A0  7F 83 E3 78 */	mr r3, r28
/* 8047E4A4  48 00 02 0D */	bl attr__Q212daObjMovebox5Act_cCFv
/* 8047E4A8  C3 E3 00 64 */	lfs f31, 0x64(r3)
/* 8047E4AC  7F 83 E3 78 */	mr r3, r28
/* 8047E4B0  48 00 02 01 */	bl attr__Q212daObjMovebox5Act_cCFv
/* 8047E4B4  C0 23 00 70 */	lfs f1, 0x70(r3)
/* 8047E4B8  FC 40 F8 90 */	fmr f2, f31
/* 8047E4BC  FC 60 F0 90 */	fmr f3, f30
/* 8047E4C0  4B B8 E9 79 */	bl scaleM__14mDoMtx_stack_cFfff
/* 8047E4C4  C0 3F 01 C0 */	lfs f1, 0x1c0(r31)
/* 8047E4C8  C0 5F 01 D0 */	lfs f2, 0x1d0(r31)
/* 8047E4CC  FC 60 08 90 */	fmr f3, f1
/* 8047E4D0  4B B8 E8 CD */	bl transM__14mDoMtx_stack_cFfff
/* 8047E4D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8047E4D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8047E4DC  38 80 40 00 */	li r4, 0x4000
/* 8047E4E0  4B B8 DE BD */	bl mDoMtx_XrotM__FPA4_fs
/* 8047E4E4  C0 3D 00 00 */	lfs f1, 0(r29)
/* 8047E4E8  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8047E4EC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8047E4F0  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 8047E4F4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8047E4F8  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8047E4FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8047E500  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8047E504  38 81 00 2C */	addi r4, r1, 0x2c
/* 8047E508  38 A1 00 44 */	addi r5, r1, 0x44
/* 8047E50C  4B EC 88 61 */	bl PSMTXMultVec
/* 8047E510  38 61 00 44 */	addi r3, r1, 0x44
/* 8047E514  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8047E518  7C 65 1B 78 */	mr r5, r3
/* 8047E51C  4B EC 8B 75 */	bl PSVECAdd
/* 8047E520  38 61 00 08 */	addi r3, r1, 8
/* 8047E524  38 81 00 44 */	addi r4, r1, 0x44
/* 8047E528  38 A1 00 14 */	addi r5, r1, 0x14
/* 8047E52C  4B DE 85 B9 */	bl __pl__4cXyzCFRC3Vec
/* 8047E530  C0 01 00 08 */	lfs f0, 8(r1)
/* 8047E534  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8047E538  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8047E53C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8047E540  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8047E544  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8047E548  80 1C 00 04 */	lwz r0, 4(r28)
/* 8047E54C  38 7E 12 64 */	addi r3, r30, 0x1264
/* 8047E550  90 03 00 08 */	stw r0, 8(r3)
/* 8047E554  38 81 00 44 */	addi r4, r1, 0x44
/* 8047E558  38 A1 00 38 */	addi r5, r1, 0x38
/* 8047E55C  7F 86 E3 78 */	mr r6, r28
/* 8047E560  4B BF 98 05 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8047E564  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8047E568  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8047E56C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8047E570  38 9E 12 64 */	addi r4, r30, 0x1264
/* 8047E574  4B BF 5E 41 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8047E578  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8047E57C  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8047E580  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 8047E584  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8047E588  39 61 00 70 */	addi r11, r1, 0x70
/* 8047E58C  4B EE 3C 95 */	bl _restgpr_27
/* 8047E590  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8047E594  7C 08 03 A6 */	mtlr r0
/* 8047E598  38 21 00 90 */	addi r1, r1, 0x90
/* 8047E59C  4E 80 00 20 */	blr 
