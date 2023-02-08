lbl_80C77668:
/* 80C77668  A0 03 05 B6 */	lhz r0, 0x5b6(r3)
/* 80C7766C  A0 A3 05 B2 */	lhz r5, 0x5b2(r3)
/* 80C77670  7C 00 28 40 */	cmplw r0, r5
/* 80C77674  40 82 00 14 */	bne lbl_80C77688
/* 80C77678  A0 83 05 B8 */	lhz r4, 0x5b8(r3)
/* 80C7767C  A0 03 05 B4 */	lhz r0, 0x5b4(r3)
/* 80C77680  7C 04 00 40 */	cmplw r4, r0
/* 80C77684  41 82 00 90 */	beq lbl_80C77714
lbl_80C77688:
/* 80C77688  A0 03 05 B4 */	lhz r0, 0x5b4(r3)
/* 80C7768C  7C 05 00 40 */	cmplw r5, r0
/* 80C77690  40 82 00 18 */	bne lbl_80C776A8
/* 80C77694  3C 80 80 C7 */	lis r4, lit_3670@ha /* 0x80C779B8@ha */
/* 80C77698  C0 04 79 B8 */	lfs f0, lit_3670@l(r4)  /* 0x80C779B8@l */
/* 80C7769C  D0 03 05 C4 */	stfs f0, 0x5c4(r3)
/* 80C776A0  D0 03 05 C8 */	stfs f0, 0x5c8(r3)
/* 80C776A4  48 00 00 48 */	b lbl_80C776EC
lbl_80C776A8:
/* 80C776A8  40 81 00 24 */	ble lbl_80C776CC
/* 80C776AC  3C 80 80 C7 */	lis r4, l_HIO@ha /* 0x80C77ADC@ha */
/* 80C776B0  38 84 7A DC */	addi r4, r4, l_HIO@l /* 0x80C77ADC@l */
/* 80C776B4  C0 04 00 08 */	lfs f0, 8(r4)
/* 80C776B8  FC 00 00 50 */	fneg f0, f0
/* 80C776BC  D0 03 05 C4 */	stfs f0, 0x5c4(r3)
/* 80C776C0  C0 04 00 08 */	lfs f0, 8(r4)
/* 80C776C4  D0 03 05 C8 */	stfs f0, 0x5c8(r3)
/* 80C776C8  48 00 00 24 */	b lbl_80C776EC
lbl_80C776CC:
/* 80C776CC  40 80 00 20 */	bge lbl_80C776EC
/* 80C776D0  3C 80 80 C7 */	lis r4, l_HIO@ha /* 0x80C77ADC@ha */
/* 80C776D4  38 84 7A DC */	addi r4, r4, l_HIO@l /* 0x80C77ADC@l */
/* 80C776D8  C0 04 00 08 */	lfs f0, 8(r4)
/* 80C776DC  D0 03 05 C4 */	stfs f0, 0x5c4(r3)
/* 80C776E0  C0 04 00 08 */	lfs f0, 8(r4)
/* 80C776E4  FC 00 00 50 */	fneg f0, f0
/* 80C776E8  D0 03 05 C8 */	stfs f0, 0x5c8(r3)
lbl_80C776EC:
/* 80C776EC  3C 80 80 C7 */	lis r4, l_HIO@ha /* 0x80C77ADC@ha */
/* 80C776F0  38 84 7A DC */	addi r4, r4, l_HIO@l /* 0x80C77ADC@l */
/* 80C776F4  88 04 00 40 */	lbz r0, 0x40(r4)
/* 80C776F8  98 03 05 CC */	stb r0, 0x5cc(r3)
/* 80C776FC  3C 80 80 C7 */	lis r4, lit_3670@ha /* 0x80C779B8@ha */
/* 80C77700  C0 04 79 B8 */	lfs f0, lit_3670@l(r4)  /* 0x80C779B8@l */
/* 80C77704  D0 03 05 DC */	stfs f0, 0x5dc(r3)
/* 80C77708  D0 03 06 08 */	stfs f0, 0x608(r3)
/* 80C7770C  38 00 00 00 */	li r0, 0
/* 80C77710  98 03 06 18 */	stb r0, 0x618(r3)
lbl_80C77714:
/* 80C77714  88 83 05 CC */	lbz r4, 0x5cc(r3)
/* 80C77718  28 04 00 00 */	cmplwi r4, 0
/* 80C7771C  4D 82 00 20 */	beqlr 
/* 80C77720  38 04 FF FF */	addi r0, r4, -1
/* 80C77724  98 03 05 CC */	stb r0, 0x5cc(r3)
/* 80C77728  4E 80 00 20 */	blr 
