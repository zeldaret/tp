lbl_8020A94C:
/* 8020A94C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020A950  7C 08 02 A6 */	mflr r0
/* 8020A954  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020A958  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020A95C  7C 7F 1B 78 */	mr r31, r3
/* 8020A960  88 03 04 BE */	lbz r0, 0x4be(r3)
/* 8020A964  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 8020A968  7C 00 18 40 */	cmplw r0, r3
/* 8020A96C  40 82 00 C8 */	bne lbl_8020AA34
/* 8020A970  88 1F 04 BF */	lbz r0, 0x4bf(r31)
/* 8020A974  28 00 00 16 */	cmplwi r0, 0x16
/* 8020A978  41 82 00 90 */	beq lbl_8020AA08
/* 8020A97C  28 00 00 01 */	cmplwi r0, 1
/* 8020A980  41 82 00 88 */	beq lbl_8020AA08
/* 8020A984  98 1F 04 BE */	stb r0, 0x4be(r31)
/* 8020A988  38 00 00 16 */	li r0, 0x16
/* 8020A98C  98 1F 04 BF */	stb r0, 0x4bf(r31)
/* 8020A990  A8 1F 04 BA */	lha r0, 0x4ba(r31)
/* 8020A994  B0 1F 04 B8 */	sth r0, 0x4b8(r31)
/* 8020A998  88 1F 04 BD */	lbz r0, 0x4bd(r31)
/* 8020A99C  98 1F 04 BC */	stb r0, 0x4bc(r31)
/* 8020A9A0  38 00 00 00 */	li r0, 0
/* 8020A9A4  B0 1F 04 BA */	sth r0, 0x4ba(r31)
/* 8020A9A8  98 1F 04 BD */	stb r0, 0x4bd(r31)
/* 8020A9AC  38 7F 01 23 */	addi r3, r31, 0x123
/* 8020A9B0  3C 80 80 3A */	lis r4, d_meter_d_meter_button__stringBase0@ha
/* 8020A9B4  38 84 80 E8 */	addi r4, r4, d_meter_d_meter_button__stringBase0@l
/* 8020A9B8  38 84 00 21 */	addi r4, r4, 0x21
/* 8020A9BC  48 15 E1 71 */	bl strcpy
/* 8020A9C0  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 8020A9C4  A8 03 00 16 */	lha r0, 0x16(r3)
/* 8020A9C8  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 8020A9CC  B0 03 00 16 */	sth r0, 0x16(r3)
/* 8020A9D0  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 8020A9D4  48 04 AE 55 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 8020A9D8  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 8020A9DC  48 04 AD F5 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8020A9E0  38 00 00 00 */	li r0, 0
/* 8020A9E4  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 8020A9E8  B0 03 00 16 */	sth r0, 0x16(r3)
/* 8020A9EC  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 8020A9F0  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 8020A9F4  48 04 AD DD */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8020A9F8  80 7F 00 F4 */	lwz r3, 0xf4(r31)
/* 8020A9FC  C0 22 AD 48 */	lfs f1, lit_4146(r2)
/* 8020AA00  48 04 AD D1 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8020AA04  48 00 00 6C */	b lbl_8020AA70
lbl_8020AA08:
/* 8020AA08  38 00 00 16 */	li r0, 0x16
/* 8020AA0C  98 1F 04 BE */	stb r0, 0x4be(r31)
/* 8020AA10  38 00 00 00 */	li r0, 0
/* 8020AA14  B0 1F 04 B8 */	sth r0, 0x4b8(r31)
/* 8020AA18  98 1F 04 BC */	stb r0, 0x4bc(r31)
/* 8020AA1C  38 7F 01 14 */	addi r3, r31, 0x114
/* 8020AA20  3C 80 80 3A */	lis r4, d_meter_d_meter_button__stringBase0@ha
/* 8020AA24  38 84 80 E8 */	addi r4, r4, d_meter_d_meter_button__stringBase0@l
/* 8020AA28  38 84 00 21 */	addi r4, r4, 0x21
/* 8020AA2C  48 15 E1 01 */	bl strcpy
/* 8020AA30  48 00 00 40 */	b lbl_8020AA70
lbl_8020AA34:
/* 8020AA34  88 1F 04 BF */	lbz r0, 0x4bf(r31)
/* 8020AA38  7C 00 18 40 */	cmplw r0, r3
/* 8020AA3C  40 82 00 34 */	bne lbl_8020AA70
/* 8020AA40  38 00 00 16 */	li r0, 0x16
/* 8020AA44  98 1F 04 BF */	stb r0, 0x4bf(r31)
/* 8020AA48  38 00 00 00 */	li r0, 0
/* 8020AA4C  B0 1F 04 BA */	sth r0, 0x4ba(r31)
/* 8020AA50  98 1F 04 BD */	stb r0, 0x4bd(r31)
/* 8020AA54  C0 02 AD 48 */	lfs f0, lit_4146(r2)
/* 8020AA58  D0 1F 02 F4 */	stfs f0, 0x2f4(r31)
/* 8020AA5C  38 7F 01 23 */	addi r3, r31, 0x123
/* 8020AA60  3C 80 80 3A */	lis r4, d_meter_d_meter_button__stringBase0@ha
/* 8020AA64  38 84 80 E8 */	addi r4, r4, d_meter_d_meter_button__stringBase0@l
/* 8020AA68  38 84 00 21 */	addi r4, r4, 0x21
/* 8020AA6C  48 15 E0 C1 */	bl strcpy
lbl_8020AA70:
/* 8020AA70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020AA74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020AA78  7C 08 03 A6 */	mtlr r0
/* 8020AA7C  38 21 00 10 */	addi r1, r1, 0x10
/* 8020AA80  4E 80 00 20 */	blr 
