lbl_80BD2758:
/* 80BD2758  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BD275C  7C 08 02 A6 */	mflr r0
/* 80BD2760  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BD2764  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BD2768  7C 7F 1B 78 */	mr r31, r3
/* 80BD276C  3C 60 80 BD */	lis r3, ccCylSrc@ha
/* 80BD2770  38 83 30 C0 */	addi r4, r3, ccCylSrc@l
/* 80BD2774  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80BD2778  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BD277C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80BD2780  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80BD2784  7C C3 04 2E */	lfsx f6, r3, r0
/* 80BD2788  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80BD278C  C0 24 00 E0 */	lfs f1, 0xe0(r4)
/* 80BD2790  EC 01 01 B2 */	fmuls f0, f1, f6
/* 80BD2794  EC A3 00 28 */	fsubs f5, f3, f0
/* 80BD2798  C0 9F 04 D4 */	lfs f4, 0x4d4(r31)
/* 80BD279C  38 63 00 04 */	addi r3, r3, 4
/* 80BD27A0  7C E3 04 2E */	lfsx f7, r3, r0
/* 80BD27A4  C0 5F 04 D0 */	lfs f2, 0x4d0(r31)
/* 80BD27A8  EC 01 01 F2 */	fmuls f0, f1, f7
/* 80BD27AC  EC 02 00 2A */	fadds f0, f2, f0
/* 80BD27B0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BD27B4  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 80BD27B8  D0 A1 00 20 */	stfs f5, 0x20(r1)
/* 80BD27BC  C0 24 00 9C */	lfs f1, 0x9c(r4)
/* 80BD27C0  EC 01 01 B2 */	fmuls f0, f1, f6
/* 80BD27C4  EC A3 00 28 */	fsubs f5, f3, f0
/* 80BD27C8  C0 04 00 A0 */	lfs f0, 0xa0(r4)
/* 80BD27CC  EC 60 20 2A */	fadds f3, f0, f4
/* 80BD27D0  EC 01 01 F2 */	fmuls f0, f1, f7
/* 80BD27D4  EC 02 00 2A */	fadds f0, f2, f0
/* 80BD27D8  D0 1F 05 E0 */	stfs f0, 0x5e0(r31)
/* 80BD27DC  D0 7F 05 E4 */	stfs f3, 0x5e4(r31)
/* 80BD27E0  D0 BF 05 E8 */	stfs f5, 0x5e8(r31)
/* 80BD27E4  38 61 00 10 */	addi r3, r1, 0x10
/* 80BD27E8  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80BD27EC  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80BD27F0  3C A5 00 01 */	addis r5, r5, 1
/* 80BD27F4  38 05 80 00 */	addi r0, r5, -32768
/* 80BD27F8  7C 05 07 34 */	extsh r5, r0
/* 80BD27FC  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80BD2800  4B 69 4B F4 */	b __ct__5csXyzFsss
/* 80BD2804  88 1F 05 AC */	lbz r0, 0x5ac(r31)
/* 80BD2808  28 00 00 FF */	cmplwi r0, 0xff
/* 80BD280C  40 82 00 84 */	bne lbl_80BD2890
/* 80BD2810  C0 1F 05 E0 */	lfs f0, 0x5e0(r31)
/* 80BD2814  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80BD2818  C0 1F 05 E4 */	lfs f0, 0x5e4(r31)
/* 80BD281C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80BD2820  C0 1F 05 E8 */	lfs f0, 0x5e8(r31)
/* 80BD2824  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80BD2828  38 00 00 20 */	li r0, 0x20
/* 80BD282C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80BD2830  38 00 00 0F */	li r0, 0xf
/* 80BD2834  98 1F 05 49 */	stb r0, 0x549(r31)
/* 80BD2838  38 00 00 01 */	li r0, 1
/* 80BD283C  98 1F 05 AC */	stb r0, 0x5ac(r31)
/* 80BD2840  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BD2844  7C 07 07 74 */	extsb r7, r0
/* 80BD2848  38 00 00 00 */	li r0, 0
/* 80BD284C  90 01 00 08 */	stw r0, 8(r1)
/* 80BD2850  38 60 00 6F */	li r3, 0x6f
/* 80BD2854  28 1F 00 00 */	cmplwi r31, 0
/* 80BD2858  41 82 00 0C */	beq lbl_80BD2864
/* 80BD285C  80 9F 00 04 */	lwz r4, 4(r31)
/* 80BD2860  48 00 00 08 */	b lbl_80BD2868
lbl_80BD2864:
/* 80BD2864  38 80 FF FF */	li r4, -1
lbl_80BD2868:
/* 80BD2868  38 A0 00 01 */	li r5, 1
/* 80BD286C  38 C1 00 18 */	addi r6, r1, 0x18
/* 80BD2870  39 01 00 10 */	addi r8, r1, 0x10
/* 80BD2874  39 20 00 00 */	li r9, 0
/* 80BD2878  39 40 FF FF */	li r10, -1
/* 80BD287C  4B 44 76 74 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80BD2880  90 7F 06 40 */	stw r3, 0x640(r31)
/* 80BD2884  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80BD2888  B0 1F 06 44 */	sth r0, 0x644(r31)
/* 80BD288C  48 00 00 20 */	b lbl_80BD28AC
lbl_80BD2890:
/* 80BD2890  38 00 00 00 */	li r0, 0
/* 80BD2894  98 1F 05 AC */	stb r0, 0x5ac(r31)
/* 80BD2898  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80BD289C  B0 1F 06 44 */	sth r0, 0x644(r31)
/* 80BD28A0  80 7F 04 A4 */	lwz r3, 0x4a4(r31)
/* 80BD28A4  38 9F 05 B4 */	addi r4, r31, 0x5b4
/* 80BD28A8  4B 44 71 14 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
lbl_80BD28AC:
/* 80BD28AC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BD28B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BD28B4  7C 08 03 A6 */	mtlr r0
/* 80BD28B8  38 21 00 30 */	addi r1, r1, 0x30
/* 80BD28BC  4E 80 00 20 */	blr 
