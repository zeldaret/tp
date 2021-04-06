lbl_809B0DE0:
/* 809B0DE0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809B0DE4  7C 08 02 A6 */	mflr r0
/* 809B0DE8  90 01 00 44 */	stw r0, 0x44(r1)
/* 809B0DEC  39 61 00 40 */	addi r11, r1, 0x40
/* 809B0DF0  4B 9B 13 E5 */	bl _savegpr_27
/* 809B0DF4  7C 7F 1B 78 */	mr r31, r3
/* 809B0DF8  3C 60 80 9B */	lis r3, lit_3762@ha /* 0x809B1848@ha */
/* 809B0DFC  3B C3 18 48 */	addi r30, r3, lit_3762@l /* 0x809B1848@l */
/* 809B0E00  4B 66 74 A9 */	bl cDmrNowMidnaTalk__Fv
/* 809B0E04  2C 03 00 00 */	cmpwi r3, 0
/* 809B0E08  41 82 00 0C */	beq lbl_809B0E14
/* 809B0E0C  38 60 00 01 */	li r3, 1
/* 809B0E10  48 00 03 44 */	b lbl_809B1154
lbl_809B0E14:
/* 809B0E14  A8 7F 05 CC */	lha r3, 0x5cc(r31)
/* 809B0E18  38 03 00 01 */	addi r0, r3, 1
/* 809B0E1C  B0 1F 05 CC */	sth r0, 0x5cc(r31)
/* 809B0E20  38 60 00 00 */	li r3, 0
/* 809B0E24  38 00 00 04 */	li r0, 4
/* 809B0E28  7C 09 03 A6 */	mtctr r0
lbl_809B0E2C:
/* 809B0E2C  38 A3 05 D8 */	addi r5, r3, 0x5d8
/* 809B0E30  7C 9F 2A AE */	lhax r4, r31, r5
/* 809B0E34  2C 04 00 00 */	cmpwi r4, 0
/* 809B0E38  41 82 00 0C */	beq lbl_809B0E44
/* 809B0E3C  38 04 FF FF */	addi r0, r4, -1
/* 809B0E40  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_809B0E44:
/* 809B0E44  38 63 00 02 */	addi r3, r3, 2
/* 809B0E48  42 00 FF E4 */	bdnz lbl_809B0E2C
/* 809B0E4C  A8 7F 05 E0 */	lha r3, 0x5e0(r31)
/* 809B0E50  2C 03 00 00 */	cmpwi r3, 0
/* 809B0E54  41 82 00 0C */	beq lbl_809B0E60
/* 809B0E58  38 03 FF FF */	addi r0, r3, -1
/* 809B0E5C  B0 1F 05 E0 */	sth r0, 0x5e0(r31)
lbl_809B0E60:
/* 809B0E60  88 7F 09 78 */	lbz r3, 0x978(r31)
/* 809B0E64  7C 60 07 75 */	extsb. r0, r3
/* 809B0E68  41 82 00 0C */	beq lbl_809B0E74
/* 809B0E6C  38 03 FF FF */	addi r0, r3, -1
/* 809B0E70  98 1F 09 78 */	stb r0, 0x978(r31)
lbl_809B0E74:
/* 809B0E74  7F E3 FB 78 */	mr r3, r31
/* 809B0E78  4B FF FA 69 */	bl action__FP12npc_du_class
/* 809B0E7C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809B0E80  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809B0E84  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 809B0E88  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 809B0E8C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 809B0E90  4B 99 5A 59 */	bl PSMTXTrans
/* 809B0E94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809B0E98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809B0E9C  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 809B0EA0  4B 65 B5 95 */	bl mDoMtx_YrotM__FPA4_fs
/* 809B0EA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809B0EA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809B0EAC  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 809B0EB0  4B 65 B4 ED */	bl mDoMtx_XrotM__FPA4_fs
/* 809B0EB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809B0EB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809B0EBC  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 809B0EC0  4B 65 B6 0D */	bl mDoMtx_ZrotM__FPA4_fs
/* 809B0EC4  3C 60 80 9B */	lis r3, l_HIO@ha /* 0x809B19F8@ha */
/* 809B0EC8  3B A3 19 F8 */	addi r29, r3, l_HIO@l /* 0x809B19F8@l */
/* 809B0ECC  C0 3D 00 08 */	lfs f1, 8(r29)
/* 809B0ED0  FC 40 08 90 */	fmr f2, f1
/* 809B0ED4  FC 60 08 90 */	fmr f3, f1
/* 809B0ED8  4B 65 BF 61 */	bl scaleM__14mDoMtx_stack_cFfff
/* 809B0EDC  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 809B0EE0  83 83 00 04 */	lwz r28, 4(r3)
/* 809B0EE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809B0EE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809B0EEC  38 9C 00 24 */	addi r4, r28, 0x24
/* 809B0EF0  4B 99 55 C1 */	bl PSMTXCopy
/* 809B0EF4  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 809B0EF8  38 9F 05 38 */	addi r4, r31, 0x538
/* 809B0EFC  38 A0 00 00 */	li r5, 0
/* 809B0F00  38 C0 00 00 */	li r6, 0
/* 809B0F04  4B 65 F6 C5 */	bl play__14mDoExt_McaMorfFP3VecUlSc
/* 809B0F08  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 809B0F0C  C8 3E 00 80 */	lfd f1, 0x80(r30)
/* 809B0F10  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B0F14  3C 00 43 30 */	lis r0, 0x4330
/* 809B0F18  90 01 00 20 */	stw r0, 0x20(r1)
/* 809B0F1C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 809B0F20  EC 00 08 28 */	fsubs f0, f0, f1
/* 809B0F24  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 809B0F28  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 809B0F2C  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 809B0F30  4B 65 F7 7D */	bl modelCalc__14mDoExt_McaMorfFv
/* 809B0F34  80 1F 05 C8 */	lwz r0, 0x5c8(r31)
/* 809B0F38  2C 00 00 07 */	cmpwi r0, 7
/* 809B0F3C  40 82 00 E0 */	bne lbl_809B101C
/* 809B0F40  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 809B0F44  38 63 00 0C */	addi r3, r3, 0xc
/* 809B0F48  C0 3E 00 04 */	lfs f1, 4(r30)
/* 809B0F4C  4B 97 74 E1 */	bl checkPass__12J3DFrameCtrlFf
/* 809B0F50  2C 03 00 00 */	cmpwi r3, 0
/* 809B0F54  41 82 00 C8 */	beq lbl_809B101C
/* 809B0F58  A8 1F 05 CE */	lha r0, 0x5ce(r31)
/* 809B0F5C  2C 00 00 01 */	cmpwi r0, 1
/* 809B0F60  40 82 00 60 */	bne lbl_809B0FC0
/* 809B0F64  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 809B0F68  54 00 10 3A */	slwi r0, r0, 2
/* 809B0F6C  3C 60 80 9B */	lis r3, run_se@ha /* 0x809B18F4@ha */
/* 809B0F70  38 63 18 F4 */	addi r3, r3, run_se@l /* 0x809B18F4@l */
/* 809B0F74  7F 63 00 2E */	lwzx r27, r3, r0
/* 809B0F78  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 809B0F7C  7C 03 07 74 */	extsb r3, r0
/* 809B0F80  4B 67 C0 ED */	bl dComIfGp_getReverb__Fi
/* 809B0F84  7C 67 1B 78 */	mr r7, r3
/* 809B0F88  93 61 00 10 */	stw r27, 0x10(r1)
/* 809B0F8C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809B0F90  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809B0F94  80 63 00 00 */	lwz r3, 0(r3)
/* 809B0F98  38 81 00 10 */	addi r4, r1, 0x10
/* 809B0F9C  38 BF 05 38 */	addi r5, r31, 0x538
/* 809B0FA0  38 C0 00 00 */	li r6, 0
/* 809B0FA4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 809B0FA8  FC 40 08 90 */	fmr f2, f1
/* 809B0FAC  C0 7E 00 08 */	lfs f3, 8(r30)
/* 809B0FB0  FC 80 18 90 */	fmr f4, f3
/* 809B0FB4  39 00 00 00 */	li r8, 0
/* 809B0FB8  4B 8F A9 CD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 809B0FBC  48 00 00 D0 */	b lbl_809B108C
lbl_809B0FC0:
/* 809B0FC0  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 809B0FC4  54 00 10 3A */	slwi r0, r0, 2
/* 809B0FC8  3C 60 80 9B */	lis r3, walk_se@ha /* 0x809B18EC@ha */
/* 809B0FCC  38 63 18 EC */	addi r3, r3, walk_se@l /* 0x809B18EC@l */
/* 809B0FD0  7F 63 00 2E */	lwzx r27, r3, r0
/* 809B0FD4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 809B0FD8  7C 03 07 74 */	extsb r3, r0
/* 809B0FDC  4B 67 C0 91 */	bl dComIfGp_getReverb__Fi
/* 809B0FE0  7C 67 1B 78 */	mr r7, r3
/* 809B0FE4  93 61 00 0C */	stw r27, 0xc(r1)
/* 809B0FE8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809B0FEC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809B0FF0  80 63 00 00 */	lwz r3, 0(r3)
/* 809B0FF4  38 81 00 0C */	addi r4, r1, 0xc
/* 809B0FF8  38 BF 05 38 */	addi r5, r31, 0x538
/* 809B0FFC  38 C0 00 00 */	li r6, 0
/* 809B1000  C0 3E 00 00 */	lfs f1, 0(r30)
/* 809B1004  FC 40 08 90 */	fmr f2, f1
/* 809B1008  C0 7E 00 08 */	lfs f3, 8(r30)
/* 809B100C  FC 80 18 90 */	fmr f4, f3
/* 809B1010  39 00 00 00 */	li r8, 0
/* 809B1014  4B 8F A9 71 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 809B1018  48 00 00 74 */	b lbl_809B108C
lbl_809B101C:
/* 809B101C  80 1F 05 C8 */	lwz r0, 0x5c8(r31)
/* 809B1020  2C 00 00 05 */	cmpwi r0, 5
/* 809B1024  40 82 00 68 */	bne lbl_809B108C
/* 809B1028  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 809B102C  38 63 00 0C */	addi r3, r3, 0xc
/* 809B1030  C0 3E 00 04 */	lfs f1, 4(r30)
/* 809B1034  4B 97 73 F9 */	bl checkPass__12J3DFrameCtrlFf
/* 809B1038  2C 03 00 00 */	cmpwi r3, 0
/* 809B103C  41 82 00 50 */	beq lbl_809B108C
/* 809B1040  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 809B1044  7C 03 07 74 */	extsb r3, r0
/* 809B1048  4B 67 C0 25 */	bl dComIfGp_getReverb__Fi
/* 809B104C  7C 67 1B 78 */	mr r7, r3
/* 809B1050  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060057@ha */
/* 809B1054  38 03 00 57 */	addi r0, r3, 0x0057 /* 0x00060057@l */
/* 809B1058  90 01 00 08 */	stw r0, 8(r1)
/* 809B105C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809B1060  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809B1064  80 63 00 00 */	lwz r3, 0(r3)
/* 809B1068  38 81 00 08 */	addi r4, r1, 8
/* 809B106C  38 BF 05 38 */	addi r5, r31, 0x538
/* 809B1070  38 C0 00 00 */	li r6, 0
/* 809B1074  C0 3E 00 00 */	lfs f1, 0(r30)
/* 809B1078  FC 40 08 90 */	fmr f2, f1
/* 809B107C  C0 7E 00 08 */	lfs f3, 8(r30)
/* 809B1080  FC 80 18 90 */	fmr f4, f3
/* 809B1084  39 00 00 00 */	li r8, 0
/* 809B1088  4B 8F A8 FD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_809B108C:
/* 809B108C  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 809B1090  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809B1094  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 809B1098  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 809B109C  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 809B10A0  80 84 00 00 */	lwz r4, 0(r4)
/* 809B10A4  4B 99 54 0D */	bl PSMTXCopy
/* 809B10A8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 809B10AC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809B10B0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809B10B4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809B10B8  38 61 00 14 */	addi r3, r1, 0x14
/* 809B10BC  38 9F 05 38 */	addi r4, r31, 0x538
/* 809B10C0  4B 8B FE 2D */	bl MtxPosition__FP4cXyzP4cXyz
/* 809B10C4  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 809B10C8  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 809B10CC  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 809B10D0  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 809B10D4  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 809B10D8  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 809B10DC  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 809B10E0  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 809B10E4  EC 01 00 2A */	fadds f0, f1, f0
/* 809B10E8  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 809B10EC  38 7F 09 64 */	addi r3, r31, 0x964
/* 809B10F0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 809B10F4  4B 8B E5 55 */	bl SetC__8cM3dGSphFRC4cXyz
/* 809B10F8  38 7F 09 64 */	addi r3, r31, 0x964
/* 809B10FC  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 809B1100  C0 1D 00 08 */	lfs f0, 8(r29)
/* 809B1104  EC 21 00 32 */	fmuls f1, f1, f0
/* 809B1108  4B 8B E6 01 */	bl SetR__8cM3dGSphFf
/* 809B110C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809B1110  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809B1114  38 63 23 3C */	addi r3, r3, 0x233c
/* 809B1118  38 9F 08 40 */	addi r4, r31, 0x840
/* 809B111C  4B 8B 3A 8D */	bl Set__4cCcSFP8cCcD_Obj
/* 809B1120  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 809B1124  7C 03 07 74 */	extsb r3, r0
/* 809B1128  4B 67 BF 45 */	bl dComIfGp_getReverb__Fi
/* 809B112C  7C 65 1B 78 */	mr r5, r3
/* 809B1130  38 7F 09 DC */	addi r3, r31, 0x9dc
/* 809B1134  38 80 00 00 */	li r4, 0
/* 809B1138  81 9F 09 EC */	lwz r12, 0x9ec(r31)
/* 809B113C  81 8C 00 08 */	lwz r12, 8(r12)
/* 809B1140  7D 89 03 A6 */	mtctr r12
/* 809B1144  4E 80 04 21 */	bctrl 
/* 809B1148  7F E3 FB 78 */	mr r3, r31
/* 809B114C  4B FF FB 71 */	bl message__FP12npc_du_class
/* 809B1150  38 60 00 01 */	li r3, 1
lbl_809B1154:
/* 809B1154  39 61 00 40 */	addi r11, r1, 0x40
/* 809B1158  4B 9B 10 C9 */	bl _restgpr_27
/* 809B115C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809B1160  7C 08 03 A6 */	mtlr r0
/* 809B1164  38 21 00 40 */	addi r1, r1, 0x40
/* 809B1168  4E 80 00 20 */	blr 
