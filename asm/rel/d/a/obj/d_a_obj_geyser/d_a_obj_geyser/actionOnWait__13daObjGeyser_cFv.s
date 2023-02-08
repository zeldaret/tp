lbl_80BF8344:
/* 80BF8344  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BF8348  7C 08 02 A6 */	mflr r0
/* 80BF834C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BF8350  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BF8354  7C 7F 1B 78 */	mr r31, r3
/* 80BF8358  A0 83 07 60 */	lhz r4, 0x760(r3)
/* 80BF835C  28 04 00 00 */	cmplwi r4, 0
/* 80BF8360  40 82 00 14 */	bne lbl_80BF8374
/* 80BF8364  48 00 06 F1 */	bl stopEmitterPre00__13daObjGeyser_cFv
/* 80BF8368  7F E3 FB 78 */	mr r3, r31
/* 80BF836C  48 00 00 79 */	bl actionOnInit__13daObjGeyser_cFv
/* 80BF8370  48 00 00 0C */	b lbl_80BF837C
lbl_80BF8374:
/* 80BF8374  38 04 FF FF */	addi r0, r4, -1
/* 80BF8378  B0 1F 07 60 */	sth r0, 0x760(r31)
lbl_80BF837C:
/* 80BF837C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BF8380  7C 03 07 74 */	extsb r3, r0
/* 80BF8384  4B 43 4C E9 */	bl dComIfGp_getReverb__Fi
/* 80BF8388  7C 67 1B 78 */	mr r7, r3
/* 80BF838C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080088@ha */
/* 80BF8390  38 03 00 88 */	addi r0, r3, 0x0088 /* 0x00080088@l */
/* 80BF8394  90 01 00 08 */	stw r0, 8(r1)
/* 80BF8398  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BF839C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BF83A0  80 63 00 00 */	lwz r3, 0(r3)
/* 80BF83A4  38 81 00 08 */	addi r4, r1, 8
/* 80BF83A8  38 BF 05 38 */	addi r5, r31, 0x538
/* 80BF83AC  38 C0 00 00 */	li r6, 0
/* 80BF83B0  3D 00 80 C0 */	lis r8, lit_3760@ha /* 0x80BF9010@ha */
/* 80BF83B4  C0 28 90 10 */	lfs f1, lit_3760@l(r8)  /* 0x80BF9010@l */
/* 80BF83B8  FC 40 08 90 */	fmr f2, f1
/* 80BF83BC  3D 00 80 C0 */	lis r8, lit_3970@ha /* 0x80BF9048@ha */
/* 80BF83C0  C0 68 90 48 */	lfs f3, lit_3970@l(r8)  /* 0x80BF9048@l */
/* 80BF83C4  FC 80 18 90 */	fmr f4, f3
/* 80BF83C8  39 00 00 00 */	li r8, 0
/* 80BF83CC  4B 6B 41 41 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BF83D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BF83D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BF83D8  7C 08 03 A6 */	mtlr r0
/* 80BF83DC  38 21 00 20 */	addi r1, r1, 0x20
/* 80BF83E0  4E 80 00 20 */	blr 
