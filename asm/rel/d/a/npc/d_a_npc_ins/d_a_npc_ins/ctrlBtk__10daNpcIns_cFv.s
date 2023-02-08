lbl_80A12DC8:
/* 80A12DC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A12DCC  7C 08 02 A6 */	mflr r0
/* 80A12DD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A12DD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A12DD8  7C 7F 1B 78 */	mr r31, r3
/* 80A12DDC  80 03 0B E0 */	lwz r0, 0xbe0(r3)
/* 80A12DE0  28 00 00 00 */	cmplwi r0, 0
/* 80A12DE4  41 82 00 A8 */	beq lbl_80A12E8C
/* 80A12DE8  3C 80 80 A1 */	lis r4, l_btkGetParamList@ha /* 0x80A1433C@ha */
/* 80A12DEC  38 A4 43 3C */	addi r5, r4, l_btkGetParamList@l /* 0x80A1433C@l */
/* 80A12DF0  80 05 00 08 */	lwz r0, 8(r5)
/* 80A12DF4  54 00 10 3A */	slwi r0, r0, 2
/* 80A12DF8  3C 80 80 A1 */	lis r4, l_arcNames@ha /* 0x80A14384@ha */
/* 80A12DFC  38 84 43 84 */	addi r4, r4, l_arcNames@l /* 0x80A14384@l */
/* 80A12E00  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A12E04  80 A5 00 00 */	lwz r5, 0(r5)
/* 80A12E08  4B 73 FD 9D */	bl getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80A12E0C  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 80A12E10  7C 03 00 40 */	cmplw r3, r0
/* 80A12E14  40 82 00 6C */	bne lbl_80A12E80
/* 80A12E18  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80A12E1C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80A12E20  A8 9F 08 FE */	lha r4, 0x8fe(r31)
/* 80A12E24  48 00 06 45 */	bl func_80A13468
/* 80A12E28  3C 60 80 A1 */	lis r3, lit_4994@ha /* 0x80A14118@ha */
/* 80A12E2C  C0 43 41 18 */	lfs f2, lit_4994@l(r3)  /* 0x80A14118@l */
/* 80A12E30  3C 60 80 A1 */	lis r3, lit_5847@ha /* 0x80A14150@ha */
/* 80A12E34  C0 03 41 50 */	lfs f0, lit_5847@l(r3)  /* 0x80A14150@l */
/* 80A12E38  EC 00 00 72 */	fmuls f0, f0, f1
/* 80A12E3C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A12E40  80 7F 0B E0 */	lwz r3, 0xbe0(r31)
/* 80A12E44  D0 03 00 FC */	stfs f0, 0xfc(r3)
/* 80A12E48  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80A12E4C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80A12E50  A8 9F 08 FC */	lha r4, 0x8fc(r31)
/* 80A12E54  48 00 06 15 */	bl func_80A13468
/* 80A12E58  3C 60 80 A1 */	lis r3, lit_5847@ha /* 0x80A14150@ha */
/* 80A12E5C  C0 03 41 50 */	lfs f0, lit_5847@l(r3)  /* 0x80A14150@l */
/* 80A12E60  EC 00 00 72 */	fmuls f0, f0, f1
/* 80A12E64  80 7F 0B E0 */	lwz r3, 0xbe0(r31)
/* 80A12E68  D0 03 01 00 */	stfs f0, 0x100(r3)
/* 80A12E6C  38 00 00 01 */	li r0, 1
/* 80A12E70  80 7F 0B E0 */	lwz r3, 0xbe0(r31)
/* 80A12E74  98 03 01 04 */	stb r0, 0x104(r3)
/* 80A12E78  38 60 00 01 */	li r3, 1
/* 80A12E7C  48 00 00 14 */	b lbl_80A12E90
lbl_80A12E80:
/* 80A12E80  38 00 00 00 */	li r0, 0
/* 80A12E84  80 7F 0B E0 */	lwz r3, 0xbe0(r31)
/* 80A12E88  98 03 01 04 */	stb r0, 0x104(r3)
lbl_80A12E8C:
/* 80A12E8C  38 60 00 00 */	li r3, 0
lbl_80A12E90:
/* 80A12E90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A12E94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A12E98  7C 08 03 A6 */	mtlr r0
/* 80A12E9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A12EA0  4E 80 00 20 */	blr 
