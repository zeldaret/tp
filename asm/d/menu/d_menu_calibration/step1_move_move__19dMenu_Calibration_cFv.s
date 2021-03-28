lbl_801AF0C0:
/* 801AF0C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801AF0C4  7C 08 02 A6 */	mflr r0
/* 801AF0C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AF0CC  3C 80 80 3E */	lis r4, m_cpadInfo__8mDoCPd_c@ha
/* 801AF0D0  38 84 D2 E8 */	addi r4, r4, m_cpadInfo__8mDoCPd_c@l
/* 801AF0D4  80 84 00 34 */	lwz r4, 0x34(r4)
/* 801AF0D8  54 80 05 EF */	rlwinm. r0, r4, 0, 0x17, 0x17
/* 801AF0DC  41 82 00 50 */	beq lbl_801AF12C
/* 801AF0E0  38 00 00 02 */	li r0, 2
/* 801AF0E4  98 03 01 00 */	stb r0, 0x100(r3)
/* 801AF0E8  38 00 00 00 */	li r0, 0
/* 801AF0EC  98 03 00 FF */	stb r0, 0xff(r3)
/* 801AF0F0  38 00 00 A1 */	li r0, 0xa1
/* 801AF0F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 801AF0F8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801AF0FC  38 81 00 0C */	addi r4, r1, 0xc
/* 801AF100  38 A0 00 00 */	li r5, 0
/* 801AF104  38 C0 00 00 */	li r6, 0
/* 801AF108  38 E0 00 00 */	li r7, 0
/* 801AF10C  C0 22 A5 14 */	lfs f1, lit_3885(r2)
/* 801AF110  FC 40 08 90 */	fmr f2, f1
/* 801AF114  C0 62 A5 20 */	lfs f3, lit_3911(r2)
/* 801AF118  FC 80 18 90 */	fmr f4, f3
/* 801AF11C  39 00 00 00 */	li r8, 0
/* 801AF120  48 0F C8 65 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801AF124  48 06 F8 AD */	bl dMeter2Info_set2DVibration__Fv
/* 801AF128  48 00 00 50 */	b lbl_801AF178
lbl_801AF12C:
/* 801AF12C  54 80 05 AD */	rlwinm. r0, r4, 0, 0x16, 0x16
/* 801AF130  41 82 00 48 */	beq lbl_801AF178
/* 801AF134  38 00 00 00 */	li r0, 0
/* 801AF138  98 03 01 01 */	stb r0, 0x101(r3)
/* 801AF13C  98 03 00 FE */	stb r0, 0xfe(r3)
/* 801AF140  38 00 00 A2 */	li r0, 0xa2
/* 801AF144  90 01 00 08 */	stw r0, 8(r1)
/* 801AF148  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801AF14C  38 81 00 08 */	addi r4, r1, 8
/* 801AF150  38 A0 00 00 */	li r5, 0
/* 801AF154  38 C0 00 00 */	li r6, 0
/* 801AF158  38 E0 00 00 */	li r7, 0
/* 801AF15C  C0 22 A5 14 */	lfs f1, lit_3885(r2)
/* 801AF160  FC 40 08 90 */	fmr f2, f1
/* 801AF164  C0 62 A5 20 */	lfs f3, lit_3911(r2)
/* 801AF168  FC 80 18 90 */	fmr f4, f3
/* 801AF16C  39 00 00 00 */	li r8, 0
/* 801AF170  48 0F C8 15 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801AF174  48 06 F8 5D */	bl dMeter2Info_set2DVibration__Fv
lbl_801AF178:
/* 801AF178  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801AF17C  7C 08 03 A6 */	mtlr r0
/* 801AF180  38 21 00 10 */	addi r1, r1, 0x10
/* 801AF184  4E 80 00 20 */	blr 
