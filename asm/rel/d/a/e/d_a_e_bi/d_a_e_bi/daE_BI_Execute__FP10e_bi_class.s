lbl_8068C3C8:
/* 8068C3C8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8068C3CC  7C 08 02 A6 */	mflr r0
/* 8068C3D0  90 01 00 64 */	stw r0, 0x64(r1)
/* 8068C3D4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8068C3D8  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8068C3DC  39 61 00 50 */	addi r11, r1, 0x50
/* 8068C3E0  4B CD 5D F9 */	bl _savegpr_28
/* 8068C3E4  7C 7F 1B 78 */	mr r31, r3
/* 8068C3E8  3C 80 80 69 */	lis r4, lit_3903@ha /* 0x8068D7EC@ha */
/* 8068C3EC  3B C4 D7 EC */	addi r30, r4, lit_3903@l /* 0x8068D7EC@l */
/* 8068C3F0  88 03 05 B4 */	lbz r0, 0x5b4(r3)
/* 8068C3F4  28 00 00 35 */	cmplwi r0, 0x35
/* 8068C3F8  40 82 00 0C */	bne lbl_8068C404
/* 8068C3FC  38 60 00 01 */	li r3, 1
/* 8068C400  48 00 06 78 */	b lbl_8068CA78
lbl_8068C404:
/* 8068C404  88 1F 0B AD */	lbz r0, 0xbad(r31)
/* 8068C408  7C 00 07 75 */	extsb. r0, r0
/* 8068C40C  40 82 00 50 */	bne lbl_8068C45C
/* 8068C410  88 1F 05 B5 */	lbz r0, 0x5b5(r31)
/* 8068C414  28 00 00 01 */	cmplwi r0, 1
/* 8068C418  40 82 00 24 */	bne lbl_8068C43C
/* 8068C41C  88 9F 0B AC */	lbz r4, 0xbac(r31)
/* 8068C420  7C 80 07 75 */	extsb. r0, r4
/* 8068C424  40 82 00 0C */	bne lbl_8068C430
/* 8068C428  4B FF FD C1 */	bl ride_movebg_init__FP10e_bi_class
/* 8068C42C  48 00 00 30 */	b lbl_8068C45C
lbl_8068C430:
/* 8068C430  38 04 FF FF */	addi r0, r4, -1
/* 8068C434  98 1F 0B AC */	stb r0, 0xbac(r31)
/* 8068C438  48 00 00 24 */	b lbl_8068C45C
lbl_8068C43C:
/* 8068C43C  38 7F 09 CC */	addi r3, r31, 0x9cc
/* 8068C440  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8068C444  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8068C448  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8068C44C  4B 9E A6 61 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8068C450  88 7F 0B AD */	lbz r3, 0xbad(r31)
/* 8068C454  38 03 00 01 */	addi r0, r3, 1
/* 8068C458  98 1F 0B AD */	stb r0, 0xbad(r31)
lbl_8068C45C:
/* 8068C45C  88 1F 0B AD */	lbz r0, 0xbad(r31)
/* 8068C460  7C 00 07 75 */	extsb. r0, r0
/* 8068C464  40 82 00 0C */	bne lbl_8068C470
/* 8068C468  38 60 00 01 */	li r3, 1
/* 8068C46C  48 00 06 0C */	b lbl_8068CA78
lbl_8068C470:
/* 8068C470  A8 7F 06 6C */	lha r3, 0x66c(r31)
/* 8068C474  38 03 00 01 */	addi r0, r3, 1
/* 8068C478  B0 1F 06 6C */	sth r0, 0x66c(r31)
/* 8068C47C  38 60 00 00 */	li r3, 0
/* 8068C480  38 00 00 03 */	li r0, 3
/* 8068C484  7C 09 03 A6 */	mtctr r0
lbl_8068C488:
/* 8068C488  38 A3 06 8C */	addi r5, r3, 0x68c
/* 8068C48C  7C 9F 2A AE */	lhax r4, r31, r5
/* 8068C490  2C 04 00 00 */	cmpwi r4, 0
/* 8068C494  41 82 00 0C */	beq lbl_8068C4A0
/* 8068C498  38 04 FF FF */	addi r0, r4, -1
/* 8068C49C  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_8068C4A0:
/* 8068C4A0  38 63 00 02 */	addi r3, r3, 2
/* 8068C4A4  42 00 FF E4 */	bdnz lbl_8068C488
/* 8068C4A8  A8 7F 06 92 */	lha r3, 0x692(r31)
/* 8068C4AC  2C 03 00 00 */	cmpwi r3, 0
/* 8068C4B0  41 82 00 0C */	beq lbl_8068C4BC
/* 8068C4B4  38 03 FF FF */	addi r0, r3, -1
/* 8068C4B8  B0 1F 06 92 */	sth r0, 0x692(r31)
lbl_8068C4BC:
/* 8068C4BC  7F E3 FB 78 */	mr r3, r31
/* 8068C4C0  4B FF F6 21 */	bl action__FP10e_bi_class
/* 8068C4C4  88 1F 05 B5 */	lbz r0, 0x5b5(r31)
/* 8068C4C8  28 00 00 01 */	cmplwi r0, 1
/* 8068C4CC  40 82 01 10 */	bne lbl_8068C5DC
/* 8068C4D0  80 1F 0B A8 */	lwz r0, 0xba8(r31)
/* 8068C4D4  90 01 00 08 */	stw r0, 8(r1)
/* 8068C4D8  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8068C4DC  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8068C4E0  38 81 00 08 */	addi r4, r1, 8
/* 8068C4E4  4B 98 D3 15 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8068C4E8  7C 7D 1B 79 */	or. r29, r3, r3
/* 8068C4EC  41 82 01 9C */	beq lbl_8068C688
/* 8068C4F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8068C4F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8068C4F8  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 8068C4FC  C0 7D 05 88 */	lfs f3, 0x588(r29)
/* 8068C500  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 8068C504  C0 1D 05 94 */	lfs f0, 0x594(r29)
/* 8068C508  EC 02 00 2A */	fadds f0, f2, f0
/* 8068C50C  EC 43 00 2A */	fadds f2, f3, f0
/* 8068C510  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 8068C514  4B CB A3 D5 */	bl PSMTXTrans
/* 8068C518  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8068C51C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8068C520  A8 9D 05 A0 */	lha r4, 0x5a0(r29)
/* 8068C524  4B 97 FF 11 */	bl mDoMtx_YrotM__FPA4_fs
/* 8068C528  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8068C52C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8068C530  A8 9D 05 A2 */	lha r4, 0x5a2(r29)
/* 8068C534  4B 97 FE 69 */	bl mDoMtx_XrotM__FPA4_fs
/* 8068C538  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8068C53C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8068C540  A8 1D 05 A0 */	lha r0, 0x5a0(r29)
/* 8068C544  7C 00 00 D0 */	neg r0, r0
/* 8068C548  7C 04 07 34 */	extsh r4, r0
/* 8068C54C  4B 97 FE E9 */	bl mDoMtx_YrotM__FPA4_fs
/* 8068C550  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8068C554  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8068C558  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 8068C55C  4B 97 FE D9 */	bl mDoMtx_YrotM__FPA4_fs
/* 8068C560  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8068C564  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8068C568  A8 9D 04 E4 */	lha r4, 0x4e4(r29)
/* 8068C56C  A8 1D 05 A4 */	lha r0, 0x5a4(r29)
/* 8068C570  7C 04 02 14 */	add r0, r4, r0
/* 8068C574  7C 04 07 34 */	extsh r4, r0
/* 8068C578  4B 97 FE 25 */	bl mDoMtx_XrotM__FPA4_fs
/* 8068C57C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8068C580  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8068C584  A8 9D 04 E8 */	lha r4, 0x4e8(r29)
/* 8068C588  4B 97 FF 45 */	bl mDoMtx_ZrotM__FPA4_fs
/* 8068C58C  C0 3F 0B B0 */	lfs f1, 0xbb0(r31)
/* 8068C590  C0 5F 0B B4 */	lfs f2, 0xbb4(r31)
/* 8068C594  C0 7F 0B B8 */	lfs f3, 0xbb8(r31)
/* 8068C598  4B 98 08 05 */	bl transM__14mDoMtx_stack_cFfff
/* 8068C59C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8068C5A0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8068C5A4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8068C5A8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8068C5AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8068C5B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8068C5B4  38 81 00 2C */	addi r4, r1, 0x2c
/* 8068C5B8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8068C5BC  4B CB A7 B1 */	bl PSMTXMultVec
/* 8068C5C0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8068C5C4  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 8068C5C8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8068C5CC  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 8068C5D0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8068C5D4  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
/* 8068C5D8  48 00 00 B0 */	b lbl_8068C688
lbl_8068C5DC:
/* 8068C5DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8068C5E0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8068C5E4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8068C5E8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8068C5EC  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8068C5F0  4B CB A2 F9 */	bl PSMTXTrans
/* 8068C5F4  A8 1F 06 6E */	lha r0, 0x66e(r31)
/* 8068C5F8  2C 00 00 05 */	cmpwi r0, 5
/* 8068C5FC  40 82 00 5C */	bne lbl_8068C658
/* 8068C600  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8068C604  C0 5E 00 A8 */	lfs f2, 0xa8(r30)
/* 8068C608  FC 60 08 90 */	fmr f3, f1
/* 8068C60C  4B 98 07 91 */	bl transM__14mDoMtx_stack_cFfff
/* 8068C610  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8068C614  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8068C618  A8 9F 06 A6 */	lha r4, 0x6a6(r31)
/* 8068C61C  4B 97 FE 19 */	bl mDoMtx_YrotM__FPA4_fs
/* 8068C620  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8068C624  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8068C628  A8 9F 06 A2 */	lha r4, 0x6a2(r31)
/* 8068C62C  4B 97 FD 71 */	bl mDoMtx_XrotM__FPA4_fs
/* 8068C630  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8068C634  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8068C638  A8 1F 06 A6 */	lha r0, 0x6a6(r31)
/* 8068C63C  7C 00 00 D0 */	neg r0, r0
/* 8068C640  7C 04 07 34 */	extsh r4, r0
/* 8068C644  4B 97 FD F1 */	bl mDoMtx_YrotM__FPA4_fs
/* 8068C648  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8068C64C  C0 5E 00 AC */	lfs f2, 0xac(r30)
/* 8068C650  FC 60 08 90 */	fmr f3, f1
/* 8068C654  4B 98 07 49 */	bl transM__14mDoMtx_stack_cFfff
lbl_8068C658:
/* 8068C658  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8068C65C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8068C660  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8068C664  4B 97 FD D1 */	bl mDoMtx_YrotM__FPA4_fs
/* 8068C668  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8068C66C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8068C670  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 8068C674  4B 97 FD 29 */	bl mDoMtx_XrotM__FPA4_fs
/* 8068C678  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8068C67C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8068C680  A8 9F 04 E8 */	lha r4, 0x4e8(r31)
/* 8068C684  4B 97 FE 49 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_8068C688:
/* 8068C688  3C 60 80 69 */	lis r3, l_HIO@ha /* 0x8068DB2C@ha */
/* 8068C68C  38 63 DB 2C */	addi r3, r3, l_HIO@l /* 0x8068DB2C@l */
/* 8068C690  C0 23 00 08 */	lfs f1, 8(r3)
/* 8068C694  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 8068C698  EC 21 00 32 */	fmuls f1, f1, f0
/* 8068C69C  FC 40 08 90 */	fmr f2, f1
/* 8068C6A0  FC 60 08 90 */	fmr f3, f1
/* 8068C6A4  4B 98 07 95 */	bl scaleM__14mDoMtx_stack_cFfff
/* 8068C6A8  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8068C6AC  83 A3 00 04 */	lwz r29, 4(r3)
/* 8068C6B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8068C6B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8068C6B8  38 9D 00 24 */	addi r4, r29, 0x24
/* 8068C6BC  4B CB 9D F5 */	bl PSMTXCopy
/* 8068C6C0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8068C6C4  7C 03 07 74 */	extsb r3, r0
/* 8068C6C8  4B 9A 09 A5 */	bl dComIfGp_getReverb__Fi
/* 8068C6CC  7C 65 1B 78 */	mr r5, r3
/* 8068C6D0  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8068C6D4  38 80 00 00 */	li r4, 0
/* 8068C6D8  4B 98 49 D9 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 8068C6DC  80 1F 06 64 */	lwz r0, 0x664(r31)
/* 8068C6E0  2C 00 00 07 */	cmpwi r0, 7
/* 8068C6E4  40 82 00 60 */	bne lbl_8068C744
/* 8068C6E8  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8068C6EC  38 63 00 0C */	addi r3, r3, 0xc
/* 8068C6F0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8068C6F4  4B C9 BD 39 */	bl checkPass__12J3DFrameCtrlFf
/* 8068C6F8  2C 03 00 00 */	cmpwi r3, 0
/* 8068C6FC  40 82 00 1C */	bne lbl_8068C718
/* 8068C700  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8068C704  38 63 00 0C */	addi r3, r3, 0xc
/* 8068C708  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 8068C70C  4B C9 BD 21 */	bl checkPass__12J3DFrameCtrlFf
/* 8068C710  2C 03 00 00 */	cmpwi r3, 0
/* 8068C714  41 82 00 30 */	beq lbl_8068C744
lbl_8068C718:
/* 8068C718  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700EB@ha */
/* 8068C71C  38 03 00 EB */	addi r0, r3, 0x00EB /* 0x000700EB@l */
/* 8068C720  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8068C724  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 8068C728  38 81 00 1C */	addi r4, r1, 0x1c
/* 8068C72C  38 A0 00 00 */	li r5, 0
/* 8068C730  38 C0 FF FF */	li r6, -1
/* 8068C734  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 8068C738  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8068C73C  7D 89 03 A6 */	mtctr r12
/* 8068C740  4E 80 04 21 */	bctrl 
lbl_8068C744:
/* 8068C744  80 1F 06 64 */	lwz r0, 0x664(r31)
/* 8068C748  2C 00 00 08 */	cmpwi r0, 8
/* 8068C74C  41 82 00 0C */	beq lbl_8068C758
/* 8068C750  2C 00 00 0A */	cmpwi r0, 0xa
/* 8068C754  40 82 00 48 */	bne lbl_8068C79C
lbl_8068C758:
/* 8068C758  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8068C75C  38 63 00 0C */	addi r3, r3, 0xc
/* 8068C760  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 8068C764  4B C9 BC C9 */	bl checkPass__12J3DFrameCtrlFf
/* 8068C768  2C 03 00 00 */	cmpwi r3, 0
/* 8068C76C  41 82 00 30 */	beq lbl_8068C79C
/* 8068C770  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700EC@ha */
/* 8068C774  38 03 00 EC */	addi r0, r3, 0x00EC /* 0x000700EC@l */
/* 8068C778  90 01 00 18 */	stw r0, 0x18(r1)
/* 8068C77C  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 8068C780  38 81 00 18 */	addi r4, r1, 0x18
/* 8068C784  38 A0 00 00 */	li r5, 0
/* 8068C788  38 C0 FF FF */	li r6, -1
/* 8068C78C  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 8068C790  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8068C794  7D 89 03 A6 */	mtctr r12
/* 8068C798  4E 80 04 21 */	bctrl 
lbl_8068C79C:
/* 8068C79C  80 1F 06 64 */	lwz r0, 0x664(r31)
/* 8068C7A0  2C 00 00 04 */	cmpwi r0, 4
/* 8068C7A4  40 82 00 A4 */	bne lbl_8068C848
/* 8068C7A8  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8068C7AC  38 63 00 0C */	addi r3, r3, 0xc
/* 8068C7B0  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 8068C7B4  4B C9 BC 79 */	bl checkPass__12J3DFrameCtrlFf
/* 8068C7B8  2C 03 00 00 */	cmpwi r3, 0
/* 8068C7BC  41 82 00 30 */	beq lbl_8068C7EC
/* 8068C7C0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700ED@ha */
/* 8068C7C4  38 03 00 ED */	addi r0, r3, 0x00ED /* 0x000700ED@l */
/* 8068C7C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068C7CC  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 8068C7D0  38 81 00 14 */	addi r4, r1, 0x14
/* 8068C7D4  38 A0 00 00 */	li r5, 0
/* 8068C7D8  38 C0 FF FF */	li r6, -1
/* 8068C7DC  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 8068C7E0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8068C7E4  7D 89 03 A6 */	mtctr r12
/* 8068C7E8  4E 80 04 21 */	bctrl 
lbl_8068C7EC:
/* 8068C7EC  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8068C7F0  38 63 00 0C */	addi r3, r3, 0xc
/* 8068C7F4  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 8068C7F8  4B C9 BC 35 */	bl checkPass__12J3DFrameCtrlFf
/* 8068C7FC  2C 03 00 00 */	cmpwi r3, 0
/* 8068C800  40 82 00 1C */	bne lbl_8068C81C
/* 8068C804  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8068C808  38 63 00 0C */	addi r3, r3, 0xc
/* 8068C80C  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 8068C810  4B C9 BC 1D */	bl checkPass__12J3DFrameCtrlFf
/* 8068C814  2C 03 00 00 */	cmpwi r3, 0
/* 8068C818  41 82 00 30 */	beq lbl_8068C848
lbl_8068C81C:
/* 8068C81C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700EB@ha */
/* 8068C820  38 03 00 EB */	addi r0, r3, 0x00EB /* 0x000700EB@l */
/* 8068C824  90 01 00 10 */	stw r0, 0x10(r1)
/* 8068C828  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 8068C82C  38 81 00 10 */	addi r4, r1, 0x10
/* 8068C830  38 A0 00 00 */	li r5, 0
/* 8068C834  38 C0 FF FF */	li r6, -1
/* 8068C838  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 8068C83C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8068C840  7D 89 03 A6 */	mtctr r12
/* 8068C844  4E 80 04 21 */	bctrl 
lbl_8068C848:
/* 8068C848  80 1F 06 64 */	lwz r0, 0x664(r31)
/* 8068C84C  2C 00 00 05 */	cmpwi r0, 5
/* 8068C850  40 82 00 48 */	bne lbl_8068C898
/* 8068C854  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8068C858  38 63 00 0C */	addi r3, r3, 0xc
/* 8068C85C  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 8068C860  4B C9 BB CD */	bl checkPass__12J3DFrameCtrlFf
/* 8068C864  2C 03 00 00 */	cmpwi r3, 0
/* 8068C868  41 82 00 30 */	beq lbl_8068C898
/* 8068C86C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007022D@ha */
/* 8068C870  38 03 02 2D */	addi r0, r3, 0x022D /* 0x0007022D@l */
/* 8068C874  90 01 00 0C */	stw r0, 0xc(r1)
/* 8068C878  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 8068C87C  38 81 00 0C */	addi r4, r1, 0xc
/* 8068C880  38 A0 00 00 */	li r5, 0
/* 8068C884  38 C0 FF FF */	li r6, -1
/* 8068C888  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 8068C88C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8068C890  7D 89 03 A6 */	mtctr r12
/* 8068C894  4E 80 04 21 */	bctrl 
lbl_8068C898:
/* 8068C898  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8068C89C  4B 98 49 51 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 8068C8A0  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 8068C8A4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8068C8A8  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8068C8AC  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8068C8B0  80 84 00 00 */	lwz r4, 0(r4)
/* 8068C8B4  4B CB 9B FD */	bl PSMTXCopy
/* 8068C8B8  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 8068C8BC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8068C8C0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8068C8C4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8068C8C8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8068C8CC  38 61 00 2C */	addi r3, r1, 0x2c
/* 8068C8D0  38 9F 05 38 */	addi r4, r31, 0x538
/* 8068C8D4  4B BE 46 19 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8068C8D8  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 8068C8DC  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 8068C8E0  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 8068C8E4  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 8068C8E8  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 8068C8EC  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 8068C8F0  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 8068C8F4  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 8068C8F8  EC 01 00 2A */	fadds f0, f1, f0
/* 8068C8FC  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 8068C900  C3 FE 00 04 */	lfs f31, 4(r30)
/* 8068C904  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8068C908  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8068C90C  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8068C910  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 8068C914  41 82 00 08 */	beq lbl_8068C91C
/* 8068C918  C3 FE 00 00 */	lfs f31, 0(r30)
lbl_8068C91C:
/* 8068C91C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8068C920  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8068C924  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8068C928  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8068C92C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8068C930  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8068C934  A8 1F 06 92 */	lha r0, 0x692(r31)
/* 8068C938  2C 00 00 00 */	cmpwi r0, 0
/* 8068C93C  41 82 00 10 */	beq lbl_8068C94C
/* 8068C940  C0 1E 00 CC */	lfs f0, 0xcc(r30)
/* 8068C944  EC 01 00 2A */	fadds f0, f1, f0
/* 8068C948  D0 01 00 20 */	stfs f0, 0x20(r1)
lbl_8068C94C:
/* 8068C94C  38 7F 08 14 */	addi r3, r31, 0x814
/* 8068C950  38 81 00 20 */	addi r4, r1, 0x20
/* 8068C954  4B BE 28 89 */	bl SetC__8cM3dGCylFRC4cXyz
/* 8068C958  38 7F 08 14 */	addi r3, r31, 0x814
/* 8068C95C  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 8068C960  EC 20 F8 2A */	fadds f1, f0, f31
/* 8068C964  4B BE 28 9D */	bl SetR__8cM3dGCylFf
/* 8068C968  A8 1F 06 6E */	lha r0, 0x66e(r31)
/* 8068C96C  2C 00 00 02 */	cmpwi r0, 2
/* 8068C970  40 82 00 14 */	bne lbl_8068C984
/* 8068C974  38 7F 08 14 */	addi r3, r31, 0x814
/* 8068C978  C0 3E 00 D4 */	lfs f1, 0xd4(r30)
/* 8068C97C  4B BE 28 7D */	bl SetH__8cM3dGCylFf
/* 8068C980  48 00 00 48 */	b lbl_8068C9C8
lbl_8068C984:
/* 8068C984  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8068C988  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8068C98C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8068C990  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8068C994  38 61 00 2C */	addi r3, r1, 0x2c
/* 8068C998  38 81 00 20 */	addi r4, r1, 0x20
/* 8068C99C  4B BE 45 51 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8068C9A0  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8068C9A4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8068C9A8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8068C9AC  FC 00 02 10 */	fabs f0, f0
/* 8068C9B0  FC 20 00 18 */	frsp f1, f0
/* 8068C9B4  38 7F 08 14 */	addi r3, r31, 0x814
/* 8068C9B8  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 8068C9BC  EC 00 08 2A */	fadds f0, f0, f1
/* 8068C9C0  EC 20 F8 2A */	fadds f1, f0, f31
/* 8068C9C4  4B BE 28 35 */	bl SetH__8cM3dGCylFf
lbl_8068C9C8:
/* 8068C9C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8068C9CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8068C9D0  3B 83 23 3C */	addi r28, r3, 0x233c
/* 8068C9D4  7F 83 E3 78 */	mr r3, r28
/* 8068C9D8  38 9F 06 F0 */	addi r4, r31, 0x6f0
/* 8068C9DC  4B BD 81 CD */	bl Set__4cCcSFP8cCcD_Obj
/* 8068C9E0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8068C9E4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8068C9E8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8068C9EC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8068C9F0  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 8068C9F4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8068C9F8  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 8068C9FC  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8068CA00  80 84 00 00 */	lwz r4, 0(r4)
/* 8068CA04  4B CB 9A AD */	bl PSMTXCopy
/* 8068CA08  38 61 00 2C */	addi r3, r1, 0x2c
/* 8068CA0C  38 81 00 20 */	addi r4, r1, 0x20
/* 8068CA10  4B BE 44 DD */	bl MtxPosition__FP4cXyzP4cXyz
/* 8068CA14  88 1F 09 88 */	lbz r0, 0x988(r31)
/* 8068CA18  28 00 00 00 */	cmplwi r0, 0
/* 8068CA1C  40 82 00 18 */	bne lbl_8068CA34
/* 8068CA20  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8068CA24  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 8068CA28  EC 01 00 2A */	fadds f0, f1, f0
/* 8068CA2C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8068CA30  48 00 00 0C */	b lbl_8068CA3C
lbl_8068CA34:
/* 8068CA34  38 00 00 00 */	li r0, 0
/* 8068CA38  98 1F 09 88 */	stb r0, 0x988(r31)
lbl_8068CA3C:
/* 8068CA3C  38 7F 09 50 */	addi r3, r31, 0x950
/* 8068CA40  38 81 00 20 */	addi r4, r1, 0x20
/* 8068CA44  4B BE 2C 05 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8068CA48  38 7F 09 50 */	addi r3, r31, 0x950
/* 8068CA4C  C0 3E 00 E0 */	lfs f1, 0xe0(r30)
/* 8068CA50  4B BE 2C B9 */	bl SetR__8cM3dGSphFf
/* 8068CA54  7F 83 E3 78 */	mr r3, r28
/* 8068CA58  38 9F 08 2C */	addi r4, r31, 0x82c
/* 8068CA5C  4B BD 81 4D */	bl Set__4cCcSFP8cCcD_Obj
/* 8068CA60  88 1F 06 B0 */	lbz r0, 0x6b0(r31)
/* 8068CA64  7C 00 07 75 */	extsb. r0, r0
/* 8068CA68  41 82 00 0C */	beq lbl_8068CA74
/* 8068CA6C  7F E3 FB 78 */	mr r3, r31
/* 8068CA70  4B 98 D2 0D */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_8068CA74:
/* 8068CA74  38 60 00 01 */	li r3, 1
lbl_8068CA78:
/* 8068CA78  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8068CA7C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8068CA80  39 61 00 50 */	addi r11, r1, 0x50
/* 8068CA84  4B CD 57 A1 */	bl _restgpr_28
/* 8068CA88  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8068CA8C  7C 08 03 A6 */	mtlr r0
/* 8068CA90  38 21 00 60 */	addi r1, r1, 0x60
/* 8068CA94  4E 80 00 20 */	blr 
