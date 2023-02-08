lbl_80CC027C:
/* 80CC027C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CC0280  7C 08 02 A6 */	mflr r0
/* 80CC0284  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CC0288  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CC028C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CC0290  7C 7F 1B 78 */	mr r31, r3
/* 80CC0294  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80CC0298  7C 03 07 74 */	extsb r3, r0
/* 80CC029C  4B 36 CD D1 */	bl dComIfGp_getReverb__Fi
/* 80CC02A0  7C 67 1B 78 */	mr r7, r3
/* 80CC02A4  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801A6@ha */
/* 80CC02A8  38 03 01 A6 */	addi r0, r3, 0x01A6 /* 0x000801A6@l */
/* 80CC02AC  90 01 00 08 */	stw r0, 8(r1)
/* 80CC02B0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CC02B4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CC02B8  80 63 00 00 */	lwz r3, 0(r3)
/* 80CC02BC  38 81 00 08 */	addi r4, r1, 8
/* 80CC02C0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80CC02C4  38 C0 00 00 */	li r6, 0
/* 80CC02C8  3D 00 80 CC */	lis r8, lit_3922@ha /* 0x80CC0844@ha */
/* 80CC02CC  C0 28 08 44 */	lfs f1, lit_3922@l(r8)  /* 0x80CC0844@l */
/* 80CC02D0  FC 40 08 90 */	fmr f2, f1
/* 80CC02D4  3D 00 80 CC */	lis r8, lit_3940@ha /* 0x80CC0854@ha */
/* 80CC02D8  C0 68 08 54 */	lfs f3, lit_3940@l(r8)  /* 0x80CC0854@l */
/* 80CC02DC  FC 80 18 90 */	fmr f4, f3
/* 80CC02E0  39 00 00 00 */	li r8, 0
/* 80CC02E4  4B 5E C2 29 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CC02E8  A8 9F 05 B0 */	lha r4, 0x5b0(r31)
/* 80CC02EC  38 7F 05 B2 */	addi r3, r31, 0x5b2
/* 80CC02F0  3C A0 80 CC */	lis r5, l_HIO@ha /* 0x80CC0AC4@ha */
/* 80CC02F4  38 A5 0A C4 */	addi r5, r5, l_HIO@l /* 0x80CC0AC4@l */
/* 80CC02F8  A8 05 00 0C */	lha r0, 0xc(r5)
/* 80CC02FC  7C 04 03 D6 */	divw r0, r4, r0
/* 80CC0300  7C 05 07 34 */	extsh r5, r0
/* 80CC0304  4B 5B 08 8D */	bl cLib_chaseAngleS__FPsss
/* 80CC0308  7C 7E 1B 78 */	mr r30, r3
/* 80CC030C  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80CC0310  A8 1F 05 B2 */	lha r0, 0x5b2(r31)
/* 80CC0314  7C 03 02 14 */	add r0, r3, r0
/* 80CC0318  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80CC031C  7F E3 FB 78 */	mr r3, r31
/* 80CC0320  48 00 01 21 */	bl seSet__11daRotTrap_cFv
/* 80CC0324  2C 1E 00 01 */	cmpwi r30, 1
/* 80CC0328  40 82 00 0C */	bne lbl_80CC0334
/* 80CC032C  7F E3 FB 78 */	mr r3, r31
/* 80CC0330  48 00 00 1D */	bl init_modeMove__11daRotTrap_cFv
lbl_80CC0334:
/* 80CC0334  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CC0338  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CC033C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CC0340  7C 08 03 A6 */	mtlr r0
/* 80CC0344  38 21 00 20 */	addi r1, r1, 0x20
/* 80CC0348  4E 80 00 20 */	blr 
