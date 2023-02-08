lbl_80ABE9FC:
/* 80ABE9FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ABEA00  7C 08 02 A6 */	mflr r0
/* 80ABEA04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ABEA08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ABEA0C  7C 7F 1B 78 */	mr r31, r3
/* 80ABEA10  80 03 0B DC */	lwz r0, 0xbdc(r3)
/* 80ABEA14  28 00 00 00 */	cmplwi r0, 0
/* 80ABEA18  41 82 00 A8 */	beq lbl_80ABEAC0
/* 80ABEA1C  3C 80 80 AC */	lis r4, l_btkGetParamList@ha /* 0x80AC002C@ha */
/* 80ABEA20  38 A4 00 2C */	addi r5, r4, l_btkGetParamList@l /* 0x80AC002C@l */
/* 80ABEA24  80 05 00 08 */	lwz r0, 8(r5)
/* 80ABEA28  54 00 10 3A */	slwi r0, r0, 2
/* 80ABEA2C  3C 80 80 AC */	lis r4, l_arcNames@ha /* 0x80AC0098@ha */
/* 80ABEA30  38 84 00 98 */	addi r4, r4, l_arcNames@l /* 0x80AC0098@l */
/* 80ABEA34  7C 84 00 2E */	lwzx r4, r4, r0
/* 80ABEA38  80 A5 00 00 */	lwz r5, 0(r5)
/* 80ABEA3C  4B 69 41 69 */	bl getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80ABEA40  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 80ABEA44  7C 03 00 40 */	cmplw r3, r0
/* 80ABEA48  40 82 00 6C */	bne lbl_80ABEAB4
/* 80ABEA4C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80ABEA50  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80ABEA54  A8 9F 08 FE */	lha r4, 0x8fe(r31)
/* 80ABEA58  48 00 06 25 */	bl func_80ABF07C
/* 80ABEA5C  3C 60 80 AC */	lis r3, lit_5080@ha /* 0x80ABFD30@ha */
/* 80ABEA60  C0 43 FD 30 */	lfs f2, lit_5080@l(r3)  /* 0x80ABFD30@l */
/* 80ABEA64  3C 60 80 AC */	lis r3, lit_5819@ha /* 0x80ABFDA4@ha */
/* 80ABEA68  C0 03 FD A4 */	lfs f0, lit_5819@l(r3)  /* 0x80ABFDA4@l */
/* 80ABEA6C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80ABEA70  EC 02 00 32 */	fmuls f0, f2, f0
/* 80ABEA74  80 7F 0B DC */	lwz r3, 0xbdc(r31)
/* 80ABEA78  D0 03 00 FC */	stfs f0, 0xfc(r3)
/* 80ABEA7C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80ABEA80  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80ABEA84  A8 9F 08 FC */	lha r4, 0x8fc(r31)
/* 80ABEA88  48 00 05 F5 */	bl func_80ABF07C
/* 80ABEA8C  3C 60 80 AC */	lis r3, lit_5819@ha /* 0x80ABFDA4@ha */
/* 80ABEA90  C0 03 FD A4 */	lfs f0, lit_5819@l(r3)  /* 0x80ABFDA4@l */
/* 80ABEA94  EC 00 00 72 */	fmuls f0, f0, f1
/* 80ABEA98  80 7F 0B DC */	lwz r3, 0xbdc(r31)
/* 80ABEA9C  D0 03 01 00 */	stfs f0, 0x100(r3)
/* 80ABEAA0  38 00 00 01 */	li r0, 1
/* 80ABEAA4  80 7F 0B DC */	lwz r3, 0xbdc(r31)
/* 80ABEAA8  98 03 01 04 */	stb r0, 0x104(r3)
/* 80ABEAAC  38 60 00 01 */	li r3, 1
/* 80ABEAB0  48 00 00 14 */	b lbl_80ABEAC4
lbl_80ABEAB4:
/* 80ABEAB4  38 00 00 00 */	li r0, 0
/* 80ABEAB8  80 7F 0B DC */	lwz r3, 0xbdc(r31)
/* 80ABEABC  98 03 01 04 */	stb r0, 0x104(r3)
lbl_80ABEAC0:
/* 80ABEAC0  38 60 00 00 */	li r3, 0
lbl_80ABEAC4:
/* 80ABEAC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ABEAC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ABEACC  7C 08 03 A6 */	mtlr r0
/* 80ABEAD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80ABEAD4  4E 80 00 20 */	blr 
