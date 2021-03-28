lbl_8052A464:
/* 8052A464  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8052A468  7C 08 02 A6 */	mflr r0
/* 8052A46C  90 01 00 54 */	stw r0, 0x54(r1)
/* 8052A470  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8052A474  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8052A478  39 61 00 40 */	addi r11, r1, 0x40
/* 8052A47C  4B E3 7D 60 */	b _savegpr_29
/* 8052A480  7C 7D 1B 78 */	mr r29, r3
/* 8052A484  3C 60 80 53 */	lis r3, lit_3679@ha
/* 8052A488  3B E3 61 68 */	addi r31, r3, lit_3679@l
/* 8052A48C  2C 04 00 00 */	cmpwi r4, 0
/* 8052A490  40 82 02 34 */	bne lbl_8052A6C4
/* 8052A494  3C 60 80 53 */	lis r3, s_lure_sub__FPvPv@ha
/* 8052A498  38 63 A2 78 */	addi r3, r3, s_lure_sub__FPvPv@l
/* 8052A49C  7F A4 EB 78 */	mr r4, r29
/* 8052A4A0  4B AF 6E 98 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8052A4A4  7C 7E 1B 79 */	or. r30, r3, r3
/* 8052A4A8  41 82 02 F0 */	beq lbl_8052A798
/* 8052A4AC  38 00 00 00 */	li r0, 0
/* 8052A4B0  3C 60 80 53 */	lis r3, s_fish_ct@ha
/* 8052A4B4  90 03 6B E8 */	stw r0, s_fish_ct@l(r3)
/* 8052A4B8  3C 60 80 53 */	lis r3, s_other_search_sub__FPvPv@ha
/* 8052A4BC  38 63 A3 EC */	addi r3, r3, s_other_search_sub__FPvPv@l
/* 8052A4C0  7F A4 EB 78 */	mr r4, r29
/* 8052A4C4  4B AF 6E 74 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8052A4C8  3C 60 80 53 */	lis r3, s_fish_ct@ha
/* 8052A4CC  38 63 6B E8 */	addi r3, r3, s_fish_ct@l
/* 8052A4D0  80 63 00 00 */	lwz r3, 0(r3)
/* 8052A4D4  2C 03 00 01 */	cmpwi r3, 1
/* 8052A4D8  41 81 02 C0 */	bgt lbl_8052A798
/* 8052A4DC  C3 FD 05 EC */	lfs f31, 0x5ec(r29)
/* 8052A4E0  88 9E 0F 80 */	lbz r4, 0xf80(r30)
/* 8052A4E4  2C 04 00 04 */	cmpwi r4, 4
/* 8052A4E8  40 82 00 0C */	bne lbl_8052A4F4
/* 8052A4EC  C3 FF 00 54 */	lfs f31, 0x54(r31)
/* 8052A4F0  48 00 00 34 */	b lbl_8052A524
lbl_8052A4F4:
/* 8052A4F4  88 1E 10 09 */	lbz r0, 0x1009(r30)
/* 8052A4F8  7C 00 07 75 */	extsb. r0, r0
/* 8052A4FC  41 82 00 0C */	beq lbl_8052A508
/* 8052A500  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8052A504  EF FF 00 32 */	fmuls f31, f31, f0
lbl_8052A508:
/* 8052A508  2C 03 00 00 */	cmpwi r3, 0
/* 8052A50C  40 81 00 18 */	ble lbl_8052A524
/* 8052A510  88 1D 06 34 */	lbz r0, 0x634(r29)
/* 8052A514  28 00 00 03 */	cmplwi r0, 3
/* 8052A518  41 82 00 0C */	beq lbl_8052A524
/* 8052A51C  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 8052A520  EF FF 00 32 */	fmuls f31, f31, f0
lbl_8052A524:
/* 8052A524  88 1D 0C 44 */	lbz r0, 0xc44(r29)
/* 8052A528  28 00 00 14 */	cmplwi r0, 0x14
/* 8052A52C  41 80 00 0C */	blt lbl_8052A538
/* 8052A530  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 8052A534  EF FF 00 32 */	fmuls f31, f31, f0
lbl_8052A538:
/* 8052A538  88 1D 06 34 */	lbz r0, 0x634(r29)
/* 8052A53C  28 00 00 03 */	cmplwi r0, 3
/* 8052A540  41 82 00 30 */	beq lbl_8052A570
/* 8052A544  7C 80 07 74 */	extsb r0, r4
/* 8052A548  2C 00 00 04 */	cmpwi r0, 4
/* 8052A54C  41 82 00 24 */	beq lbl_8052A570
/* 8052A550  88 9D 07 50 */	lbz r4, 0x750(r29)
/* 8052A554  3C 60 80 53 */	lis r3, learn_d@ha
/* 8052A558  38 63 64 DC */	addi r3, r3, learn_d@l
/* 8052A55C  7C 03 00 AE */	lbzx r0, r3, r0
/* 8052A560  7C 80 00 39 */	and. r0, r4, r0
/* 8052A564  41 82 00 0C */	beq lbl_8052A570
/* 8052A568  38 60 FF FF */	li r3, -1
/* 8052A56C  48 00 02 30 */	b lbl_8052A79C
lbl_8052A570:
/* 8052A570  38 61 00 0C */	addi r3, r1, 0xc
/* 8052A574  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8052A578  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8052A57C  4B D3 C5 B8 */	b __mi__4cXyzCFRC3Vec
/* 8052A580  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8052A584  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8052A588  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8052A58C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8052A590  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8052A594  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8052A598  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 8052A59C  2C 00 00 02 */	cmpwi r0, 2
/* 8052A5A0  40 82 00 18 */	bne lbl_8052A5B8
/* 8052A5A4  88 1E 10 0C */	lbz r0, 0x100c(r30)
/* 8052A5A8  28 00 00 0A */	cmplwi r0, 0xa
/* 8052A5AC  41 80 00 0C */	blt lbl_8052A5B8
/* 8052A5B0  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8052A5B4  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_8052A5B8:
/* 8052A5B8  38 61 00 18 */	addi r3, r1, 0x18
/* 8052A5BC  4B E1 CB 7C */	b PSVECSquareMag
/* 8052A5C0  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8052A5C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052A5C8  40 81 00 58 */	ble lbl_8052A620
/* 8052A5CC  FC 00 08 34 */	frsqrte f0, f1
/* 8052A5D0  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 8052A5D4  FC 44 00 32 */	fmul f2, f4, f0
/* 8052A5D8  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 8052A5DC  FC 00 00 32 */	fmul f0, f0, f0
/* 8052A5E0  FC 01 00 32 */	fmul f0, f1, f0
/* 8052A5E4  FC 03 00 28 */	fsub f0, f3, f0
/* 8052A5E8  FC 02 00 32 */	fmul f0, f2, f0
/* 8052A5EC  FC 44 00 32 */	fmul f2, f4, f0
/* 8052A5F0  FC 00 00 32 */	fmul f0, f0, f0
/* 8052A5F4  FC 01 00 32 */	fmul f0, f1, f0
/* 8052A5F8  FC 03 00 28 */	fsub f0, f3, f0
/* 8052A5FC  FC 02 00 32 */	fmul f0, f2, f0
/* 8052A600  FC 44 00 32 */	fmul f2, f4, f0
/* 8052A604  FC 00 00 32 */	fmul f0, f0, f0
/* 8052A608  FC 01 00 32 */	fmul f0, f1, f0
/* 8052A60C  FC 03 00 28 */	fsub f0, f3, f0
/* 8052A610  FC 02 00 32 */	fmul f0, f2, f0
/* 8052A614  FC 21 00 32 */	fmul f1, f1, f0
/* 8052A618  FC 20 08 18 */	frsp f1, f1
/* 8052A61C  48 00 00 88 */	b lbl_8052A6A4
lbl_8052A620:
/* 8052A620  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 8052A624  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052A628  40 80 00 10 */	bge lbl_8052A638
/* 8052A62C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8052A630  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8052A634  48 00 00 70 */	b lbl_8052A6A4
lbl_8052A638:
/* 8052A638  D0 21 00 08 */	stfs f1, 8(r1)
/* 8052A63C  80 81 00 08 */	lwz r4, 8(r1)
/* 8052A640  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8052A644  3C 00 7F 80 */	lis r0, 0x7f80
/* 8052A648  7C 03 00 00 */	cmpw r3, r0
/* 8052A64C  41 82 00 14 */	beq lbl_8052A660
/* 8052A650  40 80 00 40 */	bge lbl_8052A690
/* 8052A654  2C 03 00 00 */	cmpwi r3, 0
/* 8052A658  41 82 00 20 */	beq lbl_8052A678
/* 8052A65C  48 00 00 34 */	b lbl_8052A690
lbl_8052A660:
/* 8052A660  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8052A664  41 82 00 0C */	beq lbl_8052A670
/* 8052A668  38 00 00 01 */	li r0, 1
/* 8052A66C  48 00 00 28 */	b lbl_8052A694
lbl_8052A670:
/* 8052A670  38 00 00 02 */	li r0, 2
/* 8052A674  48 00 00 20 */	b lbl_8052A694
lbl_8052A678:
/* 8052A678  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8052A67C  41 82 00 0C */	beq lbl_8052A688
/* 8052A680  38 00 00 05 */	li r0, 5
/* 8052A684  48 00 00 10 */	b lbl_8052A694
lbl_8052A688:
/* 8052A688  38 00 00 03 */	li r0, 3
/* 8052A68C  48 00 00 08 */	b lbl_8052A694
lbl_8052A690:
/* 8052A690  38 00 00 04 */	li r0, 4
lbl_8052A694:
/* 8052A694  2C 00 00 01 */	cmpwi r0, 1
/* 8052A698  40 82 00 0C */	bne lbl_8052A6A4
/* 8052A69C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8052A6A0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8052A6A4:
/* 8052A6A4  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8052A6A8  40 80 00 F0 */	bge lbl_8052A798
/* 8052A6AC  28 1E 00 00 */	cmplwi r30, 0
/* 8052A6B0  41 82 00 0C */	beq lbl_8052A6BC
/* 8052A6B4  80 7E 00 04 */	lwz r3, 4(r30)
/* 8052A6B8  48 00 00 E4 */	b lbl_8052A79C
lbl_8052A6BC:
/* 8052A6BC  38 60 FF FF */	li r3, -1
/* 8052A6C0  48 00 00 DC */	b lbl_8052A79C
lbl_8052A6C4:
/* 8052A6C4  2C 04 00 01 */	cmpwi r4, 1
/* 8052A6C8  40 82 00 D0 */	bne lbl_8052A798
/* 8052A6CC  3C 60 80 53 */	lis r3, s_esa_sub__FPvPv@ha
/* 8052A6D0  38 63 A2 F4 */	addi r3, r3, s_esa_sub__FPvPv@l
/* 8052A6D4  7F A4 EB 78 */	mr r4, r29
/* 8052A6D8  4B AF 6C 60 */	b fpcEx_Search__FPFPvPv_PvPv
/* 8052A6DC  28 03 00 00 */	cmplwi r3, 0
/* 8052A6E0  41 82 00 B8 */	beq lbl_8052A798
/* 8052A6E4  88 9D 06 34 */	lbz r4, 0x634(r29)
/* 8052A6E8  28 04 00 0A */	cmplwi r4, 0xa
/* 8052A6EC  40 82 00 18 */	bne lbl_8052A704
/* 8052A6F0  88 03 10 2D */	lbz r0, 0x102d(r3)
/* 8052A6F4  2C 00 00 01 */	cmpwi r0, 1
/* 8052A6F8  41 82 00 0C */	beq lbl_8052A704
/* 8052A6FC  38 60 FF FF */	li r3, -1
/* 8052A700  48 00 00 9C */	b lbl_8052A79C
lbl_8052A704:
/* 8052A704  28 04 00 05 */	cmplwi r4, 5
/* 8052A708  41 82 00 1C */	beq lbl_8052A724
/* 8052A70C  88 03 10 2D */	lbz r0, 0x102d(r3)
/* 8052A710  2C 00 00 01 */	cmpwi r0, 1
/* 8052A714  41 82 00 10 */	beq lbl_8052A724
/* 8052A718  88 03 10 2C */	lbz r0, 0x102c(r3)
/* 8052A71C  7C 00 07 75 */	extsb. r0, r0
/* 8052A720  41 82 00 78 */	beq lbl_8052A798
lbl_8052A724:
/* 8052A724  C0 43 04 D4 */	lfs f2, 0x4d4(r3)
/* 8052A728  C0 3D 05 D8 */	lfs f1, 0x5d8(r29)
/* 8052A72C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8052A730  EC 01 00 28 */	fsubs f0, f1, f0
/* 8052A734  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8052A738  40 80 00 60 */	bge lbl_8052A798
/* 8052A73C  C0 5D 05 EC */	lfs f2, 0x5ec(r29)
/* 8052A740  C0 23 04 D0 */	lfs f1, 0x4d0(r3)
/* 8052A744  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8052A748  EC 61 00 28 */	fsubs f3, f1, f0
/* 8052A74C  C0 23 04 D8 */	lfs f1, 0x4d8(r3)
/* 8052A750  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8052A754  EC 01 00 28 */	fsubs f0, f1, f0
/* 8052A758  EC 23 00 F2 */	fmuls f1, f3, f3
/* 8052A75C  EC 00 00 32 */	fmuls f0, f0, f0
/* 8052A760  EC 21 00 2A */	fadds f1, f1, f0
/* 8052A764  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8052A768  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052A76C  40 81 00 0C */	ble lbl_8052A778
/* 8052A770  FC 00 08 34 */	frsqrte f0, f1
/* 8052A774  EC 20 00 72 */	fmuls f1, f0, f1
lbl_8052A778:
/* 8052A778  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8052A77C  40 80 00 1C */	bge lbl_8052A798
/* 8052A780  28 03 00 00 */	cmplwi r3, 0
/* 8052A784  41 82 00 0C */	beq lbl_8052A790
/* 8052A788  80 63 00 04 */	lwz r3, 4(r3)
/* 8052A78C  48 00 00 10 */	b lbl_8052A79C
lbl_8052A790:
/* 8052A790  38 60 FF FF */	li r3, -1
/* 8052A794  48 00 00 08 */	b lbl_8052A79C
lbl_8052A798:
/* 8052A798  38 60 FF FF */	li r3, -1
lbl_8052A79C:
/* 8052A79C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8052A7A0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8052A7A4  39 61 00 40 */	addi r11, r1, 0x40
/* 8052A7A8  4B E3 7A 80 */	b _restgpr_29
/* 8052A7AC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8052A7B0  7C 08 03 A6 */	mtlr r0
/* 8052A7B4  38 21 00 50 */	addi r1, r1, 0x50
/* 8052A7B8  4E 80 00 20 */	blr 
