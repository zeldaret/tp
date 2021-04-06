lbl_80BCF404:
/* 80BCF404  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80BCF408  7C 08 02 A6 */	mflr r0
/* 80BCF40C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80BCF410  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80BCF414  4B 79 2D C9 */	bl _savegpr_29
/* 80BCF418  7C 7E 1B 78 */	mr r30, r3
/* 80BCF41C  3C 60 80 BD */	lis r3, lit_3685@ha /* 0x80BD0188@ha */
/* 80BCF420  3B E3 01 88 */	addi r31, r3, lit_3685@l /* 0x80BD0188@l */
/* 80BCF424  88 1E 05 F4 */	lbz r0, 0x5f4(r30)
/* 80BCF428  28 00 00 00 */	cmplwi r0, 0
/* 80BCF42C  40 82 03 98 */	bne lbl_80BCF7C4
/* 80BCF430  3C 60 80 BD */	lis r3, s_obj_sub__FPvPv@ha /* 0x80BCF390@ha */
/* 80BCF434  38 63 F3 90 */	addi r3, r3, s_obj_sub__FPvPv@l /* 0x80BCF390@l */
/* 80BCF438  7F C4 F3 78 */	mr r4, r30
/* 80BCF43C  4B 45 1E FD */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80BCF440  7C 7D 1B 79 */	or. r29, r3, r3
/* 80BCF444  41 82 03 80 */	beq lbl_80BCF7C4
/* 80BCF448  A8 1D 06 90 */	lha r0, 0x690(r29)
/* 80BCF44C  2C 00 00 66 */	cmpwi r0, 0x66
/* 80BCF450  40 82 03 74 */	bne lbl_80BCF7C4
/* 80BCF454  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80BCF458  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 80BCF45C  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 80BCF460  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BCF464  7C 03 07 74 */	extsb r3, r0
/* 80BCF468  4B 45 DC 05 */	bl dComIfGp_getReverb__Fi
/* 80BCF46C  7C 67 1B 78 */	mr r7, r3
/* 80BCF470  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802BA@ha */
/* 80BCF474  38 03 02 BA */	addi r0, r3, 0x02BA /* 0x000802BA@l */
/* 80BCF478  90 01 00 20 */	stw r0, 0x20(r1)
/* 80BCF47C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BCF480  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BCF484  80 63 00 00 */	lwz r3, 0(r3)
/* 80BCF488  38 81 00 20 */	addi r4, r1, 0x20
/* 80BCF48C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BCF490  38 C0 00 00 */	li r6, 0
/* 80BCF494  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80BCF498  FC 40 08 90 */	fmr f2, f1
/* 80BCF49C  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 80BCF4A0  FC 80 18 90 */	fmr f4, f3
/* 80BCF4A4  39 00 00 00 */	li r8, 0
/* 80BCF4A8  4B 6D C4 DD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BCF4AC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80BCF4B0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80BCF4B4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80BCF4B8  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80BCF4BC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80BCF4C0  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80BCF4C4  80 7E 06 5C */	lwz r3, 0x65c(r30)
/* 80BCF4C8  38 63 00 24 */	addi r3, r3, 0x24
/* 80BCF4CC  38 81 00 74 */	addi r4, r1, 0x74
/* 80BCF4D0  4B 77 70 E1 */	bl PSMTXInverse
/* 80BCF4D4  38 61 00 74 */	addi r3, r1, 0x74
/* 80BCF4D8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BCF4DC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BCF4E0  4B 77 6F D1 */	bl PSMTXCopy
/* 80BCF4E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BCF4E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BCF4EC  38 81 00 68 */	addi r4, r1, 0x68
/* 80BCF4F0  7C 85 23 78 */	mr r5, r4
/* 80BCF4F4  4B 77 78 79 */	bl PSMTXMultVec
/* 80BCF4F8  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 80BCF4FC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BCF500  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCF504  40 80 00 10 */	bge lbl_80BCF514
/* 80BCF508  38 00 00 01 */	li r0, 1
/* 80BCF50C  90 1E 06 44 */	stw r0, 0x644(r30)
/* 80BCF510  48 00 00 0C */	b lbl_80BCF51C
lbl_80BCF514:
/* 80BCF514  38 00 00 04 */	li r0, 4
/* 80BCF518  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80BCF51C:
/* 80BCF51C  7F C3 F3 78 */	mr r3, r30
/* 80BCF520  4B FF F9 41 */	bl BgRelease__15daObjCRVFENCE_cFv
/* 80BCF524  7F C3 F3 78 */	mr r3, r30
/* 80BCF528  4B FF F7 71 */	bl CheckVec__15daObjCRVFENCE_cFv
/* 80BCF52C  7C 7D 1B 78 */	mr r29, r3
/* 80BCF530  38 00 00 01 */	li r0, 1
/* 80BCF534  98 1E 05 F4 */	stb r0, 0x5f4(r30)
/* 80BCF538  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BCF53C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80BCF540  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80BCF544  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80BCF548  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80BCF54C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BCF550  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BCF554  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80BCF558  38 80 00 05 */	li r4, 5
/* 80BCF55C  38 A0 00 1F */	li r5, 0x1f
/* 80BCF560  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80BCF564  4B 4A 04 C1 */	bl StartShock__12dVibration_cFii4cXyz
/* 80BCF568  38 00 00 01 */	li r0, 1
/* 80BCF56C  90 1E 05 A4 */	stw r0, 0x5a4(r30)
/* 80BCF570  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80BCF574  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80BCF578  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80BCF57C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80BCF580  C0 BF 00 28 */	lfs f5, 0x28(r31)
/* 80BCF584  D0 A1 00 64 */	stfs f5, 0x64(r1)
/* 80BCF588  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80BCF58C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80BCF590  C0 9F 00 58 */	lfs f4, 0x58(r31)
/* 80BCF594  D0 81 00 54 */	stfs f4, 0x54(r1)
/* 80BCF598  C0 7F 00 00 */	lfs f3, 0(r31)
/* 80BCF59C  D0 61 00 58 */	stfs f3, 0x58(r1)
/* 80BCF5A0  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 80BCF5A4  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80BCF5A8  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80BCF5AC  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80BCF5B0  D0 81 00 4C */	stfs f4, 0x4c(r1)
/* 80BCF5B4  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 80BCF5B8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80BCF5BC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80BCF5C0  D0 A1 00 40 */	stfs f5, 0x40(r1)
/* 80BCF5C4  2C 1D 00 00 */	cmpwi r29, 0
/* 80BCF5C8  41 82 00 3C */	beq lbl_80BCF604
/* 80BCF5CC  FC C0 28 50 */	fneg f6, f5
/* 80BCF5D0  FC A0 00 50 */	fneg f5, f0
/* 80BCF5D4  FC 00 18 50 */	fneg f0, f3
/* 80BCF5D8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80BCF5DC  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 80BCF5E0  D0 C1 00 40 */	stfs f6, 0x40(r1)
/* 80BCF5E4  FC 00 20 50 */	fneg f0, f4
/* 80BCF5E8  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80BCF5EC  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80BCF5F0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80BCF5F4  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80BCF5F8  3C 63 00 01 */	addis r3, r3, 1
/* 80BCF5FC  38 03 80 00 */	addi r0, r3, -32768
/* 80BCF600  B0 1E 05 AA */	sth r0, 0x5aa(r30)
lbl_80BCF604:
/* 80BCF604  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80BCF608  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80BCF60C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80BCF610  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80BCF614  C0 BF 00 28 */	lfs f5, 0x28(r31)
/* 80BCF618  D0 A1 00 64 */	stfs f5, 0x64(r1)
/* 80BCF61C  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80BCF620  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80BCF624  C0 9F 00 58 */	lfs f4, 0x58(r31)
/* 80BCF628  D0 81 00 54 */	stfs f4, 0x54(r1)
/* 80BCF62C  C0 7F 00 00 */	lfs f3, 0(r31)
/* 80BCF630  D0 61 00 58 */	stfs f3, 0x58(r1)
/* 80BCF634  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 80BCF638  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80BCF63C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80BCF640  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80BCF644  D0 81 00 4C */	stfs f4, 0x4c(r1)
/* 80BCF648  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 80BCF64C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80BCF650  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80BCF654  D0 A1 00 40 */	stfs f5, 0x40(r1)
/* 80BCF658  2C 1D 00 00 */	cmpwi r29, 0
/* 80BCF65C  41 82 00 2C */	beq lbl_80BCF688
/* 80BCF660  FC C0 28 50 */	fneg f6, f5
/* 80BCF664  FC A0 00 50 */	fneg f5, f0
/* 80BCF668  FC 00 18 50 */	fneg f0, f3
/* 80BCF66C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80BCF670  D0 A1 00 3C */	stfs f5, 0x3c(r1)
/* 80BCF674  D0 C1 00 40 */	stfs f6, 0x40(r1)
/* 80BCF678  FC 00 20 50 */	fneg f0, f4
/* 80BCF67C  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80BCF680  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80BCF684  D0 01 00 4C */	stfs f0, 0x4c(r1)
lbl_80BCF688:
/* 80BCF688  38 61 00 24 */	addi r3, r1, 0x24
/* 80BCF68C  38 80 00 00 */	li r4, 0
/* 80BCF690  A8 BE 05 AA */	lha r5, 0x5aa(r30)
/* 80BCF694  38 C0 00 00 */	li r6, 0
/* 80BCF698  4B 69 7D 5D */	bl __ct__5csXyzFsss
/* 80BCF69C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BCF6A0  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BCF6A4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80BCF6A8  38 80 00 00 */	li r4, 0
/* 80BCF6AC  90 81 00 08 */	stw r4, 8(r1)
/* 80BCF6B0  38 00 FF FF */	li r0, -1
/* 80BCF6B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BCF6B8  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BCF6BC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BCF6C0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BCF6C4  38 80 00 00 */	li r4, 0
/* 80BCF6C8  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008617@ha */
/* 80BCF6CC  38 A5 86 17 */	addi r5, r5, 0x8617 /* 0x00008617@l */
/* 80BCF6D0  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80BCF6D4  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80BCF6D8  39 01 00 24 */	addi r8, r1, 0x24
/* 80BCF6DC  39 20 00 00 */	li r9, 0
/* 80BCF6E0  39 40 00 FF */	li r10, 0xff
/* 80BCF6E4  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80BCF6E8  4B 47 D3 A9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BCF6EC  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80BCF6F0  38 80 00 00 */	li r4, 0
/* 80BCF6F4  90 81 00 08 */	stw r4, 8(r1)
/* 80BCF6F8  38 00 FF FF */	li r0, -1
/* 80BCF6FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BCF700  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BCF704  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BCF708  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BCF70C  38 80 00 00 */	li r4, 0
/* 80BCF710  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008618@ha */
/* 80BCF714  38 A5 86 18 */	addi r5, r5, 0x8618 /* 0x00008618@l */
/* 80BCF718  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80BCF71C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80BCF720  39 01 00 24 */	addi r8, r1, 0x24
/* 80BCF724  39 20 00 00 */	li r9, 0
/* 80BCF728  39 40 00 FF */	li r10, 0xff
/* 80BCF72C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80BCF730  4B 47 D3 61 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BCF734  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80BCF738  38 80 00 00 */	li r4, 0
/* 80BCF73C  90 81 00 08 */	stw r4, 8(r1)
/* 80BCF740  38 00 FF FF */	li r0, -1
/* 80BCF744  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BCF748  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BCF74C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BCF750  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BCF754  38 80 00 00 */	li r4, 0
/* 80BCF758  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008619@ha */
/* 80BCF75C  38 A5 86 19 */	addi r5, r5, 0x8619 /* 0x00008619@l */
/* 80BCF760  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80BCF764  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80BCF768  39 01 00 24 */	addi r8, r1, 0x24
/* 80BCF76C  39 20 00 00 */	li r9, 0
/* 80BCF770  39 40 00 FF */	li r10, 0xff
/* 80BCF774  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80BCF778  4B 47 D3 19 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BCF77C  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80BCF780  38 80 00 00 */	li r4, 0
/* 80BCF784  90 81 00 08 */	stw r4, 8(r1)
/* 80BCF788  38 00 FF FF */	li r0, -1
/* 80BCF78C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BCF790  90 81 00 10 */	stw r4, 0x10(r1)
/* 80BCF794  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BCF798  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BCF79C  38 80 00 00 */	li r4, 0
/* 80BCF7A0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000861A@ha */
/* 80BCF7A4  38 A5 86 1A */	addi r5, r5, 0x861A /* 0x0000861A@l */
/* 80BCF7A8  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80BCF7AC  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80BCF7B0  39 01 00 24 */	addi r8, r1, 0x24
/* 80BCF7B4  39 20 00 00 */	li r9, 0
/* 80BCF7B8  39 40 00 FF */	li r10, 0xff
/* 80BCF7BC  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80BCF7C0  4B 47 D2 D1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_80BCF7C4:
/* 80BCF7C4  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80BCF7C8  4B 79 2A 61 */	bl _restgpr_29
/* 80BCF7CC  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80BCF7D0  7C 08 03 A6 */	mtlr r0
/* 80BCF7D4  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80BCF7D8  4E 80 00 20 */	blr 
