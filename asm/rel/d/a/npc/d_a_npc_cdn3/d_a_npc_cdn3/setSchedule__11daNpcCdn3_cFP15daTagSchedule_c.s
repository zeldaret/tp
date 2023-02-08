lbl_8097B38C:
/* 8097B38C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8097B390  7C 08 02 A6 */	mflr r0
/* 8097B394  90 01 00 44 */	stw r0, 0x44(r1)
/* 8097B398  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8097B39C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8097B3A0  7C 7F 1B 78 */	mr r31, r3
/* 8097B3A4  90 83 0B 84 */	stw r4, 0xb84(r3)
/* 8097B3A8  80 63 0B 84 */	lwz r3, 0xb84(r3)
/* 8097B3AC  A8 03 04 E4 */	lha r0, 0x4e4(r3)
/* 8097B3B0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8097B3B4  28 04 00 FF */	cmplwi r4, 0xff
/* 8097B3B8  41 82 00 60 */	beq lbl_8097B418
/* 8097B3BC  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8097B3C0  54 00 66 3F */	rlwinm. r0, r0, 0xc, 0x18, 0x1f
/* 8097B3C4  40 82 00 0C */	bne lbl_8097B3D0
/* 8097B3C8  3B C0 00 01 */	li r30, 1
/* 8097B3CC  48 00 00 18 */	b lbl_8097B3E4
lbl_8097B3D0:
/* 8097B3D0  28 00 00 01 */	cmplwi r0, 1
/* 8097B3D4  40 82 00 0C */	bne lbl_8097B3E0
/* 8097B3D8  3B C0 FF FF */	li r30, -1
/* 8097B3DC  48 00 00 08 */	b lbl_8097B3E4
lbl_8097B3E0:
/* 8097B3E0  3B C0 00 01 */	li r30, 1
lbl_8097B3E4:
/* 8097B3E4  38 7F 0A D0 */	addi r3, r31, 0xad0
/* 8097B3E8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8097B3EC  7C 05 07 74 */	extsb r5, r0
/* 8097B3F0  7F C6 F3 78 */	mr r6, r30
/* 8097B3F4  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 8097B3F8  39 00 00 00 */	li r8, 0
/* 8097B3FC  4B 7D E6 3D */	bl setPath__11PathTrace_cFiiiP4cXyzb
/* 8097B400  2C 1E FF FF */	cmpwi r30, -1
/* 8097B404  40 82 00 14 */	bne lbl_8097B418
/* 8097B408  80 7F 0A D8 */	lwz r3, 0xad8(r31)
/* 8097B40C  A0 63 00 00 */	lhz r3, 0(r3)
/* 8097B410  38 03 FF FF */	addi r0, r3, -1
/* 8097B414  90 1F 0A F0 */	stw r0, 0xaf0(r31)
lbl_8097B418:
/* 8097B418  80 7F 0B 84 */	lwz r3, 0xb84(r31)
/* 8097B41C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8097B420  54 05 A6 3E */	rlwinm r5, r0, 0x14, 0x18, 0x1f
/* 8097B424  38 80 00 0A */	li r4, 0xa
/* 8097B428  7C 05 23 D6 */	divw r0, r5, r4
/* 8097B42C  1C 60 00 3C */	mulli r3, r0, 0x3c
/* 8097B430  7C 00 21 D6 */	mullw r0, r0, r4
/* 8097B434  7C 00 28 50 */	subf r0, r0, r5
/* 8097B438  1C 00 00 0A */	mulli r0, r0, 0xa
/* 8097B43C  7C 03 02 14 */	add r0, r3, r0
/* 8097B440  B0 1F 0B 8C */	sth r0, 0xb8c(r31)
/* 8097B444  80 7F 0B 84 */	lwz r3, 0xb84(r31)
/* 8097B448  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8097B44C  54 00 D6 BE */	rlwinm r0, r0, 0x1a, 0x1a, 0x1f
/* 8097B450  90 1F 0B 78 */	stw r0, 0xb78(r31)
/* 8097B454  80 7F 0B 84 */	lwz r3, 0xb84(r31)
/* 8097B458  A8 03 04 E8 */	lha r0, 0x4e8(r3)
/* 8097B45C  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 8097B460  80 9F 0B 78 */	lwz r4, 0xb78(r31)
/* 8097B464  2C 04 00 00 */	cmpwi r4, 0
/* 8097B468  41 80 00 0C */	blt lbl_8097B474
/* 8097B46C  2C 04 00 2C */	cmpwi r4, 0x2c
/* 8097B470  41 80 00 18 */	blt lbl_8097B488
lbl_8097B474:
/* 8097B474  3C 60 80 98 */	lis r3, d_a_npc_cdn3__stringBase0@ha /* 0x8097F5AC@ha */
/* 8097B478  38 63 F5 AC */	addi r3, r3, d_a_npc_cdn3__stringBase0@l /* 0x8097F5AC@l */
/* 8097B47C  38 63 00 4C */	addi r3, r3, 0x4c
/* 8097B480  4C C6 31 82 */	crclr 6
/* 8097B484  4B 68 B7 89 */	bl OSReport_Error
lbl_8097B488:
/* 8097B488  80 7F 0B 84 */	lwz r3, 0xb84(r31)
/* 8097B48C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8097B490  54 00 66 3F */	rlwinm. r0, r0, 0xc, 0x18, 0x1f
/* 8097B494  40 82 00 D4 */	bne lbl_8097B568
/* 8097B498  80 7F 0A D8 */	lwz r3, 0xad8(r31)
/* 8097B49C  80 83 00 08 */	lwz r4, 8(r3)
/* 8097B4A0  80 64 00 04 */	lwz r3, 4(r4)
/* 8097B4A4  80 04 00 08 */	lwz r0, 8(r4)
/* 8097B4A8  90 61 00 20 */	stw r3, 0x20(r1)
/* 8097B4AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8097B4B0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8097B4B4  90 01 00 28 */	stw r0, 0x28(r1)
/* 8097B4B8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8097B4BC  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8097B4C0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8097B4C4  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8097B4C8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8097B4CC  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8097B4D0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8097B4D4  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 8097B4D8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8097B4DC  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 8097B4E0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8097B4E4  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
/* 8097B4E8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8097B4EC  D0 1F 04 BC */	stfs f0, 0x4bc(r31)
/* 8097B4F0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8097B4F4  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 8097B4F8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8097B4FC  D0 1F 04 C4 */	stfs f0, 0x4c4(r31)
/* 8097B500  80 7F 0A D8 */	lwz r3, 0xad8(r31)
/* 8097B504  80 83 00 08 */	lwz r4, 8(r3)
/* 8097B508  80 64 00 14 */	lwz r3, 0x14(r4)
/* 8097B50C  80 04 00 18 */	lwz r0, 0x18(r4)
/* 8097B510  90 61 00 08 */	stw r3, 8(r1)
/* 8097B514  90 01 00 0C */	stw r0, 0xc(r1)
/* 8097B518  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 8097B51C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8097B520  80 64 00 04 */	lwz r3, 4(r4)
/* 8097B524  80 04 00 08 */	lwz r0, 8(r4)
/* 8097B528  90 61 00 14 */	stw r3, 0x14(r1)
/* 8097B52C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8097B530  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8097B534  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8097B538  38 61 00 14 */	addi r3, r1, 0x14
/* 8097B53C  38 81 00 08 */	addi r4, r1, 8
/* 8097B540  4B 8F 56 FD */	bl cLib_targetAngleY__FRC3VecRC3Vec
/* 8097B544  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 8097B548  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8097B54C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8097B550  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8097B554  B0 1F 04 B6 */	sth r0, 0x4b6(r31)
/* 8097B558  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8097B55C  B0 1F 04 CA */	sth r0, 0x4ca(r31)
/* 8097B560  38 00 00 01 */	li r0, 1
/* 8097B564  98 1F 0B 95 */	stb r0, 0xb95(r31)
lbl_8097B568:
/* 8097B568  80 1F 0A D8 */	lwz r0, 0xad8(r31)
/* 8097B56C  28 00 00 00 */	cmplwi r0, 0
/* 8097B570  41 82 00 14 */	beq lbl_8097B584
/* 8097B574  7F E3 FB 78 */	mr r3, r31
/* 8097B578  38 80 00 01 */	li r4, 1
/* 8097B57C  4B FF D8 59 */	bl setAction__11daNpcCdn3_cFQ211daNpcCdn3_c6Mode_e
/* 8097B580  48 00 00 10 */	b lbl_8097B590
lbl_8097B584:
/* 8097B584  7F E3 FB 78 */	mr r3, r31
/* 8097B588  38 80 00 00 */	li r4, 0
/* 8097B58C  4B FF D8 49 */	bl setAction__11daNpcCdn3_cFQ211daNpcCdn3_c6Mode_e
lbl_8097B590:
/* 8097B590  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8097B594  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8097B598  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8097B59C  7C 08 03 A6 */	mtlr r0
/* 8097B5A0  38 21 00 40 */	addi r1, r1, 0x40
/* 8097B5A4  4E 80 00 20 */	blr 
