lbl_809E9AD4:
/* 809E9AD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E9AD8  7C 08 02 A6 */	mflr r0
/* 809E9ADC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E9AE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E9AE4  7C 7F 1B 78 */	mr r31, r3
/* 809E9AE8  80 03 0B D8 */	lwz r0, 0xbd8(r3)
/* 809E9AEC  28 00 00 00 */	cmplwi r0, 0
/* 809E9AF0  41 82 00 AC */	beq lbl_809E9B9C
/* 809E9AF4  38 C0 00 00 */	li r6, 0
/* 809E9AF8  3C 80 80 9F */	lis r4, l_btkGetParamList@ha /* 0x809EF828@ha */
/* 809E9AFC  84 A4 F8 28 */	lwzu r5, l_btkGetParamList@l(r4)  /* 0x809EF828@l */
/* 809E9B00  2C 05 00 00 */	cmpwi r5, 0
/* 809E9B04  41 80 00 20 */	blt lbl_809E9B24
/* 809E9B08  80 04 00 04 */	lwz r0, 4(r4)
/* 809E9B0C  54 00 10 3A */	slwi r0, r0, 2
/* 809E9B10  3C 80 80 9F */	lis r4, l_resNames@ha /* 0x809EF8E8@ha */
/* 809E9B14  38 84 F8 E8 */	addi r4, r4, l_resNames@l /* 0x809EF8E8@l */
/* 809E9B18  7C 84 00 2E */	lwzx r4, r4, r0
/* 809E9B1C  4B 76 90 89 */	bl getTexSRTKeyAnmP__8daNpcF_cFPci
/* 809E9B20  7C 66 1B 78 */	mr r6, r3
lbl_809E9B24:
/* 809E9B24  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 809E9B28  7C 06 00 40 */	cmplw r6, r0
/* 809E9B2C  40 82 00 64 */	bne lbl_809E9B90
/* 809E9B30  A8 1F 08 FE */	lha r0, 0x8fe(r31)
/* 809E9B34  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 809E9B38  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 809E9B3C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 809E9B40  7C 04 04 2E */	lfsx f0, r4, r0
/* 809E9B44  3C 60 80 9F */	lis r3, lit_4685@ha /* 0x809EF2B0@ha */
/* 809E9B48  C0 43 F2 B0 */	lfs f2, lit_4685@l(r3)  /* 0x809EF2B0@l */
/* 809E9B4C  3C 60 80 9F */	lis r3, lit_4686@ha /* 0x809EF2B4@ha */
/* 809E9B50  C0 23 F2 B4 */	lfs f1, lit_4686@l(r3)  /* 0x809EF2B4@l */
/* 809E9B54  EC 01 00 32 */	fmuls f0, f1, f0
/* 809E9B58  EC 02 00 32 */	fmuls f0, f2, f0
/* 809E9B5C  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 809E9B60  D0 03 00 FC */	stfs f0, 0xfc(r3)
/* 809E9B64  A8 1F 08 FC */	lha r0, 0x8fc(r31)
/* 809E9B68  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 809E9B6C  7C 04 04 2E */	lfsx f0, r4, r0
/* 809E9B70  EC 01 00 32 */	fmuls f0, f1, f0
/* 809E9B74  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 809E9B78  D0 03 01 00 */	stfs f0, 0x100(r3)
/* 809E9B7C  38 00 00 01 */	li r0, 1
/* 809E9B80  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 809E9B84  98 03 01 04 */	stb r0, 0x104(r3)
/* 809E9B88  38 60 00 01 */	li r3, 1
/* 809E9B8C  48 00 00 14 */	b lbl_809E9BA0
lbl_809E9B90:
/* 809E9B90  38 00 00 00 */	li r0, 0
/* 809E9B94  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 809E9B98  98 03 01 04 */	stb r0, 0x104(r3)
lbl_809E9B9C:
/* 809E9B9C  38 60 00 00 */	li r3, 0
lbl_809E9BA0:
/* 809E9BA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E9BA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E9BA8  7C 08 03 A6 */	mtlr r0
/* 809E9BAC  38 21 00 10 */	addi r1, r1, 0x10
/* 809E9BB0  4E 80 00 20 */	blr 
