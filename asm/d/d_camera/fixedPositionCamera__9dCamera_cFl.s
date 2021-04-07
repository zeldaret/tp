lbl_8017E730:
/* 8017E730  94 21 FD 90 */	stwu r1, -0x270(r1)
/* 8017E734  7C 08 02 A6 */	mflr r0
/* 8017E738  90 01 02 74 */	stw r0, 0x274(r1)
/* 8017E73C  DB E1 02 60 */	stfd f31, 0x260(r1)
/* 8017E740  F3 E1 02 68 */	psq_st f31, 616(r1), 0, 0 /* qr0 */
/* 8017E744  DB C1 02 50 */	stfd f30, 0x250(r1)
/* 8017E748  F3 C1 02 58 */	psq_st f30, 600(r1), 0, 0 /* qr0 */
/* 8017E74C  DB A1 02 40 */	stfd f29, 0x240(r1)
/* 8017E750  F3 A1 02 48 */	psq_st f29, 584(r1), 0, 0 /* qr0 */
/* 8017E754  DB 81 02 30 */	stfd f28, 0x230(r1)
/* 8017E758  F3 81 02 38 */	psq_st f28, 568(r1), 0, 0 /* qr0 */
/* 8017E75C  DB 61 02 20 */	stfd f27, 0x220(r1)
/* 8017E760  F3 61 02 28 */	psq_st f27, 552(r1), 0, 0 /* qr0 */
/* 8017E764  DB 41 02 10 */	stfd f26, 0x210(r1)
/* 8017E768  F3 41 02 18 */	psq_st f26, 536(r1), 0, 0 /* qr0 */
/* 8017E76C  DB 21 02 00 */	stfd f25, 0x200(r1)
/* 8017E770  F3 21 02 08 */	psq_st f25, 520(r1), 0, 0 /* qr0 */
/* 8017E774  DB 01 01 F0 */	stfd f24, 0x1f0(r1)
/* 8017E778  F3 01 01 F8 */	psq_st f24, 504(r1), 0, 0 /* qr0 */
/* 8017E77C  DA E1 01 E0 */	stfd f23, 0x1e0(r1)
/* 8017E780  F2 E1 01 E8 */	psq_st f23, 488(r1), 0, 0 /* qr0 */
/* 8017E784  DA C1 01 D0 */	stfd f22, 0x1d0(r1)
/* 8017E788  F2 C1 01 D8 */	psq_st f22, 472(r1), 0, 0 /* qr0 */
/* 8017E78C  93 E1 01 CC */	stw r31, 0x1cc(r1)
/* 8017E790  93 C1 01 C8 */	stw r30, 0x1c8(r1)
/* 8017E794  7C 7E 1B 78 */	mr r30, r3
/* 8017E798  80 03 0A F4 */	lwz r0, 0xaf4(r3)
/* 8017E79C  1F E4 00 78 */	mulli r31, r4, 0x78
/* 8017E7A0  7C 60 FA 14 */	add r3, r0, r31
/* 8017E7A4  C3 03 00 08 */	lfs f24, 8(r3)
/* 8017E7A8  C2 E3 00 10 */	lfs f23, 0x10(r3)
/* 8017E7AC  C2 C3 00 0C */	lfs f22, 0xc(r3)
/* 8017E7B0  C3 E3 00 1C */	lfs f31, 0x1c(r3)
/* 8017E7B4  C3 C3 00 20 */	lfs f30, 0x20(r3)
/* 8017E7B8  C3 A3 00 24 */	lfs f29, 0x24(r3)
/* 8017E7BC  C3 83 00 28 */	lfs f28, 0x28(r3)
/* 8017E7C0  C3 63 00 68 */	lfs f27, 0x68(r3)
/* 8017E7C4  C3 43 00 64 */	lfs f26, 0x64(r3)
/* 8017E7C8  C3 23 00 4C */	lfs f25, 0x4c(r3)
/* 8017E7CC  80 1E 01 74 */	lwz r0, 0x174(r30)
/* 8017E7D0  28 00 00 00 */	cmplwi r0, 0
/* 8017E7D4  40 82 00 3C */	bne lbl_8017E810
/* 8017E7D8  3C 60 46 49 */	lis r3, 0x4649 /* 0x46495850@ha */
/* 8017E7DC  38 03 58 50 */	addi r0, r3, 0x5850 /* 0x46495850@l */
/* 8017E7E0  90 1E 03 E8 */	stw r0, 0x3e8(r30)
/* 8017E7E4  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 8017E7E8  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)  /* 0x80430CF4@l */
/* 8017E7EC  D0 1E 04 04 */	stfs f0, 0x404(r30)
/* 8017E7F0  C0 03 00 04 */	lfs f0, 4(r3)
/* 8017E7F4  D0 1E 04 08 */	stfs f0, 0x408(r30)
/* 8017E7F8  C0 03 00 08 */	lfs f0, 8(r3)
/* 8017E7FC  D0 1E 04 0C */	stfs f0, 0x40c(r30)
/* 8017E800  38 00 00 FF */	li r0, 0xff
/* 8017E804  90 1E 04 14 */	stw r0, 0x414(r30)
/* 8017E808  38 00 00 FE */	li r0, 0xfe
/* 8017E80C  90 1E 04 18 */	stw r0, 0x418(r30)
lbl_8017E810:
/* 8017E810  80 7E 07 D8 */	lwz r3, 0x7d8(r30)
/* 8017E814  80 1E 04 14 */	lwz r0, 0x414(r30)
/* 8017E818  7C 03 00 00 */	cmpw r3, r0
/* 8017E81C  41 82 00 18 */	beq lbl_8017E834
/* 8017E820  38 00 00 00 */	li r0, 0
/* 8017E824  90 1E 01 74 */	stw r0, 0x174(r30)
/* 8017E828  98 1E 01 58 */	stb r0, 0x158(r30)
/* 8017E82C  80 1E 07 D8 */	lwz r0, 0x7d8(r30)
/* 8017E830  90 1E 04 14 */	stw r0, 0x414(r30)
lbl_8017E834:
/* 8017E834  38 00 00 00 */	li r0, 0
/* 8017E838  98 1E 04 10 */	stb r0, 0x410(r30)
/* 8017E83C  80 1E 0A F4 */	lwz r0, 0xaf4(r30)
/* 8017E840  7C 60 FA 14 */	add r3, r0, r31
/* 8017E844  A0 03 00 06 */	lhz r0, 6(r3)
/* 8017E848  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 8017E84C  41 82 01 28 */	beq lbl_8017E974
/* 8017E850  80 1E 07 D8 */	lwz r0, 0x7d8(r30)
/* 8017E854  2C 00 00 FF */	cmpwi r0, 0xff
/* 8017E858  41 82 01 1C */	beq lbl_8017E974
/* 8017E85C  80 7E 07 DC */	lwz r3, 0x7dc(r30)
/* 8017E860  80 1E 04 18 */	lwz r0, 0x418(r30)
/* 8017E864  7C 03 00 00 */	cmpw r3, r0
/* 8017E868  41 82 00 6C */	beq lbl_8017E8D4
/* 8017E86C  88 1E 07 BD */	lbz r0, 0x7bd(r30)
/* 8017E870  98 1E 0A EC */	stb r0, 0xaec(r30)
/* 8017E874  88 1E 07 BE */	lbz r0, 0x7be(r30)
/* 8017E878  98 1E 0A ED */	stb r0, 0xaed(r30)
/* 8017E87C  88 1E 07 BF */	lbz r0, 0x7bf(r30)
/* 8017E880  98 1E 0A EE */	stb r0, 0xaee(r30)
/* 8017E884  A0 1E 07 C0 */	lhz r0, 0x7c0(r30)
/* 8017E888  7C 00 07 34 */	extsh r0, r0
/* 8017E88C  90 1E 0A F0 */	stw r0, 0xaf0(r30)
/* 8017E890  80 7E 06 84 */	lwz r3, 0x684(r30)
/* 8017E894  80 1E 06 8C */	lwz r0, 0x68c(r30)
/* 8017E898  1C 00 00 44 */	mulli r0, r0, 0x44
/* 8017E89C  7C 63 02 14 */	add r3, r3, r0
/* 8017E8A0  80 1E 01 90 */	lwz r0, 0x190(r30)
/* 8017E8A4  1C 00 00 16 */	mulli r0, r0, 0x16
/* 8017E8A8  7C 63 02 14 */	add r3, r3, r0
/* 8017E8AC  80 1E 01 A4 */	lwz r0, 0x1a4(r30)
/* 8017E8B0  54 00 08 3C */	slwi r0, r0, 1
/* 8017E8B4  7C 63 02 14 */	add r3, r3, r0
/* 8017E8B8  A8 03 00 18 */	lha r0, 0x18(r3)
/* 8017E8BC  7C 04 00 00 */	cmpw r4, r0
/* 8017E8C0  40 82 00 0C */	bne lbl_8017E8CC
/* 8017E8C4  38 7E 0A EC */	addi r3, r30, 0xaec
/* 8017E8C8  4B F0 9D 0D */	bl Change__11dCamParam_cFl
lbl_8017E8CC:
/* 8017E8CC  80 1E 07 DC */	lwz r0, 0x7dc(r30)
/* 8017E8D0  90 1E 04 18 */	stw r0, 0x418(r30)
lbl_8017E8D4:
/* 8017E8D4  C0 1E 07 C4 */	lfs f0, 0x7c4(r30)
/* 8017E8D8  D0 01 01 A4 */	stfs f0, 0x1a4(r1)
/* 8017E8DC  C0 1E 07 C8 */	lfs f0, 0x7c8(r30)
/* 8017E8E0  D0 01 01 A8 */	stfs f0, 0x1a8(r1)
/* 8017E8E4  C0 1E 07 CC */	lfs f0, 0x7cc(r30)
/* 8017E8E8  D0 01 01 AC */	stfs f0, 0x1ac(r1)
/* 8017E8EC  38 7E 04 04 */	addi r3, r30, 0x404
/* 8017E8F0  38 81 01 A4 */	addi r4, r1, 0x1a4
/* 8017E8F4  48 0E 87 79 */	bl __ne__4cXyzCFRC3Vec
/* 8017E8F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8017E8FC  41 82 00 0C */	beq lbl_8017E908
/* 8017E900  7F C3 F3 78 */	mr r3, r30
/* 8017E904  4B FE 68 01 */	bl setUSOAngle__9dCamera_cFv
lbl_8017E908:
/* 8017E908  C0 01 01 A4 */	lfs f0, 0x1a4(r1)
/* 8017E90C  D0 1E 04 04 */	stfs f0, 0x404(r30)
/* 8017E910  C0 01 01 A8 */	lfs f0, 0x1a8(r1)
/* 8017E914  D0 1E 04 08 */	stfs f0, 0x408(r30)
/* 8017E918  C0 01 01 AC */	lfs f0, 0x1ac(r1)
/* 8017E91C  D0 1E 04 0C */	stfs f0, 0x40c(r30)
/* 8017E920  88 1E 0A EC */	lbz r0, 0xaec(r30)
/* 8017E924  28 00 00 FF */	cmplwi r0, 0xff
/* 8017E928  41 82 00 28 */	beq lbl_8017E950
/* 8017E92C  C8 22 9D 60 */	lfd f1, lit_9410(r2)
/* 8017E930  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 8017E934  3C 00 43 30 */	lis r0, 0x4330
/* 8017E938  90 01 01 B0 */	stw r0, 0x1b0(r1)
/* 8017E93C  C8 01 01 B0 */	lfd f0, 0x1b0(r1)
/* 8017E940  EC 00 08 28 */	fsubs f0, f0, f1
/* 8017E944  80 1E 0A F4 */	lwz r0, 0xaf4(r30)
/* 8017E948  7C 60 FA 14 */	add r3, r0, r31
/* 8017E94C  D0 03 00 4C */	stfs f0, 0x4c(r3)
lbl_8017E950:
/* 8017E950  88 1E 0A EE */	lbz r0, 0xaee(r30)
/* 8017E954  28 00 00 FF */	cmplwi r0, 0xff
/* 8017E958  40 82 00 0C */	bne lbl_8017E964
/* 8017E95C  38 60 FF FF */	li r3, -1
/* 8017E960  48 00 00 30 */	b lbl_8017E990
lbl_8017E964:
/* 8017E964  7C 03 03 78 */	mr r3, r0
/* 8017E968  38 00 00 01 */	li r0, 1
/* 8017E96C  98 1E 04 10 */	stb r0, 0x410(r30)
/* 8017E970  48 00 00 20 */	b lbl_8017E990
lbl_8017E974:
/* 8017E974  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 8017E978  D0 01 01 A4 */	stfs f0, 0x1a4(r1)
/* 8017E97C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 8017E980  D0 01 01 A8 */	stfs f0, 0x1a8(r1)
/* 8017E984  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 8017E988  D0 01 01 AC */	stfs f0, 0x1ac(r1)
/* 8017E98C  38 60 FF FF */	li r3, -1
lbl_8017E990:
/* 8017E990  D3 01 01 98 */	stfs f24, 0x198(r1)
/* 8017E994  D2 E1 01 9C */	stfs f23, 0x19c(r1)
/* 8017E998  D2 C1 01 A0 */	stfs f22, 0x1a0(r1)
/* 8017E99C  80 1E 01 74 */	lwz r0, 0x174(r30)
/* 8017E9A0  28 00 00 00 */	cmplwi r0, 0
/* 8017E9A4  40 82 03 E8 */	bne lbl_8017ED8C
/* 8017E9A8  80 1E 00 A8 */	lwz r0, 0xa8(r30)
/* 8017E9AC  28 00 00 00 */	cmplwi r0, 0
/* 8017E9B0  40 82 00 34 */	bne lbl_8017E9E4
/* 8017E9B4  38 00 00 01 */	li r0, 1
/* 8017E9B8  90 1E 03 EC */	stw r0, 0x3ec(r30)
/* 8017E9BC  80 1E 03 EC */	lwz r0, 0x3ec(r30)
/* 8017E9C0  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8017E9C4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8017E9C8  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 8017E9CC  3C 00 43 30 */	lis r0, 0x4330
/* 8017E9D0  90 01 01 B0 */	stw r0, 0x1b0(r1)
/* 8017E9D4  C8 01 01 B0 */	lfd f0, 0x1b0(r1)
/* 8017E9D8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8017E9DC  D0 1E 03 F0 */	stfs f0, 0x3f0(r30)
/* 8017E9E0  48 00 03 94 */	b lbl_8017ED74
lbl_8017E9E4:
/* 8017E9E4  88 1E 04 10 */	lbz r0, 0x410(r30)
/* 8017E9E8  28 00 00 00 */	cmplwi r0, 0
/* 8017E9EC  40 82 03 60 */	bne lbl_8017ED4C
/* 8017E9F0  C0 01 01 A4 */	lfs f0, 0x1a4(r1)
/* 8017E9F4  D0 01 01 8C */	stfs f0, 0x18c(r1)
/* 8017E9F8  C0 01 01 A8 */	lfs f0, 0x1a8(r1)
/* 8017E9FC  D0 01 01 90 */	stfs f0, 0x190(r1)
/* 8017EA00  C0 01 01 AC */	lfs f0, 0x1ac(r1)
/* 8017EA04  D0 01 01 94 */	stfs f0, 0x194(r1)
/* 8017EA08  38 61 01 68 */	addi r3, r1, 0x168
/* 8017EA0C  38 81 01 A4 */	addi r4, r1, 0x1a4
/* 8017EA10  38 BE 00 64 */	addi r5, r30, 0x64
/* 8017EA14  48 0E 81 21 */	bl __mi__4cXyzCFRC3Vec
/* 8017EA18  38 61 00 70 */	addi r3, r1, 0x70
/* 8017EA1C  38 81 01 68 */	addi r4, r1, 0x168
/* 8017EA20  48 0F 2E 61 */	bl __ct__7cSGlobeFRC4cXyz
/* 8017EA24  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8017EA28  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 8017EA2C  40 81 00 08 */	ble lbl_8017EA34
/* 8017EA30  D3 A1 00 70 */	stfs f29, 0x70(r1)
lbl_8017EA34:
/* 8017EA34  38 61 01 5C */	addi r3, r1, 0x15c
/* 8017EA38  38 81 00 70 */	addi r4, r1, 0x70
/* 8017EA3C  48 0F 30 79 */	bl Xyz__7cSGlobeCFv
/* 8017EA40  38 61 01 50 */	addi r3, r1, 0x150
/* 8017EA44  38 9E 00 64 */	addi r4, r30, 0x64
/* 8017EA48  38 A1 01 5C */	addi r5, r1, 0x15c
/* 8017EA4C  48 0E 80 99 */	bl __pl__4cXyzCFRC3Vec
/* 8017EA50  C0 01 01 50 */	lfs f0, 0x150(r1)
/* 8017EA54  D0 01 01 8C */	stfs f0, 0x18c(r1)
/* 8017EA58  C0 01 01 54 */	lfs f0, 0x154(r1)
/* 8017EA5C  D0 01 01 90 */	stfs f0, 0x190(r1)
/* 8017EA60  C0 01 01 58 */	lfs f0, 0x158(r1)
/* 8017EA64  D0 01 01 94 */	stfs f0, 0x194(r1)
/* 8017EA68  38 61 01 44 */	addi r3, r1, 0x144
/* 8017EA6C  38 81 01 8C */	addi r4, r1, 0x18c
/* 8017EA70  38 BE 00 3C */	addi r5, r30, 0x3c
/* 8017EA74  48 0E 80 C1 */	bl __mi__4cXyzCFRC3Vec
/* 8017EA78  C0 01 01 44 */	lfs f0, 0x144(r1)
/* 8017EA7C  D0 01 01 38 */	stfs f0, 0x138(r1)
/* 8017EA80  C0 01 01 48 */	lfs f0, 0x148(r1)
/* 8017EA84  D0 01 01 3C */	stfs f0, 0x13c(r1)
/* 8017EA88  C0 01 01 4C */	lfs f0, 0x14c(r1)
/* 8017EA8C  D0 01 01 40 */	stfs f0, 0x140(r1)
/* 8017EA90  38 61 01 38 */	addi r3, r1, 0x138
/* 8017EA94  48 1C 86 A5 */	bl PSVECSquareMag
/* 8017EA98  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8017EA9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017EAA0  40 81 00 58 */	ble lbl_8017EAF8
/* 8017EAA4  FC 00 08 34 */	frsqrte f0, f1
/* 8017EAA8  C8 82 9C C8 */	lfd f4, lit_6177(r2)
/* 8017EAAC  FC 44 00 32 */	fmul f2, f4, f0
/* 8017EAB0  C8 62 9C D0 */	lfd f3, lit_6178(r2)
/* 8017EAB4  FC 00 00 32 */	fmul f0, f0, f0
/* 8017EAB8  FC 01 00 32 */	fmul f0, f1, f0
/* 8017EABC  FC 03 00 28 */	fsub f0, f3, f0
/* 8017EAC0  FC 02 00 32 */	fmul f0, f2, f0
/* 8017EAC4  FC 44 00 32 */	fmul f2, f4, f0
/* 8017EAC8  FC 00 00 32 */	fmul f0, f0, f0
/* 8017EACC  FC 01 00 32 */	fmul f0, f1, f0
/* 8017EAD0  FC 03 00 28 */	fsub f0, f3, f0
/* 8017EAD4  FC 02 00 32 */	fmul f0, f2, f0
/* 8017EAD8  FC 44 00 32 */	fmul f2, f4, f0
/* 8017EADC  FC 00 00 32 */	fmul f0, f0, f0
/* 8017EAE0  FC 01 00 32 */	fmul f0, f1, f0
/* 8017EAE4  FC 03 00 28 */	fsub f0, f3, f0
/* 8017EAE8  FC 02 00 32 */	fmul f0, f2, f0
/* 8017EAEC  FF 01 00 32 */	fmul f24, f1, f0
/* 8017EAF0  FF 00 C0 18 */	frsp f24, f24
/* 8017EAF4  48 00 00 90 */	b lbl_8017EB84
lbl_8017EAF8:
/* 8017EAF8  C8 02 9C D8 */	lfd f0, lit_6179(r2)
/* 8017EAFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017EB00  40 80 00 10 */	bge lbl_8017EB10
/* 8017EB04  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8017EB08  C3 03 0A E0 */	lfs f24, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8017EB0C  48 00 00 78 */	b lbl_8017EB84
lbl_8017EB10:
/* 8017EB10  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8017EB14  80 81 00 5C */	lwz r4, 0x5c(r1)
/* 8017EB18  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8017EB1C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8017EB20  7C 03 00 00 */	cmpw r3, r0
/* 8017EB24  41 82 00 14 */	beq lbl_8017EB38
/* 8017EB28  40 80 00 40 */	bge lbl_8017EB68
/* 8017EB2C  2C 03 00 00 */	cmpwi r3, 0
/* 8017EB30  41 82 00 20 */	beq lbl_8017EB50
/* 8017EB34  48 00 00 34 */	b lbl_8017EB68
lbl_8017EB38:
/* 8017EB38  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8017EB3C  41 82 00 0C */	beq lbl_8017EB48
/* 8017EB40  38 00 00 01 */	li r0, 1
/* 8017EB44  48 00 00 28 */	b lbl_8017EB6C
lbl_8017EB48:
/* 8017EB48  38 00 00 02 */	li r0, 2
/* 8017EB4C  48 00 00 20 */	b lbl_8017EB6C
lbl_8017EB50:
/* 8017EB50  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8017EB54  41 82 00 0C */	beq lbl_8017EB60
/* 8017EB58  38 00 00 05 */	li r0, 5
/* 8017EB5C  48 00 00 10 */	b lbl_8017EB6C
lbl_8017EB60:
/* 8017EB60  38 00 00 03 */	li r0, 3
/* 8017EB64  48 00 00 08 */	b lbl_8017EB6C
lbl_8017EB68:
/* 8017EB68  38 00 00 04 */	li r0, 4
lbl_8017EB6C:
/* 8017EB6C  2C 00 00 01 */	cmpwi r0, 1
/* 8017EB70  40 82 00 10 */	bne lbl_8017EB80
/* 8017EB74  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8017EB78  C3 03 0A E0 */	lfs f24, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8017EB7C  48 00 00 08 */	b lbl_8017EB84
lbl_8017EB80:
/* 8017EB80  FF 00 08 90 */	fmr f24, f1
lbl_8017EB84:
/* 8017EB84  38 61 01 2C */	addi r3, r1, 0x12c
/* 8017EB88  7F C4 F3 78 */	mr r4, r30
/* 8017EB8C  80 BE 01 80 */	lwz r5, 0x180(r30)
/* 8017EB90  38 C1 01 98 */	addi r6, r1, 0x198
/* 8017EB94  4B FE 61 D9 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8017EB98  38 61 01 20 */	addi r3, r1, 0x120
/* 8017EB9C  38 9E 00 30 */	addi r4, r30, 0x30
/* 8017EBA0  38 A1 01 2C */	addi r5, r1, 0x12c
/* 8017EBA4  48 0E 7F 91 */	bl __mi__4cXyzCFRC3Vec
/* 8017EBA8  C0 01 01 20 */	lfs f0, 0x120(r1)
/* 8017EBAC  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 8017EBB0  C0 01 01 24 */	lfs f0, 0x124(r1)
/* 8017EBB4  D0 01 01 18 */	stfs f0, 0x118(r1)
/* 8017EBB8  C0 01 01 28 */	lfs f0, 0x128(r1)
/* 8017EBBC  D0 01 01 1C */	stfs f0, 0x11c(r1)
/* 8017EBC0  38 61 01 14 */	addi r3, r1, 0x114
/* 8017EBC4  48 1C 85 75 */	bl PSVECSquareMag
/* 8017EBC8  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8017EBCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017EBD0  40 81 00 58 */	ble lbl_8017EC28
/* 8017EBD4  FC 00 08 34 */	frsqrte f0, f1
/* 8017EBD8  C8 82 9C C8 */	lfd f4, lit_6177(r2)
/* 8017EBDC  FC 44 00 32 */	fmul f2, f4, f0
/* 8017EBE0  C8 62 9C D0 */	lfd f3, lit_6178(r2)
/* 8017EBE4  FC 00 00 32 */	fmul f0, f0, f0
/* 8017EBE8  FC 01 00 32 */	fmul f0, f1, f0
/* 8017EBEC  FC 03 00 28 */	fsub f0, f3, f0
/* 8017EBF0  FC 02 00 32 */	fmul f0, f2, f0
/* 8017EBF4  FC 44 00 32 */	fmul f2, f4, f0
/* 8017EBF8  FC 00 00 32 */	fmul f0, f0, f0
/* 8017EBFC  FC 01 00 32 */	fmul f0, f1, f0
/* 8017EC00  FC 03 00 28 */	fsub f0, f3, f0
/* 8017EC04  FC 02 00 32 */	fmul f0, f2, f0
/* 8017EC08  FC 44 00 32 */	fmul f2, f4, f0
/* 8017EC0C  FC 00 00 32 */	fmul f0, f0, f0
/* 8017EC10  FC 01 00 32 */	fmul f0, f1, f0
/* 8017EC14  FC 03 00 28 */	fsub f0, f3, f0
/* 8017EC18  FC 02 00 32 */	fmul f0, f2, f0
/* 8017EC1C  FC 21 00 32 */	fmul f1, f1, f0
/* 8017EC20  FC 20 08 18 */	frsp f1, f1
/* 8017EC24  48 00 00 88 */	b lbl_8017ECAC
lbl_8017EC28:
/* 8017EC28  C8 02 9C D8 */	lfd f0, lit_6179(r2)
/* 8017EC2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017EC30  40 80 00 10 */	bge lbl_8017EC40
/* 8017EC34  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8017EC38  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8017EC3C  48 00 00 70 */	b lbl_8017ECAC
lbl_8017EC40:
/* 8017EC40  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 8017EC44  80 81 00 58 */	lwz r4, 0x58(r1)
/* 8017EC48  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8017EC4C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8017EC50  7C 03 00 00 */	cmpw r3, r0
/* 8017EC54  41 82 00 14 */	beq lbl_8017EC68
/* 8017EC58  40 80 00 40 */	bge lbl_8017EC98
/* 8017EC5C  2C 03 00 00 */	cmpwi r3, 0
/* 8017EC60  41 82 00 20 */	beq lbl_8017EC80
/* 8017EC64  48 00 00 34 */	b lbl_8017EC98
lbl_8017EC68:
/* 8017EC68  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8017EC6C  41 82 00 0C */	beq lbl_8017EC78
/* 8017EC70  38 00 00 01 */	li r0, 1
/* 8017EC74  48 00 00 28 */	b lbl_8017EC9C
lbl_8017EC78:
/* 8017EC78  38 00 00 02 */	li r0, 2
/* 8017EC7C  48 00 00 20 */	b lbl_8017EC9C
lbl_8017EC80:
/* 8017EC80  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8017EC84  41 82 00 0C */	beq lbl_8017EC90
/* 8017EC88  38 00 00 05 */	li r0, 5
/* 8017EC8C  48 00 00 10 */	b lbl_8017EC9C
lbl_8017EC90:
/* 8017EC90  38 00 00 03 */	li r0, 3
/* 8017EC94  48 00 00 08 */	b lbl_8017EC9C
lbl_8017EC98:
/* 8017EC98  38 00 00 04 */	li r0, 4
lbl_8017EC9C:
/* 8017EC9C  2C 00 00 01 */	cmpwi r0, 1
/* 8017ECA0  40 82 00 0C */	bne lbl_8017ECAC
/* 8017ECA4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8017ECA8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8017ECAC:
/* 8017ECAC  FC 18 08 40 */	fcmpo cr0, f24, f1
/* 8017ECB0  40 81 00 0C */	ble lbl_8017ECBC
/* 8017ECB4  FE C0 C0 90 */	fmr f22, f24
/* 8017ECB8  48 00 00 08 */	b lbl_8017ECC0
lbl_8017ECBC:
/* 8017ECBC  FE C0 08 90 */	fmr f22, f1
lbl_8017ECC0:
/* 8017ECC0  7F C3 F3 78 */	mr r3, r30
/* 8017ECC4  80 9E 01 80 */	lwz r4, 0x180(r30)
/* 8017ECC8  4B FE 60 65 */	bl heightOf__9dCamera_cFP10fopAc_ac_c
/* 8017ECCC  C0 02 9C E4 */	lfs f0, lit_6629(r2)
/* 8017ECD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8017ECD4  40 80 00 08 */	bge lbl_8017ECDC
/* 8017ECD8  48 00 00 08 */	b lbl_8017ECE0
lbl_8017ECDC:
/* 8017ECDC  FC 00 08 90 */	fmr f0, f1
lbl_8017ECE0:
/* 8017ECE0  EE D6 00 24 */	fdivs f22, f22, f0
/* 8017ECE4  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8017ECE8  FC 16 00 40 */	fcmpo cr0, f22, f0
/* 8017ECEC  40 81 00 10 */	ble lbl_8017ECFC
/* 8017ECF0  FC 00 B0 34 */	frsqrte f0, f22
/* 8017ECF4  EC 00 05 B2 */	fmuls f0, f0, f22
/* 8017ECF8  48 00 00 08 */	b lbl_8017ED00
lbl_8017ECFC:
/* 8017ECFC  FC 00 B0 90 */	fmr f0, f22
lbl_8017ED00:
/* 8017ED00  EC 1B 00 32 */	fmuls f0, f27, f0
/* 8017ED04  FC 00 00 1E */	fctiwz f0, f0
/* 8017ED08  D8 01 01 B0 */	stfd f0, 0x1b0(r1)
/* 8017ED0C  80 61 01 B4 */	lwz r3, 0x1b4(r1)
/* 8017ED10  38 03 00 01 */	addi r0, r3, 1
/* 8017ED14  90 1E 03 EC */	stw r0, 0x3ec(r30)
/* 8017ED18  80 7E 03 EC */	lwz r3, 0x3ec(r30)
/* 8017ED1C  38 03 00 01 */	addi r0, r3, 1
/* 8017ED20  7C 03 01 D6 */	mullw r0, r3, r0
/* 8017ED24  7C 00 0E 70 */	srawi r0, r0, 1
/* 8017ED28  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8017ED2C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8017ED30  90 01 01 BC */	stw r0, 0x1bc(r1)
/* 8017ED34  3C 00 43 30 */	lis r0, 0x4330
/* 8017ED38  90 01 01 B8 */	stw r0, 0x1b8(r1)
/* 8017ED3C  C8 01 01 B8 */	lfd f0, 0x1b8(r1)
/* 8017ED40  EC 00 08 28 */	fsubs f0, f0, f1
/* 8017ED44  D0 1E 03 F0 */	stfs f0, 0x3f0(r30)
/* 8017ED48  48 00 00 2C */	b lbl_8017ED74
lbl_8017ED4C:
/* 8017ED4C  90 7E 03 EC */	stw r3, 0x3ec(r30)
/* 8017ED50  80 1E 03 EC */	lwz r0, 0x3ec(r30)
/* 8017ED54  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8017ED58  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8017ED5C  90 01 01 BC */	stw r0, 0x1bc(r1)
/* 8017ED60  3C 00 43 30 */	lis r0, 0x4330
/* 8017ED64  90 01 01 B8 */	stw r0, 0x1b8(r1)
/* 8017ED68  C8 01 01 B8 */	lfd f0, 0x1b8(r1)
/* 8017ED6C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8017ED70  D0 1E 03 F0 */	stfs f0, 0x3f0(r30)
lbl_8017ED74:
/* 8017ED74  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8017ED78  D0 1E 03 F8 */	stfs f0, 0x3f8(r30)
/* 8017ED7C  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 8017ED80  D0 1E 03 FC */	stfs f0, 0x3fc(r30)
/* 8017ED84  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 8017ED88  D0 1E 04 00 */	stfs f0, 0x400(r30)
lbl_8017ED8C:
/* 8017ED8C  D3 C1 01 80 */	stfs f30, 0x180(r1)
/* 8017ED90  D3 E1 01 84 */	stfs f31, 0x184(r1)
/* 8017ED94  D3 C1 01 88 */	stfs f30, 0x188(r1)
/* 8017ED98  38 61 01 08 */	addi r3, r1, 0x108
/* 8017ED9C  7F C4 F3 78 */	mr r4, r30
/* 8017EDA0  80 BE 01 80 */	lwz r5, 0x180(r30)
/* 8017EDA4  38 C1 01 98 */	addi r6, r1, 0x198
/* 8017EDA8  4B FE 5F C5 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8017EDAC  C0 01 01 08 */	lfs f0, 0x108(r1)
/* 8017EDB0  D0 01 01 74 */	stfs f0, 0x174(r1)
/* 8017EDB4  C0 01 01 0C */	lfs f0, 0x10c(r1)
/* 8017EDB8  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 8017EDBC  C0 01 01 10 */	lfs f0, 0x110(r1)
/* 8017EDC0  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 8017EDC4  80 1E 0A F4 */	lwz r0, 0xaf4(r30)
/* 8017EDC8  7C 60 FA 14 */	add r3, r0, r31
/* 8017EDCC  A0 03 00 06 */	lhz r0, 6(r3)
/* 8017EDD0  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 8017EDD4  41 82 00 0C */	beq lbl_8017EDE0
/* 8017EDD8  C0 01 01 A8 */	lfs f0, 0x1a8(r1)
/* 8017EDDC  D0 01 01 78 */	stfs f0, 0x178(r1)
lbl_8017EDE0:
/* 8017EDE0  88 1E 01 58 */	lbz r0, 0x158(r30)
/* 8017EDE4  28 00 00 00 */	cmplwi r0, 0
/* 8017EDE8  40 82 02 70 */	bne lbl_8017F058
/* 8017EDEC  80 1E 00 A8 */	lwz r0, 0xa8(r30)
/* 8017EDF0  28 00 00 00 */	cmplwi r0, 0
/* 8017EDF4  40 82 00 14 */	bne lbl_8017EE08
/* 8017EDF8  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 8017EDFC  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 8017EE00  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 8017EE04  D0 01 01 88 */	stfs f0, 0x188(r1)
lbl_8017EE08:
/* 8017EE08  88 1E 04 10 */	lbz r0, 0x410(r30)
/* 8017EE0C  28 00 00 00 */	cmplwi r0, 0
/* 8017EE10  40 82 00 48 */	bne lbl_8017EE58
/* 8017EE14  80 7E 01 74 */	lwz r3, 0x174(r30)
/* 8017EE18  80 1E 03 EC */	lwz r0, 0x3ec(r30)
/* 8017EE1C  7C 03 00 50 */	subf r0, r3, r0
/* 8017EE20  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8017EE24  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8017EE28  90 01 01 BC */	stw r0, 0x1bc(r1)
/* 8017EE2C  3C 00 43 30 */	lis r0, 0x4330
/* 8017EE30  90 01 01 B8 */	stw r0, 0x1b8(r1)
/* 8017EE34  C8 01 01 B8 */	lfd f0, 0x1b8(r1)
/* 8017EE38  EC 00 08 28 */	fsubs f0, f0, f1
/* 8017EE3C  D0 1E 03 F4 */	stfs f0, 0x3f4(r30)
/* 8017EE40  C0 3E 03 F4 */	lfs f1, 0x3f4(r30)
/* 8017EE44  C0 1E 03 F0 */	lfs f0, 0x3f0(r30)
/* 8017EE48  EE C1 00 24 */	fdivs f22, f1, f0
/* 8017EE4C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8017EE50  D0 1E 03 F0 */	stfs f0, 0x3f0(r30)
/* 8017EE54  48 00 00 18 */	b lbl_8017EE6C
lbl_8017EE58:
/* 8017EE58  C0 22 9C A8 */	lfs f1, lit_5658(r2)
/* 8017EE5C  C0 1E 03 F0 */	lfs f0, 0x3f0(r30)
/* 8017EE60  EE C1 00 24 */	fdivs f22, f1, f0
/* 8017EE64  EC 00 08 28 */	fsubs f0, f0, f1
/* 8017EE68  D0 1E 03 F0 */	stfs f0, 0x3f0(r30)
lbl_8017EE6C:
/* 8017EE6C  38 61 00 FC */	addi r3, r1, 0xfc
/* 8017EE70  38 81 01 74 */	addi r4, r1, 0x174
/* 8017EE74  38 BE 03 F8 */	addi r5, r30, 0x3f8
/* 8017EE78  48 0E 7C BD */	bl __mi__4cXyzCFRC3Vec
/* 8017EE7C  38 61 00 F0 */	addi r3, r1, 0xf0
/* 8017EE80  38 81 00 FC */	addi r4, r1, 0xfc
/* 8017EE84  FC 20 B0 90 */	fmr f1, f22
/* 8017EE88  48 0E 7C FD */	bl __ml__4cXyzCFf
/* 8017EE8C  38 7E 03 F8 */	addi r3, r30, 0x3f8
/* 8017EE90  38 81 00 F0 */	addi r4, r1, 0xf0
/* 8017EE94  7C 65 1B 78 */	mr r5, r3
/* 8017EE98  48 1C 81 F9 */	bl PSVECAdd
/* 8017EE9C  38 61 00 E4 */	addi r3, r1, 0xe4
/* 8017EEA0  38 9E 03 F8 */	addi r4, r30, 0x3f8
/* 8017EEA4  38 BE 00 64 */	addi r5, r30, 0x64
/* 8017EEA8  48 0E 7C 8D */	bl __mi__4cXyzCFRC3Vec
/* 8017EEAC  38 61 00 D8 */	addi r3, r1, 0xd8
/* 8017EEB0  38 81 00 E4 */	addi r4, r1, 0xe4
/* 8017EEB4  38 A1 01 80 */	addi r5, r1, 0x180
/* 8017EEB8  48 0E 7D 19 */	bl __ml__4cXyzCFRC3Vec
/* 8017EEBC  38 7E 00 64 */	addi r3, r30, 0x64
/* 8017EEC0  38 81 00 D8 */	addi r4, r1, 0xd8
/* 8017EEC4  7C 65 1B 78 */	mr r5, r3
/* 8017EEC8  48 1C 81 C9 */	bl PSVECAdd
/* 8017EECC  38 61 00 CC */	addi r3, r1, 0xcc
/* 8017EED0  38 81 01 A4 */	addi r4, r1, 0x1a4
/* 8017EED4  38 BE 00 64 */	addi r5, r30, 0x64
/* 8017EED8  48 0E 7C 5D */	bl __mi__4cXyzCFRC3Vec
/* 8017EEDC  38 61 00 68 */	addi r3, r1, 0x68
/* 8017EEE0  38 81 00 CC */	addi r4, r1, 0xcc
/* 8017EEE4  48 0F 29 9D */	bl __ct__7cSGlobeFRC4cXyz
/* 8017EEE8  80 1E 0A F4 */	lwz r0, 0xaf4(r30)
/* 8017EEEC  7C 60 FA 14 */	add r3, r0, r31
/* 8017EEF0  A0 03 00 06 */	lhz r0, 6(r3)
/* 8017EEF4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8017EEF8  41 82 00 2C */	beq lbl_8017EF24
/* 8017EEFC  38 61 00 54 */	addi r3, r1, 0x54
/* 8017EF00  A8 1E 07 D0 */	lha r0, 0x7d0(r30)
/* 8017EF04  7C 00 00 D0 */	neg r0, r0
/* 8017EF08  7C 04 07 34 */	extsh r4, r0
/* 8017EF0C  48 0F 20 8D */	bl __ct__7cSAngleFs
/* 8017EF10  38 61 00 1C */	addi r3, r1, 0x1c
/* 8017EF14  A8 81 00 54 */	lha r4, 0x54(r1)
/* 8017EF18  48 0F 20 81 */	bl __ct__7cSAngleFs
/* 8017EF1C  A8 01 00 1C */	lha r0, 0x1c(r1)
/* 8017EF20  B0 01 00 6C */	sth r0, 0x6c(r1)
lbl_8017EF24:
/* 8017EF24  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8017EF28  FC 00 E0 40 */	fcmpo cr0, f0, f28
/* 8017EF2C  40 80 00 08 */	bge lbl_8017EF34
/* 8017EF30  D3 81 00 68 */	stfs f28, 0x68(r1)
lbl_8017EF34:
/* 8017EF34  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8017EF38  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 8017EF3C  40 81 00 08 */	ble lbl_8017EF44
/* 8017EF40  D3 A1 00 68 */	stfs f29, 0x68(r1)
lbl_8017EF44:
/* 8017EF44  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 8017EF48  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8017EF4C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8017EF50  EC 16 00 32 */	fmuls f0, f22, f0
/* 8017EF54  EC 01 00 2A */	fadds f0, f1, f0
/* 8017EF58  D0 1E 00 5C */	stfs f0, 0x5c(r30)
/* 8017EF5C  38 61 00 50 */	addi r3, r1, 0x50
/* 8017EF60  38 81 00 6C */	addi r4, r1, 0x6c
/* 8017EF64  3B FE 00 60 */	addi r31, r30, 0x60
/* 8017EF68  7F E5 FB 78 */	mr r5, r31
/* 8017EF6C  48 0F 22 39 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017EF70  38 61 00 4C */	addi r3, r1, 0x4c
/* 8017EF74  38 81 00 50 */	addi r4, r1, 0x50
/* 8017EF78  FC 20 B0 90 */	fmr f1, f22
/* 8017EF7C  48 0F 22 E9 */	bl __ml__7cSAngleCFf
/* 8017EF80  38 61 00 48 */	addi r3, r1, 0x48
/* 8017EF84  7F E4 FB 78 */	mr r4, r31
/* 8017EF88  38 A1 00 4C */	addi r5, r1, 0x4c
/* 8017EF8C  48 0F 21 E9 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017EF90  38 61 00 18 */	addi r3, r1, 0x18
/* 8017EF94  A8 81 00 48 */	lha r4, 0x48(r1)
/* 8017EF98  48 0F 20 01 */	bl __ct__7cSAngleFs
/* 8017EF9C  A8 01 00 18 */	lha r0, 0x18(r1)
/* 8017EFA0  B0 1E 00 60 */	sth r0, 0x60(r30)
/* 8017EFA4  38 61 00 44 */	addi r3, r1, 0x44
/* 8017EFA8  38 81 00 6E */	addi r4, r1, 0x6e
/* 8017EFAC  3B FE 00 62 */	addi r31, r30, 0x62
/* 8017EFB0  7F E5 FB 78 */	mr r5, r31
/* 8017EFB4  48 0F 21 F1 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017EFB8  38 61 00 40 */	addi r3, r1, 0x40
/* 8017EFBC  38 81 00 44 */	addi r4, r1, 0x44
/* 8017EFC0  FC 20 B0 90 */	fmr f1, f22
/* 8017EFC4  48 0F 22 A1 */	bl __ml__7cSAngleCFf
/* 8017EFC8  38 61 00 3C */	addi r3, r1, 0x3c
/* 8017EFCC  7F E4 FB 78 */	mr r4, r31
/* 8017EFD0  38 A1 00 40 */	addi r5, r1, 0x40
/* 8017EFD4  48 0F 21 A1 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017EFD8  38 61 00 14 */	addi r3, r1, 0x14
/* 8017EFDC  A8 81 00 3C */	lha r4, 0x3c(r1)
/* 8017EFE0  48 0F 1F B9 */	bl __ct__7cSAngleFs
/* 8017EFE4  A8 01 00 14 */	lha r0, 0x14(r1)
/* 8017EFE8  B0 1E 00 62 */	sth r0, 0x62(r30)
/* 8017EFEC  38 61 00 C0 */	addi r3, r1, 0xc0
/* 8017EFF0  38 9E 00 5C */	addi r4, r30, 0x5c
/* 8017EFF4  48 0F 2A C1 */	bl Xyz__7cSGlobeCFv
/* 8017EFF8  38 61 00 B4 */	addi r3, r1, 0xb4
/* 8017EFFC  38 9E 00 64 */	addi r4, r30, 0x64
/* 8017F000  38 A1 00 C0 */	addi r5, r1, 0xc0
/* 8017F004  48 0E 7A E1 */	bl __pl__4cXyzCFRC3Vec
/* 8017F008  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 8017F00C  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 8017F010  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 8017F014  D0 1E 00 74 */	stfs f0, 0x74(r30)
/* 8017F018  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 8017F01C  D0 1E 00 78 */	stfs f0, 0x78(r30)
/* 8017F020  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 8017F024  EC 19 08 28 */	fsubs f0, f25, f1
/* 8017F028  EC 16 00 32 */	fmuls f0, f22, f0
/* 8017F02C  EC 01 00 2A */	fadds f0, f1, f0
/* 8017F030  D0 1E 00 80 */	stfs f0, 0x80(r30)
/* 8017F034  80 9E 01 74 */	lwz r4, 0x174(r30)
/* 8017F038  80 7E 03 EC */	lwz r3, 0x3ec(r30)
/* 8017F03C  38 03 FF FF */	addi r0, r3, -1
/* 8017F040  7C 04 00 40 */	cmplw r4, r0
/* 8017F044  41 80 00 0C */	blt lbl_8017F050
/* 8017F048  38 00 00 01 */	li r0, 1
/* 8017F04C  98 1E 01 58 */	stb r0, 0x158(r30)
lbl_8017F050:
/* 8017F050  38 60 00 01 */	li r3, 1
/* 8017F054  48 00 01 A0 */	b lbl_8017F1F4
lbl_8017F058:
/* 8017F058  38 61 00 A8 */	addi r3, r1, 0xa8
/* 8017F05C  38 81 01 74 */	addi r4, r1, 0x174
/* 8017F060  38 BE 00 64 */	addi r5, r30, 0x64
/* 8017F064  48 0E 7A D1 */	bl __mi__4cXyzCFRC3Vec
/* 8017F068  38 61 00 9C */	addi r3, r1, 0x9c
/* 8017F06C  38 81 00 A8 */	addi r4, r1, 0xa8
/* 8017F070  38 A1 01 80 */	addi r5, r1, 0x180
/* 8017F074  48 0E 7B 5D */	bl __ml__4cXyzCFRC3Vec
/* 8017F078  38 7E 00 64 */	addi r3, r30, 0x64
/* 8017F07C  38 81 00 9C */	addi r4, r1, 0x9c
/* 8017F080  7C 65 1B 78 */	mr r5, r3
/* 8017F084  48 1C 80 0D */	bl PSVECAdd
/* 8017F088  38 61 00 90 */	addi r3, r1, 0x90
/* 8017F08C  38 81 01 A4 */	addi r4, r1, 0x1a4
/* 8017F090  38 BE 00 64 */	addi r5, r30, 0x64
/* 8017F094  48 0E 7A A1 */	bl __mi__4cXyzCFRC3Vec
/* 8017F098  38 61 00 60 */	addi r3, r1, 0x60
/* 8017F09C  38 81 00 90 */	addi r4, r1, 0x90
/* 8017F0A0  48 0F 27 E1 */	bl __ct__7cSGlobeFRC4cXyz
/* 8017F0A4  80 1E 0A F4 */	lwz r0, 0xaf4(r30)
/* 8017F0A8  7C 60 FA 14 */	add r3, r0, r31
/* 8017F0AC  A0 03 00 06 */	lhz r0, 6(r3)
/* 8017F0B0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8017F0B4  41 82 00 2C */	beq lbl_8017F0E0
/* 8017F0B8  38 61 00 38 */	addi r3, r1, 0x38
/* 8017F0BC  A8 1E 07 D0 */	lha r0, 0x7d0(r30)
/* 8017F0C0  7C 00 00 D0 */	neg r0, r0
/* 8017F0C4  7C 04 07 34 */	extsh r4, r0
/* 8017F0C8  48 0F 1E D1 */	bl __ct__7cSAngleFs
/* 8017F0CC  38 61 00 10 */	addi r3, r1, 0x10
/* 8017F0D0  A8 81 00 38 */	lha r4, 0x38(r1)
/* 8017F0D4  48 0F 1E C5 */	bl __ct__7cSAngleFs
/* 8017F0D8  A8 01 00 10 */	lha r0, 0x10(r1)
/* 8017F0DC  B0 01 00 64 */	sth r0, 0x64(r1)
lbl_8017F0E0:
/* 8017F0E0  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8017F0E4  FC 00 E0 40 */	fcmpo cr0, f0, f28
/* 8017F0E8  40 80 00 08 */	bge lbl_8017F0F0
/* 8017F0EC  D3 81 00 60 */	stfs f28, 0x60(r1)
lbl_8017F0F0:
/* 8017F0F0  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8017F0F4  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 8017F0F8  40 81 00 08 */	ble lbl_8017F100
/* 8017F0FC  D3 A1 00 60 */	stfs f29, 0x60(r1)
lbl_8017F100:
/* 8017F100  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 8017F104  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8017F108  EC 00 08 28 */	fsubs f0, f0, f1
/* 8017F10C  EC 1A 00 32 */	fmuls f0, f26, f0
/* 8017F110  EC 01 00 2A */	fadds f0, f1, f0
/* 8017F114  D0 1E 00 5C */	stfs f0, 0x5c(r30)
/* 8017F118  38 61 00 34 */	addi r3, r1, 0x34
/* 8017F11C  38 81 00 64 */	addi r4, r1, 0x64
/* 8017F120  3B FE 00 60 */	addi r31, r30, 0x60
/* 8017F124  7F E5 FB 78 */	mr r5, r31
/* 8017F128  48 0F 20 7D */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017F12C  38 61 00 30 */	addi r3, r1, 0x30
/* 8017F130  38 81 00 34 */	addi r4, r1, 0x34
/* 8017F134  FC 20 D0 90 */	fmr f1, f26
/* 8017F138  48 0F 21 2D */	bl __ml__7cSAngleCFf
/* 8017F13C  38 61 00 2C */	addi r3, r1, 0x2c
/* 8017F140  7F E4 FB 78 */	mr r4, r31
/* 8017F144  38 A1 00 30 */	addi r5, r1, 0x30
/* 8017F148  48 0F 20 2D */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017F14C  38 61 00 0C */	addi r3, r1, 0xc
/* 8017F150  A8 81 00 2C */	lha r4, 0x2c(r1)
/* 8017F154  48 0F 1E 45 */	bl __ct__7cSAngleFs
/* 8017F158  A8 01 00 0C */	lha r0, 0xc(r1)
/* 8017F15C  B0 1E 00 60 */	sth r0, 0x60(r30)
/* 8017F160  38 61 00 28 */	addi r3, r1, 0x28
/* 8017F164  38 81 00 66 */	addi r4, r1, 0x66
/* 8017F168  3B FE 00 62 */	addi r31, r30, 0x62
/* 8017F16C  7F E5 FB 78 */	mr r5, r31
/* 8017F170  48 0F 20 35 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017F174  38 61 00 24 */	addi r3, r1, 0x24
/* 8017F178  38 81 00 28 */	addi r4, r1, 0x28
/* 8017F17C  FC 20 D0 90 */	fmr f1, f26
/* 8017F180  48 0F 20 E5 */	bl __ml__7cSAngleCFf
/* 8017F184  38 61 00 20 */	addi r3, r1, 0x20
/* 8017F188  7F E4 FB 78 */	mr r4, r31
/* 8017F18C  38 A1 00 24 */	addi r5, r1, 0x24
/* 8017F190  48 0F 1F E5 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017F194  38 61 00 08 */	addi r3, r1, 8
/* 8017F198  A8 81 00 20 */	lha r4, 0x20(r1)
/* 8017F19C  48 0F 1D FD */	bl __ct__7cSAngleFs
/* 8017F1A0  A8 01 00 08 */	lha r0, 8(r1)
/* 8017F1A4  B0 1E 00 62 */	sth r0, 0x62(r30)
/* 8017F1A8  38 61 00 84 */	addi r3, r1, 0x84
/* 8017F1AC  38 9E 00 5C */	addi r4, r30, 0x5c
/* 8017F1B0  48 0F 29 05 */	bl Xyz__7cSGlobeCFv
/* 8017F1B4  38 61 00 78 */	addi r3, r1, 0x78
/* 8017F1B8  38 9E 00 64 */	addi r4, r30, 0x64
/* 8017F1BC  38 A1 00 84 */	addi r5, r1, 0x84
/* 8017F1C0  48 0E 79 25 */	bl __pl__4cXyzCFRC3Vec
/* 8017F1C4  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8017F1C8  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 8017F1CC  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8017F1D0  D0 1E 00 74 */	stfs f0, 0x74(r30)
/* 8017F1D4  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 8017F1D8  D0 1E 00 78 */	stfs f0, 0x78(r30)
/* 8017F1DC  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 8017F1E0  EC 19 08 28 */	fsubs f0, f25, f1
/* 8017F1E4  EC 1A 00 32 */	fmuls f0, f26, f0
/* 8017F1E8  EC 01 00 2A */	fadds f0, f1, f0
/* 8017F1EC  D0 1E 00 80 */	stfs f0, 0x80(r30)
/* 8017F1F0  38 60 00 01 */	li r3, 1
lbl_8017F1F4:
/* 8017F1F4  E3 E1 02 68 */	psq_l f31, 616(r1), 0, 0 /* qr0 */
/* 8017F1F8  CB E1 02 60 */	lfd f31, 0x260(r1)
/* 8017F1FC  E3 C1 02 58 */	psq_l f30, 600(r1), 0, 0 /* qr0 */
/* 8017F200  CB C1 02 50 */	lfd f30, 0x250(r1)
/* 8017F204  E3 A1 02 48 */	psq_l f29, 584(r1), 0, 0 /* qr0 */
/* 8017F208  CB A1 02 40 */	lfd f29, 0x240(r1)
/* 8017F20C  E3 81 02 38 */	psq_l f28, 568(r1), 0, 0 /* qr0 */
/* 8017F210  CB 81 02 30 */	lfd f28, 0x230(r1)
/* 8017F214  E3 61 02 28 */	psq_l f27, 552(r1), 0, 0 /* qr0 */
/* 8017F218  CB 61 02 20 */	lfd f27, 0x220(r1)
/* 8017F21C  E3 41 02 18 */	psq_l f26, 536(r1), 0, 0 /* qr0 */
/* 8017F220  CB 41 02 10 */	lfd f26, 0x210(r1)
/* 8017F224  E3 21 02 08 */	psq_l f25, 520(r1), 0, 0 /* qr0 */
/* 8017F228  CB 21 02 00 */	lfd f25, 0x200(r1)
/* 8017F22C  E3 01 01 F8 */	psq_l f24, 504(r1), 0, 0 /* qr0 */
/* 8017F230  CB 01 01 F0 */	lfd f24, 0x1f0(r1)
/* 8017F234  E2 E1 01 E8 */	psq_l f23, 488(r1), 0, 0 /* qr0 */
/* 8017F238  CA E1 01 E0 */	lfd f23, 0x1e0(r1)
/* 8017F23C  E2 C1 01 D8 */	psq_l f22, 472(r1), 0, 0 /* qr0 */
/* 8017F240  CA C1 01 D0 */	lfd f22, 0x1d0(r1)
/* 8017F244  83 E1 01 CC */	lwz r31, 0x1cc(r1)
/* 8017F248  83 C1 01 C8 */	lwz r30, 0x1c8(r1)
/* 8017F24C  80 01 02 74 */	lwz r0, 0x274(r1)
/* 8017F250  7C 08 03 A6 */	mtlr r0
/* 8017F254  38 21 02 70 */	addi r1, r1, 0x270
/* 8017F258  4E 80 00 20 */	blr 
