lbl_8020A540:
/* 8020A540  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8020A544  7C 08 02 A6 */	mflr r0
/* 8020A548  90 01 00 54 */	stw r0, 0x54(r1)
/* 8020A54C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8020A550  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8020A554  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8020A558  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 8020A55C  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 8020A560  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 8020A564  39 61 00 20 */	addi r11, r1, 0x20
/* 8020A568  48 15 7C 69 */	bl _savegpr_26
/* 8020A56C  7C 7E 1B 78 */	mr r30, r3
/* 8020A570  7C 9F 23 78 */	mr r31, r4
/* 8020A574  FF A0 08 90 */	fmr f29, f1
/* 8020A578  7C 9E FA 14 */	add r4, r30, r31
/* 8020A57C  88 A4 04 BE */	lbz r5, 0x4be(r4)
/* 8020A580  28 05 00 16 */	cmplwi r5, 0x16
/* 8020A584  41 82 03 98 */	beq lbl_8020A91C
/* 8020A588  C3 E2 AD 48 */	lfs f31, lit_4146(r2)
/* 8020A58C  3B 40 00 01 */	li r26, 1
/* 8020A590  54 A0 15 BA */	rlwinm r0, r5, 2, 0x16, 0x1d
/* 8020A594  C0 22 AD 74 */	lfs f1, lit_5629(r2)
/* 8020A598  7F BE 02 14 */	add r29, r30, r0
/* 8020A59C  C0 1D 02 44 */	lfs f0, 0x244(r29)
/* 8020A5A0  EC 01 00 28 */	fsubs f0, f1, f0
/* 8020A5A4  D0 1D 01 8C */	stfs f0, 0x18c(r29)
/* 8020A5A8  C0 1D 01 8C */	lfs f0, 0x18c(r29)
/* 8020A5AC  C0 9D 01 EC */	lfs f4, 0x1ec(r29)
/* 8020A5B0  C0 62 AD 70 */	lfs f3, lit_5628(r2)
/* 8020A5B4  C0 42 AD AC */	lfs f2, lit_7857(r2)
/* 8020A5B8  57 FB 10 3A */	slwi r27, r31, 2
/* 8020A5BC  7F 9E DA 14 */	add r28, r30, r27
/* 8020A5C0  C0 3C 02 9C */	lfs f1, 0x29c(r28)
/* 8020A5C4  EC 24 08 2A */	fadds f1, f4, f1
/* 8020A5C8  EC 22 08 2A */	fadds f1, f2, f1
/* 8020A5CC  EC 43 00 72 */	fmuls f2, f3, f1
/* 8020A5D0  EC 23 01 32 */	fmuls f1, f3, f4
/* 8020A5D4  EC 22 08 28 */	fsubs f1, f2, f1
/* 8020A5D8  D0 3D 03 04 */	stfs f1, 0x304(r29)
/* 8020A5DC  28 05 00 15 */	cmplwi r5, 0x15
/* 8020A5E0  41 81 01 F4 */	bgt lbl_8020A7D4
/* 8020A5E4  3C 80 80 3C */	lis r4, lit_7858@ha
/* 8020A5E8  38 84 F2 00 */	addi r4, r4, lit_7858@l
/* 8020A5EC  54 A0 10 3A */	slwi r0, r5, 2
/* 8020A5F0  7C 04 00 2E */	lwzx r0, r4, r0
/* 8020A5F4  7C 09 03 A6 */	mtctr r0
/* 8020A5F8  4E 80 04 20 */	bctr 
/* 8020A5FC  80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 8020A600  C0 5E 03 04 */	lfs f2, 0x304(r30)
/* 8020A604  C0 3E 04 EC */	lfs f1, 0x4ec(r30)
/* 8020A608  EC 01 00 2A */	fadds f0, f1, f0
/* 8020A60C  EC 1D 00 2A */	fadds f0, f29, f0
/* 8020A610  EC 22 00 2A */	fadds f1, f2, f0
/* 8020A614  C0 5E 04 F0 */	lfs f2, 0x4f0(r30)
/* 8020A618  38 A0 00 FF */	li r5, 0xff
/* 8020A61C  48 00 08 4D */	bl paneTrans__14dMeterButton_cFP8CPaneMgrffUc
/* 8020A620  48 00 01 B4 */	b lbl_8020A7D4
/* 8020A624  80 9E 00 24 */	lwz r4, 0x24(r30)
/* 8020A628  C0 5E 03 08 */	lfs f2, 0x308(r30)
/* 8020A62C  C0 3E 04 F8 */	lfs f1, 0x4f8(r30)
/* 8020A630  EC 01 00 2A */	fadds f0, f1, f0
/* 8020A634  EC 1D 00 2A */	fadds f0, f29, f0
/* 8020A638  EC 22 00 2A */	fadds f1, f2, f0
/* 8020A63C  C0 5E 04 FC */	lfs f2, 0x4fc(r30)
/* 8020A640  38 A0 00 FF */	li r5, 0xff
/* 8020A644  48 00 08 25 */	bl paneTrans__14dMeterButton_cFP8CPaneMgrffUc
/* 8020A648  48 00 01 8C */	b lbl_8020A7D4
/* 8020A64C  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 8020A650  C0 5E 03 0C */	lfs f2, 0x30c(r30)
/* 8020A654  C0 3E 05 04 */	lfs f1, 0x504(r30)
/* 8020A658  EC 01 00 2A */	fadds f0, f1, f0
/* 8020A65C  EC 1D 00 2A */	fadds f0, f29, f0
/* 8020A660  EC 22 00 2A */	fadds f1, f2, f0
/* 8020A664  C0 5E 05 08 */	lfs f2, 0x508(r30)
/* 8020A668  38 A0 00 FF */	li r5, 0xff
/* 8020A66C  48 00 07 FD */	bl paneTrans__14dMeterButton_cFP8CPaneMgrffUc
/* 8020A670  48 00 01 64 */	b lbl_8020A7D4
/* 8020A674  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 8020A678  C0 5E 03 10 */	lfs f2, 0x310(r30)
/* 8020A67C  C0 3E 05 10 */	lfs f1, 0x510(r30)
/* 8020A680  EC 01 00 2A */	fadds f0, f1, f0
/* 8020A684  EC 1D 00 2A */	fadds f0, f29, f0
/* 8020A688  EC 22 00 2A */	fadds f1, f2, f0
/* 8020A68C  C0 5E 05 14 */	lfs f2, 0x514(r30)
/* 8020A690  38 A0 00 FF */	li r5, 0xff
/* 8020A694  48 00 07 D5 */	bl paneTrans__14dMeterButton_cFP8CPaneMgrffUc
/* 8020A698  48 00 01 3C */	b lbl_8020A7D4
/* 8020A69C  3B 40 00 00 */	li r26, 0
/* 8020A6A0  C0 3D 03 04 */	lfs f1, 0x304(r29)
/* 8020A6A4  FC 20 08 50 */	fneg f1, f1
/* 8020A6A8  D0 3D 03 04 */	stfs f1, 0x304(r29)
/* 8020A6AC  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 8020A6B0  C0 5E 03 14 */	lfs f2, 0x314(r30)
/* 8020A6B4  C0 3E 05 1C */	lfs f1, 0x51c(r30)
/* 8020A6B8  EC 01 00 2A */	fadds f0, f1, f0
/* 8020A6BC  EC 1D 00 2A */	fadds f0, f29, f0
/* 8020A6C0  EC 22 00 2A */	fadds f1, f2, f0
/* 8020A6C4  C0 5E 05 20 */	lfs f2, 0x520(r30)
/* 8020A6C8  38 A0 00 FF */	li r5, 0xff
/* 8020A6CC  48 00 07 9D */	bl paneTrans__14dMeterButton_cFP8CPaneMgrffUc
/* 8020A6D0  48 00 01 04 */	b lbl_8020A7D4
/* 8020A6D4  80 9E 00 30 */	lwz r4, 0x30(r30)
/* 8020A6D8  C0 5E 03 18 */	lfs f2, 0x318(r30)
/* 8020A6DC  C0 3E 05 28 */	lfs f1, 0x528(r30)
/* 8020A6E0  EC 01 00 2A */	fadds f0, f1, f0
/* 8020A6E4  EC 1D 00 2A */	fadds f0, f29, f0
/* 8020A6E8  EC 22 00 2A */	fadds f1, f2, f0
/* 8020A6EC  C0 5E 05 2C */	lfs f2, 0x52c(r30)
/* 8020A6F0  38 A0 00 FF */	li r5, 0xff
/* 8020A6F4  48 00 07 75 */	bl paneTrans__14dMeterButton_cFP8CPaneMgrffUc
/* 8020A6F8  48 00 00 DC */	b lbl_8020A7D4
/* 8020A6FC  80 9E 00 34 */	lwz r4, 0x34(r30)
/* 8020A700  C0 5E 03 1C */	lfs f2, 0x31c(r30)
/* 8020A704  C0 3E 05 34 */	lfs f1, 0x534(r30)
/* 8020A708  EC 01 00 2A */	fadds f0, f1, f0
/* 8020A70C  EC 1D 00 2A */	fadds f0, f29, f0
/* 8020A710  EC 22 00 2A */	fadds f1, f2, f0
/* 8020A714  C0 5E 05 38 */	lfs f2, 0x538(r30)
/* 8020A718  38 A0 00 FF */	li r5, 0xff
/* 8020A71C  48 00 07 4D */	bl paneTrans__14dMeterButton_cFP8CPaneMgrffUc
/* 8020A720  C3 FE 05 38 */	lfs f31, 0x538(r30)
/* 8020A724  48 00 00 B0 */	b lbl_8020A7D4
/* 8020A728  80 9E 00 38 */	lwz r4, 0x38(r30)
/* 8020A72C  C0 5E 03 20 */	lfs f2, 0x320(r30)
/* 8020A730  C0 3E 05 40 */	lfs f1, 0x540(r30)
/* 8020A734  EC 01 00 2A */	fadds f0, f1, f0
/* 8020A738  EC 1D 00 2A */	fadds f0, f29, f0
/* 8020A73C  EC 22 00 2A */	fadds f1, f2, f0
/* 8020A740  C0 5E 05 44 */	lfs f2, 0x544(r30)
/* 8020A744  38 A0 00 FF */	li r5, 0xff
/* 8020A748  48 00 07 21 */	bl paneTrans__14dMeterButton_cFP8CPaneMgrffUc
/* 8020A74C  48 00 00 88 */	b lbl_8020A7D4
/* 8020A750  80 9E 00 3C */	lwz r4, 0x3c(r30)
/* 8020A754  C0 5E 03 24 */	lfs f2, 0x324(r30)
/* 8020A758  C0 3E 05 4C */	lfs f1, 0x54c(r30)
/* 8020A75C  EC 01 00 2A */	fadds f0, f1, f0
/* 8020A760  EC 1D 00 2A */	fadds f0, f29, f0
/* 8020A764  EC 22 00 2A */	fadds f1, f2, f0
/* 8020A768  C0 5E 05 50 */	lfs f2, 0x550(r30)
/* 8020A76C  38 A0 00 FF */	li r5, 0xff
/* 8020A770  48 00 06 F9 */	bl paneTrans__14dMeterButton_cFP8CPaneMgrffUc
/* 8020A774  48 00 00 60 */	b lbl_8020A7D4
/* 8020A778  80 9E 00 50 */	lwz r4, 0x50(r30)
/* 8020A77C  28 04 00 00 */	cmplwi r4, 0
/* 8020A780  41 82 00 54 */	beq lbl_8020A7D4
/* 8020A784  C0 5E 03 38 */	lfs f2, 0x338(r30)
/* 8020A788  C0 3E 05 88 */	lfs f1, 0x588(r30)
/* 8020A78C  EC 01 00 2A */	fadds f0, f1, f0
/* 8020A790  EC 1D 00 2A */	fadds f0, f29, f0
/* 8020A794  EC 22 00 2A */	fadds f1, f2, f0
/* 8020A798  C0 5E 05 8C */	lfs f2, 0x58c(r30)
/* 8020A79C  38 A0 00 FF */	li r5, 0xff
/* 8020A7A0  48 00 06 C9 */	bl paneTrans__14dMeterButton_cFP8CPaneMgrffUc
/* 8020A7A4  48 00 00 30 */	b lbl_8020A7D4
/* 8020A7A8  80 9E 00 70 */	lwz r4, 0x70(r30)
/* 8020A7AC  28 04 00 00 */	cmplwi r4, 0
/* 8020A7B0  41 82 00 24 */	beq lbl_8020A7D4
/* 8020A7B4  C0 5E 03 58 */	lfs f2, 0x358(r30)
/* 8020A7B8  C0 3E 05 E8 */	lfs f1, 0x5e8(r30)
/* 8020A7BC  EC 01 00 2A */	fadds f0, f1, f0
/* 8020A7C0  EC 1D 00 2A */	fadds f0, f29, f0
/* 8020A7C4  EC 22 00 2A */	fadds f1, f2, f0
/* 8020A7C8  C0 5E 05 EC */	lfs f2, 0x5ec(r30)
/* 8020A7CC  38 A0 00 FF */	li r5, 0xff
/* 8020A7D0  48 00 06 99 */	bl paneTrans__14dMeterButton_cFP8CPaneMgrffUc
lbl_8020A7D4:
/* 8020A7D4  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 8020A7D8  2C 00 00 01 */	cmpwi r0, 1
/* 8020A7DC  41 82 00 20 */	beq lbl_8020A7FC
/* 8020A7E0  40 80 00 10 */	bge lbl_8020A7F0
/* 8020A7E4  2C 00 00 00 */	cmpwi r0, 0
/* 8020A7E8  40 80 00 5C */	bge lbl_8020A844
/* 8020A7EC  48 00 00 D8 */	b lbl_8020A8C4
lbl_8020A7F0:
/* 8020A7F0  2C 00 00 03 */	cmpwi r0, 3
/* 8020A7F4  40 80 00 D0 */	bge lbl_8020A8C4
/* 8020A7F8  48 00 00 98 */	b lbl_8020A890
lbl_8020A7FC:
/* 8020A7FC  C0 82 AD 70 */	lfs f4, lit_5628(r2)
/* 8020A800  C0 1E 03 5C */	lfs f0, 0x35c(r30)
/* 8020A804  EC 64 00 32 */	fmuls f3, f4, f0
/* 8020A808  C0 5E 03 60 */	lfs f2, 0x360(r30)
/* 8020A80C  C0 22 AD 74 */	lfs f1, lit_5629(r2)
/* 8020A810  7C 7E DA 14 */	add r3, r30, r27
/* 8020A814  C0 03 02 E0 */	lfs f0, 0x2e0(r3)
/* 8020A818  EC 01 00 28 */	fsubs f0, f1, f0
/* 8020A81C  EC 02 00 2A */	fadds f0, f2, f0
/* 8020A820  EC 63 00 2A */	fadds f3, f3, f0
/* 8020A824  C0 42 AD AC */	lfs f2, lit_7857(r2)
/* 8020A828  C0 3D 01 EC */	lfs f1, 0x1ec(r29)
/* 8020A82C  C0 1C 02 9C */	lfs f0, 0x29c(r28)
/* 8020A830  EC 01 00 2A */	fadds f0, f1, f0
/* 8020A834  EC 02 00 2A */	fadds f0, f2, f0
/* 8020A838  EC 04 00 32 */	fmuls f0, f4, f0
/* 8020A83C  EF C3 00 28 */	fsubs f30, f3, f0
/* 8020A840  48 00 00 84 */	b lbl_8020A8C4
lbl_8020A844:
/* 8020A844  C0 BD 01 EC */	lfs f5, 0x1ec(r29)
/* 8020A848  C0 82 AD 70 */	lfs f4, lit_5628(r2)
/* 8020A84C  C0 1E 03 5C */	lfs f0, 0x35c(r30)
/* 8020A850  EC 64 00 32 */	fmuls f3, f4, f0
/* 8020A854  C0 5E 03 60 */	lfs f2, 0x360(r30)
/* 8020A858  C0 22 AD 74 */	lfs f1, lit_5629(r2)
/* 8020A85C  7C 7E DA 14 */	add r3, r30, r27
/* 8020A860  C0 03 02 E0 */	lfs f0, 0x2e0(r3)
/* 8020A864  EC 01 00 28 */	fsubs f0, f1, f0
/* 8020A868  EC 02 00 2A */	fadds f0, f2, f0
/* 8020A86C  EC 43 00 2A */	fadds f2, f3, f0
/* 8020A870  C0 22 AD AC */	lfs f1, lit_7857(r2)
/* 8020A874  C0 1C 02 9C */	lfs f0, 0x29c(r28)
/* 8020A878  EC 05 00 2A */	fadds f0, f5, f0
/* 8020A87C  EC 01 00 2A */	fadds f0, f1, f0
/* 8020A880  EC 04 00 32 */	fmuls f0, f4, f0
/* 8020A884  EC 02 00 28 */	fsubs f0, f2, f0
/* 8020A888  EF C5 00 2A */	fadds f30, f5, f0
/* 8020A88C  48 00 00 38 */	b lbl_8020A8C4
lbl_8020A890:
/* 8020A890  C0 82 AD 70 */	lfs f4, lit_5628(r2)
/* 8020A894  C0 1E 03 5C */	lfs f0, 0x35c(r30)
/* 8020A898  EC 64 00 32 */	fmuls f3, f4, f0
/* 8020A89C  C0 5E 03 60 */	lfs f2, 0x360(r30)
/* 8020A8A0  C0 22 AD 74 */	lfs f1, lit_5629(r2)
/* 8020A8A4  7C 7E DA 14 */	add r3, r30, r27
/* 8020A8A8  C0 03 02 E0 */	lfs f0, 0x2e0(r3)
/* 8020A8AC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8020A8B0  EC 02 00 2A */	fadds f0, f2, f0
/* 8020A8B4  EC 23 00 2A */	fadds f1, f3, f0
/* 8020A8B8  C0 1C 02 9C */	lfs f0, 0x29c(r28)
/* 8020A8BC  EC 04 00 32 */	fmuls f0, f4, f0
/* 8020A8C0  EF C1 00 28 */	fsubs f30, f1, f0
lbl_8020A8C4:
/* 8020A8C4  7F C3 F3 78 */	mr r3, r30
/* 8020A8C8  7C BE DA 14 */	add r5, r30, r27
/* 8020A8CC  80 85 00 78 */	lwz r4, 0x78(r5)
/* 8020A8D0  C0 05 06 00 */	lfs f0, 0x600(r5)
/* 8020A8D4  EC 00 F0 2A */	fadds f0, f0, f30
/* 8020A8D8  EC 3D 00 2A */	fadds f1, f29, f0
/* 8020A8DC  C0 05 06 08 */	lfs f0, 0x608(r5)
/* 8020A8E0  EC 40 F8 2A */	fadds f2, f0, f31
/* 8020A8E4  C0 02 AD A8 */	lfs f0, lit_6017(r2)
/* 8020A8E8  EC 42 00 28 */	fsubs f2, f2, f0
/* 8020A8EC  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 8020A8F0  48 00 05 79 */	bl paneTrans__14dMeterButton_cFP8CPaneMgrffUc
/* 8020A8F4  88 1E 04 D9 */	lbz r0, 0x4d9(r30)
/* 8020A8F8  7C 00 F8 00 */	cmpw r0, r31
/* 8020A8FC  40 82 00 20 */	bne lbl_8020A91C
/* 8020A900  7F C3 F3 78 */	mr r3, r30
/* 8020A904  80 9E 00 F4 */	lwz r4, 0xf4(r30)
/* 8020A908  C0 1E 06 18 */	lfs f0, 0x618(r30)
/* 8020A90C  EC 20 E8 2A */	fadds f1, f0, f29
/* 8020A910  C0 5E 06 1C */	lfs f2, 0x61c(r30)
/* 8020A914  38 A0 00 FF */	li r5, 0xff
/* 8020A918  48 00 05 51 */	bl paneTrans__14dMeterButton_cFP8CPaneMgrffUc
lbl_8020A91C:
/* 8020A91C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8020A920  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8020A924  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 8020A928  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8020A92C  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 8020A930  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 8020A934  39 61 00 20 */	addi r11, r1, 0x20
/* 8020A938  48 15 78 E5 */	bl _restgpr_26
/* 8020A93C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8020A940  7C 08 03 A6 */	mtlr r0
/* 8020A944  38 21 00 50 */	addi r1, r1, 0x50
/* 8020A948  4E 80 00 20 */	blr 
