lbl_809E0A7C:
/* 809E0A7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E0A80  7C 08 02 A6 */	mflr r0
/* 809E0A84  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E0A88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E0A8C  7C 7F 1B 78 */	mr r31, r3
/* 809E0A90  80 03 0B D8 */	lwz r0, 0xbd8(r3)
/* 809E0A94  28 00 00 00 */	cmplwi r0, 0
/* 809E0A98  41 82 00 AC */	beq lbl_809E0B44
/* 809E0A9C  38 C0 00 00 */	li r6, 0
/* 809E0AA0  3C 80 80 9E */	lis r4, l_btkGetParamList@ha /* 0x809E3CE0@ha */
/* 809E0AA4  84 A4 3C E0 */	lwzu r5, l_btkGetParamList@l(r4)  /* 0x809E3CE0@l */
/* 809E0AA8  2C 05 00 00 */	cmpwi r5, 0
/* 809E0AAC  41 80 00 20 */	blt lbl_809E0ACC
/* 809E0AB0  80 04 00 04 */	lwz r0, 4(r4)
/* 809E0AB4  54 00 10 3A */	slwi r0, r0, 2
/* 809E0AB8  3C 80 80 9E */	lis r4, l_resNames@ha /* 0x809E3D30@ha */
/* 809E0ABC  38 84 3D 30 */	addi r4, r4, l_resNames@l /* 0x809E3D30@l */
/* 809E0AC0  7C 84 00 2E */	lwzx r4, r4, r0
/* 809E0AC4  4B 77 20 E1 */	bl getTexSRTKeyAnmP__8daNpcF_cFPci
/* 809E0AC8  7C 66 1B 78 */	mr r6, r3
lbl_809E0ACC:
/* 809E0ACC  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 809E0AD0  7C 06 00 40 */	cmplw r6, r0
/* 809E0AD4  40 82 00 64 */	bne lbl_809E0B38
/* 809E0AD8  A8 1F 08 FE */	lha r0, 0x8fe(r31)
/* 809E0ADC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 809E0AE0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 809E0AE4  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 809E0AE8  7C 04 04 2E */	lfsx f0, r4, r0
/* 809E0AEC  3C 60 80 9E */	lis r3, lit_4718@ha /* 0x809E3978@ha */
/* 809E0AF0  C0 43 39 78 */	lfs f2, lit_4718@l(r3)  /* 0x809E3978@l */
/* 809E0AF4  3C 60 80 9E */	lis r3, lit_4719@ha /* 0x809E397C@ha */
/* 809E0AF8  C0 23 39 7C */	lfs f1, lit_4719@l(r3)  /* 0x809E397C@l */
/* 809E0AFC  EC 01 00 32 */	fmuls f0, f1, f0
/* 809E0B00  EC 02 00 32 */	fmuls f0, f2, f0
/* 809E0B04  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 809E0B08  D0 03 00 FC */	stfs f0, 0xfc(r3)
/* 809E0B0C  A8 1F 08 FC */	lha r0, 0x8fc(r31)
/* 809E0B10  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 809E0B14  7C 04 04 2E */	lfsx f0, r4, r0
/* 809E0B18  EC 01 00 32 */	fmuls f0, f1, f0
/* 809E0B1C  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 809E0B20  D0 03 01 00 */	stfs f0, 0x100(r3)
/* 809E0B24  38 00 00 01 */	li r0, 1
/* 809E0B28  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 809E0B2C  98 03 01 04 */	stb r0, 0x104(r3)
/* 809E0B30  38 60 00 01 */	li r3, 1
/* 809E0B34  48 00 00 14 */	b lbl_809E0B48
lbl_809E0B38:
/* 809E0B38  38 00 00 00 */	li r0, 0
/* 809E0B3C  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 809E0B40  98 03 01 04 */	stb r0, 0x104(r3)
lbl_809E0B44:
/* 809E0B44  38 60 00 00 */	li r3, 0
lbl_809E0B48:
/* 809E0B48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E0B4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E0B50  7C 08 03 A6 */	mtlr r0
/* 809E0B54  38 21 00 10 */	addi r1, r1, 0x10
/* 809E0B58  4E 80 00 20 */	blr 
