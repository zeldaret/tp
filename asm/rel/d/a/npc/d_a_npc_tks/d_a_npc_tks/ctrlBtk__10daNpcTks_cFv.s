lbl_80B1CB54:
/* 80B1CB54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1CB58  7C 08 02 A6 */	mflr r0
/* 80B1CB5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1CB60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B1CB64  7C 7F 1B 78 */	mr r31, r3
/* 80B1CB68  80 03 11 60 */	lwz r0, 0x1160(r3)
/* 80B1CB6C  28 00 00 00 */	cmplwi r0, 0
/* 80B1CB70  41 82 00 A0 */	beq lbl_80B1CC10
/* 80B1CB74  3C 80 80 B2 */	lis r4, l_arcName@ha
/* 80B1CB78  38 84 E2 08 */	addi r4, r4, l_arcName@l
/* 80B1CB7C  80 84 00 00 */	lwz r4, 0(r4)
/* 80B1CB80  3C A0 80 B2 */	lis r5, l_btkGetParamList@ha
/* 80B1CB84  38 A5 E1 BC */	addi r5, r5, l_btkGetParamList@l
/* 80B1CB88  80 A5 00 00 */	lwz r5, 0(r5)
/* 80B1CB8C  4B 63 60 18 */	b getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80B1CB90  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 80B1CB94  7C 03 00 40 */	cmplw r3, r0
/* 80B1CB98  40 82 00 6C */	bne lbl_80B1CC04
/* 80B1CB9C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80B1CBA0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80B1CBA4  A8 9F 08 FE */	lha r4, 0x8fe(r31)
/* 80B1CBA8  48 00 07 B5 */	bl func_80B1D35C
/* 80B1CBAC  3C 60 80 B2 */	lis r3, lit_4538@ha
/* 80B1CBB0  C0 43 DE 0C */	lfs f2, lit_4538@l(r3)
/* 80B1CBB4  3C 60 80 B2 */	lis r3, lit_7278@ha
/* 80B1CBB8  C0 03 E0 40 */	lfs f0, lit_7278@l(r3)
/* 80B1CBBC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B1CBC0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80B1CBC4  80 7F 11 60 */	lwz r3, 0x1160(r31)
/* 80B1CBC8  D0 03 00 FC */	stfs f0, 0xfc(r3)
/* 80B1CBCC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80B1CBD0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80B1CBD4  A8 9F 08 FC */	lha r4, 0x8fc(r31)
/* 80B1CBD8  48 00 07 85 */	bl func_80B1D35C
/* 80B1CBDC  3C 60 80 B2 */	lis r3, lit_7278@ha
/* 80B1CBE0  C0 03 E0 40 */	lfs f0, lit_7278@l(r3)
/* 80B1CBE4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B1CBE8  80 7F 11 60 */	lwz r3, 0x1160(r31)
/* 80B1CBEC  D0 03 01 00 */	stfs f0, 0x100(r3)
/* 80B1CBF0  38 00 00 01 */	li r0, 1
/* 80B1CBF4  80 7F 11 60 */	lwz r3, 0x1160(r31)
/* 80B1CBF8  98 03 01 04 */	stb r0, 0x104(r3)
/* 80B1CBFC  38 60 00 01 */	li r3, 1
/* 80B1CC00  48 00 00 14 */	b lbl_80B1CC14
lbl_80B1CC04:
/* 80B1CC04  38 00 00 00 */	li r0, 0
/* 80B1CC08  80 7F 11 60 */	lwz r3, 0x1160(r31)
/* 80B1CC0C  98 03 01 04 */	stb r0, 0x104(r3)
lbl_80B1CC10:
/* 80B1CC10  38 60 00 00 */	li r3, 0
lbl_80B1CC14:
/* 80B1CC14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B1CC18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1CC1C  7C 08 03 A6 */	mtlr r0
/* 80B1CC20  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1CC24  4E 80 00 20 */	blr 
