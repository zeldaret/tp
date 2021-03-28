lbl_80A0B380:
/* 80A0B380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0B384  7C 08 02 A6 */	mflr r0
/* 80A0B388  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0B38C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A0B390  7C 7F 1B 78 */	mr r31, r3
/* 80A0B394  80 03 0B D8 */	lwz r0, 0xbd8(r3)
/* 80A0B398  28 00 00 00 */	cmplwi r0, 0
/* 80A0B39C  41 82 00 A8 */	beq lbl_80A0B444
/* 80A0B3A0  3C 80 80 A1 */	lis r4, l_btkGetParamList@ha
/* 80A0B3A4  38 A4 C6 94 */	addi r5, r4, l_btkGetParamList@l
/* 80A0B3A8  80 05 00 08 */	lwz r0, 8(r5)
/* 80A0B3AC  54 00 10 3A */	slwi r0, r0, 2
/* 80A0B3B0  3C 80 80 A1 */	lis r4, l_arcNames@ha
/* 80A0B3B4  38 84 C6 C4 */	addi r4, r4, l_arcNames@l
/* 80A0B3B8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A0B3BC  80 A5 00 00 */	lwz r5, 0(r5)
/* 80A0B3C0  4B 74 77 E4 */	b getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80A0B3C4  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 80A0B3C8  7C 03 00 40 */	cmplw r3, r0
/* 80A0B3CC  40 82 00 6C */	bne lbl_80A0B438
/* 80A0B3D0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80A0B3D4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80A0B3D8  A8 9F 08 FE */	lha r4, 0x8fe(r31)
/* 80A0B3DC  48 00 05 79 */	bl func_80A0B954
/* 80A0B3E0  3C 60 80 A1 */	lis r3, lit_4889@ha
/* 80A0B3E4  C0 43 C4 8C */	lfs f2, lit_4889@l(r3)
/* 80A0B3E8  3C 60 80 A1 */	lis r3, lit_5328@ha
/* 80A0B3EC  C0 03 C4 B4 */	lfs f0, lit_5328@l(r3)
/* 80A0B3F0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80A0B3F4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A0B3F8  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80A0B3FC  D0 03 00 FC */	stfs f0, 0xfc(r3)
/* 80A0B400  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80A0B404  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80A0B408  A8 9F 08 FC */	lha r4, 0x8fc(r31)
/* 80A0B40C  48 00 05 49 */	bl func_80A0B954
/* 80A0B410  3C 60 80 A1 */	lis r3, lit_5328@ha
/* 80A0B414  C0 03 C4 B4 */	lfs f0, lit_5328@l(r3)
/* 80A0B418  EC 00 00 72 */	fmuls f0, f0, f1
/* 80A0B41C  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80A0B420  D0 03 01 00 */	stfs f0, 0x100(r3)
/* 80A0B424  38 00 00 01 */	li r0, 1
/* 80A0B428  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80A0B42C  98 03 01 04 */	stb r0, 0x104(r3)
/* 80A0B430  38 60 00 01 */	li r3, 1
/* 80A0B434  48 00 00 14 */	b lbl_80A0B448
lbl_80A0B438:
/* 80A0B438  38 00 00 00 */	li r0, 0
/* 80A0B43C  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80A0B440  98 03 01 04 */	stb r0, 0x104(r3)
lbl_80A0B444:
/* 80A0B444  38 60 00 00 */	li r3, 0
lbl_80A0B448:
/* 80A0B448  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A0B44C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0B450  7C 08 03 A6 */	mtlr r0
/* 80A0B454  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0B458  4E 80 00 20 */	blr 
