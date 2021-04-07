lbl_80A98FB4:
/* 80A98FB4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80A98FB8  7C 08 02 A6 */	mflr r0
/* 80A98FBC  90 01 00 74 */	stw r0, 0x74(r1)
/* 80A98FC0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80A98FC4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80A98FC8  39 61 00 60 */	addi r11, r1, 0x60
/* 80A98FCC  4B 8C 92 09 */	bl _savegpr_27
/* 80A98FD0  7C 7E 1B 78 */	mr r30, r3
/* 80A98FD4  3C 60 80 AA */	lis r3, m__24daNpc_Pachi_Maro_Param_c@ha /* 0x80A9B88C@ha */
/* 80A98FD8  3B E3 B8 8C */	addi r31, r3, m__24daNpc_Pachi_Maro_Param_c@l /* 0x80A9B88C@l */
/* 80A98FDC  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80A98FE0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A98FE4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A98FE8  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80A98FEC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A98FF0  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80A98FF4  38 80 00 00 */	li r4, 0
/* 80A98FF8  4B 6A EE 45 */	bl calc__19daNpcT_DmgStagger_cFi
/* 80A98FFC  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 80A99000  A8 7E 0D 80 */	lha r3, 0xd80(r30)
/* 80A99004  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A99008  7C 03 00 50 */	subf r0, r3, r0
/* 80A9900C  7C 00 07 34 */	extsh r0, r0
/* 80A99010  C8 3F 00 D0 */	lfd f1, 0xd0(r31)
/* 80A99014  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A99018  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A9901C  3C 00 43 30 */	lis r0, 0x4330
/* 80A99020  90 01 00 38 */	stw r0, 0x38(r1)
/* 80A99024  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80A99028  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A9902C  EF E2 00 32 */	fmuls f31, f2, f0
/* 80A99030  88 1E 0F 85 */	lbz r0, 0xf85(r30)
/* 80A99034  28 00 00 00 */	cmplwi r0, 0
/* 80A99038  41 82 00 A0 */	beq lbl_80A990D8
/* 80A9903C  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A99040  83 63 00 04 */	lwz r27, 4(r3)
/* 80A99044  7F C3 F3 78 */	mr r3, r30
/* 80A99048  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A9904C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A99050  7D 89 03 A6 */	mtctr r12
/* 80A99054  4E 80 04 21 */	bctrl 
/* 80A99058  7C 7D 1B 78 */	mr r29, r3
/* 80A9905C  7F C3 F3 78 */	mr r3, r30
/* 80A99060  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A99064  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80A99068  7D 89 03 A6 */	mtctr r12
/* 80A9906C  4E 80 04 21 */	bctrl 
/* 80A99070  7C 7C 1B 78 */	mr r28, r3
/* 80A99074  7F C3 F3 78 */	mr r3, r30
/* 80A99078  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A9907C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A99080  7D 89 03 A6 */	mtctr r12
/* 80A99084  4E 80 04 21 */	bctrl 
/* 80A99088  7C 67 1B 78 */	mr r7, r3
/* 80A9908C  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80A99090  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A99094  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A99098  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A9909C  7F C4 F3 78 */	mr r4, r30
/* 80A990A0  7F 65 DB 78 */	mr r5, r27
/* 80A990A4  38 C1 00 28 */	addi r6, r1, 0x28
/* 80A990A8  7F 88 E3 78 */	mr r8, r28
/* 80A990AC  7F A9 EB 78 */	mr r9, r29
/* 80A990B0  FC 40 08 90 */	fmr f2, f1
/* 80A990B4  FC 60 08 90 */	fmr f3, f1
/* 80A990B8  FC 80 08 90 */	fmr f4, f1
/* 80A990BC  FC A0 08 90 */	fmr f5, f1
/* 80A990C0  FC C0 08 90 */	fmr f6, f1
/* 80A990C4  FC E0 08 90 */	fmr f7, f1
/* 80A990C8  FD 00 08 90 */	fmr f8, f1
/* 80A990CC  39 40 00 00 */	li r10, 0
/* 80A990D0  4B 6A DC 09 */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80A990D4  48 00 00 A8 */	b lbl_80A9917C
lbl_80A990D8:
/* 80A990D8  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A990DC  83 63 00 04 */	lwz r27, 4(r3)
/* 80A990E0  7F C3 F3 78 */	mr r3, r30
/* 80A990E4  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A990E8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A990EC  7D 89 03 A6 */	mtctr r12
/* 80A990F0  4E 80 04 21 */	bctrl 
/* 80A990F4  7C 7C 1B 78 */	mr r28, r3
/* 80A990F8  7F C3 F3 78 */	mr r3, r30
/* 80A990FC  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A99100  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80A99104  7D 89 03 A6 */	mtctr r12
/* 80A99108  4E 80 04 21 */	bctrl 
/* 80A9910C  7C 7D 1B 78 */	mr r29, r3
/* 80A99110  7F C3 F3 78 */	mr r3, r30
/* 80A99114  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A99118  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A9911C  7D 89 03 A6 */	mtctr r12
/* 80A99120  4E 80 04 21 */	bctrl 
/* 80A99124  7C 67 1B 78 */	mr r7, r3
/* 80A99128  39 5F 00 00 */	addi r10, r31, 0
/* 80A9912C  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80A99130  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A99134  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80A99138  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A9913C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A99140  7F C4 F3 78 */	mr r4, r30
/* 80A99144  7F 65 DB 78 */	mr r5, r27
/* 80A99148  38 C1 00 28 */	addi r6, r1, 0x28
/* 80A9914C  7F A8 EB 78 */	mr r8, r29
/* 80A99150  7F 89 E3 78 */	mr r9, r28
/* 80A99154  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80A99158  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80A9915C  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 80A99160  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80A99164  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80A99168  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80A9916C  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80A99170  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80A99174  39 40 00 00 */	li r10, 0
/* 80A99178  4B 6A DB 61 */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
lbl_80A9917C:
/* 80A9917C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A99180  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80A99184  C0 5F 00 B0 */	lfs f2, 0xb0(r31)
/* 80A99188  FC 60 F8 90 */	fmr f3, f31
/* 80A9918C  4B 6A EA AD */	bl calcJntRad__15daNpcT_JntAnm_cFfff
/* 80A99190  7F C3 F3 78 */	mr r3, r30
/* 80A99194  4B 6A FF FD */	bl setMtx__8daNpcT_cFv
/* 80A99198  7F C3 F3 78 */	mr r3, r30
/* 80A9919C  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80A991A0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A991A4  7D 89 03 A6 */	mtctr r12
/* 80A991A8  4E 80 04 21 */	bctrl 
/* 80A991AC  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80A991B0  80 84 00 04 */	lwz r4, 4(r4)
/* 80A991B4  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80A991B8  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80A991BC  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80A991C0  7C 64 02 14 */	add r3, r4, r0
/* 80A991C4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A991C8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A991CC  4B 8A D2 E5 */	bl PSMTXCopy
/* 80A991D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A991D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A991D8  38 81 00 28 */	addi r4, r1, 0x28
/* 80A991DC  38 BE 05 38 */	addi r5, r30, 0x538
/* 80A991E0  4B 8A DB 8D */	bl PSMTXMultVec
/* 80A991E4  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80A991E8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A991EC  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80A991F0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A991F4  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80A991F8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A991FC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A99200  38 81 00 1C */	addi r4, r1, 0x1c
/* 80A99204  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80A99208  38 A0 00 00 */	li r5, 0
/* 80A9920C  48 00 21 31 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80A99210  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80A99214  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A99218  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80A9921C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A99220  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80A99224  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A99228  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A9922C  38 81 00 10 */	addi r4, r1, 0x10
/* 80A99230  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80A99234  38 C0 00 00 */	li r6, 0
/* 80A99238  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80A9923C  38 E0 00 00 */	li r7, 0
/* 80A99240  48 00 1F E1 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80A99244  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A99248  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80A9924C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A99250  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80A99254  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A99258  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80A9925C  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 80A99260  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A99264  EC 01 00 2A */	fadds f0, f1, f0
/* 80A99268  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80A9926C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80A99270  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80A99274  39 61 00 60 */	addi r11, r1, 0x60
/* 80A99278  4B 8C 8F A9 */	bl _restgpr_27
/* 80A9927C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80A99280  7C 08 03 A6 */	mtlr r0
/* 80A99284  38 21 00 70 */	addi r1, r1, 0x70
/* 80A99288  4E 80 00 20 */	blr 
