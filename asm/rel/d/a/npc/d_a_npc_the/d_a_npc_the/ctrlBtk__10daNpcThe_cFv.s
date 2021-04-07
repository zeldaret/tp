lbl_80AFADEC:
/* 80AFADEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AFADF0  7C 08 02 A6 */	mflr r0
/* 80AFADF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFADF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AFADFC  7C 7F 1B 78 */	mr r31, r3
/* 80AFAE00  80 03 0B D8 */	lwz r0, 0xbd8(r3)
/* 80AFAE04  28 00 00 00 */	cmplwi r0, 0
/* 80AFAE08  41 82 00 A8 */	beq lbl_80AFAEB0
/* 80AFAE0C  38 C0 00 00 */	li r6, 0
/* 80AFAE10  3C 80 80 B0 */	lis r4, l_btkGetParamList@ha /* 0x80AFC348@ha */
/* 80AFAE14  84 A4 C3 48 */	lwzu r5, l_btkGetParamList@l(r4)  /* 0x80AFC348@l */
/* 80AFAE18  2C 05 00 00 */	cmpwi r5, 0
/* 80AFAE1C  41 80 00 20 */	blt lbl_80AFAE3C
/* 80AFAE20  80 04 00 04 */	lwz r0, 4(r4)
/* 80AFAE24  54 00 10 3A */	slwi r0, r0, 2
/* 80AFAE28  3C 80 80 B0 */	lis r4, l_resNames@ha /* 0x80AFC380@ha */
/* 80AFAE2C  38 84 C3 80 */	addi r4, r4, l_resNames@l /* 0x80AFC380@l */
/* 80AFAE30  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AFAE34  4B 65 7D 71 */	bl getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80AFAE38  7C 66 1B 78 */	mr r6, r3
lbl_80AFAE3C:
/* 80AFAE3C  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 80AFAE40  7C 06 00 40 */	cmplw r6, r0
/* 80AFAE44  40 82 00 60 */	bne lbl_80AFAEA4
/* 80AFAE48  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80AFAE4C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80AFAE50  A8 9F 08 FE */	lha r4, 0x8fe(r31)
/* 80AFAE54  48 00 06 3D */	bl func_80AFB490
/* 80AFAE58  3C 60 80 B0 */	lis r3, lit_5324@ha /* 0x80AFC12C@ha */
/* 80AFAE5C  C0 03 C1 2C */	lfs f0, lit_5324@l(r3)  /* 0x80AFC12C@l */
/* 80AFAE60  EC 00 00 72 */	fmuls f0, f0, f1
/* 80AFAE64  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80AFAE68  D0 03 00 FC */	stfs f0, 0xfc(r3)
/* 80AFAE6C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80AFAE70  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80AFAE74  A8 9F 08 FC */	lha r4, 0x8fc(r31)
/* 80AFAE78  48 00 06 19 */	bl func_80AFB490
/* 80AFAE7C  3C 60 80 B0 */	lis r3, lit_5324@ha /* 0x80AFC12C@ha */
/* 80AFAE80  C0 03 C1 2C */	lfs f0, lit_5324@l(r3)  /* 0x80AFC12C@l */
/* 80AFAE84  EC 00 00 72 */	fmuls f0, f0, f1
/* 80AFAE88  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80AFAE8C  D0 03 01 00 */	stfs f0, 0x100(r3)
/* 80AFAE90  38 00 00 01 */	li r0, 1
/* 80AFAE94  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80AFAE98  98 03 01 04 */	stb r0, 0x104(r3)
/* 80AFAE9C  38 60 00 01 */	li r3, 1
/* 80AFAEA0  48 00 00 14 */	b lbl_80AFAEB4
lbl_80AFAEA4:
/* 80AFAEA4  38 00 00 00 */	li r0, 0
/* 80AFAEA8  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80AFAEAC  98 03 01 04 */	stb r0, 0x104(r3)
lbl_80AFAEB0:
/* 80AFAEB0  38 60 00 00 */	li r3, 0
lbl_80AFAEB4:
/* 80AFAEB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AFAEB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AFAEBC  7C 08 03 A6 */	mtlr r0
/* 80AFAEC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AFAEC4  4E 80 00 20 */	blr 
