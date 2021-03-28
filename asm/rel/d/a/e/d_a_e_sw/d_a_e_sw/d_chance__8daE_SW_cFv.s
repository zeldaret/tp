lbl_807AE4B4:
/* 807AE4B4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 807AE4B8  7C 08 02 A6 */	mflr r0
/* 807AE4BC  90 01 00 74 */	stw r0, 0x74(r1)
/* 807AE4C0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 807AE4C4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 807AE4C8  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 807AE4CC  93 C1 00 58 */	stw r30, 0x58(r1)
/* 807AE4D0  7C 7E 1B 78 */	mr r30, r3
/* 807AE4D4  3C 80 80 7B */	lis r4, lit_3909@ha
/* 807AE4D8  3B E4 FD 2C */	addi r31, r4, lit_3909@l
/* 807AE4DC  A8 03 06 80 */	lha r0, 0x680(r3)
/* 807AE4E0  2C 00 00 01 */	cmpwi r0, 1
/* 807AE4E4  41 82 00 D4 */	beq lbl_807AE5B8
/* 807AE4E8  40 80 00 10 */	bge lbl_807AE4F8
/* 807AE4EC  2C 00 00 00 */	cmpwi r0, 0
/* 807AE4F0  40 80 00 14 */	bge lbl_807AE504
/* 807AE4F4  48 00 02 E0 */	b lbl_807AE7D4
lbl_807AE4F8:
/* 807AE4F8  2C 00 00 03 */	cmpwi r0, 3
/* 807AE4FC  40 80 02 D8 */	bge lbl_807AE7D4
/* 807AE500  48 00 01 00 */	b lbl_807AE600
lbl_807AE504:
/* 807AE504  38 00 00 01 */	li r0, 1
/* 807AE508  98 1E 0B 14 */	stb r0, 0xb14(r30)
/* 807AE50C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807AE510  D0 1E 06 D8 */	stfs f0, 0x6d8(r30)
/* 807AE514  80 1E 09 A4 */	lwz r0, 0x9a4(r30)
/* 807AE518  60 00 00 01 */	ori r0, r0, 1
/* 807AE51C  90 1E 09 A4 */	stw r0, 0x9a4(r30)
/* 807AE520  3C 80 D8 FC */	lis r4, 0xD8FC /* 0xD8FBFDFF@ha */
/* 807AE524  38 04 FD FF */	addi r0, r4, 0xFDFF /* 0xD8FBFDFF@l */
/* 807AE528  90 1E 09 B4 */	stw r0, 0x9b4(r30)
/* 807AE52C  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 807AE530  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 807AE534  A8 9E 06 80 */	lha r4, 0x680(r30)
/* 807AE538  38 04 00 01 */	addi r0, r4, 1
/* 807AE53C  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807AE540  38 80 00 08 */	li r4, 8
/* 807AE544  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 807AE548  38 A0 00 02 */	li r5, 2
/* 807AE54C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807AE550  4B FF 8F 11 */	bl bckSet__8daE_SW_cFifUcf
/* 807AE554  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807AE558  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807AE55C  3C 60 80 7B */	lis r3, lit_6858@ha
/* 807AE560  38 83 00 E4 */	addi r4, r3, lit_6858@l
/* 807AE564  80 64 00 00 */	lwz r3, 0(r4)
/* 807AE568  80 04 00 04 */	lwz r0, 4(r4)
/* 807AE56C  90 61 00 34 */	stw r3, 0x34(r1)
/* 807AE570  90 01 00 38 */	stw r0, 0x38(r1)
/* 807AE574  80 04 00 08 */	lwz r0, 8(r4)
/* 807AE578  90 01 00 3C */	stw r0, 0x3c(r1)
/* 807AE57C  38 7E 0B 08 */	addi r3, r30, 0xb08
/* 807AE580  38 81 00 34 */	addi r4, r1, 0x34
/* 807AE584  4B BB 3A C4 */	b __ptmf_cmpr
/* 807AE588  2C 03 00 00 */	cmpwi r3, 0
/* 807AE58C  40 82 00 10 */	bne lbl_807AE59C
/* 807AE590  38 00 00 C8 */	li r0, 0xc8
/* 807AE594  B0 1E 06 EA */	sth r0, 0x6ea(r30)
/* 807AE598  48 00 00 0C */	b lbl_807AE5A4
lbl_807AE59C:
/* 807AE59C  38 00 00 64 */	li r0, 0x64
/* 807AE5A0  B0 1E 06 EA */	sth r0, 0x6ea(r30)
lbl_807AE5A4:
/* 807AE5A4  38 00 00 0A */	li r0, 0xa
/* 807AE5A8  B0 1E 06 F2 */	sth r0, 0x6f2(r30)
/* 807AE5AC  38 00 00 00 */	li r0, 0
/* 807AE5B0  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 807AE5B4  48 00 02 20 */	b lbl_807AE7D4
lbl_807AE5B8:
/* 807AE5B8  80 1E 07 A4 */	lwz r0, 0x7a4(r30)
/* 807AE5BC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807AE5C0  41 82 02 14 */	beq lbl_807AE7D4
/* 807AE5C4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007035C@ha */
/* 807AE5C8  38 03 03 5C */	addi r0, r3, 0x035C /* 0x0007035C@l */
/* 807AE5CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 807AE5D0  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807AE5D4  38 81 00 24 */	addi r4, r1, 0x24
/* 807AE5D8  88 BE 06 E9 */	lbz r5, 0x6e9(r30)
/* 807AE5DC  38 C0 FF FF */	li r6, -1
/* 807AE5E0  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 807AE5E4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807AE5E8  7D 89 03 A6 */	mtctr r12
/* 807AE5EC  4E 80 04 21 */	bctrl 
/* 807AE5F0  A8 7E 06 80 */	lha r3, 0x680(r30)
/* 807AE5F4  38 03 00 01 */	addi r0, r3, 1
/* 807AE5F8  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807AE5FC  48 00 01 D8 */	b lbl_807AE7D4
lbl_807AE600:
/* 807AE600  A8 1E 06 BC */	lha r0, 0x6bc(r30)
/* 807AE604  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807AE608  41 82 00 6C */	beq lbl_807AE674
/* 807AE60C  80 1E 07 A4 */	lwz r0, 0x7a4(r30)
/* 807AE610  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807AE614  41 82 00 60 */	beq lbl_807AE674
/* 807AE618  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807AE61C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807AE620  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 807AE624  38 00 00 FF */	li r0, 0xff
/* 807AE628  90 01 00 08 */	stw r0, 8(r1)
/* 807AE62C  38 80 00 00 */	li r4, 0
/* 807AE630  90 81 00 0C */	stw r4, 0xc(r1)
/* 807AE634  38 00 FF FF */	li r0, -1
/* 807AE638  90 01 00 10 */	stw r0, 0x10(r1)
/* 807AE63C  90 81 00 14 */	stw r4, 0x14(r1)
/* 807AE640  90 81 00 18 */	stw r4, 0x18(r1)
/* 807AE644  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807AE648  80 9E 0A E8 */	lwz r4, 0xae8(r30)
/* 807AE64C  38 A0 00 00 */	li r5, 0
/* 807AE650  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008378@ha */
/* 807AE654  38 C6 83 78 */	addi r6, r6, 0x8378 /* 0x00008378@l */
/* 807AE658  38 FE 06 74 */	addi r7, r30, 0x674
/* 807AE65C  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807AE660  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 807AE664  39 40 00 00 */	li r10, 0
/* 807AE668  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807AE66C  4B 89 EE 60 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807AE670  90 7E 0A E8 */	stw r3, 0xae8(r30)
lbl_807AE674:
/* 807AE674  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807AE678  38 63 00 0C */	addi r3, r3, 0xc
/* 807AE67C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807AE680  4B B7 9D AC */	b checkPass__12J3DFrameCtrlFf
/* 807AE684  2C 03 00 00 */	cmpwi r3, 0
/* 807AE688  40 82 00 1C */	bne lbl_807AE6A4
/* 807AE68C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807AE690  38 63 00 0C */	addi r3, r3, 0xc
/* 807AE694  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 807AE698  4B B7 9D 94 */	b checkPass__12J3DFrameCtrlFf
/* 807AE69C  2C 03 00 00 */	cmpwi r3, 0
/* 807AE6A0  41 82 00 30 */	beq lbl_807AE6D0
lbl_807AE6A4:
/* 807AE6A4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007035C@ha */
/* 807AE6A8  38 03 03 5C */	addi r0, r3, 0x035C /* 0x0007035C@l */
/* 807AE6AC  90 01 00 20 */	stw r0, 0x20(r1)
/* 807AE6B0  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807AE6B4  38 81 00 20 */	addi r4, r1, 0x20
/* 807AE6B8  88 BE 06 E9 */	lbz r5, 0x6e9(r30)
/* 807AE6BC  38 C0 FF FF */	li r6, -1
/* 807AE6C0  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 807AE6C4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807AE6C8  7D 89 03 A6 */	mtctr r12
/* 807AE6CC  4E 80 04 21 */	bctrl 
lbl_807AE6D0:
/* 807AE6D0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807AE6D4  38 63 00 0C */	addi r3, r3, 0xc
/* 807AE6D8  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 807AE6DC  4B B7 9D 50 */	b checkPass__12J3DFrameCtrlFf
/* 807AE6E0  2C 03 00 00 */	cmpwi r3, 0
/* 807AE6E4  41 82 00 80 */	beq lbl_807AE764
/* 807AE6E8  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 807AE6EC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807AE6F0  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 807AE6F4  4B AB 92 98 */	b cM_rndFX__Ff
/* 807AE6F8  FC 00 08 1E */	fctiwz f0, f1
/* 807AE6FC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 807AE700  80 61 00 44 */	lwz r3, 0x44(r1)
/* 807AE704  A8 1E 06 BC */	lha r0, 0x6bc(r30)
/* 807AE708  2C 00 00 03 */	cmpwi r0, 3
/* 807AE70C  41 82 00 4C */	beq lbl_807AE758
/* 807AE710  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 807AE714  4B AB 92 78 */	b cM_rndFX__Ff
/* 807AE718  FF E0 08 90 */	fmr f31, f1
/* 807AE71C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807AE720  38 9E 06 5C */	addi r4, r30, 0x65c
/* 807AE724  4B AC 24 E0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 807AE728  7C 60 07 34 */	extsh r0, r3
/* 807AE72C  C8 3F 00 E8 */	lfd f1, 0xe8(r31)
/* 807AE730  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807AE734  90 01 00 4C */	stw r0, 0x4c(r1)
/* 807AE738  3C 00 43 30 */	lis r0, 0x4330
/* 807AE73C  90 01 00 48 */	stw r0, 0x48(r1)
/* 807AE740  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 807AE744  EC 00 08 28 */	fsubs f0, f0, f1
/* 807AE748  EC 00 F8 2A */	fadds f0, f0, f31
/* 807AE74C  FC 00 00 1E */	fctiwz f0, f0
/* 807AE750  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 807AE754  80 61 00 54 */	lwz r3, 0x54(r1)
lbl_807AE758:
/* 807AE758  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 807AE75C  B0 7E 04 E6 */	sth r3, 0x4e6(r30)
/* 807AE760  48 00 00 24 */	b lbl_807AE784
lbl_807AE764:
/* 807AE764  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807AE768  38 63 00 0C */	addi r3, r3, 0xc
/* 807AE76C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807AE770  4B B7 9C BC */	b checkPass__12J3DFrameCtrlFf
/* 807AE774  2C 03 00 00 */	cmpwi r3, 0
/* 807AE778  41 82 00 0C */	beq lbl_807AE784
/* 807AE77C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807AE780  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_807AE784:
/* 807AE784  A8 1E 06 EA */	lha r0, 0x6ea(r30)
/* 807AE788  2C 00 00 00 */	cmpwi r0, 0
/* 807AE78C  40 82 00 48 */	bne lbl_807AE7D4
/* 807AE790  80 1E 07 A4 */	lwz r0, 0x7a4(r30)
/* 807AE794  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807AE798  41 82 00 3C */	beq lbl_807AE7D4
/* 807AE79C  A8 1E 06 BC */	lha r0, 0x6bc(r30)
/* 807AE7A0  2C 00 00 03 */	cmpwi r0, 3
/* 807AE7A4  40 82 00 30 */	bne lbl_807AE7D4
/* 807AE7A8  3C 60 80 7B */	lis r3, lit_6887@ha
/* 807AE7AC  38 83 00 F0 */	addi r4, r3, lit_6887@l
/* 807AE7B0  80 64 00 00 */	lwz r3, 0(r4)
/* 807AE7B4  80 04 00 04 */	lwz r0, 4(r4)
/* 807AE7B8  90 61 00 28 */	stw r3, 0x28(r1)
/* 807AE7BC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 807AE7C0  80 04 00 08 */	lwz r0, 8(r4)
/* 807AE7C4  90 01 00 30 */	stw r0, 0x30(r1)
/* 807AE7C8  7F C3 F3 78 */	mr r3, r30
/* 807AE7CC  38 81 00 28 */	addi r4, r1, 0x28
/* 807AE7D0  4B FF E2 71 */	bl d_setAction__8daE_SW_cFM8daE_SW_cFPCvPv_v
lbl_807AE7D4:
/* 807AE7D4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 807AE7D8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 807AE7DC  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 807AE7E0  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 807AE7E4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 807AE7E8  7C 08 03 A6 */	mtlr r0
/* 807AE7EC  38 21 00 70 */	addi r1, r1, 0x70
/* 807AE7F0  4E 80 00 20 */	blr 
