lbl_80B27FD8:
/* 80B27FD8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B27FDC  7C 08 02 A6 */	mflr r0
/* 80B27FE0  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B27FE4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80B27FE8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80B27FEC  39 61 00 60 */	addi r11, r1, 0x60
/* 80B27FF0  4B 83 A1 E1 */	bl _savegpr_26
/* 80B27FF4  7C 7D 1B 78 */	mr r29, r3
/* 80B27FF8  3C 60 80 B3 */	lis r3, lit_1109@ha /* 0x80B2DD18@ha */
/* 80B27FFC  3B C3 DD 18 */	addi r30, r3, lit_1109@l /* 0x80B2DD18@l */
/* 80B28000  3C 60 80 B3 */	lis r3, m__17daNpc_Uri_Param_c@ha /* 0x80B2CE14@ha */
/* 80B28004  3B E3 CE 14 */	addi r31, r3, m__17daNpc_Uri_Param_c@l /* 0x80B2CE14@l */
/* 80B28008  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80B2800C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B28010  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80B28014  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B28018  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80B2801C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B28020  38 7D 0D 08 */	addi r3, r29, 0xd08
/* 80B28024  38 80 00 00 */	li r4, 0
/* 80B28028  4B 61 FE 15 */	bl calc__19daNpcT_DmgStagger_cFi
/* 80B2802C  C0 5F 00 FC */	lfs f2, 0xfc(r31)
/* 80B28030  A8 7D 0D 80 */	lha r3, 0xd80(r29)
/* 80B28034  A8 1D 0D 7A */	lha r0, 0xd7a(r29)
/* 80B28038  7C 03 00 50 */	subf r0, r3, r0
/* 80B2803C  7C 00 07 34 */	extsh r0, r0
/* 80B28040  C8 3F 01 10 */	lfd f1, 0x110(r31)
/* 80B28044  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B28048  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B2804C  3C 00 43 30 */	lis r0, 0x4330
/* 80B28050  90 01 00 40 */	stw r0, 0x40(r1)
/* 80B28054  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80B28058  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B2805C  EF E2 00 32 */	fmuls f31, f2, f0
/* 80B28060  80 7D 05 78 */	lwz r3, 0x578(r29)
/* 80B28064  83 43 00 04 */	lwz r26, 4(r3)
/* 80B28068  7F A3 EB 78 */	mr r3, r29
/* 80B2806C  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80B28070  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B28074  7D 89 03 A6 */	mtctr r12
/* 80B28078  4E 80 04 21 */	bctrl 
/* 80B2807C  7C 7B 1B 78 */	mr r27, r3
/* 80B28080  7F A3 EB 78 */	mr r3, r29
/* 80B28084  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80B28088  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B2808C  7D 89 03 A6 */	mtctr r12
/* 80B28090  4E 80 04 21 */	bctrl 
/* 80B28094  7C 7C 1B 78 */	mr r28, r3
/* 80B28098  7F A3 EB 78 */	mr r3, r29
/* 80B2809C  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80B280A0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B280A4  7D 89 03 A6 */	mtctr r12
/* 80B280A8  4E 80 04 21 */	bctrl 
/* 80B280AC  7C 67 1B 78 */	mr r7, r3
/* 80B280B0  39 5F 00 00 */	addi r10, r31, 0
/* 80B280B4  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80B280B8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B280BC  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80B280C0  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80B280C4  7F A4 EB 78 */	mr r4, r29
/* 80B280C8  7F 45 D3 78 */	mr r5, r26
/* 80B280CC  38 C1 00 34 */	addi r6, r1, 0x34
/* 80B280D0  7F 88 E3 78 */	mr r8, r28
/* 80B280D4  7F 69 DB 78 */	mr r9, r27
/* 80B280D8  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80B280DC  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80B280E0  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 80B280E4  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80B280E8  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80B280EC  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80B280F0  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80B280F4  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80B280F8  39 40 00 00 */	li r10, 0
/* 80B280FC  4B 61 EB DD */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80B28100  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80B28104  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 80B28108  C0 5F 00 E8 */	lfs f2, 0xe8(r31)
/* 80B2810C  FC 60 F8 90 */	fmr f3, f31
/* 80B28110  4B 61 FB 29 */	bl calcJntRad__15daNpcT_JntAnm_cFfff
/* 80B28114  7F A3 EB 78 */	mr r3, r29
/* 80B28118  4B 62 10 79 */	bl setMtx__8daNpcT_cFv
/* 80B2811C  7F A3 EB 78 */	mr r3, r29
/* 80B28120  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80B28124  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B28128  7D 89 03 A6 */	mtctr r12
/* 80B2812C  4E 80 04 21 */	bctrl 
/* 80B28130  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80B28134  80 84 00 04 */	lwz r4, 4(r4)
/* 80B28138  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80B2813C  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80B28140  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80B28144  7C 64 02 14 */	add r3, r4, r0
/* 80B28148  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B2814C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B28150  4B 81 E3 61 */	bl PSMTXCopy
/* 80B28154  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B28158  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B2815C  38 81 00 34 */	addi r4, r1, 0x34
/* 80B28160  38 BD 05 38 */	addi r5, r29, 0x538
/* 80B28164  4B 81 EC 09 */	bl PSMTXMultVec
/* 80B28168  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 80B2816C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B28170  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80B28174  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B28178  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80B2817C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B28180  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80B28184  38 81 00 28 */	addi r4, r1, 0x28
/* 80B28188  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 80B2818C  38 A0 00 00 */	li r5, 0
/* 80B28190  48 00 46 C5 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80B28194  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 80B28198  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B2819C  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80B281A0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B281A4  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80B281A8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B281AC  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80B281B0  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B281B4  A8 BD 0D 7A */	lha r5, 0xd7a(r29)
/* 80B281B8  A8 1D 0D 8C */	lha r0, 0xd8c(r29)
/* 80B281BC  7C 05 02 14 */	add r0, r5, r0
/* 80B281C0  7C 05 07 34 */	extsh r5, r0
/* 80B281C4  38 C0 00 01 */	li r6, 1
/* 80B281C8  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 80B281CC  38 E0 00 00 */	li r7, 0
/* 80B281D0  48 00 45 69 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80B281D4  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80B281D8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B281DC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B281E0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B281E4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80B281E8  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80B281EC  88 1D 10 0D */	lbz r0, 0x100d(r29)
/* 80B281F0  28 00 00 00 */	cmplwi r0, 0
/* 80B281F4  41 82 00 3C */	beq lbl_80B28230
/* 80B281F8  88 1D 0F 84 */	lbz r0, 0xf84(r29)
/* 80B281FC  28 00 00 01 */	cmplwi r0, 1
/* 80B28200  40 82 00 1C */	bne lbl_80B2821C
/* 80B28204  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80B28208  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B2820C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B28210  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 80B28214  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B28218  48 00 00 18 */	b lbl_80B28230
lbl_80B2821C:
/* 80B2821C  28 00 00 04 */	cmplwi r0, 4
/* 80B28220  40 82 00 10 */	bne lbl_80B28230
/* 80B28224  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B28228  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B2822C  D0 01 00 38 */	stfs f0, 0x38(r1)
lbl_80B28230:
/* 80B28230  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B28234  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B28238  A8 9D 0D 7A */	lha r4, 0xd7a(r29)
/* 80B2823C  4B 4E 41 A1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80B28240  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B28244  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B28248  38 81 00 34 */	addi r4, r1, 0x34
/* 80B2824C  7C 85 23 78 */	mr r5, r4
/* 80B28250  4B 81 EB 1D */	bl PSMTXMultVec
/* 80B28254  38 61 00 10 */	addi r3, r1, 0x10
/* 80B28258  38 81 00 34 */	addi r4, r1, 0x34
/* 80B2825C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80B28260  4B 73 E8 85 */	bl __pl__4cXyzCFRC3Vec
/* 80B28264  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80B28268  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80B2826C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80B28270  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80B28274  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B28278  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 80B2827C  88 1E 00 5C */	lbz r0, 0x5c(r30)
/* 80B28280  7C 00 07 75 */	extsb. r0, r0
/* 80B28284  40 82 00 30 */	bne lbl_80B282B4
/* 80B28288  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80B2828C  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 80B28290  38 7E 00 60 */	addi r3, r30, 0x60
/* 80B28294  D0 03 00 04 */	stfs f0, 4(r3)
/* 80B28298  D0 03 00 08 */	stfs f0, 8(r3)
/* 80B2829C  3C 80 80 B3 */	lis r4, __dt__4cXyzFv@ha /* 0x80B2BE90@ha */
/* 80B282A0  38 84 BE 90 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B2BE90@l */
/* 80B282A4  38 BE 00 50 */	addi r5, r30, 0x50
/* 80B282A8  4B FF E4 91 */	bl __register_global_object
/* 80B282AC  38 00 00 01 */	li r0, 1
/* 80B282B0  98 1E 00 5C */	stb r0, 0x5c(r30)
lbl_80B282B4:
/* 80B282B4  7F A3 EB 78 */	mr r3, r29
/* 80B282B8  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80B282BC  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 80B282C0  7D 89 03 A6 */	mtctr r12
/* 80B282C4  4E 80 04 21 */	bctrl 
/* 80B282C8  C0 3F 01 08 */	lfs f1, 0x108(r31)
/* 80B282CC  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80B282D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B282D4  40 80 00 24 */	bge lbl_80B282F8
/* 80B282D8  7F A3 EB 78 */	mr r3, r29
/* 80B282DC  38 9E 00 60 */	addi r4, r30, 0x60
/* 80B282E0  C0 3F 01 0C */	lfs f1, 0x10c(r31)
/* 80B282E4  C0 5F 00 D8 */	lfs f2, 0xd8(r31)
/* 80B282E8  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80B282EC  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 80B282F0  7D 89 03 A6 */	mtctr r12
/* 80B282F4  4E 80 04 21 */	bctrl 
lbl_80B282F8:
/* 80B282F8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80B282FC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80B28300  39 61 00 60 */	addi r11, r1, 0x60
/* 80B28304  4B 83 9F 19 */	bl _restgpr_26
/* 80B28308  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B2830C  7C 08 03 A6 */	mtlr r0
/* 80B28310  38 21 00 70 */	addi r1, r1, 0x70
/* 80B28314  4E 80 00 20 */	blr 
