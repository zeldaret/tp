lbl_80CC0360:
/* 80CC0360  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CC0364  7C 08 02 A6 */	mflr r0
/* 80CC0368  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CC036C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CC0370  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CC0374  7C 7E 1B 78 */	mr r30, r3
/* 80CC0378  3C 60 80 CC */	lis r3, lit_3649@ha
/* 80CC037C  3B E3 08 08 */	addi r31, r3, lit_3649@l
/* 80CC0380  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CC0384  7C 03 07 74 */	extsb r3, r0
/* 80CC0388  4B 36 CC E4 */	b dComIfGp_getReverb__Fi
/* 80CC038C  7C 67 1B 78 */	mr r7, r3
/* 80CC0390  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801A6@ha */
/* 80CC0394  38 03 01 A6 */	addi r0, r3, 0x01A6 /* 0x000801A6@l */
/* 80CC0398  90 01 00 08 */	stw r0, 8(r1)
/* 80CC039C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CC03A0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CC03A4  80 63 00 00 */	lwz r3, 0(r3)
/* 80CC03A8  38 81 00 08 */	addi r4, r1, 8
/* 80CC03AC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80CC03B0  38 C0 00 00 */	li r6, 0
/* 80CC03B4  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80CC03B8  FC 40 08 90 */	fmr f2, f1
/* 80CC03BC  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 80CC03C0  FC 80 18 90 */	fmr f4, f3
/* 80CC03C4  39 00 00 00 */	li r8, 0
/* 80CC03C8  4B 5E C1 44 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CC03CC  C0 7F 00 40 */	lfs f3, 0x40(r31)
/* 80CC03D0  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 80CC03D4  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80CC03D8  3C 60 80 CC */	lis r3, l_HIO@ha
/* 80CC03DC  38 63 0A C4 */	addi r3, r3, l_HIO@l
/* 80CC03E0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CC03E4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80CC03E8  EC 02 00 24 */	fdivs f0, f2, f0
/* 80CC03EC  EC 03 00 32 */	fmuls f0, f3, f0
/* 80CC03F0  FC 00 00 1E */	fctiwz f0, f0
/* 80CC03F4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80CC03F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC03FC  B0 1E 05 B0 */	sth r0, 0x5b0(r30)
/* 80CC0400  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80CC0404  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CC0408  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CC040C  41 82 00 14 */	beq lbl_80CC0420
/* 80CC0410  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80CC0414  A8 1E 05 B0 */	lha r0, 0x5b0(r30)
/* 80CC0418  7C 03 02 14 */	add r0, r3, r0
/* 80CC041C  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
lbl_80CC0420:
/* 80CC0420  7F C3 F3 78 */	mr r3, r30
/* 80CC0424  48 00 00 1D */	bl seSet__11daRotTrap_cFv
/* 80CC0428  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CC042C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CC0430  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CC0434  7C 08 03 A6 */	mtlr r0
/* 80CC0438  38 21 00 20 */	addi r1, r1, 0x20
/* 80CC043C  4E 80 00 20 */	blr 
