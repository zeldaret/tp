lbl_80AFDAA4:
/* 80AFDAA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AFDAA8  7C 08 02 A6 */	mflr r0
/* 80AFDAAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFDAB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AFDAB4  7C 7F 1B 78 */	mr r31, r3
/* 80AFDAB8  80 03 0B D8 */	lwz r0, 0xbd8(r3)
/* 80AFDABC  28 00 00 00 */	cmplwi r0, 0
/* 80AFDAC0  41 82 00 98 */	beq lbl_80AFDB58
/* 80AFDAC4  38 C0 00 00 */	li r6, 0
/* 80AFDAC8  3C 80 80 B0 */	lis r4, l_btkGetParamList@ha /* 0x80B010C4@ha */
/* 80AFDACC  80 A4 10 C4 */	lwz r5, l_btkGetParamList@l(r4)  /* 0x80B010C4@l */
/* 80AFDAD0  2C 05 00 00 */	cmpwi r5, 0
/* 80AFDAD4  41 80 00 18 */	blt lbl_80AFDAEC
/* 80AFDAD8  3C 80 80 B0 */	lis r4, l_arcName@ha /* 0x80B010E4@ha */
/* 80AFDADC  38 84 10 E4 */	addi r4, r4, l_arcName@l /* 0x80B010E4@l */
/* 80AFDAE0  80 84 00 00 */	lwz r4, 0(r4)
/* 80AFDAE4  4B 65 50 C1 */	bl getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80AFDAE8  7C 66 1B 78 */	mr r6, r3
lbl_80AFDAEC:
/* 80AFDAEC  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 80AFDAF0  7C 06 00 40 */	cmplw r6, r0
/* 80AFDAF4  40 82 00 58 */	bne lbl_80AFDB4C
/* 80AFDAF8  A8 1F 08 FE */	lha r0, 0x8fe(r31)
/* 80AFDAFC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80AFDB00  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80AFDB04  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80AFDB08  7C 04 04 2E */	lfsx f0, r4, r0
/* 80AFDB0C  3C 60 80 B0 */	lis r3, lit_4581@ha /* 0x80B00E34@ha */
/* 80AFDB10  C0 23 0E 34 */	lfs f1, lit_4581@l(r3)  /* 0x80B00E34@l */
/* 80AFDB14  EC 01 00 32 */	fmuls f0, f1, f0
/* 80AFDB18  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80AFDB1C  D0 03 00 FC */	stfs f0, 0xfc(r3)
/* 80AFDB20  A8 1F 08 FC */	lha r0, 0x8fc(r31)
/* 80AFDB24  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80AFDB28  7C 04 04 2E */	lfsx f0, r4, r0
/* 80AFDB2C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80AFDB30  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80AFDB34  D0 03 01 00 */	stfs f0, 0x100(r3)
/* 80AFDB38  38 00 00 01 */	li r0, 1
/* 80AFDB3C  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80AFDB40  98 03 01 04 */	stb r0, 0x104(r3)
/* 80AFDB44  38 60 00 01 */	li r3, 1
/* 80AFDB48  48 00 00 14 */	b lbl_80AFDB5C
lbl_80AFDB4C:
/* 80AFDB4C  38 00 00 00 */	li r0, 0
/* 80AFDB50  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80AFDB54  98 03 01 04 */	stb r0, 0x104(r3)
lbl_80AFDB58:
/* 80AFDB58  38 60 00 00 */	li r3, 0
lbl_80AFDB5C:
/* 80AFDB5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AFDB60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AFDB64  7C 08 03 A6 */	mtlr r0
/* 80AFDB68  38 21 00 10 */	addi r1, r1, 0x10
/* 80AFDB6C  4E 80 00 20 */	blr 
