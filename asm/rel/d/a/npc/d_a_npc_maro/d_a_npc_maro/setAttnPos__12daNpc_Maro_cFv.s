lbl_8055D688:
/* 8055D688  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8055D68C  7C 08 02 A6 */	mflr r0
/* 8055D690  90 01 00 74 */	stw r0, 0x74(r1)
/* 8055D694  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8055D698  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8055D69C  39 61 00 60 */	addi r11, r1, 0x60
/* 8055D6A0  4B E0 4B 34 */	b _savegpr_27
/* 8055D6A4  7C 7E 1B 78 */	mr r30, r3
/* 8055D6A8  3C 60 80 56 */	lis r3, m__18daNpc_Maro_Param_c@ha
/* 8055D6AC  3B E3 4B AC */	addi r31, r3, m__18daNpc_Maro_Param_c@l
/* 8055D6B0  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8055D6B4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8055D6B8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8055D6BC  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 8055D6C0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8055D6C4  88 1E 11 33 */	lbz r0, 0x1133(r30)
/* 8055D6C8  28 00 00 00 */	cmplwi r0, 0
/* 8055D6CC  41 82 00 1C */	beq lbl_8055D6E8
/* 8055D6D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8055D6D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8055D6D8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8055D6DC  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 8055D6E0  60 00 02 00 */	ori r0, r0, 0x200
/* 8055D6E4  90 03 05 8C */	stw r0, 0x58c(r3)
lbl_8055D6E8:
/* 8055D6E8  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 8055D6EC  38 80 00 00 */	li r4, 0
/* 8055D6F0  4B BE A7 4C */	b calc__19daNpcT_DmgStagger_cFi
/* 8055D6F4  C0 5F 01 28 */	lfs f2, 0x128(r31)
/* 8055D6F8  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 8055D6FC  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 8055D700  7C 03 00 50 */	subf r0, r3, r0
/* 8055D704  7C 00 07 34 */	extsh r0, r0
/* 8055D708  C8 3F 01 30 */	lfd f1, 0x130(r31)
/* 8055D70C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8055D710  90 01 00 44 */	stw r0, 0x44(r1)
/* 8055D714  3C 00 43 30 */	lis r0, 0x4330
/* 8055D718  90 01 00 40 */	stw r0, 0x40(r1)
/* 8055D71C  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 8055D720  EC 00 08 28 */	fsubs f0, f0, f1
/* 8055D724  EF E2 00 32 */	fmuls f31, f2, f0
/* 8055D728  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 8055D72C  83 63 00 04 */	lwz r27, 4(r3)
/* 8055D730  7F C3 F3 78 */	mr r3, r30
/* 8055D734  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 8055D738  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8055D73C  7D 89 03 A6 */	mtctr r12
/* 8055D740  4E 80 04 21 */	bctrl 
/* 8055D744  7C 7C 1B 78 */	mr r28, r3
/* 8055D748  7F C3 F3 78 */	mr r3, r30
/* 8055D74C  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 8055D750  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8055D754  7D 89 03 A6 */	mtctr r12
/* 8055D758  4E 80 04 21 */	bctrl 
/* 8055D75C  7C 7D 1B 78 */	mr r29, r3
/* 8055D760  7F C3 F3 78 */	mr r3, r30
/* 8055D764  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 8055D768  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8055D76C  7D 89 03 A6 */	mtctr r12
/* 8055D770  4E 80 04 21 */	bctrl 
/* 8055D774  7C 67 1B 78 */	mr r7, r3
/* 8055D778  39 5F 00 00 */	addi r10, r31, 0
/* 8055D77C  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 8055D780  D0 01 00 08 */	stfs f0, 8(r1)
/* 8055D784  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8055D788  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8055D78C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8055D790  7F C4 F3 78 */	mr r4, r30
/* 8055D794  7F 65 DB 78 */	mr r5, r27
/* 8055D798  38 C1 00 34 */	addi r6, r1, 0x34
/* 8055D79C  7F A8 EB 78 */	mr r8, r29
/* 8055D7A0  7F 89 E3 78 */	mr r9, r28
/* 8055D7A4  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 8055D7A8  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 8055D7AC  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 8055D7B0  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 8055D7B4  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 8055D7B8  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 8055D7BC  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 8055D7C0  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 8055D7C4  39 40 00 00 */	li r10, 0
/* 8055D7C8  4B BE 95 10 */	b setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 8055D7CC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8055D7D0  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 8055D7D4  C0 5F 01 08 */	lfs f2, 0x108(r31)
/* 8055D7D8  FC 60 F8 90 */	fmr f3, f31
/* 8055D7DC  4B BE A4 5C */	b calcJntRad__15daNpcT_JntAnm_cFfff
/* 8055D7E0  7F C3 F3 78 */	mr r3, r30
/* 8055D7E4  4B BE B9 AC */	b setMtx__8daNpcT_cFv
/* 8055D7E8  7F C3 F3 78 */	mr r3, r30
/* 8055D7EC  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 8055D7F0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 8055D7F4  7D 89 03 A6 */	mtctr r12
/* 8055D7F8  4E 80 04 21 */	bctrl 
/* 8055D7FC  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 8055D800  80 84 00 04 */	lwz r4, 4(r4)
/* 8055D804  80 84 00 84 */	lwz r4, 0x84(r4)
/* 8055D808  80 84 00 0C */	lwz r4, 0xc(r4)
/* 8055D80C  1C 03 00 30 */	mulli r0, r3, 0x30
/* 8055D810  7C 64 02 14 */	add r3, r4, r0
/* 8055D814  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8055D818  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8055D81C  4B DE 8C 94 */	b PSMTXCopy
/* 8055D820  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8055D824  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8055D828  38 81 00 34 */	addi r4, r1, 0x34
/* 8055D82C  38 BE 05 38 */	addi r5, r30, 0x538
/* 8055D830  4B DE 95 3C */	b PSMTXMultVec
/* 8055D834  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 8055D838  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8055D83C  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 8055D840  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8055D844  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 8055D848  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8055D84C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8055D850  38 81 00 28 */	addi r4, r1, 0x28
/* 8055D854  C0 3F 01 08 */	lfs f1, 0x108(r31)
/* 8055D858  38 A0 00 00 */	li r5, 0
/* 8055D85C  48 00 69 A1 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 8055D860  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 8055D864  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8055D868  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 8055D86C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8055D870  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 8055D874  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8055D878  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8055D87C  38 81 00 1C */	addi r4, r1, 0x1c
/* 8055D880  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 8055D884  38 C0 00 00 */	li r6, 0
/* 8055D888  C0 3F 01 08 */	lfs f1, 0x108(r31)
/* 8055D88C  38 E0 00 00 */	li r7, 0
/* 8055D890  48 00 68 51 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 8055D894  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8055D898  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8055D89C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8055D8A0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8055D8A4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8055D8A8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8055D8AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8055D8B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8055D8B4  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 8055D8B8  4B AA EB 24 */	b mDoMtx_YrotS__FPA4_fs
/* 8055D8BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8055D8C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8055D8C4  38 81 00 34 */	addi r4, r1, 0x34
/* 8055D8C8  7C 85 23 78 */	mr r5, r4
/* 8055D8CC  4B DE 94 A0 */	b PSMTXMultVec
/* 8055D8D0  38 61 00 10 */	addi r3, r1, 0x10
/* 8055D8D4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8055D8D8  38 A1 00 34 */	addi r5, r1, 0x34
/* 8055D8DC  4B D0 92 08 */	b __pl__4cXyzCFRC3Vec
/* 8055D8E0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8055D8E4  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 8055D8E8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8055D8EC  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 8055D8F0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8055D8F4  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 8055D8F8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8055D8FC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8055D900  39 61 00 60 */	addi r11, r1, 0x60
/* 8055D904  4B E0 49 1C */	b _restgpr_27
/* 8055D908  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8055D90C  7C 08 03 A6 */	mtlr r0
/* 8055D910  38 21 00 70 */	addi r1, r1, 0x70
/* 8055D914  4E 80 00 20 */	blr 
