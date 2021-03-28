lbl_80CDC378:
/* 80CDC378  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CDC37C  7C 08 02 A6 */	mflr r0
/* 80CDC380  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CDC384  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CDC388  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CDC38C  7C 7E 1B 78 */	mr r30, r3
/* 80CDC390  3B E0 00 00 */	li r31, 0
/* 80CDC394  38 7E 05 EE */	addi r3, r30, 0x5ee
/* 80CDC398  38 80 00 3C */	li r4, 0x3c
/* 80CDC39C  38 A0 00 03 */	li r5, 3
/* 80CDC3A0  4B 59 43 30 */	b cLib_chaseS__FPsss
/* 80CDC3A4  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 80CDC3A8  38 80 00 96 */	li r4, 0x96
/* 80CDC3AC  A8 BE 05 EE */	lha r5, 0x5ee(r30)
/* 80CDC3B0  4B 59 43 20 */	b cLib_chaseS__FPsss
/* 80CDC3B4  88 1E 05 E8 */	lbz r0, 0x5e8(r30)
/* 80CDC3B8  2C 00 00 01 */	cmpwi r0, 1
/* 80CDC3BC  41 82 00 3C */	beq lbl_80CDC3F8
/* 80CDC3C0  40 80 00 D0 */	bge lbl_80CDC490
/* 80CDC3C4  2C 00 00 00 */	cmpwi r0, 0
/* 80CDC3C8  40 80 00 08 */	bge lbl_80CDC3D0
/* 80CDC3CC  48 00 00 C4 */	b lbl_80CDC490
lbl_80CDC3D0:
/* 80CDC3D0  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 80CDC3D4  38 80 B0 00 */	li r4, -20480
/* 80CDC3D8  A8 BE 05 F0 */	lha r5, 0x5f0(r30)
/* 80CDC3DC  4B 59 42 F4 */	b cLib_chaseS__FPsss
/* 80CDC3E0  38 7E 05 B2 */	addi r3, r30, 0x5b2
/* 80CDC3E4  38 80 50 00 */	li r4, 0x5000
/* 80CDC3E8  A8 BE 05 F0 */	lha r5, 0x5f0(r30)
/* 80CDC3EC  4B 59 42 E4 */	b cLib_chaseS__FPsss
/* 80CDC3F0  7C 7F 1B 78 */	mr r31, r3
/* 80CDC3F4  48 00 00 9C */	b lbl_80CDC490
lbl_80CDC3F8:
/* 80CDC3F8  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 80CDC3FC  38 80 50 00 */	li r4, 0x5000
/* 80CDC400  A8 BE 05 F0 */	lha r5, 0x5f0(r30)
/* 80CDC404  4B 59 42 CC */	b cLib_chaseS__FPsss
/* 80CDC408  38 7E 05 B2 */	addi r3, r30, 0x5b2
/* 80CDC40C  38 80 B0 00 */	li r4, -20480
/* 80CDC410  A8 BE 05 F0 */	lha r5, 0x5f0(r30)
/* 80CDC414  4B 59 42 BC */	b cLib_chaseS__FPsss
/* 80CDC418  7C 7F 1B 78 */	mr r31, r3
/* 80CDC41C  A0 1E 05 F2 */	lhz r0, 0x5f2(r30)
/* 80CDC420  28 00 00 46 */	cmplwi r0, 0x46
/* 80CDC424  40 82 00 60 */	bne lbl_80CDC484
/* 80CDC428  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CDC42C  7C 03 07 74 */	extsb r3, r0
/* 80CDC430  4B 35 0C 3C */	b dComIfGp_getReverb__Fi
/* 80CDC434  7C 67 1B 78 */	mr r7, r3
/* 80CDC438  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080293@ha */
/* 80CDC43C  38 03 02 93 */	addi r0, r3, 0x0293 /* 0x00080293@l */
/* 80CDC440  90 01 00 08 */	stw r0, 8(r1)
/* 80CDC444  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CDC448  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CDC44C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CDC450  38 81 00 08 */	addi r4, r1, 8
/* 80CDC454  38 BE 05 38 */	addi r5, r30, 0x538
/* 80CDC458  38 C0 00 00 */	li r6, 0
/* 80CDC45C  3D 00 80 CE */	lis r8, lit_3825@ha
/* 80CDC460  C0 28 CC 04 */	lfs f1, lit_3825@l(r8)
/* 80CDC464  FC 40 08 90 */	fmr f2, f1
/* 80CDC468  3D 00 80 CE */	lis r8, lit_3826@ha
/* 80CDC46C  C0 68 CC 08 */	lfs f3, lit_3826@l(r8)
/* 80CDC470  FC 80 18 90 */	fmr f4, f3
/* 80CDC474  39 00 00 00 */	li r8, 0
/* 80CDC478  4B 5C F5 0C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CDC47C  38 60 00 03 */	li r3, 3
/* 80CDC480  4B 4C C3 64 */	b dKy_change_colpat__FUc
lbl_80CDC484:
/* 80CDC484  A0 7E 05 F2 */	lhz r3, 0x5f2(r30)
/* 80CDC488  38 03 00 01 */	addi r0, r3, 1
/* 80CDC48C  B0 1E 05 F2 */	sth r0, 0x5f2(r30)
lbl_80CDC490:
/* 80CDC490  7F E3 FB 78 */	mr r3, r31
/* 80CDC494  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CDC498  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CDC49C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CDC4A0  7C 08 03 A6 */	mtlr r0
/* 80CDC4A4  38 21 00 20 */	addi r1, r1, 0x20
/* 80CDC4A8  4E 80 00 20 */	blr 
