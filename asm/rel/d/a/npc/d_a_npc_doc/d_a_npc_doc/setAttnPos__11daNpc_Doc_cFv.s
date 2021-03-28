lbl_809A80B8:
/* 809A80B8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 809A80BC  7C 08 02 A6 */	mflr r0
/* 809A80C0  90 01 00 74 */	stw r0, 0x74(r1)
/* 809A80C4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 809A80C8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 809A80CC  39 61 00 60 */	addi r11, r1, 0x60
/* 809A80D0  4B 9B A1 00 */	b _savegpr_26
/* 809A80D4  7C 7D 1B 78 */	mr r29, r3
/* 809A80D8  3C 60 80 9B */	lis r3, lit_1109@ha
/* 809A80DC  3B C3 AA D0 */	addi r30, r3, lit_1109@l
/* 809A80E0  3C 60 80 9B */	lis r3, m__17daNpc_Doc_Param_c@ha
/* 809A80E4  3B E3 A3 1C */	addi r31, r3, m__17daNpc_Doc_Param_c@l
/* 809A80E8  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 809A80EC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 809A80F0  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 809A80F4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 809A80F8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809A80FC  38 7D 0D 08 */	addi r3, r29, 0xd08
/* 809A8100  38 80 00 00 */	li r4, 0
/* 809A8104  4B 79 FD 38 */	b calc__19daNpcT_DmgStagger_cFi
/* 809A8108  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 809A810C  A8 7D 0D 80 */	lha r3, 0xd80(r29)
/* 809A8110  A8 1D 0D 7A */	lha r0, 0xd7a(r29)
/* 809A8114  7C 03 00 50 */	subf r0, r3, r0
/* 809A8118  7C 00 07 34 */	extsh r0, r0
/* 809A811C  C8 3F 00 E0 */	lfd f1, 0xe0(r31)
/* 809A8120  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809A8124  90 01 00 44 */	stw r0, 0x44(r1)
/* 809A8128  3C 00 43 30 */	lis r0, 0x4330
/* 809A812C  90 01 00 40 */	stw r0, 0x40(r1)
/* 809A8130  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 809A8134  EC 00 08 28 */	fsubs f0, f0, f1
/* 809A8138  EF E2 00 32 */	fmuls f31, f2, f0
/* 809A813C  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 809A8140  83 43 00 04 */	lwz r26, 4(r3)
/* 809A8144  7F A3 EB 78 */	mr r3, r29
/* 809A8148  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 809A814C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 809A8150  7D 89 03 A6 */	mtctr r12
/* 809A8154  4E 80 04 21 */	bctrl 
/* 809A8158  7C 7B 1B 78 */	mr r27, r3
/* 809A815C  7F A3 EB 78 */	mr r3, r29
/* 809A8160  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 809A8164  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 809A8168  7D 89 03 A6 */	mtctr r12
/* 809A816C  4E 80 04 21 */	bctrl 
/* 809A8170  7C 7C 1B 78 */	mr r28, r3
/* 809A8174  7F A3 EB 78 */	mr r3, r29
/* 809A8178  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 809A817C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809A8180  7D 89 03 A6 */	mtctr r12
/* 809A8184  4E 80 04 21 */	bctrl 
/* 809A8188  7C 67 1B 78 */	mr r7, r3
/* 809A818C  39 5F 00 00 */	addi r10, r31, 0
/* 809A8190  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 809A8194  D0 01 00 08 */	stfs f0, 8(r1)
/* 809A8198  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 809A819C  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 809A81A0  7F A4 EB 78 */	mr r4, r29
/* 809A81A4  7F 45 D3 78 */	mr r5, r26
/* 809A81A8  38 C1 00 34 */	addi r6, r1, 0x34
/* 809A81AC  7F 88 E3 78 */	mr r8, r28
/* 809A81B0  7F 69 DB 78 */	mr r9, r27
/* 809A81B4  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 809A81B8  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 809A81BC  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 809A81C0  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 809A81C4  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 809A81C8  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 809A81CC  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 809A81D0  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 809A81D4  39 40 00 00 */	li r10, 0
/* 809A81D8  4B 79 EB 00 */	b setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 809A81DC  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 809A81E0  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 809A81E4  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 809A81E8  FC 60 F8 90 */	fmr f3, f31
/* 809A81EC  4B 79 FA 4C */	b calcJntRad__15daNpcT_JntAnm_cFfff
/* 809A81F0  7F A3 EB 78 */	mr r3, r29
/* 809A81F4  4B 7A 0F 9C */	b setMtx__8daNpcT_cFv
/* 809A81F8  7F A3 EB 78 */	mr r3, r29
/* 809A81FC  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 809A8200  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 809A8204  7D 89 03 A6 */	mtctr r12
/* 809A8208  4E 80 04 21 */	bctrl 
/* 809A820C  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 809A8210  80 84 00 04 */	lwz r4, 4(r4)
/* 809A8214  80 84 00 84 */	lwz r4, 0x84(r4)
/* 809A8218  80 84 00 0C */	lwz r4, 0xc(r4)
/* 809A821C  1C 03 00 30 */	mulli r0, r3, 0x30
/* 809A8220  7C 64 02 14 */	add r3, r4, r0
/* 809A8224  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809A8228  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809A822C  4B 99 E2 84 */	b PSMTXCopy
/* 809A8230  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A8234  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A8238  38 81 00 34 */	addi r4, r1, 0x34
/* 809A823C  38 BD 05 38 */	addi r5, r29, 0x538
/* 809A8240  4B 99 EB 2C */	b PSMTXMultVec
/* 809A8244  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 809A8248  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809A824C  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 809A8250  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809A8254  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 809A8258  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 809A825C  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 809A8260  38 81 00 28 */	addi r4, r1, 0x28
/* 809A8264  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 809A8268  38 A0 F0 00 */	li r5, -4096
/* 809A826C  48 00 1B F1 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 809A8270  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 809A8274  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809A8278  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 809A827C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 809A8280  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 809A8284  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809A8288  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 809A828C  38 81 00 1C */	addi r4, r1, 0x1c
/* 809A8290  A8 BD 0D 7A */	lha r5, 0xd7a(r29)
/* 809A8294  38 C0 00 01 */	li r6, 1
/* 809A8298  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 809A829C  38 E0 00 00 */	li r7, 0
/* 809A82A0  48 00 1A A1 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 809A82A4  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 809A82A8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 809A82AC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 809A82B0  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 809A82B4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809A82B8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 809A82BC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 809A82C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A82C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A82C8  A8 9D 0D 7A */	lha r4, 0xd7a(r29)
/* 809A82CC  4B 66 41 10 */	b mDoMtx_YrotS__FPA4_fs
/* 809A82D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809A82D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809A82D8  38 81 00 34 */	addi r4, r1, 0x34
/* 809A82DC  7C 85 23 78 */	mr r5, r4
/* 809A82E0  4B 99 EA 8C */	b PSMTXMultVec
/* 809A82E4  38 61 00 10 */	addi r3, r1, 0x10
/* 809A82E8  38 81 00 34 */	addi r4, r1, 0x34
/* 809A82EC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 809A82F0  4B 8B E7 F4 */	b __pl__4cXyzCFRC3Vec
/* 809A82F4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 809A82F8  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 809A82FC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 809A8300  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 809A8304  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 809A8308  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 809A830C  88 1E 00 5C */	lbz r0, 0x5c(r30)
/* 809A8310  7C 00 07 75 */	extsb. r0, r0
/* 809A8314  40 82 00 30 */	bne lbl_809A8344
/* 809A8318  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 809A831C  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 809A8320  38 7E 00 60 */	addi r3, r30, 0x60
/* 809A8324  D0 03 00 04 */	stfs f0, 4(r3)
/* 809A8328  D0 03 00 08 */	stfs f0, 8(r3)
/* 809A832C  3C 80 80 9B */	lis r4, __dt__4cXyzFv@ha
/* 809A8330  38 84 94 D4 */	addi r4, r4, __dt__4cXyzFv@l
/* 809A8334  38 BE 00 50 */	addi r5, r30, 0x50
/* 809A8338  4B FF E8 E1 */	bl __register_global_object
/* 809A833C  38 00 00 01 */	li r0, 1
/* 809A8340  98 1E 00 5C */	stb r0, 0x5c(r30)
lbl_809A8344:
/* 809A8344  7F A3 EB 78 */	mr r3, r29
/* 809A8348  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 809A834C  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 809A8350  7D 89 03 A6 */	mtctr r12
/* 809A8354  4E 80 04 21 */	bctrl 
/* 809A8358  C0 3F 00 D4 */	lfs f1, 0xd4(r31)
/* 809A835C  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 809A8360  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809A8364  40 80 00 24 */	bge lbl_809A8388
/* 809A8368  7F A3 EB 78 */	mr r3, r29
/* 809A836C  38 9E 00 60 */	addi r4, r30, 0x60
/* 809A8370  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 809A8374  C0 5F 00 A8 */	lfs f2, 0xa8(r31)
/* 809A8378  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 809A837C  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 809A8380  7D 89 03 A6 */	mtctr r12
/* 809A8384  4E 80 04 21 */	bctrl 
lbl_809A8388:
/* 809A8388  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 809A838C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 809A8390  39 61 00 60 */	addi r11, r1, 0x60
/* 809A8394  4B 9B 9E 88 */	b _restgpr_26
/* 809A8398  80 01 00 74 */	lwz r0, 0x74(r1)
/* 809A839C  7C 08 03 A6 */	mtlr r0
/* 809A83A0  38 21 00 70 */	addi r1, r1, 0x70
/* 809A83A4  4E 80 00 20 */	blr 
