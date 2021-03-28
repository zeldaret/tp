lbl_80ACCED0:
/* 80ACCED0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80ACCED4  7C 08 02 A6 */	mflr r0
/* 80ACCED8  90 01 00 94 */	stw r0, 0x94(r1)
/* 80ACCEDC  39 61 00 90 */	addi r11, r1, 0x90
/* 80ACCEE0  4B 89 52 F4 */	b _savegpr_27
/* 80ACCEE4  7C 7E 1B 78 */	mr r30, r3
/* 80ACCEE8  3C 60 80 AD */	lis r3, m__19daNpc_Seira_Param_c@ha
/* 80ACCEEC  3B E3 FD F0 */	addi r31, r3, m__19daNpc_Seira_Param_c@l
/* 80ACCEF0  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80ACCEF4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80ACCEF8  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80ACCEFC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80ACCF00  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80ACCF04  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80ACCF08  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80ACCF0C  38 80 00 00 */	li r4, 0
/* 80ACCF10  4B 67 AF 2C */	b calc__19daNpcT_DmgStagger_cFi
/* 80ACCF14  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80ACCF18  83 63 00 04 */	lwz r27, 4(r3)
/* 80ACCF1C  7F C3 F3 78 */	mr r3, r30
/* 80ACCF20  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80ACCF24  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80ACCF28  7D 89 03 A6 */	mtctr r12
/* 80ACCF2C  4E 80 04 21 */	bctrl 
/* 80ACCF30  7C 7C 1B 78 */	mr r28, r3
/* 80ACCF34  7F C3 F3 78 */	mr r3, r30
/* 80ACCF38  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80ACCF3C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80ACCF40  7D 89 03 A6 */	mtctr r12
/* 80ACCF44  4E 80 04 21 */	bctrl 
/* 80ACCF48  7C 7D 1B 78 */	mr r29, r3
/* 80ACCF4C  7F C3 F3 78 */	mr r3, r30
/* 80ACCF50  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80ACCF54  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80ACCF58  7D 89 03 A6 */	mtctr r12
/* 80ACCF5C  4E 80 04 21 */	bctrl 
/* 80ACCF60  7C 67 1B 78 */	mr r7, r3
/* 80ACCF64  39 5F 00 00 */	addi r10, r31, 0
/* 80ACCF68  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80ACCF6C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80ACCF70  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80ACCF74  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80ACCF78  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80ACCF7C  7F C4 F3 78 */	mr r4, r30
/* 80ACCF80  7F 65 DB 78 */	mr r5, r27
/* 80ACCF84  38 C1 00 28 */	addi r6, r1, 0x28
/* 80ACCF88  7F A8 EB 78 */	mr r8, r29
/* 80ACCF8C  7F 89 E3 78 */	mr r9, r28
/* 80ACCF90  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80ACCF94  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80ACCF98  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 80ACCF9C  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80ACCFA0  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80ACCFA4  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80ACCFA8  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80ACCFAC  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80ACCFB0  39 40 00 00 */	li r10, 0
/* 80ACCFB4  4B 67 9D 24 */	b setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80ACCFB8  C0 5F 00 CC */	lfs f2, 0xcc(r31)
/* 80ACCFBC  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 80ACCFC0  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80ACCFC4  7C 03 00 50 */	subf r0, r3, r0
/* 80ACCFC8  7C 00 07 34 */	extsh r0, r0
/* 80ACCFCC  C8 3F 00 D8 */	lfd f1, 0xd8(r31)
/* 80ACCFD0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80ACCFD4  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80ACCFD8  3C 00 43 30 */	lis r0, 0x4330
/* 80ACCFDC  90 01 00 68 */	stw r0, 0x68(r1)
/* 80ACCFE0  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 80ACCFE4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80ACCFE8  EC 62 00 32 */	fmuls f3, f2, f0
/* 80ACCFEC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80ACCFF0  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80ACCFF4  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 80ACCFF8  4B 67 AC 40 */	b calcJntRad__15daNpcT_JntAnm_cFfff
/* 80ACCFFC  7F C3 F3 78 */	mr r3, r30
/* 80ACD000  4B 67 C1 90 */	b setMtx__8daNpcT_cFv
/* 80ACD004  80 1E 0F 7C */	lwz r0, 0xf7c(r30)
/* 80ACD008  28 00 00 00 */	cmplwi r0, 0
/* 80ACD00C  41 82 00 60 */	beq lbl_80ACD06C
/* 80ACD010  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80ACD014  80 63 00 04 */	lwz r3, 4(r3)
/* 80ACD018  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80ACD01C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80ACD020  38 63 03 60 */	addi r3, r3, 0x360
/* 80ACD024  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80ACD028  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80ACD02C  4B 87 94 84 */	b PSMTXCopy
/* 80ACD030  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80ACD034  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80ACD038  38 81 00 34 */	addi r4, r1, 0x34
/* 80ACD03C  4B 87 94 74 */	b PSMTXCopy
/* 80ACD040  80 7E 0F 7C */	lwz r3, 0xf7c(r30)
/* 80ACD044  80 83 00 04 */	lwz r4, 4(r3)
/* 80ACD048  38 61 00 34 */	addi r3, r1, 0x34
/* 80ACD04C  38 84 00 24 */	addi r4, r4, 0x24
/* 80ACD050  4B 87 94 60 */	b PSMTXCopy
/* 80ACD054  80 7E 0F 7C */	lwz r3, 0xf7c(r30)
/* 80ACD058  38 80 00 00 */	li r4, 0
/* 80ACD05C  38 A0 00 00 */	li r5, 0
/* 80ACD060  4B 54 40 50 */	b play__16mDoExt_McaMorfSOFUlSc
/* 80ACD064  80 7E 0F 7C */	lwz r3, 0xf7c(r30)
/* 80ACD068  4B 54 41 84 */	b modelCalc__16mDoExt_McaMorfSOFv
lbl_80ACD06C:
/* 80ACD06C  7F C3 F3 78 */	mr r3, r30
/* 80ACD070  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80ACD074  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80ACD078  7D 89 03 A6 */	mtctr r12
/* 80ACD07C  4E 80 04 21 */	bctrl 
/* 80ACD080  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80ACD084  80 84 00 04 */	lwz r4, 4(r4)
/* 80ACD088  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80ACD08C  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80ACD090  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80ACD094  7C 64 02 14 */	add r3, r4, r0
/* 80ACD098  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80ACD09C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80ACD0A0  4B 87 94 10 */	b PSMTXCopy
/* 80ACD0A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80ACD0A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80ACD0AC  38 81 00 28 */	addi r4, r1, 0x28
/* 80ACD0B0  38 BE 05 38 */	addi r5, r30, 0x538
/* 80ACD0B4  4B 87 9C B8 */	b PSMTXMultVec
/* 80ACD0B8  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80ACD0BC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80ACD0C0  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80ACD0C4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80ACD0C8  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80ACD0CC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80ACD0D0  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80ACD0D4  38 81 00 1C */	addi r4, r1, 0x1c
/* 80ACD0D8  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 80ACD0DC  38 A0 00 00 */	li r5, 0
/* 80ACD0E0  48 00 26 85 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80ACD0E4  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80ACD0E8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80ACD0EC  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80ACD0F0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80ACD0F4  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80ACD0F8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80ACD0FC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80ACD100  38 81 00 10 */	addi r4, r1, 0x10
/* 80ACD104  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80ACD108  38 C0 00 01 */	li r6, 1
/* 80ACD10C  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 80ACD110  38 E0 00 00 */	li r7, 0
/* 80ACD114  48 00 25 35 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80ACD118  7F C3 F3 78 */	mr r3, r30
/* 80ACD11C  48 00 0B 51 */	bl checkStageIsSeirasShop__13daNpc_Seira_cFv
/* 80ACD120  2C 03 00 00 */	cmpwi r3, 0
/* 80ACD124  41 82 00 6C */	beq lbl_80ACD190
/* 80ACD128  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80ACD12C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80ACD130  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80ACD134  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80ACD138  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80ACD13C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80ACD140  88 1E 10 C1 */	lbz r0, 0x10c1(r30)
/* 80ACD144  28 00 00 01 */	cmplwi r0, 1
/* 80ACD148  41 82 00 08 */	beq lbl_80ACD150
/* 80ACD14C  40 82 00 14 */	bne lbl_80ACD160
lbl_80ACD150:
/* 80ACD150  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80ACD154  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80ACD158  EC 01 00 2A */	fadds f0, f1, f0
/* 80ACD15C  D0 01 00 2C */	stfs f0, 0x2c(r1)
lbl_80ACD160:
/* 80ACD160  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80ACD164  80 63 00 04 */	lwz r3, 4(r3)
/* 80ACD168  38 63 00 24 */	addi r3, r3, 0x24
/* 80ACD16C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80ACD170  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80ACD174  4B 87 93 3C */	b PSMTXCopy
/* 80ACD178  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80ACD17C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80ACD180  38 81 00 28 */	addi r4, r1, 0x28
/* 80ACD184  38 BE 05 50 */	addi r5, r30, 0x550
/* 80ACD188  4B 87 9B E4 */	b PSMTXMultVec
/* 80ACD18C  48 00 00 2C */	b lbl_80ACD1B8
lbl_80ACD190:
/* 80ACD190  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80ACD194  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80ACD198  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80ACD19C  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80ACD1A0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80ACD1A4  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80ACD1A8  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 80ACD1AC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80ACD1B0  EC 01 00 2A */	fadds f0, f1, f0
/* 80ACD1B4  D0 1E 05 54 */	stfs f0, 0x554(r30)
lbl_80ACD1B8:
/* 80ACD1B8  39 61 00 90 */	addi r11, r1, 0x90
/* 80ACD1BC  4B 89 50 64 */	b _restgpr_27
/* 80ACD1C0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80ACD1C4  7C 08 03 A6 */	mtlr r0
/* 80ACD1C8  38 21 00 90 */	addi r1, r1, 0x90
/* 80ACD1CC  4E 80 00 20 */	blr 
