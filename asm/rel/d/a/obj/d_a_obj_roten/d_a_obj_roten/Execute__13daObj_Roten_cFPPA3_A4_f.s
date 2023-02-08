lbl_80CC1038:
/* 80CC1038  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CC103C  7C 08 02 A6 */	mflr r0
/* 80CC1040  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CC1044  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CC1048  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CC104C  7C 7E 1B 78 */	mr r30, r3
/* 80CC1050  7C 9F 23 78 */	mr r31, r4
/* 80CC1054  88 03 05 C4 */	lbz r0, 0x5c4(r3)
/* 80CC1058  28 00 00 00 */	cmplwi r0, 0
/* 80CC105C  41 82 00 B0 */	beq lbl_80CC110C
/* 80CC1060  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 80CC1064  38 63 0D 64 */	addi r3, r3, mStayNo__20dStage_roomControl_c+0x0@l /* 0x80450D64@l */
/* 80CC1068  88 63 00 00 */	lbz r3, 0(r3)
/* 80CC106C  7C 63 07 75 */	extsb. r3, r3
/* 80CC1070  41 82 00 54 */	beq lbl_80CC10C4
/* 80CC1074  4B 36 BF F9 */	bl dComIfGp_getReverb__Fi
/* 80CC1078  7C 67 1B 78 */	mr r7, r3
/* 80CC107C  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008011D@ha */
/* 80CC1080  38 03 01 1D */	addi r0, r3, 0x011D /* 0x0008011D@l */
/* 80CC1084  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CC1088  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CC108C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CC1090  80 63 00 00 */	lwz r3, 0(r3)
/* 80CC1094  38 81 00 0C */	addi r4, r1, 0xc
/* 80CC1098  38 BE 05 B8 */	addi r5, r30, 0x5b8
/* 80CC109C  38 C0 00 00 */	li r6, 0
/* 80CC10A0  3D 00 80 CC */	lis r8, lit_3787@ha /* 0x80CC1424@ha */
/* 80CC10A4  C0 28 14 24 */	lfs f1, lit_3787@l(r8)  /* 0x80CC1424@l */
/* 80CC10A8  FC 40 08 90 */	fmr f2, f1
/* 80CC10AC  3D 00 80 CC */	lis r8, lit_3844@ha /* 0x80CC1428@ha */
/* 80CC10B0  C0 68 14 28 */	lfs f3, lit_3844@l(r8)  /* 0x80CC1428@l */
/* 80CC10B4  FC 80 18 90 */	fmr f4, f3
/* 80CC10B8  39 00 00 00 */	li r8, 0
/* 80CC10BC  4B 5E B4 51 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CC10C0  48 00 00 4C */	b lbl_80CC110C
lbl_80CC10C4:
/* 80CC10C4  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008011D@ha */
/* 80CC10C8  38 03 01 1D */	addi r0, r3, 0x011D /* 0x0008011D@l */
/* 80CC10CC  90 01 00 08 */	stw r0, 8(r1)
/* 80CC10D0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CC10D4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CC10D8  80 63 00 00 */	lwz r3, 0(r3)
/* 80CC10DC  38 81 00 08 */	addi r4, r1, 8
/* 80CC10E0  38 BE 05 B8 */	addi r5, r30, 0x5b8
/* 80CC10E4  38 C0 00 00 */	li r6, 0
/* 80CC10E8  38 E0 00 00 */	li r7, 0
/* 80CC10EC  3D 00 80 CC */	lis r8, lit_3787@ha /* 0x80CC1424@ha */
/* 80CC10F0  C0 28 14 24 */	lfs f1, lit_3787@l(r8)  /* 0x80CC1424@l */
/* 80CC10F4  FC 40 08 90 */	fmr f2, f1
/* 80CC10F8  3D 00 80 CC */	lis r8, lit_3844@ha /* 0x80CC1428@ha */
/* 80CC10FC  C0 68 14 28 */	lfs f3, lit_3844@l(r8)  /* 0x80CC1428@l */
/* 80CC1100  FC 80 18 90 */	fmr f4, f3
/* 80CC1104  39 00 00 00 */	li r8, 0
/* 80CC1108  4B 5E B4 05 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CC110C:
/* 80CC110C  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80CC1110  90 1F 00 00 */	stw r0, 0(r31)
/* 80CC1114  7F C3 F3 78 */	mr r3, r30
/* 80CC1118  4B FF FA 7D */	bl setBaseMtx__13daObj_Roten_cFv
/* 80CC111C  38 60 00 01 */	li r3, 1
/* 80CC1120  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CC1124  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CC1128  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CC112C  7C 08 03 A6 */	mtlr r0
/* 80CC1130  38 21 00 20 */	addi r1, r1, 0x20
/* 80CC1134  4E 80 00 20 */	blr 
