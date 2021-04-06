lbl_80591EE8:
/* 80591EE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80591EEC  7C 08 02 A6 */	mflr r0
/* 80591EF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80591EF4  7C 65 1B 78 */	mr r5, r3
/* 80591EF8  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008014A@ha */
/* 80591EFC  38 03 01 4A */	addi r0, r3, 0x014A /* 0x0008014A@l */
/* 80591F00  90 01 00 08 */	stw r0, 8(r1)
/* 80591F04  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80591F08  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80591F0C  80 63 00 00 */	lwz r3, 0(r3)
/* 80591F10  38 81 00 08 */	addi r4, r1, 8
/* 80591F14  38 A5 0A 44 */	addi r5, r5, 0xa44
/* 80591F18  38 C0 00 00 */	li r6, 0
/* 80591F1C  38 E0 00 00 */	li r7, 0
/* 80591F20  3D 00 80 59 */	lis r8, lit_4010@ha /* 0x8059290C@ha */
/* 80591F24  C0 28 29 0C */	lfs f1, lit_4010@l(r8)  /* 0x8059290C@l */
/* 80591F28  FC 40 08 90 */	fmr f2, f1
/* 80591F2C  3D 00 80 59 */	lis r8, lit_4684@ha /* 0x8059295C@ha */
/* 80591F30  C0 68 29 5C */	lfs f3, lit_4684@l(r8)  /* 0x8059295C@l */
/* 80591F34  FC 80 18 90 */	fmr f4, f3
/* 80591F38  39 00 00 00 */	li r8, 0
/* 80591F3C  4B D1 9A 49 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80591F40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80591F44  7C 08 03 A6 */	mtlr r0
/* 80591F48  38 21 00 10 */	addi r1, r1, 0x10
/* 80591F4C  4E 80 00 20 */	blr 
