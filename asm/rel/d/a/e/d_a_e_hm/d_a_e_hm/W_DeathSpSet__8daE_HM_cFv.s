lbl_806E0FF4:
/* 806E0FF4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806E0FF8  7C 08 02 A6 */	mflr r0
/* 806E0FFC  90 01 00 44 */	stw r0, 0x44(r1)
/* 806E1000  39 61 00 40 */	addi r11, r1, 0x40
/* 806E1004  4B C8 11 D9 */	bl _savegpr_29
/* 806E1008  7C 7F 1B 78 */	mr r31, r3
/* 806E100C  3C 80 80 6E */	lis r4, lit_3791@ha /* 0x806E5920@ha */
/* 806E1010  3B C4 59 20 */	addi r30, r4, lit_3791@l /* 0x806E5920@l */
/* 806E1014  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806E1018  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806E101C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806E1020  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 806E1024  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806E1028  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 806E102C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806E1030  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 806E1034  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806E1038  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 806E103C  D0 01 00 08 */	stfs f0, 8(r1)
/* 806E1040  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 806E1044  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806E1048  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 806E104C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806E1050  38 81 00 14 */	addi r4, r1, 0x14
/* 806E1054  38 A1 00 08 */	addi r5, r1, 8
/* 806E1058  4B FF FE E1 */	bl W_TargetAngle__8daE_HM_cF4cXyz4cXyz
/* 806E105C  7C 7D 1B 78 */	mr r29, r3
/* 806E1060  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 806E1064  4B 92 BE A9 */	bl ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 806E1068  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806E106C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806E1070  7F A4 EB 78 */	mr r4, r29
/* 806E1074  4B 92 B3 C1 */	bl mDoMtx_YrotM__FPA4_fs
/* 806E1078  88 1F 05 AF */	lbz r0, 0x5af(r31)
/* 806E107C  28 00 00 00 */	cmplwi r0, 0
/* 806E1080  40 82 00 20 */	bne lbl_806E10A0
/* 806E1084  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806E1088  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806E108C  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 806E1090  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806E1094  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 806E1098  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806E109C  48 00 00 18 */	b lbl_806E10B4
lbl_806E10A0:
/* 806E10A0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806E10A4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806E10A8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806E10AC  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 806E10B0  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_806E10B4:
/* 806E10B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806E10B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806E10BC  38 81 00 20 */	addi r4, r1, 0x20
/* 806E10C0  38 BF 05 DC */	addi r5, r31, 0x5dc
/* 806E10C4  4B C6 5C A9 */	bl PSMTXMultVec
/* 806E10C8  80 1F 09 28 */	lwz r0, 0x928(r31)
/* 806E10CC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806E10D0  90 1F 09 28 */	stw r0, 0x928(r31)
/* 806E10D4  80 1F 09 40 */	lwz r0, 0x940(r31)
/* 806E10D8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806E10DC  90 1F 09 40 */	stw r0, 0x940(r31)
/* 806E10E0  7F E3 FB 78 */	mr r3, r31
/* 806E10E4  38 80 00 07 */	li r4, 7
/* 806E10E8  38 A0 00 02 */	li r5, 2
/* 806E10EC  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 806E10F0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806E10F4  4B FF FD 99 */	bl SetAnm__8daE_HM_cFiiff
/* 806E10F8  38 00 00 00 */	li r0, 0
/* 806E10FC  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 806E1100  39 61 00 40 */	addi r11, r1, 0x40
/* 806E1104  4B C8 11 25 */	bl _restgpr_29
/* 806E1108  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806E110C  7C 08 03 A6 */	mtlr r0
/* 806E1110  38 21 00 40 */	addi r1, r1, 0x40
/* 806E1114  4E 80 00 20 */	blr 
