lbl_80AFFBB4:
/* 80AFFBB4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AFFBB8  7C 08 02 A6 */	mflr r0
/* 80AFFBBC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AFFBC0  39 61 00 40 */	addi r11, r1, 0x40
/* 80AFFBC4  4B 86 26 10 */	b _savegpr_27
/* 80AFFBC8  7C 7D 1B 78 */	mr r29, r3
/* 80AFFBCC  3C 60 80 B0 */	lis r3, m__17daNpcTheB_Param_c@ha
/* 80AFFBD0  3B E3 0D 6C */	addi r31, r3, m__17daNpcTheB_Param_c@l
/* 80AFFBD4  80 1D 04 A4 */	lwz r0, 0x4a4(r29)
/* 80AFFBD8  90 01 00 08 */	stw r0, 8(r1)
/* 80AFFBDC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80AFFBE0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80AFFBE4  38 81 00 08 */	addi r4, r1, 8
/* 80AFFBE8  4B 51 9C 10 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80AFFBEC  7C 7E 1B 78 */	mr r30, r3
/* 80AFFBF0  88 1D 0E 0F */	lbz r0, 0xe0f(r29)
/* 80AFFBF4  28 00 00 07 */	cmplwi r0, 7
/* 80AFFBF8  41 81 02 E4 */	bgt lbl_80AFFEDC
/* 80AFFBFC  3C 60 80 B0 */	lis r3, lit_5334@ha
/* 80AFFC00  38 63 11 B4 */	addi r3, r3, lit_5334@l
/* 80AFFC04  54 00 10 3A */	slwi r0, r0, 2
/* 80AFFC08  7C 03 00 2E */	lwzx r0, r3, r0
/* 80AFFC0C  7C 09 03 A6 */	mtctr r0
/* 80AFFC10  4E 80 04 20 */	bctr 
lbl_80AFFC14:
/* 80AFFC14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AFFC18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AFFC1C  83 83 5D AC */	lwz r28, 0x5dac(r3)
/* 80AFFC20  C0 1F 02 28 */	lfs f0, 0x228(r31)
/* 80AFFC24  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80AFFC28  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80AFFC2C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80AFFC30  C0 1F 02 2C */	lfs f0, 0x22c(r31)
/* 80AFFC34  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80AFFC38  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80AFFC3C  4B 50 D1 28 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80AFFC40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AFFC44  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AFFC48  3B 7C 04 E4 */	addi r27, r28, 0x4e4
/* 80AFFC4C  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 80AFFC50  4B 50 C7 E4 */	b mDoMtx_YrotM__FPA4_fs
/* 80AFFC54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80AFFC58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80AFFC5C  38 81 00 14 */	addi r4, r1, 0x14
/* 80AFFC60  7C 85 23 78 */	mr r5, r4
/* 80AFFC64  4B 84 71 08 */	b PSMTXMultVec
/* 80AFFC68  38 61 00 14 */	addi r3, r1, 0x14
/* 80AFFC6C  4B 51 E0 50 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80AFFC70  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AFFC74  41 82 00 10 */	beq lbl_80AFFC84
/* 80AFFC78  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80AFFC7C  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80AFFC80  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_80AFFC84:
/* 80AFFC84  7F C3 F3 78 */	mr r3, r30
/* 80AFFC88  38 81 00 14 */	addi r4, r1, 0x14
/* 80AFFC8C  7F 65 DB 78 */	mr r5, r27
/* 80AFFC90  4B E9 E0 98 */	b setPosAngle__12daNpcCoach_cFR4cXyzR5csXyz
/* 80AFFC94  A8 1D 0E 00 */	lha r0, 0xe00(r29)
/* 80AFFC98  2C 00 00 02 */	cmpwi r0, 2
/* 80AFFC9C  41 82 00 0C */	beq lbl_80AFFCA8
/* 80AFFCA0  38 00 00 02 */	li r0, 2
/* 80AFFCA4  B0 1D 0E 00 */	sth r0, 0xe00(r29)
lbl_80AFFCA8:
/* 80AFFCA8  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 80AFFCAC  7F 84 E3 78 */	mr r4, r28
/* 80AFFCB0  4B 65 0A 0C */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80AFFCB4  38 00 00 68 */	li r0, 0x68
/* 80AFFCB8  98 1D 0E 10 */	stb r0, 0xe10(r29)
/* 80AFFCBC  88 7D 0E 0F */	lbz r3, 0xe0f(r29)
/* 80AFFCC0  38 03 00 01 */	addi r0, r3, 1
/* 80AFFCC4  98 1D 0E 0F */	stb r0, 0xe0f(r29)
lbl_80AFFCC8:
/* 80AFFCC8  C0 1F 02 24 */	lfs f0, 0x224(r31)
/* 80AFFCCC  D0 1E 0C E8 */	stfs f0, 0xce8(r30)
/* 80AFFCD0  88 7D 0E 10 */	lbz r3, 0xe10(r29)
/* 80AFFCD4  38 03 FF FF */	addi r0, r3, -1
/* 80AFFCD8  98 1D 0E 10 */	stb r0, 0xe10(r29)
/* 80AFFCDC  28 03 00 00 */	cmplwi r3, 0
/* 80AFFCE0  40 82 01 FC */	bne lbl_80AFFEDC
/* 80AFFCE4  88 7D 0E 0F */	lbz r3, 0xe0f(r29)
/* 80AFFCE8  38 03 00 01 */	addi r0, r3, 1
/* 80AFFCEC  98 1D 0E 0F */	stb r0, 0xe0f(r29)
/* 80AFFCF0  48 00 01 EC */	b lbl_80AFFEDC
lbl_80AFFCF4:
/* 80AFFCF4  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80AFFCF8  D0 1E 0C E8 */	stfs f0, 0xce8(r30)
/* 80AFFCFC  80 7D 04 A4 */	lwz r3, 0x4a4(r29)
/* 80AFFD00  4B 52 16 58 */	b fpcEx_SearchByID__FUi
/* 80AFFD04  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 80AFFD08  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80AFFD0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AFFD10  4C 40 13 82 */	cror 2, 0, 2
/* 80AFFD14  40 82 01 C8 */	bne lbl_80AFFEDC
/* 80AFFD18  7F A3 EB 78 */	mr r3, r29
/* 80AFFD1C  38 80 00 18 */	li r4, 0x18
/* 80AFFD20  38 A0 00 00 */	li r5, 0
/* 80AFFD24  4B 65 3F F8 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80AFFD28  88 7D 0E 0F */	lbz r3, 0xe0f(r29)
/* 80AFFD2C  38 03 00 01 */	addi r0, r3, 1
/* 80AFFD30  98 1D 0E 0F */	stb r0, 0xe0f(r29)
/* 80AFFD34  48 00 01 A8 */	b lbl_80AFFEDC
lbl_80AFFD38:
/* 80AFFD38  7F A3 EB 78 */	mr r3, r29
/* 80AFFD3C  38 80 00 00 */	li r4, 0
/* 80AFFD40  38 A0 00 01 */	li r5, 1
/* 80AFFD44  38 C0 00 00 */	li r6, 0
/* 80AFFD48  4B 65 40 3C */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80AFFD4C  2C 03 00 00 */	cmpwi r3, 0
/* 80AFFD50  41 82 00 38 */	beq lbl_80AFFD88
/* 80AFFD54  A8 1D 0E 00 */	lha r0, 0xe00(r29)
/* 80AFFD58  2C 00 00 00 */	cmpwi r0, 0
/* 80AFFD5C  41 82 00 0C */	beq lbl_80AFFD68
/* 80AFFD60  38 00 00 00 */	li r0, 0
/* 80AFFD64  B0 1D 0E 00 */	sth r0, 0xe00(r29)
lbl_80AFFD68:
/* 80AFFD68  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 80AFFD6C  4B 65 09 74 */	b remove__18daNpcF_ActorMngr_cFv
/* 80AFFD70  38 00 00 0F */	li r0, 0xf
/* 80AFFD74  98 1D 0E 10 */	stb r0, 0xe10(r29)
/* 80AFFD78  88 7D 0E 0F */	lbz r3, 0xe0f(r29)
/* 80AFFD7C  38 03 00 01 */	addi r0, r3, 1
/* 80AFFD80  98 1D 0E 0F */	stb r0, 0xe0f(r29)
/* 80AFFD84  48 00 01 58 */	b lbl_80AFFEDC
lbl_80AFFD88:
/* 80AFFD88  83 7D 09 50 */	lwz r27, 0x950(r29)
/* 80AFFD8C  7F A3 EB 78 */	mr r3, r29
/* 80AFFD90  38 81 00 10 */	addi r4, r1, 0x10
/* 80AFFD94  38 A1 00 0C */	addi r5, r1, 0xc
/* 80AFFD98  7F A6 EB 78 */	mr r6, r29
/* 80AFFD9C  38 E0 00 00 */	li r7, 0
/* 80AFFDA0  4B 65 39 78 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80AFFDA4  2C 03 00 00 */	cmpwi r3, 0
/* 80AFFDA8  41 82 00 50 */	beq lbl_80AFFDF8
/* 80AFFDAC  88 1D 09 EB */	lbz r0, 0x9eb(r29)
/* 80AFFDB0  28 00 00 00 */	cmplwi r0, 0
/* 80AFFDB4  40 82 01 28 */	bne lbl_80AFFEDC
/* 80AFFDB8  7F A3 EB 78 */	mr r3, r29
/* 80AFFDBC  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80AFFDC0  C0 3F 02 1C */	lfs f1, 0x21c(r31)
/* 80AFFDC4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AFFDC8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80AFFDCC  7D 89 03 A6 */	mtctr r12
/* 80AFFDD0  4E 80 04 21 */	bctrl 
/* 80AFFDD4  7F A3 EB 78 */	mr r3, r29
/* 80AFFDD8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80AFFDDC  C0 3F 02 1C */	lfs f1, 0x21c(r31)
/* 80AFFDE0  38 A0 00 00 */	li r5, 0
/* 80AFFDE4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AFFDE8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AFFDEC  7D 89 03 A6 */	mtctr r12
/* 80AFFDF0  4E 80 04 21 */	bctrl 
/* 80AFFDF4  48 00 00 E8 */	b lbl_80AFFEDC
lbl_80AFFDF8:
/* 80AFFDF8  2C 1B 00 00 */	cmpwi r27, 0
/* 80AFFDFC  41 82 00 E0 */	beq lbl_80AFFEDC
/* 80AFFE00  88 1D 09 EB */	lbz r0, 0x9eb(r29)
/* 80AFFE04  28 00 00 00 */	cmplwi r0, 0
/* 80AFFE08  40 82 00 D4 */	bne lbl_80AFFEDC
/* 80AFFE0C  7F A3 EB 78 */	mr r3, r29
/* 80AFFE10  38 80 00 03 */	li r4, 3
/* 80AFFE14  C0 3F 02 1C */	lfs f1, 0x21c(r31)
/* 80AFFE18  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AFFE1C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80AFFE20  7D 89 03 A6 */	mtctr r12
/* 80AFFE24  4E 80 04 21 */	bctrl 
/* 80AFFE28  48 00 00 B4 */	b lbl_80AFFEDC
lbl_80AFFE2C:
/* 80AFFE2C  88 7D 0E 10 */	lbz r3, 0xe10(r29)
/* 80AFFE30  38 03 FF FF */	addi r0, r3, -1
/* 80AFFE34  98 1D 0E 10 */	stb r0, 0xe10(r29)
/* 80AFFE38  28 03 00 00 */	cmplwi r3, 0
/* 80AFFE3C  40 82 00 A0 */	bne lbl_80AFFEDC
/* 80AFFE40  7F A3 EB 78 */	mr r3, r29
/* 80AFFE44  38 80 00 03 */	li r4, 3
/* 80AFFE48  38 BF 00 00 */	addi r5, r31, 0
/* 80AFFE4C  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80AFFE50  38 A0 00 01 */	li r5, 1
/* 80AFFE54  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AFFE58  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AFFE5C  7D 89 03 A6 */	mtctr r12
/* 80AFFE60  4E 80 04 21 */	bctrl 
/* 80AFFE64  38 00 00 19 */	li r0, 0x19
/* 80AFFE68  98 1D 0E 10 */	stb r0, 0xe10(r29)
/* 80AFFE6C  88 7D 0E 0F */	lbz r3, 0xe0f(r29)
/* 80AFFE70  38 03 00 01 */	addi r0, r3, 1
/* 80AFFE74  98 1D 0E 0F */	stb r0, 0xe0f(r29)
/* 80AFFE78  48 00 00 64 */	b lbl_80AFFEDC
lbl_80AFFE7C:
/* 80AFFE7C  88 7D 0E 10 */	lbz r3, 0xe10(r29)
/* 80AFFE80  38 03 FF FF */	addi r0, r3, -1
/* 80AFFE84  98 1D 0E 10 */	stb r0, 0xe10(r29)
/* 80AFFE88  28 03 00 00 */	cmplwi r3, 0
/* 80AFFE8C  40 82 00 50 */	bne lbl_80AFFEDC
/* 80AFFE90  38 00 00 FA */	li r0, 0xfa
/* 80AFFE94  98 1D 0E 10 */	stb r0, 0xe10(r29)
/* 80AFFE98  88 7D 0E 0F */	lbz r3, 0xe0f(r29)
/* 80AFFE9C  38 03 00 01 */	addi r0, r3, 1
/* 80AFFEA0  98 1D 0E 0F */	stb r0, 0xe0f(r29)
/* 80AFFEA4  48 00 00 38 */	b lbl_80AFFEDC
lbl_80AFFEA8:
/* 80AFFEA8  C0 1F 02 24 */	lfs f0, 0x224(r31)
/* 80AFFEAC  D0 1E 0C E8 */	stfs f0, 0xce8(r30)
/* 80AFFEB0  88 7D 0E 10 */	lbz r3, 0xe10(r29)
/* 80AFFEB4  38 03 FF FF */	addi r0, r3, -1
/* 80AFFEB8  98 1D 0E 10 */	stb r0, 0xe10(r29)
/* 80AFFEBC  28 03 00 00 */	cmplwi r3, 0
/* 80AFFEC0  40 82 00 1C */	bne lbl_80AFFEDC
/* 80AFFEC4  88 7D 0E 0F */	lbz r3, 0xe0f(r29)
/* 80AFFEC8  38 03 00 01 */	addi r0, r3, 1
/* 80AFFECC  98 1D 0E 0F */	stb r0, 0xe0f(r29)
/* 80AFFED0  48 00 00 0C */	b lbl_80AFFEDC
lbl_80AFFED4:
/* 80AFFED4  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80AFFED8  D0 1E 0C E8 */	stfs f0, 0xce8(r30)
lbl_80AFFEDC:
/* 80AFFEDC  39 61 00 40 */	addi r11, r1, 0x40
/* 80AFFEE0  4B 86 23 40 */	b _restgpr_27
/* 80AFFEE4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AFFEE8  7C 08 03 A6 */	mtlr r0
/* 80AFFEEC  38 21 00 40 */	addi r1, r1, 0x40
/* 80AFFEF0  4E 80 00 20 */	blr 
