lbl_80CEE05C:
/* 80CEE05C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CEE060  7C 08 02 A6 */	mflr r0
/* 80CEE064  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CEE068  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CEE06C  7C 7F 1B 78 */	mr r31, r3
/* 80CEE070  38 00 00 06 */	li r0, 6
/* 80CEE074  98 03 09 3C */	stb r0, 0x93c(r3)
/* 80CEE078  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80CEE07C  7C 03 07 74 */	extsb r3, r0
/* 80CEE080  4B 33 EF ED */	bl dComIfGp_getReverb__Fi
/* 80CEE084  7C 67 1B 78 */	mr r7, r3
/* 80CEE088  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080121@ha */
/* 80CEE08C  38 03 01 21 */	addi r0, r3, 0x0121 /* 0x00080121@l */
/* 80CEE090  90 01 00 08 */	stw r0, 8(r1)
/* 80CEE094  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CEE098  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CEE09C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CEE0A0  38 81 00 08 */	addi r4, r1, 8
/* 80CEE0A4  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CEE0A8  38 C0 00 00 */	li r6, 0
/* 80CEE0AC  3D 00 80 CF */	lis r8, lit_3877@ha /* 0x80CEEFB8@ha */
/* 80CEE0B0  C0 28 EF B8 */	lfs f1, lit_3877@l(r8)  /* 0x80CEEFB8@l */
/* 80CEE0B4  FC 40 08 90 */	fmr f2, f1
/* 80CEE0B8  3D 00 80 CF */	lis r8, lit_4025@ha /* 0x80CEEFD0@ha */
/* 80CEE0BC  C0 68 EF D0 */	lfs f3, lit_4025@l(r8)  /* 0x80CEEFD0@l */
/* 80CEE0C0  FC 80 18 90 */	fmr f4, f3
/* 80CEE0C4  39 00 00 00 */	li r8, 0
/* 80CEE0C8  4B 5B D8 BD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CEE0CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CEE0D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CEE0D4  7C 08 03 A6 */	mtlr r0
/* 80CEE0D8  38 21 00 20 */	addi r1, r1, 0x20
/* 80CEE0DC  4E 80 00 20 */	blr 
