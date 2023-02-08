lbl_80B28318:
/* 80B28318  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B2831C  7C 08 02 A6 */	mflr r0
/* 80B28320  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B28324  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80B28328  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80B2832C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80B28330  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80B28334  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B28338  7C 7F 1B 78 */	mr r31, r3
/* 80B2833C  3C 60 80 B3 */	lis r3, m__17daNpc_Uri_Param_c@ha /* 0x80B2CE14@ha */
/* 80B28340  38 83 CE 14 */	addi r4, r3, m__17daNpc_Uri_Param_c@l /* 0x80B2CE14@l */
/* 80B28344  88 1F 0E 25 */	lbz r0, 0xe25(r31)
/* 80B28348  28 00 00 00 */	cmplwi r0, 0
/* 80B2834C  40 82 01 3C */	bne lbl_80B28488
/* 80B28350  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80B28354  38 63 FD FF */	addi r3, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80B28358  38 A0 00 1F */	li r5, 0x1f
/* 80B2835C  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B28360  28 00 00 00 */	cmplwi r0, 0
/* 80B28364  41 82 00 10 */	beq lbl_80B28374
/* 80B28368  38 60 00 00 */	li r3, 0
/* 80B2836C  38 A0 00 00 */	li r5, 0
/* 80B28370  48 00 00 18 */	b lbl_80B28388
lbl_80B28374:
/* 80B28374  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B28378  2C 00 00 00 */	cmpwi r0, 0
/* 80B2837C  41 82 00 0C */	beq lbl_80B28388
/* 80B28380  38 60 00 00 */	li r3, 0
/* 80B28384  38 A0 00 00 */	li r5, 0
lbl_80B28388:
/* 80B28388  38 00 00 79 */	li r0, 0x79
/* 80B2838C  90 1F 0E 74 */	stw r0, 0xe74(r31)
/* 80B28390  90 7F 0E 70 */	stw r3, 0xe70(r31)
/* 80B28394  90 BF 0E 60 */	stw r5, 0xe60(r31)
/* 80B28398  80 1F 0E E4 */	lwz r0, 0xee4(r31)
/* 80B2839C  60 00 00 04 */	ori r0, r0, 4
/* 80B283A0  90 1F 0E E4 */	stw r0, 0xee4(r31)
/* 80B283A4  C0 24 00 D8 */	lfs f1, 0xd8(r4)
/* 80B283A8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B283AC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B283B0  C0 04 00 F8 */	lfs f0, 0xf8(r4)
/* 80B283B4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B283B8  C0 5F 0D EC */	lfs f2, 0xdec(r31)
/* 80B283BC  FF E0 10 90 */	fmr f31, f2
/* 80B283C0  C3 DF 0D F0 */	lfs f30, 0xdf0(r31)
/* 80B283C4  88 1F 10 0D */	lbz r0, 0x100d(r31)
/* 80B283C8  28 00 00 00 */	cmplwi r0, 0
/* 80B283CC  41 82 00 50 */	beq lbl_80B2841C
/* 80B283D0  88 1F 0F 84 */	lbz r0, 0xf84(r31)
/* 80B283D4  2C 00 00 04 */	cmpwi r0, 4
/* 80B283D8  41 82 00 30 */	beq lbl_80B28408
/* 80B283DC  40 80 00 40 */	bge lbl_80B2841C
/* 80B283E0  2C 00 00 01 */	cmpwi r0, 1
/* 80B283E4  41 82 00 0C */	beq lbl_80B283F0
/* 80B283E8  48 00 00 34 */	b lbl_80B2841C
/* 80B283EC  48 00 00 30 */	b lbl_80B2841C
lbl_80B283F0:
/* 80B283F0  EF E2 00 28 */	fsubs f31, f2, f0
/* 80B283F4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B283F8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B283FC  C0 04 01 00 */	lfs f0, 0x100(r4)
/* 80B28400  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B28404  48 00 00 18 */	b lbl_80B2841C
lbl_80B28408:
/* 80B28408  C0 04 01 04 */	lfs f0, 0x104(r4)
/* 80B2840C  EF E2 00 28 */	fsubs f31, f2, f0
/* 80B28410  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B28414  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B28418  D0 21 00 10 */	stfs f1, 0x10(r1)
lbl_80B2841C:
/* 80B2841C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B28420  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B28424  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80B28428  4B 4E 3F B5 */	bl mDoMtx_YrotS__FPA4_fs
/* 80B2842C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B28430  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B28434  38 81 00 08 */	addi r4, r1, 8
/* 80B28438  7C 85 23 78 */	mr r5, r4
/* 80B2843C  4B 81 E9 31 */	bl PSMTXMultVec
/* 80B28440  38 61 00 08 */	addi r3, r1, 8
/* 80B28444  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80B28448  7C 65 1B 78 */	mr r5, r3
/* 80B2844C  4B 81 EC 45 */	bl PSVECAdd
/* 80B28450  38 7F 0F 6C */	addi r3, r31, 0xf6c
/* 80B28454  FC 20 F8 90 */	fmr f1, f31
/* 80B28458  4B 74 6D A1 */	bl SetH__8cM3dGCylFf
/* 80B2845C  38 7F 0F 6C */	addi r3, r31, 0xf6c
/* 80B28460  FC 20 F0 90 */	fmr f1, f30
/* 80B28464  4B 74 6D 9D */	bl SetR__8cM3dGCylFf
/* 80B28468  38 7F 0F 6C */	addi r3, r31, 0xf6c
/* 80B2846C  38 81 00 08 */	addi r4, r1, 8
/* 80B28470  4B 74 6D 6D */	bl SetC__8cM3dGCylFRC4cXyz
/* 80B28474  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B28478  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B2847C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80B28480  38 9F 0E 48 */	addi r4, r31, 0xe48
/* 80B28484  4B 73 C7 25 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80B28488:
/* 80B28488  38 7F 0E 48 */	addi r3, r31, 0xe48
/* 80B2848C  81 9F 0E 84 */	lwz r12, 0xe84(r31)
/* 80B28490  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80B28494  7D 89 03 A6 */	mtctr r12
/* 80B28498  4E 80 04 21 */	bctrl 
/* 80B2849C  38 7F 0E 48 */	addi r3, r31, 0xe48
/* 80B284A0  81 9F 0E 84 */	lwz r12, 0xe84(r31)
/* 80B284A4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B284A8  7D 89 03 A6 */	mtctr r12
/* 80B284AC  4E 80 04 21 */	bctrl 
/* 80B284B0  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80B284B4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80B284B8  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80B284BC  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80B284C0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B284C4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B284C8  7C 08 03 A6 */	mtlr r0
/* 80B284CC  38 21 00 40 */	addi r1, r1, 0x40
/* 80B284D0  4E 80 00 20 */	blr 
