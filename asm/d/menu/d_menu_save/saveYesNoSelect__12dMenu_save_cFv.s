lbl_801F40D8:
/* 801F40D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F40DC  7C 08 02 A6 */	mflr r0
/* 801F40E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F40E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F40E8  7C 7F 1B 78 */	mr r31, r3
/* 801F40EC  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 801F40F0  80 03 00 00 */	lwz r0, 0(r3)
/* 801F40F4  2C 00 00 00 */	cmpwi r0, 0
/* 801F40F8  40 82 01 2C */	bne lbl_801F4224
/* 801F40FC  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801F4100  4B E3 E0 9D */	bl checkTrigger__9STControlFv
/* 801F4104  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 801F4108  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l
/* 801F410C  80 63 00 34 */	lwz r3, 0x34(r3)
/* 801F4110  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 801F4114  41 82 00 10 */	beq lbl_801F4124
/* 801F4118  7F E3 FB 78 */	mr r3, r31
/* 801F411C  48 00 01 1D */	bl yesnoSelectStart__12dMenu_save_cFv
/* 801F4120  48 00 01 04 */	b lbl_801F4224
lbl_801F4124:
/* 801F4124  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 801F4128  41 82 00 10 */	beq lbl_801F4138
/* 801F412C  7F E3 FB 78 */	mr r3, r31
/* 801F4130  48 00 05 F5 */	bl yesnoCancelAnmSet__12dMenu_save_cFv
/* 801F4134  48 00 00 F0 */	b lbl_801F4224
lbl_801F4138:
/* 801F4138  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801F413C  4B E3 E3 6D */	bl checkRightTrigger__9STControlFv
/* 801F4140  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F4144  41 82 00 6C */	beq lbl_801F41B0
/* 801F4148  88 1F 01 B6 */	lbz r0, 0x1b6(r31)
/* 801F414C  28 00 00 00 */	cmplwi r0, 0
/* 801F4150  41 82 00 D4 */	beq lbl_801F4224
/* 801F4154  38 00 00 A0 */	li r0, 0xa0
/* 801F4158  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F415C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801F4160  38 81 00 0C */	addi r4, r1, 0xc
/* 801F4164  38 A0 00 00 */	li r5, 0
/* 801F4168  38 C0 00 00 */	li r6, 0
/* 801F416C  38 E0 00 00 */	li r7, 0
/* 801F4170  C0 22 AA 58 */	lfs f1, lit_4179(r2)
/* 801F4174  FC 40 08 90 */	fmr f2, f1
/* 801F4178  C0 62 AA 78 */	lfs f3, lit_4879(r2)
/* 801F417C  FC 80 18 90 */	fmr f4, f3
/* 801F4180  39 00 00 00 */	li r8, 0
/* 801F4184  48 0B 78 01 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801F4188  88 1F 01 B6 */	lbz r0, 0x1b6(r31)
/* 801F418C  98 1F 01 B7 */	stb r0, 0x1b7(r31)
/* 801F4190  38 00 00 00 */	li r0, 0
/* 801F4194  98 1F 01 B6 */	stb r0, 0x1b6(r31)
/* 801F4198  7F E3 FB 78 */	mr r3, r31
/* 801F419C  38 80 00 00 */	li r4, 0
/* 801F41A0  48 00 03 71 */	bl yesnoSelectAnmSet__12dMenu_save_cFUc
/* 801F41A4  38 00 00 35 */	li r0, 0x35
/* 801F41A8  98 1F 01 B2 */	stb r0, 0x1b2(r31)
/* 801F41AC  48 00 00 78 */	b lbl_801F4224
lbl_801F41B0:
/* 801F41B0  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801F41B4  4B E3 E2 79 */	bl checkLeftTrigger__9STControlFv
/* 801F41B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F41BC  41 82 00 68 */	beq lbl_801F4224
/* 801F41C0  88 1F 01 B6 */	lbz r0, 0x1b6(r31)
/* 801F41C4  28 00 00 01 */	cmplwi r0, 1
/* 801F41C8  41 82 00 5C */	beq lbl_801F4224
/* 801F41CC  38 00 00 A0 */	li r0, 0xa0
/* 801F41D0  90 01 00 08 */	stw r0, 8(r1)
/* 801F41D4  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801F41D8  38 81 00 08 */	addi r4, r1, 8
/* 801F41DC  38 A0 00 00 */	li r5, 0
/* 801F41E0  38 C0 00 00 */	li r6, 0
/* 801F41E4  38 E0 00 00 */	li r7, 0
/* 801F41E8  C0 22 AA 58 */	lfs f1, lit_4179(r2)
/* 801F41EC  FC 40 08 90 */	fmr f2, f1
/* 801F41F0  C0 62 AA 78 */	lfs f3, lit_4879(r2)
/* 801F41F4  FC 80 18 90 */	fmr f4, f3
/* 801F41F8  39 00 00 00 */	li r8, 0
/* 801F41FC  48 0B 77 89 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801F4200  88 1F 01 B6 */	lbz r0, 0x1b6(r31)
/* 801F4204  98 1F 01 B7 */	stb r0, 0x1b7(r31)
/* 801F4208  38 00 00 01 */	li r0, 1
/* 801F420C  98 1F 01 B6 */	stb r0, 0x1b6(r31)
/* 801F4210  7F E3 FB 78 */	mr r3, r31
/* 801F4214  38 80 00 00 */	li r4, 0
/* 801F4218  48 00 02 F9 */	bl yesnoSelectAnmSet__12dMenu_save_cFUc
/* 801F421C  38 00 00 35 */	li r0, 0x35
/* 801F4220  98 1F 01 B2 */	stb r0, 0x1b2(r31)
lbl_801F4224:
/* 801F4224  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F4228  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F422C  7C 08 03 A6 */	mtlr r0
/* 801F4230  38 21 00 20 */	addi r1, r1, 0x20
/* 801F4234  4E 80 00 20 */	blr 
