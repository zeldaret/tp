lbl_80C21634:
/* 80C21634  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80C21638  7C 08 02 A6 */	mflr r0
/* 80C2163C  90 01 00 94 */	stw r0, 0x94(r1)
/* 80C21640  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80C21644  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80C21648  39 61 00 80 */	addi r11, r1, 0x80
/* 80C2164C  4B 74 0B 91 */	bl _savegpr_29
/* 80C21650  7C 7D 1B 78 */	mr r29, r3
/* 80C21654  7C 9E 23 78 */	mr r30, r4
/* 80C21658  3C 60 80 C2 */	lis r3, lit_3644@ha /* 0x80C21AF8@ha */
/* 80C2165C  3B E3 1A F8 */	addi r31, r3, lit_3644@l /* 0x80C21AF8@l */
/* 80C21660  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80C21664  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80C21668  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80C2166C  EC 21 00 2A */	fadds f1, f1, f0
/* 80C21670  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80C21674  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C21678  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C2167C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80C21680  3C 60 80 C2 */	lis r3, l_HIO@ha /* 0x80C21C48@ha */
/* 80C21684  38 63 1C 48 */	addi r3, r3, l_HIO@l /* 0x80C21C48@l */
/* 80C21688  C3 E3 00 0C */	lfs f31, 0xc(r3)
/* 80C2168C  38 7D 05 A4 */	addi r3, r29, 0x5a4
/* 80C21690  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80C21694  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 80C21698  4B 64 F0 A9 */	bl cLib_chaseF__FPfff
/* 80C2169C  38 7D 05 D8 */	addi r3, r29, 0x5d8
/* 80C216A0  38 80 00 00 */	li r4, 0
/* 80C216A4  38 A0 01 00 */	li r5, 0x100
/* 80C216A8  4B 64 F0 29 */	bl cLib_chaseS__FPsss
/* 80C216AC  A8 1D 05 D4 */	lha r0, 0x5d4(r29)
/* 80C216B0  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80C216B4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C216B8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C216BC  3C 60 43 30 */	lis r3, 0x4330
/* 80C216C0  90 61 00 18 */	stw r3, 0x18(r1)
/* 80C216C4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80C216C8  EC 20 20 28 */	fsubs f1, f0, f4
/* 80C216CC  C0 7F 00 74 */	lfs f3, 0x74(r31)
/* 80C216D0  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 80C216D4  C0 1D 05 A0 */	lfs f0, 0x5a0(r29)
/* 80C216D8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C216DC  EC 03 00 2A */	fadds f0, f3, f0
/* 80C216E0  EC 01 00 2A */	fadds f0, f1, f0
/* 80C216E4  FC 00 00 1E */	fctiwz f0, f0
/* 80C216E8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80C216EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C216F0  B0 1D 05 D4 */	sth r0, 0x5d4(r29)
/* 80C216F4  A8 1D 05 D6 */	lha r0, 0x5d6(r29)
/* 80C216F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C216FC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80C21700  90 61 00 28 */	stw r3, 0x28(r1)
/* 80C21704  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80C21708  EC 20 20 28 */	fsubs f1, f0, f4
/* 80C2170C  C0 1D 05 A0 */	lfs f0, 0x5a0(r29)
/* 80C21710  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C21714  EC 03 00 2A */	fadds f0, f3, f0
/* 80C21718  EC 01 00 2A */	fadds f0, f1, f0
/* 80C2171C  FC 00 00 1E */	fctiwz f0, f0
/* 80C21720  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80C21724  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C21728  B0 1D 05 D6 */	sth r0, 0x5d6(r29)
/* 80C2172C  A8 7D 05 D6 */	lha r3, 0x5d6(r29)
/* 80C21730  A8 1D 05 E6 */	lha r0, 0x5e6(r29)
/* 80C21734  7C 03 02 14 */	add r0, r3, r0
/* 80C21738  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C2173C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C21740  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C21744  7C 83 04 2E */	lfsx f4, r3, r0
/* 80C21748  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 80C2174C  C0 7D 05 E0 */	lfs f3, 0x5e0(r29)
/* 80C21750  C0 5D 05 B0 */	lfs f2, 0x5b0(r29)
/* 80C21754  C0 3D 05 A4 */	lfs f1, 0x5a4(r29)
/* 80C21758  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80C2175C  EC 00 F8 2A */	fadds f0, f0, f31
/* 80C21760  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C21764  EC 22 00 2A */	fadds f1, f2, f0
/* 80C21768  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80C2176C  EC 00 01 32 */	fmuls f0, f0, f4
/* 80C21770  EC 01 00 2A */	fadds f0, f1, f0
/* 80C21774  EC 23 00 2A */	fadds f1, f3, f0
/* 80C21778  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 80C2177C  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 80C21780  FC 80 10 90 */	fmr f4, f2
/* 80C21784  4B 64 E1 F9 */	bl cLib_addCalc__FPfffff
/* 80C21788  A8 9D 05 D8 */	lha r4, 0x5d8(r29)
/* 80C2178C  A8 7D 05 D4 */	lha r3, 0x5d4(r29)
/* 80C21790  A8 1D 05 E6 */	lha r0, 0x5e6(r29)
/* 80C21794  7C 03 02 14 */	add r0, r3, r0
/* 80C21798  7C 60 22 14 */	add r3, r0, r4
/* 80C2179C  38 03 20 00 */	addi r0, r3, 0x2000
/* 80C217A0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C217A4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C217A8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C217AC  7C 83 04 2E */	lfsx f4, r3, r0
/* 80C217B0  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 80C217B4  A8 1D 05 DA */	lha r0, 0x5da(r29)
/* 80C217B8  C8 7F 00 10 */	lfd f3, 0x10(r31)
/* 80C217BC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C217C0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80C217C4  3C 80 43 30 */	lis r4, 0x4330
/* 80C217C8  90 81 00 38 */	stw r4, 0x38(r1)
/* 80C217CC  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80C217D0  EC 40 18 28 */	fsubs f2, f0, f3
/* 80C217D4  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 80C217D8  A8 1D 05 AC */	lha r0, 0x5ac(r29)
/* 80C217DC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C217E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C217E4  90 81 00 40 */	stw r4, 0x40(r1)
/* 80C217E8  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80C217EC  EC 00 18 28 */	fsubs f0, f0, f3
/* 80C217F0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C217F4  EC 00 01 32 */	fmuls f0, f0, f4
/* 80C217F8  EC 02 00 2A */	fadds f0, f2, f0
/* 80C217FC  FC 00 00 1E */	fctiwz f0, f0
/* 80C21800  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80C21804  80 81 00 4C */	lwz r4, 0x4c(r1)
/* 80C21808  38 A0 00 02 */	li r5, 2
/* 80C2180C  38 C0 01 00 */	li r6, 0x100
/* 80C21810  38 E0 00 01 */	li r7, 1
/* 80C21814  4B 64 ED 2D */	bl cLib_addCalcAngleS__FPsssss
/* 80C21818  A8 9D 05 D8 */	lha r4, 0x5d8(r29)
/* 80C2181C  A8 7D 05 D6 */	lha r3, 0x5d6(r29)
/* 80C21820  A8 1D 05 E6 */	lha r0, 0x5e6(r29)
/* 80C21824  7C 00 22 14 */	add r0, r0, r4
/* 80C21828  7C 03 02 14 */	add r0, r3, r0
/* 80C2182C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C21830  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C21834  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C21838  7C 83 04 2E */	lfsx f4, r3, r0
/* 80C2183C  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 80C21840  A8 1D 05 DE */	lha r0, 0x5de(r29)
/* 80C21844  C8 7F 00 10 */	lfd f3, 0x10(r31)
/* 80C21848  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C2184C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C21850  3C 80 43 30 */	lis r4, 0x4330
/* 80C21854  90 81 00 50 */	stw r4, 0x50(r1)
/* 80C21858  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80C2185C  EC 40 18 28 */	fsubs f2, f0, f3
/* 80C21860  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 80C21864  A8 1D 05 AC */	lha r0, 0x5ac(r29)
/* 80C21868  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C2186C  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80C21870  90 81 00 58 */	stw r4, 0x58(r1)
/* 80C21874  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80C21878  EC 00 18 28 */	fsubs f0, f0, f3
/* 80C2187C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C21880  EC 00 01 32 */	fmuls f0, f0, f4
/* 80C21884  EC 02 00 2A */	fadds f0, f2, f0
/* 80C21888  FC 00 00 1E */	fctiwz f0, f0
/* 80C2188C  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80C21890  80 81 00 64 */	lwz r4, 0x64(r1)
/* 80C21894  38 A0 00 02 */	li r5, 2
/* 80C21898  38 C0 01 00 */	li r6, 0x100
/* 80C2189C  38 E0 00 01 */	li r7, 1
/* 80C218A0  4B 64 EC A1 */	bl cLib_addCalcAngleS__FPsssss
/* 80C218A4  88 1D 05 E8 */	lbz r0, 0x5e8(r29)
/* 80C218A8  28 00 00 00 */	cmplwi r0, 0
/* 80C218AC  40 82 00 7C */	bne lbl_80C21928
/* 80C218B0  38 7D 05 DA */	addi r3, r29, 0x5da
/* 80C218B4  38 80 00 00 */	li r4, 0
/* 80C218B8  38 A0 00 02 */	li r5, 2
/* 80C218BC  38 C0 01 00 */	li r6, 0x100
/* 80C218C0  38 E0 00 01 */	li r7, 1
/* 80C218C4  4B 64 EC 7D */	bl cLib_addCalcAngleS__FPsssss
/* 80C218C8  38 7D 05 DE */	addi r3, r29, 0x5de
/* 80C218CC  38 80 00 00 */	li r4, 0
/* 80C218D0  38 A0 00 02 */	li r5, 2
/* 80C218D4  38 C0 01 00 */	li r6, 0x100
/* 80C218D8  38 E0 00 01 */	li r7, 1
/* 80C218DC  4B 64 EC 65 */	bl cLib_addCalcAngleS__FPsssss
/* 80C218E0  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 80C218E4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80C218E8  C0 5F 00 8C */	lfs f2, 0x8c(r31)
/* 80C218EC  C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 80C218F0  FC 80 08 90 */	fmr f4, f1
/* 80C218F4  4B 64 E0 89 */	bl cLib_addCalc__FPfffff
/* 80C218F8  38 7D 05 A0 */	addi r3, r29, 0x5a0
/* 80C218FC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80C21900  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 80C21904  C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 80C21908  FC 80 08 90 */	fmr f4, f1
/* 80C2190C  4B 64 E0 71 */	bl cLib_addCalc__FPfffff
/* 80C21910  38 00 00 00 */	li r0, 0
/* 80C21914  B0 1D 05 E4 */	sth r0, 0x5e4(r29)
/* 80C21918  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 80C2191C  38 80 01 20 */	li r4, 0x120
/* 80C21920  38 A0 00 10 */	li r5, 0x10
/* 80C21924  4B 64 F2 6D */	bl cLib_chaseAngleS__FPsss
lbl_80C21928:
/* 80C21928  38 00 00 00 */	li r0, 0
/* 80C2192C  98 1D 05 E8 */	stb r0, 0x5e8(r29)
/* 80C21930  38 1D 05 6C */	addi r0, r29, 0x56c
/* 80C21934  90 1E 00 00 */	stw r0, 0(r30)
/* 80C21938  7F A3 EB 78 */	mr r3, r29
/* 80C2193C  4B FF F5 B1 */	bl setBaseMtx__12daObjIce_s_cFv
/* 80C21940  38 60 00 01 */	li r3, 1
/* 80C21944  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80C21948  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80C2194C  39 61 00 80 */	addi r11, r1, 0x80
/* 80C21950  4B 74 08 D9 */	bl _restgpr_29
/* 80C21954  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80C21958  7C 08 03 A6 */	mtlr r0
/* 80C2195C  38 21 00 90 */	addi r1, r1, 0x90
/* 80C21960  4E 80 00 20 */	blr 
