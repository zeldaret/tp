lbl_80B404FC:
/* 80B404FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B40500  7C 08 02 A6 */	mflr r0
/* 80B40504  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B40508  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4050C  7C 7F 1B 78 */	mr r31, r3
/* 80B40510  80 03 0B E0 */	lwz r0, 0xbe0(r3)
/* 80B40514  28 00 00 00 */	cmplwi r0, 0
/* 80B40518  41 82 00 B8 */	beq lbl_80B405D0
/* 80B4051C  80 9F 0E 04 */	lwz r4, 0xe04(r31)
/* 80B40520  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80B40524  80 A4 00 00 */	lwz r5, 0(r4)
/* 80B40528  2C 05 00 00 */	cmpwi r5, 0
/* 80B4052C  41 80 00 20 */	blt lbl_80B4054C
/* 80B40530  88 1F 0E 9B */	lbz r0, 0xe9b(r31)
/* 80B40534  54 00 10 3A */	slwi r0, r0, 2
/* 80B40538  3C 80 80 B4 */	lis r4, l_resName@ha
/* 80B4053C  38 84 1E 1C */	addi r4, r4, l_resName@l
/* 80B40540  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B40544  4B 61 26 60 */	b getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80B40548  48 00 00 08 */	b lbl_80B40550
lbl_80B4054C:
/* 80B4054C  38 60 00 00 */	li r3, 0
lbl_80B40550:
/* 80B40550  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 80B40554  7C 03 00 40 */	cmplw r3, r0
/* 80B40558  40 82 00 6C */	bne lbl_80B405C4
/* 80B4055C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80B40560  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80B40564  A8 9F 08 FE */	lha r4, 0x8fe(r31)
/* 80B40568  48 00 07 C1 */	bl func_80B40D28
/* 80B4056C  3C 60 80 B4 */	lis r3, lit_4799@ha
/* 80B40570  C0 43 18 A4 */	lfs f2, lit_4799@l(r3)
/* 80B40574  3C 60 80 B4 */	lis r3, lit_9389@ha
/* 80B40578  C0 03 1D 1C */	lfs f0, lit_9389@l(r3)
/* 80B4057C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B40580  EC 02 00 32 */	fmuls f0, f2, f0
/* 80B40584  80 7F 0B E0 */	lwz r3, 0xbe0(r31)
/* 80B40588  D0 03 00 FC */	stfs f0, 0xfc(r3)
/* 80B4058C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80B40590  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80B40594  A8 9F 08 FC */	lha r4, 0x8fc(r31)
/* 80B40598  48 00 07 91 */	bl func_80B40D28
/* 80B4059C  3C 60 80 B4 */	lis r3, lit_9389@ha
/* 80B405A0  C0 03 1D 1C */	lfs f0, lit_9389@l(r3)
/* 80B405A4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B405A8  80 7F 0B E0 */	lwz r3, 0xbe0(r31)
/* 80B405AC  D0 03 01 00 */	stfs f0, 0x100(r3)
/* 80B405B0  38 00 00 01 */	li r0, 1
/* 80B405B4  80 7F 0B E0 */	lwz r3, 0xbe0(r31)
/* 80B405B8  98 03 01 04 */	stb r0, 0x104(r3)
/* 80B405BC  38 60 00 01 */	li r3, 1
/* 80B405C0  48 00 00 14 */	b lbl_80B405D4
lbl_80B405C4:
/* 80B405C4  38 00 00 00 */	li r0, 0
/* 80B405C8  80 7F 0B E0 */	lwz r3, 0xbe0(r31)
/* 80B405CC  98 03 01 04 */	stb r0, 0x104(r3)
lbl_80B405D0:
/* 80B405D0  38 60 00 00 */	li r3, 0
lbl_80B405D4:
/* 80B405D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B405D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B405DC  7C 08 03 A6 */	mtlr r0
/* 80B405E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B405E4  4E 80 00 20 */	blr 
