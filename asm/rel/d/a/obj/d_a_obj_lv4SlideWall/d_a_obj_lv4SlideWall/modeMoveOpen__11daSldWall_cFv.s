lbl_80C62254:
/* 80C62254  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C62258  7C 08 02 A6 */	mflr r0
/* 80C6225C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C62260  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C62264  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C62268  7C 7E 1B 78 */	mr r30, r3
/* 80C6226C  3C 60 80 C6 */	lis r3, lit_3627@ha
/* 80C62270  3B E3 26 A8 */	addi r31, r3, lit_3627@l
/* 80C62274  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C62278  7C 03 07 74 */	extsb r3, r0
/* 80C6227C  4B 3C AD F0 */	b dComIfGp_getReverb__Fi
/* 80C62280  7C 67 1B 78 */	mr r7, r3
/* 80C62284  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801B1@ha */
/* 80C62288  38 03 01 B1 */	addi r0, r3, 0x01B1 /* 0x000801B1@l */
/* 80C6228C  90 01 00 08 */	stw r0, 8(r1)
/* 80C62290  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C62294  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C62298  80 63 00 00 */	lwz r3, 0(r3)
/* 80C6229C  38 81 00 08 */	addi r4, r1, 8
/* 80C622A0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C622A4  38 C0 00 00 */	li r6, 0
/* 80C622A8  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C622AC  FC 40 08 90 */	fmr f2, f1
/* 80C622B0  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 80C622B4  FC 80 18 90 */	fmr f4, f3
/* 80C622B8  39 00 00 00 */	li r8, 0
/* 80C622BC  4B 64 A2 50 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C622C0  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 80C622C4  3C 80 80 C6 */	lis r4, l_HIO@ha
/* 80C622C8  38 84 27 DC */	addi r4, r4, l_HIO@l
/* 80C622CC  C0 24 00 04 */	lfs f1, 4(r4)
/* 80C622D0  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80C622D4  C0 64 00 08 */	lfs f3, 8(r4)
/* 80C622D8  C0 9F 00 18 */	lfs f4, 0x18(r31)
/* 80C622DC  4B 60 D6 A0 */	b cLib_addCalc__FPfffff
/* 80C622E0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C622E4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C622E8  40 82 00 14 */	bne lbl_80C622FC
/* 80C622EC  7F C3 F3 78 */	mr r3, r30
/* 80C622F0  48 00 00 F1 */	bl setSe__11daSldWall_cFv
/* 80C622F4  7F C3 F3 78 */	mr r3, r30
/* 80C622F8  4B FF FF 41 */	bl init_modeWait__11daSldWall_cFv
lbl_80C622FC:
/* 80C622FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C62300  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C62304  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C62308  7C 08 03 A6 */	mtlr r0
/* 80C6230C  38 21 00 20 */	addi r1, r1, 0x20
/* 80C62310  4E 80 00 20 */	blr 
