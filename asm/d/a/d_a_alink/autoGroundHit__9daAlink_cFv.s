lbl_800BD6FC:
/* 800BD6FC  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 800BD700  7C 08 02 A6 */	mflr r0
/* 800BD704  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 800BD708  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 800BD70C  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 800BD710  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 800BD714  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 800BD718  93 E1 00 AC */	stw r31, 0xac(r1)
/* 800BD71C  7C 7F 1B 78 */	mr r31, r3
/* 800BD720  80 03 05 70 */	lwz r0, 0x570(r3)
/* 800BD724  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 800BD728  90 03 05 70 */	stw r0, 0x570(r3)
/* 800BD72C  80 03 05 70 */	lwz r0, 0x570(r3)
/* 800BD730  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800BD734  41 82 02 44 */	beq lbl_800BD978
/* 800BD738  38 7F 2C 48 */	addi r3, r31, 0x2c48
/* 800BD73C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 800BD740  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 800BD744  48 28 8D 6D */	bl PSMTXCopy
/* 800BD748  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800BD74C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800BD750  3C 80 80 43 */	lis r4, BaseY__4cXyz@ha
/* 800BD754  38 84 0D 24 */	addi r4, r4, BaseY__4cXyz@l
/* 800BD758  38 A1 00 6C */	addi r5, r1, 0x6c
/* 800BD75C  48 28 96 F1 */	bl PSMTXMultVecSR
/* 800BD760  38 61 00 54 */	addi r3, r1, 0x54
/* 800BD764  38 81 00 6C */	addi r4, r1, 0x6c
/* 800BD768  C0 22 92 E0 */	lfs f1, lit_6845(r2)
/* 800BD76C  48 1A 94 19 */	bl __ml__4cXyzCFf
/* 800BD770  38 61 00 48 */	addi r3, r1, 0x48
/* 800BD774  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 800BD778  38 A1 00 54 */	addi r5, r1, 0x54
/* 800BD77C  48 1A 93 69 */	bl __pl__4cXyzCFRC3Vec
/* 800BD780  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 800BD784  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 800BD788  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 800BD78C  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 800BD790  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 800BD794  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 800BD798  38 61 00 3C */	addi r3, r1, 0x3c
/* 800BD79C  38 81 00 6C */	addi r4, r1, 0x6c
/* 800BD7A0  C0 22 93 50 */	lfs f1, lit_8247(r2)
/* 800BD7A4  48 1A 93 E1 */	bl __ml__4cXyzCFf
/* 800BD7A8  38 61 00 30 */	addi r3, r1, 0x30
/* 800BD7AC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 800BD7B0  38 A1 00 3C */	addi r5, r1, 0x3c
/* 800BD7B4  48 1A 93 81 */	bl __mi__4cXyzCFRC3Vec
/* 800BD7B8  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 800BD7BC  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 800BD7C0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 800BD7C4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 800BD7C8  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 800BD7CC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 800BD7D0  7F E3 FB 78 */	mr r3, r31
/* 800BD7D4  38 81 00 84 */	addi r4, r1, 0x84
/* 800BD7D8  38 A1 00 78 */	addi r5, r1, 0x78
/* 800BD7DC  48 02 4C D5 */	bl commonMagneLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800BD7E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BD7E4  41 82 00 D4 */	beq lbl_800BD8B8
/* 800BD7E8  C0 1F 1D DC */	lfs f0, 0x1ddc(r31)
/* 800BD7EC  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800BD7F0  C0 1F 1D E0 */	lfs f0, 0x1de0(r31)
/* 800BD7F4  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 800BD7F8  C0 1F 1D E4 */	lfs f0, 0x1de4(r31)
/* 800BD7FC  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 800BD800  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800BD804  60 00 20 00 */	ori r0, r0, 0x2000
/* 800BD808  90 1F 05 70 */	stw r0, 0x570(r31)
/* 800BD80C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800BD810  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800BD814  41 82 04 4C */	beq lbl_800BDC60
/* 800BD818  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800BD81C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800BD820  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 800BD824  4B F4 EC 11 */	bl mDoMtx_YrotM__FPA4_fs
/* 800BD828  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800BD82C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800BD830  3C 80 80 43 */	lis r4, BaseZ__4cXyz@ha
/* 800BD834  38 84 0D 3C */	addi r4, r4, BaseZ__4cXyz@l
/* 800BD838  38 A1 00 6C */	addi r5, r1, 0x6c
/* 800BD83C  48 28 96 11 */	bl PSMTXMultVecSR
/* 800BD840  38 61 00 6C */	addi r3, r1, 0x6c
/* 800BD844  7C 64 1B 78 */	mr r4, r3
/* 800BD848  C0 22 93 30 */	lfs f1, lit_7625(r2)
/* 800BD84C  48 28 98 8D */	bl PSVECScale
/* 800BD850  38 61 00 84 */	addi r3, r1, 0x84
/* 800BD854  38 81 00 6C */	addi r4, r1, 0x6c
/* 800BD858  7C 65 1B 78 */	mr r5, r3
/* 800BD85C  48 28 98 35 */	bl PSVECAdd
/* 800BD860  38 61 00 78 */	addi r3, r1, 0x78
/* 800BD864  38 81 00 6C */	addi r4, r1, 0x6c
/* 800BD868  7C 65 1B 78 */	mr r5, r3
/* 800BD86C  48 28 98 25 */	bl PSVECAdd
/* 800BD870  7F E3 FB 78 */	mr r3, r31
/* 800BD874  38 81 00 84 */	addi r4, r1, 0x84
/* 800BD878  38 A1 00 78 */	addi r5, r1, 0x78
/* 800BD87C  4B FE 49 1D */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800BD880  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BD884  41 82 00 24 */	beq lbl_800BD8A8
/* 800BD888  38 7F 1B 5C */	addi r3, r31, 0x1b5c
/* 800BD88C  4B F7 42 C5 */	bl checkMagnetCode__12daTagMagne_cFR13cBgS_PolyInfo
/* 800BD890  2C 03 00 00 */	cmpwi r3, 0
/* 800BD894  41 82 00 14 */	beq lbl_800BD8A8
/* 800BD898  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800BD89C  54 00 00 C2 */	rlwinm r0, r0, 0, 3, 1
/* 800BD8A0  90 1F 05 74 */	stw r0, 0x574(r31)
/* 800BD8A4  48 00 03 BC */	b lbl_800BDC60
lbl_800BD8A8:
/* 800BD8A8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BD8AC  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800BD8B0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 800BD8B4  48 00 03 AC */	b lbl_800BDC60
lbl_800BD8B8:
/* 800BD8B8  C0 3F 36 AC */	lfs f1, 0x36ac(r31)
/* 800BD8BC  48 1A A9 29 */	bl cBgW_CheckBGround__Ff
/* 800BD8C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BD8C4  40 82 03 9C */	bne lbl_800BDC60
/* 800BD8C8  38 61 00 24 */	addi r3, r1, 0x24
/* 800BD8CC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 800BD8D0  38 BF 37 98 */	addi r5, r31, 0x3798
/* 800BD8D4  48 1A 92 61 */	bl __mi__4cXyzCFRC3Vec
/* 800BD8D8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800BD8DC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 800BD8E0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800BD8E4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 800BD8E8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800BD8EC  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 800BD8F0  38 61 00 84 */	addi r3, r1, 0x84
/* 800BD8F4  38 81 00 6C */	addi r4, r1, 0x6c
/* 800BD8F8  7C 65 1B 78 */	mr r5, r3
/* 800BD8FC  48 28 97 B9 */	bl PSVECSubtract
/* 800BD900  38 61 00 78 */	addi r3, r1, 0x78
/* 800BD904  38 81 00 6C */	addi r4, r1, 0x6c
/* 800BD908  7C 65 1B 78 */	mr r5, r3
/* 800BD90C  48 28 97 A9 */	bl PSVECSubtract
/* 800BD910  7F E3 FB 78 */	mr r3, r31
/* 800BD914  38 81 00 84 */	addi r4, r1, 0x84
/* 800BD918  38 A1 00 78 */	addi r5, r1, 0x78
/* 800BD91C  48 02 4B 95 */	bl commonMagneLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800BD920  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BD924  41 82 03 3C */	beq lbl_800BDC60
/* 800BD928  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800BD92C  60 00 20 00 */	ori r0, r0, 0x2000
/* 800BD930  90 1F 05 70 */	stw r0, 0x570(r31)
/* 800BD934  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BD938  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800BD93C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 800BD940  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800BD944  64 00 20 00 */	oris r0, r0, 0x2000
/* 800BD948  90 1F 05 74 */	stw r0, 0x574(r31)
/* 800BD94C  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 800BD950  3C 63 00 01 */	addis r3, r3, 1
/* 800BD954  38 03 80 00 */	addi r0, r3, -32768
/* 800BD958  B0 1F 30 92 */	sth r0, 0x3092(r31)
/* 800BD95C  C0 1F 37 98 */	lfs f0, 0x3798(r31)
/* 800BD960  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 800BD964  C0 1F 37 9C */	lfs f0, 0x379c(r31)
/* 800BD968  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 800BD96C  C0 1F 37 A0 */	lfs f0, 0x37a0(r31)
/* 800BD970  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 800BD974  48 00 02 EC */	b lbl_800BDC60
lbl_800BD978:
/* 800BD978  80 BF 31 A0 */	lwz r5, 0x31a0(r31)
/* 800BD97C  3C 80 00 07 */	lis r4, 0x0007 /* 0x00070C52@ha */
/* 800BD980  38 04 0C 52 */	addi r0, r4, 0x0C52 /* 0x00070C52@l */
/* 800BD984  7C A0 00 39 */	and. r0, r5, r0
/* 800BD988  41 82 00 34 */	beq lbl_800BD9BC
/* 800BD98C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800BD990  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 800BD994  7D 89 03 A6 */	mtctr r12
/* 800BD998  4E 80 04 21 */	bctrl 
/* 800BD99C  28 03 00 00 */	cmplwi r3, 0
/* 800BD9A0  41 82 00 10 */	beq lbl_800BD9B0
/* 800BD9A4  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800BD9A8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800BD9AC  41 82 00 10 */	beq lbl_800BD9BC
lbl_800BD9B0:
/* 800BD9B0  80 7F 31 A0 */	lwz r3, 0x31a0(r31)
/* 800BD9B4  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 800BD9B8  41 82 02 70 */	beq lbl_800BDC28
lbl_800BD9BC:
/* 800BD9BC  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 800BD9C0  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 800BD9C4  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 800BD9C8  C0 3F 1A 08 */	lfs f1, 0x1a08(r31)
/* 800BD9CC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800BD9D0  EF E1 00 28 */	fsubs f31, f1, f0
/* 800BD9D4  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 800BD9D8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800BD9DC  40 82 02 3C */	bne lbl_800BDC18
/* 800BD9E0  7F E3 FB 78 */	mr r3, r31
/* 800BD9E4  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800BD9E8  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 800BD9EC  7D 89 03 A6 */	mtctr r12
/* 800BD9F0  4E 80 04 21 */	bctrl 
/* 800BD9F4  28 03 00 00 */	cmplwi r3, 0
/* 800BD9F8  41 82 00 20 */	beq lbl_800BDA18
/* 800BD9FC  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 800BDA00  2C 00 00 00 */	cmpwi r0, 0
/* 800BDA04  40 80 00 14 */	bge lbl_800BDA18
/* 800BDA08  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 800BDA0C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 800BDA10  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 800BDA14  48 00 03 38 */	b lbl_800BDD4C
lbl_800BDA18:
/* 800BDA18  38 61 00 18 */	addi r3, r1, 0x18
/* 800BDA1C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 800BDA20  38 BF 37 98 */	addi r5, r31, 0x3798
/* 800BDA24  48 1A 91 11 */	bl __mi__4cXyzCFRC3Vec
/* 800BDA28  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 800BDA2C  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 800BDA30  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 800BDA34  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 800BDA38  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 800BDA3C  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 800BDA40  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 800BDA44  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BDA48  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800BDA4C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 800BDA50  38 61 00 0C */	addi r3, r1, 0xc
/* 800BDA54  48 28 96 E5 */	bl PSVECSquareMag
/* 800BDA58  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BDA5C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BDA60  40 81 00 58 */	ble lbl_800BDAB8
/* 800BDA64  FC 00 08 34 */	frsqrte f0, f1
/* 800BDA68  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800BDA6C  FC 44 00 32 */	fmul f2, f4, f0
/* 800BDA70  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800BDA74  FC 00 00 32 */	fmul f0, f0, f0
/* 800BDA78  FC 01 00 32 */	fmul f0, f1, f0
/* 800BDA7C  FC 03 00 28 */	fsub f0, f3, f0
/* 800BDA80  FC 02 00 32 */	fmul f0, f2, f0
/* 800BDA84  FC 44 00 32 */	fmul f2, f4, f0
/* 800BDA88  FC 00 00 32 */	fmul f0, f0, f0
/* 800BDA8C  FC 01 00 32 */	fmul f0, f1, f0
/* 800BDA90  FC 03 00 28 */	fsub f0, f3, f0
/* 800BDA94  FC 02 00 32 */	fmul f0, f2, f0
/* 800BDA98  FC 44 00 32 */	fmul f2, f4, f0
/* 800BDA9C  FC 00 00 32 */	fmul f0, f0, f0
/* 800BDAA0  FC 01 00 32 */	fmul f0, f1, f0
/* 800BDAA4  FC 03 00 28 */	fsub f0, f3, f0
/* 800BDAA8  FC 02 00 32 */	fmul f0, f2, f0
/* 800BDAAC  FF C1 00 32 */	fmul f30, f1, f0
/* 800BDAB0  FF C0 F0 18 */	frsp f30, f30
/* 800BDAB4  48 00 00 90 */	b lbl_800BDB44
lbl_800BDAB8:
/* 800BDAB8  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800BDABC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BDAC0  40 80 00 10 */	bge lbl_800BDAD0
/* 800BDAC4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800BDAC8  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 800BDACC  48 00 00 78 */	b lbl_800BDB44
lbl_800BDAD0:
/* 800BDAD0  D0 21 00 08 */	stfs f1, 8(r1)
/* 800BDAD4  80 81 00 08 */	lwz r4, 8(r1)
/* 800BDAD8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800BDADC  3C 00 7F 80 */	lis r0, 0x7f80
/* 800BDAE0  7C 03 00 00 */	cmpw r3, r0
/* 800BDAE4  41 82 00 14 */	beq lbl_800BDAF8
/* 800BDAE8  40 80 00 40 */	bge lbl_800BDB28
/* 800BDAEC  2C 03 00 00 */	cmpwi r3, 0
/* 800BDAF0  41 82 00 20 */	beq lbl_800BDB10
/* 800BDAF4  48 00 00 34 */	b lbl_800BDB28
lbl_800BDAF8:
/* 800BDAF8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800BDAFC  41 82 00 0C */	beq lbl_800BDB08
/* 800BDB00  38 00 00 01 */	li r0, 1
/* 800BDB04  48 00 00 28 */	b lbl_800BDB2C
lbl_800BDB08:
/* 800BDB08  38 00 00 02 */	li r0, 2
/* 800BDB0C  48 00 00 20 */	b lbl_800BDB2C
lbl_800BDB10:
/* 800BDB10  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800BDB14  41 82 00 0C */	beq lbl_800BDB20
/* 800BDB18  38 00 00 05 */	li r0, 5
/* 800BDB1C  48 00 00 10 */	b lbl_800BDB2C
lbl_800BDB20:
/* 800BDB20  38 00 00 03 */	li r0, 3
/* 800BDB24  48 00 00 08 */	b lbl_800BDB2C
lbl_800BDB28:
/* 800BDB28  38 00 00 04 */	li r0, 4
lbl_800BDB2C:
/* 800BDB2C  2C 00 00 01 */	cmpwi r0, 1
/* 800BDB30  40 82 00 10 */	bne lbl_800BDB40
/* 800BDB34  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800BDB38  C3 C3 0A E0 */	lfs f30, __float_nan@l(r3)
/* 800BDB3C  48 00 00 08 */	b lbl_800BDB44
lbl_800BDB40:
/* 800BDB40  FF C0 08 90 */	fmr f30, f1
lbl_800BDB44:
/* 800BDB44  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800BDB48  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 800BDB4C  40 81 00 20 */	ble lbl_800BDB6C
/* 800BDB50  38 61 00 60 */	addi r3, r1, 0x60
/* 800BDB54  48 1A 95 D5 */	bl atan2sX_Z__4cXyzCFv
/* 800BDB58  7C 65 1B 78 */	mr r5, r3
/* 800BDB5C  7F E3 FB 78 */	mr r3, r31
/* 800BDB60  38 9F 1A 60 */	addi r4, r31, 0x1a60
/* 800BDB64  4B FF 25 35 */	bl getGroundAngle__9daAlink_cFP13cBgS_PolyInfos
/* 800BDB68  48 00 00 08 */	b lbl_800BDB70
lbl_800BDB6C:
/* 800BDB6C  A8 7F 2F F0 */	lha r3, 0x2ff0(r31)
lbl_800BDB70:
/* 800BDB70  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 800BDB74  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800BDB78  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 800BDB7C  7C 03 04 2E */	lfsx f0, r3, r0
/* 800BDB80  EF DE 00 32 */	fmuls f30, f30, f0
/* 800BDB84  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BDB88  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 800BDB8C  40 80 00 08 */	bge lbl_800BDB94
/* 800BDB90  FF C0 00 90 */	fmr f30, f0
lbl_800BDB94:
/* 800BDB94  C0 22 93 A4 */	lfs f1, lit_9138(r2)
/* 800BDB98  C0 1F 1A 08 */	lfs f0, 0x1a08(r31)
/* 800BDB9C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 800BDBA0  41 82 00 2C */	beq lbl_800BDBCC
/* 800BDBA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800BDBA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800BDBAC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800BDBB0  38 9F 1A 60 */	addi r4, r31, 0x1a60
/* 800BDBB4  38 A1 00 90 */	addi r5, r1, 0x90
/* 800BDBB8  4B FB 6B 8D */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800BDBBC  C0 21 00 94 */	lfs f1, 0x94(r1)
/* 800BDBC0  48 1A A6 25 */	bl cBgW_CheckBGround__Ff
/* 800BDBC4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800BDBC8  48 00 00 08 */	b lbl_800BDBD0
lbl_800BDBCC:
/* 800BDBCC  38 00 00 00 */	li r0, 0
lbl_800BDBD0:
/* 800BDBD0  2C 00 00 00 */	cmpwi r0, 0
/* 800BDBD4  41 82 00 44 */	beq lbl_800BDC18
/* 800BDBD8  C0 02 98 C4 */	lfs f0, lit_70267(r2)
/* 800BDBDC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800BDBE0  4C 40 13 82 */	cror 2, 0, 2
/* 800BDBE4  40 82 00 34 */	bne lbl_800BDC18
/* 800BDBE8  C0 0D 81 14 */	lfs f0, l_autoDownHeight(r13)
/* 800BDBEC  EC 00 F0 28 */	fsubs f0, f0, f30
/* 800BDBF0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800BDBF4  4C 41 13 82 */	cror 2, 1, 2
/* 800BDBF8  40 82 00 20 */	bne lbl_800BDC18
/* 800BDBFC  C0 1F 1A 08 */	lfs f0, 0x1a08(r31)
/* 800BDC00  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 800BDC04  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 800BDC08  60 00 00 20 */	ori r0, r0, 0x20
/* 800BDC0C  90 1F 19 9C */	stw r0, 0x199c(r31)
/* 800BDC10  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BDC14  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_800BDC18:
/* 800BDC18  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 800BDC1C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 800BDC20  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 800BDC24  48 00 00 3C */	b lbl_800BDC60
lbl_800BDC28:
/* 800BDC28  54 60 03 5B */	rlwinm. r0, r3, 0, 0xd, 0xd
/* 800BDC2C  41 82 00 34 */	beq lbl_800BDC60
/* 800BDC30  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800BDC34  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 800BDC38  41 82 00 28 */	beq lbl_800BDC60
/* 800BDC3C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800BDC40  C0 5F 33 B4 */	lfs f2, 0x33b4(r31)
/* 800BDC44  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 800BDC48  40 81 00 18 */	ble lbl_800BDC60
/* 800BDC4C  EC 20 10 28 */	fsubs f1, f0, f2
/* 800BDC50  C0 02 93 B8 */	lfs f0, lit_10041(r2)
/* 800BDC54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BDC58  40 80 00 08 */	bge lbl_800BDC60
/* 800BDC5C  D0 5F 04 D4 */	stfs f2, 0x4d4(r31)
lbl_800BDC60:
/* 800BDC60  38 00 00 00 */	li r0, 0
/* 800BDC64  88 7F 2F AA */	lbz r3, 0x2faa(r31)
/* 800BDC68  28 03 00 01 */	cmplwi r3, 1
/* 800BDC6C  41 82 00 0C */	beq lbl_800BDC78
/* 800BDC70  28 03 00 02 */	cmplwi r3, 2
/* 800BDC74  40 82 00 08 */	bne lbl_800BDC7C
lbl_800BDC78:
/* 800BDC78  38 00 00 01 */	li r0, 1
lbl_800BDC7C:
/* 800BDC7C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800BDC80  40 82 00 20 */	bne lbl_800BDCA0
/* 800BDC84  7F E3 FB 78 */	mr r3, r31
/* 800BDC88  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800BDC8C  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 800BDC90  7D 89 03 A6 */	mtctr r12
/* 800BDC94  4E 80 04 21 */	bctrl 
/* 800BDC98  28 03 00 00 */	cmplwi r3, 0
/* 800BDC9C  41 82 00 A4 */	beq lbl_800BDD40
lbl_800BDCA0:
/* 800BDCA0  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 800BDCA4  C0 1F 1A 08 */	lfs f0, 0x1a08(r31)
/* 800BDCA8  EC 21 00 28 */	fsubs f1, f1, f0
/* 800BDCAC  C0 02 95 0C */	lfs f0, lit_20496(r2)
/* 800BDCB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BDCB4  41 81 00 38 */	bgt lbl_800BDCEC
/* 800BDCB8  7F E3 FB 78 */	mr r3, r31
/* 800BDCBC  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800BDCC0  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 800BDCC4  7D 89 03 A6 */	mtctr r12
/* 800BDCC8  4E 80 04 21 */	bctrl 
/* 800BDCCC  28 03 00 00 */	cmplwi r3, 0
/* 800BDCD0  41 82 00 60 */	beq lbl_800BDD30
/* 800BDCD4  80 7F 28 18 */	lwz r3, 0x2818(r31)
/* 800BDCD8  28 03 00 00 */	cmplwi r3, 0
/* 800BDCDC  41 82 00 54 */	beq lbl_800BDD30
/* 800BDCE0  88 03 0A 6D */	lbz r0, 0xa6d(r3)
/* 800BDCE4  28 00 00 00 */	cmplwi r0, 0
/* 800BDCE8  41 82 00 48 */	beq lbl_800BDD30
lbl_800BDCEC:
/* 800BDCEC  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 800BDCF0  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 800BDCF4  40 82 00 58 */	bne lbl_800BDD4C
/* 800BDCF8  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 800BDCFC  64 00 00 08 */	oris r0, r0, 8
/* 800BDD00  90 1F 05 7C */	stw r0, 0x57c(r31)
/* 800BDD04  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800BDD08  D0 1F 34 F8 */	stfs f0, 0x34f8(r31)
/* 800BDD0C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800BDD10  D0 1F 34 FC */	stfs f0, 0x34fc(r31)
/* 800BDD14  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 800BDD18  D0 1F 35 00 */	stfs f0, 0x3500(r31)
/* 800BDD1C  C0 1F 34 FC */	lfs f0, 0x34fc(r31)
/* 800BDD20  D0 1F 33 C4 */	stfs f0, 0x33c4(r31)
/* 800BDD24  C0 1F 34 FC */	lfs f0, 0x34fc(r31)
/* 800BDD28  D0 1F 33 C8 */	stfs f0, 0x33c8(r31)
/* 800BDD2C  48 00 00 20 */	b lbl_800BDD4C
lbl_800BDD30:
/* 800BDD30  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 800BDD34  54 00 03 56 */	rlwinm r0, r0, 0, 0xd, 0xb
/* 800BDD38  90 1F 05 7C */	stw r0, 0x57c(r31)
/* 800BDD3C  48 00 00 10 */	b lbl_800BDD4C
lbl_800BDD40:
/* 800BDD40  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 800BDD44  54 00 03 56 */	rlwinm r0, r0, 0, 0xd, 0xb
/* 800BDD48  90 1F 05 7C */	stw r0, 0x57c(r31)
lbl_800BDD4C:
/* 800BDD4C  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 800BDD50  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 800BDD54  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 800BDD58  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 800BDD5C  83 E1 00 AC */	lwz r31, 0xac(r1)
/* 800BDD60  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 800BDD64  7C 08 03 A6 */	mtlr r0
/* 800BDD68  38 21 00 D0 */	addi r1, r1, 0xd0
/* 800BDD6C  4E 80 00 20 */	blr 
