lbl_801AF3BC:
/* 801AF3BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801AF3C0  7C 08 02 A6 */	mflr r0
/* 801AF3C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AF3C8  3C 80 80 3E */	lis r4, m_cpadInfo__8mDoCPd_c@ha
/* 801AF3CC  38 84 D2 E8 */	addi r4, r4, m_cpadInfo__8mDoCPd_c@l
/* 801AF3D0  80 84 00 34 */	lwz r4, 0x34(r4)
/* 801AF3D4  54 80 05 EF */	rlwinm. r0, r4, 0, 0x17, 0x17
/* 801AF3D8  41 82 00 50 */	beq lbl_801AF428
/* 801AF3DC  38 00 00 04 */	li r0, 4
/* 801AF3E0  98 03 01 00 */	stb r0, 0x100(r3)
/* 801AF3E4  38 00 00 00 */	li r0, 0
/* 801AF3E8  98 03 00 FF */	stb r0, 0xff(r3)
/* 801AF3EC  38 00 00 A1 */	li r0, 0xa1
/* 801AF3F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 801AF3F4  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801AF3F8  38 81 00 0C */	addi r4, r1, 0xc
/* 801AF3FC  38 A0 00 00 */	li r5, 0
/* 801AF400  38 C0 00 00 */	li r6, 0
/* 801AF404  38 E0 00 00 */	li r7, 0
/* 801AF408  C0 22 A5 14 */	lfs f1, lit_3885(r2)
/* 801AF40C  FC 40 08 90 */	fmr f2, f1
/* 801AF410  C0 62 A5 20 */	lfs f3, lit_3911(r2)
/* 801AF414  FC 80 18 90 */	fmr f4, f3
/* 801AF418  39 00 00 00 */	li r8, 0
/* 801AF41C  48 0F C5 69 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801AF420  48 06 F5 B1 */	bl dMeter2Info_set2DVibration__Fv
/* 801AF424  48 00 00 54 */	b lbl_801AF478
lbl_801AF428:
/* 801AF428  54 80 05 AD */	rlwinm. r0, r4, 0, 0x16, 0x16
/* 801AF42C  41 82 00 4C */	beq lbl_801AF478
/* 801AF430  38 00 00 00 */	li r0, 0
/* 801AF434  98 03 01 00 */	stb r0, 0x100(r3)
/* 801AF438  38 00 00 01 */	li r0, 1
/* 801AF43C  98 03 00 FF */	stb r0, 0xff(r3)
/* 801AF440  38 00 00 A2 */	li r0, 0xa2
/* 801AF444  90 01 00 08 */	stw r0, 8(r1)
/* 801AF448  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801AF44C  38 81 00 08 */	addi r4, r1, 8
/* 801AF450  38 A0 00 00 */	li r5, 0
/* 801AF454  38 C0 00 00 */	li r6, 0
/* 801AF458  38 E0 00 00 */	li r7, 0
/* 801AF45C  C0 22 A5 14 */	lfs f1, lit_3885(r2)
/* 801AF460  FC 40 08 90 */	fmr f2, f1
/* 801AF464  C0 62 A5 20 */	lfs f3, lit_3911(r2)
/* 801AF468  FC 80 18 90 */	fmr f4, f3
/* 801AF46C  39 00 00 00 */	li r8, 0
/* 801AF470  48 0F C5 15 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801AF474  48 06 F5 5D */	bl dMeter2Info_set2DVibration__Fv
lbl_801AF478:
/* 801AF478  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801AF47C  7C 08 03 A6 */	mtlr r0
/* 801AF480  38 21 00 10 */	addi r1, r1, 0x10
/* 801AF484  4E 80 00 20 */	blr 
