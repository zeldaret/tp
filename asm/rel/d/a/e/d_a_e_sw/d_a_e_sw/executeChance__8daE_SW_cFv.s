lbl_807AA44C:
/* 807AA44C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807AA450  7C 08 02 A6 */	mflr r0
/* 807AA454  90 01 00 54 */	stw r0, 0x54(r1)
/* 807AA458  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 807AA45C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 807AA460  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 807AA464  93 C1 00 38 */	stw r30, 0x38(r1)
/* 807AA468  7C 7E 1B 78 */	mr r30, r3
/* 807AA46C  3C 80 80 7B */	lis r4, lit_3909@ha /* 0x807AFD2C@ha */
/* 807AA470  3B E4 FD 2C */	addi r31, r4, lit_3909@l /* 0x807AFD2C@l */
/* 807AA474  A8 03 06 80 */	lha r0, 0x680(r3)
/* 807AA478  28 00 00 0A */	cmplwi r0, 0xa
/* 807AA47C  41 81 02 E8 */	bgt lbl_807AA764
/* 807AA480  3C 80 80 7B */	lis r4, lit_5270@ha /* 0x807AFF04@ha */
/* 807AA484  38 84 FF 04 */	addi r4, r4, lit_5270@l /* 0x807AFF04@l */
/* 807AA488  54 00 10 3A */	slwi r0, r0, 2
/* 807AA48C  7C 04 00 2E */	lwzx r0, r4, r0
/* 807AA490  7C 09 03 A6 */	mtctr r0
/* 807AA494  4E 80 04 20 */	bctr 
lbl_807AA498:
/* 807AA498  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 807AA49C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_807AA4A0:
/* 807AA4A0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807AA4A4  D0 1E 06 D8 */	stfs f0, 0x6d8(r30)
/* 807AA4A8  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 807AA4AC  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 807AA4B0  90 1E 09 B4 */	stw r0, 0x9b4(r30)
/* 807AA4B4  38 00 00 01 */	li r0, 1
/* 807AA4B8  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807AA4BC  7F C3 F3 78 */	mr r3, r30
/* 807AA4C0  38 80 00 08 */	li r4, 8
/* 807AA4C4  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 807AA4C8  38 A0 00 02 */	li r5, 2
/* 807AA4CC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807AA4D0  4B FF CF 91 */	bl bckSet__8daE_SW_cFifUcf
/* 807AA4D4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807AA4D8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807AA4DC  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 807AA4E0  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 807AA4E4  38 00 00 64 */	li r0, 0x64
/* 807AA4E8  B0 1E 06 EA */	sth r0, 0x6ea(r30)
/* 807AA4EC  38 00 00 0A */	li r0, 0xa
/* 807AA4F0  B0 1E 06 F2 */	sth r0, 0x6f2(r30)
/* 807AA4F4  38 00 00 00 */	li r0, 0
/* 807AA4F8  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 807AA4FC  48 00 02 68 */	b lbl_807AA764
lbl_807AA500:
/* 807AA500  80 1E 07 A4 */	lwz r0, 0x7a4(r30)
/* 807AA504  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807AA508  41 82 00 38 */	beq lbl_807AA540
/* 807AA50C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007035C@ha */
/* 807AA510  38 03 03 5C */	addi r0, r3, 0x035C /* 0x0007035C@l */
/* 807AA514  90 01 00 24 */	stw r0, 0x24(r1)
/* 807AA518  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807AA51C  38 81 00 24 */	addi r4, r1, 0x24
/* 807AA520  88 BE 06 E9 */	lbz r5, 0x6e9(r30)
/* 807AA524  38 C0 FF FF */	li r6, -1
/* 807AA528  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 807AA52C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807AA530  7D 89 03 A6 */	mtctr r12
/* 807AA534  4E 80 04 21 */	bctrl 
/* 807AA538  38 00 00 02 */	li r0, 2
/* 807AA53C  B0 1E 06 80 */	sth r0, 0x680(r30)
lbl_807AA540:
/* 807AA540  A8 1E 06 BC */	lha r0, 0x6bc(r30)
/* 807AA544  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807AA548  41 82 00 6C */	beq lbl_807AA5B4
/* 807AA54C  80 1E 07 A4 */	lwz r0, 0x7a4(r30)
/* 807AA550  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807AA554  41 82 00 60 */	beq lbl_807AA5B4
/* 807AA558  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807AA55C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807AA560  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 807AA564  38 00 00 FF */	li r0, 0xff
/* 807AA568  90 01 00 08 */	stw r0, 8(r1)
/* 807AA56C  38 80 00 00 */	li r4, 0
/* 807AA570  90 81 00 0C */	stw r4, 0xc(r1)
/* 807AA574  38 00 FF FF */	li r0, -1
/* 807AA578  90 01 00 10 */	stw r0, 0x10(r1)
/* 807AA57C  90 81 00 14 */	stw r4, 0x14(r1)
/* 807AA580  90 81 00 18 */	stw r4, 0x18(r1)
/* 807AA584  90 81 00 1C */	stw r4, 0x1c(r1)
/* 807AA588  80 9E 0A E8 */	lwz r4, 0xae8(r30)
/* 807AA58C  38 A0 00 00 */	li r5, 0
/* 807AA590  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008378@ha */
/* 807AA594  38 C6 83 78 */	addi r6, r6, 0x8378 /* 0x00008378@l */
/* 807AA598  38 FE 06 74 */	addi r7, r30, 0x674
/* 807AA59C  39 1E 01 0C */	addi r8, r30, 0x10c
/* 807AA5A0  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 807AA5A4  39 40 00 00 */	li r10, 0
/* 807AA5A8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807AA5AC  4B 8A 2F 21 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807AA5B0  90 7E 0A E8 */	stw r3, 0xae8(r30)
lbl_807AA5B4:
/* 807AA5B4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807AA5B8  38 63 00 0C */	addi r3, r3, 0xc
/* 807AA5BC  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807AA5C0  4B B7 DE 6D */	bl checkPass__12J3DFrameCtrlFf
/* 807AA5C4  2C 03 00 00 */	cmpwi r3, 0
/* 807AA5C8  40 82 00 1C */	bne lbl_807AA5E4
/* 807AA5CC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807AA5D0  38 63 00 0C */	addi r3, r3, 0xc
/* 807AA5D4  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 807AA5D8  4B B7 DE 55 */	bl checkPass__12J3DFrameCtrlFf
/* 807AA5DC  2C 03 00 00 */	cmpwi r3, 0
/* 807AA5E0  41 82 00 30 */	beq lbl_807AA610
lbl_807AA5E4:
/* 807AA5E4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007035C@ha */
/* 807AA5E8  38 03 03 5C */	addi r0, r3, 0x035C /* 0x0007035C@l */
/* 807AA5EC  90 01 00 20 */	stw r0, 0x20(r1)
/* 807AA5F0  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 807AA5F4  38 81 00 20 */	addi r4, r1, 0x20
/* 807AA5F8  88 BE 06 E9 */	lbz r5, 0x6e9(r30)
/* 807AA5FC  38 C0 FF FF */	li r6, -1
/* 807AA600  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 807AA604  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807AA608  7D 89 03 A6 */	mtctr r12
/* 807AA60C  4E 80 04 21 */	bctrl 
lbl_807AA610:
/* 807AA610  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807AA614  38 63 00 0C */	addi r3, r3, 0xc
/* 807AA618  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 807AA61C  4B B7 DE 11 */	bl checkPass__12J3DFrameCtrlFf
/* 807AA620  2C 03 00 00 */	cmpwi r3, 0
/* 807AA624  41 82 00 88 */	beq lbl_807AA6AC
/* 807AA628  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 807AA62C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807AA630  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 807AA634  4B AB D3 59 */	bl cM_rndFX__Ff
/* 807AA638  FC 00 08 1E */	fctiwz f0, f1
/* 807AA63C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 807AA640  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 807AA644  A8 1E 06 BC */	lha r0, 0x6bc(r30)
/* 807AA648  2C 00 00 03 */	cmpwi r0, 3
/* 807AA64C  41 82 00 54 */	beq lbl_807AA6A0
/* 807AA650  38 00 00 00 */	li r0, 0
/* 807AA654  B0 1E 06 EA */	sth r0, 0x6ea(r30)
/* 807AA658  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 807AA65C  4B AB D3 31 */	bl cM_rndFX__Ff
/* 807AA660  FF E0 08 90 */	fmr f31, f1
/* 807AA664  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807AA668  38 9E 06 5C */	addi r4, r30, 0x65c
/* 807AA66C  4B AC 65 99 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 807AA670  7C 60 07 34 */	extsh r0, r3
/* 807AA674  C8 3F 00 E8 */	lfd f1, 0xe8(r31)
/* 807AA678  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807AA67C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 807AA680  3C 00 43 30 */	lis r0, 0x4330
/* 807AA684  90 01 00 28 */	stw r0, 0x28(r1)
/* 807AA688  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 807AA68C  EC 00 08 28 */	fsubs f0, f0, f1
/* 807AA690  EC 00 F8 2A */	fadds f0, f0, f31
/* 807AA694  FC 00 00 1E */	fctiwz f0, f0
/* 807AA698  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 807AA69C  80 61 00 34 */	lwz r3, 0x34(r1)
lbl_807AA6A0:
/* 807AA6A0  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 807AA6A4  B0 7E 04 E6 */	sth r3, 0x4e6(r30)
/* 807AA6A8  48 00 00 24 */	b lbl_807AA6CC
lbl_807AA6AC:
/* 807AA6AC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807AA6B0  38 63 00 0C */	addi r3, r3, 0xc
/* 807AA6B4  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807AA6B8  4B B7 DD 75 */	bl checkPass__12J3DFrameCtrlFf
/* 807AA6BC  2C 03 00 00 */	cmpwi r3, 0
/* 807AA6C0  41 82 00 0C */	beq lbl_807AA6CC
/* 807AA6C4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807AA6C8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_807AA6CC:
/* 807AA6CC  A8 1E 06 EA */	lha r0, 0x6ea(r30)
/* 807AA6D0  2C 00 00 00 */	cmpwi r0, 0
/* 807AA6D4  40 82 00 90 */	bne lbl_807AA764
/* 807AA6D8  A8 1E 06 BC */	lha r0, 0x6bc(r30)
/* 807AA6DC  2C 00 00 03 */	cmpwi r0, 3
/* 807AA6E0  40 82 00 84 */	bne lbl_807AA764
/* 807AA6E4  80 1E 07 A4 */	lwz r0, 0x7a4(r30)
/* 807AA6E8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807AA6EC  41 82 00 78 */	beq lbl_807AA764
/* 807AA6F0  7F C3 F3 78 */	mr r3, r30
/* 807AA6F4  38 80 00 08 */	li r4, 8
/* 807AA6F8  38 A0 00 00 */	li r5, 0
/* 807AA6FC  4B FF D4 69 */	bl setActionMode__8daE_SW_cFss
/* 807AA700  48 00 00 64 */	b lbl_807AA764
lbl_807AA704:
/* 807AA704  3C 80 D8 FC */	lis r4, 0xD8FC /* 0xD8FBFDFF@ha */
/* 807AA708  38 04 FD FF */	addi r0, r4, 0xFDFF /* 0xD8FBFDFF@l */
/* 807AA70C  90 1E 09 B4 */	stw r0, 0x9b4(r30)
/* 807AA710  38 80 00 09 */	li r4, 9
/* 807AA714  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 807AA718  38 A0 00 02 */	li r5, 2
/* 807AA71C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807AA720  4B FF CD 41 */	bl bckSet__8daE_SW_cFifUcf
/* 807AA724  38 00 00 06 */	li r0, 6
/* 807AA728  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807AA72C  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 807AA730  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807AA734  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 807AA738  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807AA73C  A8 7E 0A D2 */	lha r3, 0xad2(r30)
/* 807AA740  3C 63 00 01 */	addis r3, r3, 1
/* 807AA744  38 03 80 00 */	addi r0, r3, -32768
/* 807AA748  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 807AA74C  48 00 00 18 */	b lbl_807AA764
lbl_807AA750:
/* 807AA750  80 1E 07 A4 */	lwz r0, 0x7a4(r30)
/* 807AA754  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807AA758  41 82 00 0C */	beq lbl_807AA764
/* 807AA75C  38 00 00 00 */	li r0, 0
/* 807AA760  B0 1E 06 80 */	sth r0, 0x680(r30)
lbl_807AA764:
/* 807AA764  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 807AA768  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 807AA76C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 807AA770  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 807AA774  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807AA778  7C 08 03 A6 */	mtlr r0
/* 807AA77C  38 21 00 50 */	addi r1, r1, 0x50
/* 807AA780  4E 80 00 20 */	blr 
