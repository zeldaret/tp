lbl_8071FC24:
/* 8071FC24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8071FC28  7C 08 02 A6 */	mflr r0
/* 8071FC2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8071FC30  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8071FC34  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8071FC38  7C 7E 1B 78 */	mr r30, r3
/* 8071FC3C  3C 80 80 72 */	lis r4, lit_3789@ha /* 0x80722C3C@ha */
/* 8071FC40  3B E4 2C 3C */	addi r31, r4, lit_3789@l /* 0x80722C3C@l */
/* 8071FC44  A8 03 05 62 */	lha r0, 0x562(r3)
/* 8071FC48  2C 00 00 00 */	cmpwi r0, 0
/* 8071FC4C  40 81 02 34 */	ble lbl_8071FE80
/* 8071FC50  A8 1E 06 6E */	lha r0, 0x66e(r30)
/* 8071FC54  2C 00 00 0A */	cmpwi r0, 0xa
/* 8071FC58  40 82 00 08 */	bne lbl_8071FC60
/* 8071FC5C  48 00 02 24 */	b lbl_8071FE80
lbl_8071FC60:
/* 8071FC60  38 9E 05 BC */	addi r4, r30, 0x5bc
/* 8071FC64  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8071FC68  38 DE 04 EC */	addi r6, r30, 0x4ec
/* 8071FC6C  48 00 2B A9 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 8071FC70  88 7E 0B 99 */	lbz r3, 0xb99(r30)
/* 8071FC74  7C 63 07 74 */	extsb r3, r3
/* 8071FC78  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 8071FC7C  41 82 00 90 */	beq lbl_8071FD0C
/* 8071FC80  A8 1E 06 6E */	lha r0, 0x66e(r30)
/* 8071FC84  2C 00 00 03 */	cmpwi r0, 3
/* 8071FC88  41 82 00 84 */	beq lbl_8071FD0C
/* 8071FC8C  38 00 00 0A */	li r0, 0xa
/* 8071FC90  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 8071FC94  38 00 00 00 */	li r0, 0
/* 8071FC98  98 1E 06 72 */	stb r0, 0x672(r30)
/* 8071FC9C  7F C3 F3 78 */	mr r3, r30
/* 8071FCA0  38 80 00 0B */	li r4, 0xb
/* 8071FCA4  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8071FCA8  38 A0 00 00 */	li r5, 0
/* 8071FCAC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8071FCB0  4B FF FD 95 */	bl anm_init__FP10e_mm_classifUcf
/* 8071FCB4  80 1E 09 A0 */	lwz r0, 0x9a0(r30)
/* 8071FCB8  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8071FCBC  90 1E 09 A0 */	stw r0, 0x9a0(r30)
/* 8071FCC0  38 00 00 03 */	li r0, 3
/* 8071FCC4  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 8071FCC8  38 00 00 00 */	li r0, 0
/* 8071FCCC  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 8071FCD0  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFFFF@ha */
/* 8071FCD4  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0xD8FBFFFF@l */
/* 8071FCD8  90 1E 09 2C */	stw r0, 0x92c(r30)
/* 8071FCDC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702F6@ha */
/* 8071FCE0  38 03 02 F6 */	addi r0, r3, 0x02F6 /* 0x000702F6@l */
/* 8071FCE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8071FCE8  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8071FCEC  38 81 00 0C */	addi r4, r1, 0xc
/* 8071FCF0  38 A0 00 00 */	li r5, 0
/* 8071FCF4  38 C0 FF FF */	li r6, -1
/* 8071FCF8  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8071FCFC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8071FD00  7D 89 03 A6 */	mtctr r12
/* 8071FD04  4E 80 04 21 */	bctrl 
/* 8071FD08  48 00 01 78 */	b lbl_8071FE80
lbl_8071FD0C:
/* 8071FD0C  A8 1E 06 A4 */	lha r0, 0x6a4(r30)
/* 8071FD10  2C 00 00 00 */	cmpwi r0, 0
/* 8071FD14  40 82 01 6C */	bne lbl_8071FE80
/* 8071FD18  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8071FD1C  41 82 00 A8 */	beq lbl_8071FDC4
/* 8071FD20  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8071FD24  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8071FD28  88 1E 04 99 */	lbz r0, 0x499(r30)
/* 8071FD2C  2C 00 00 01 */	cmpwi r0, 1
/* 8071FD30  40 82 00 1C */	bne lbl_8071FD4C
/* 8071FD34  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8071FD38  3C 60 80 72 */	lis r3, l_HIO@ha /* 0x80722EC0@ha */
/* 8071FD3C  38 63 2E C0 */	addi r3, r3, l_HIO@l /* 0x80722EC0@l */
/* 8071FD40  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8071FD44  EC 01 00 32 */	fmuls f0, f1, f0
/* 8071FD48  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_8071FD4C:
/* 8071FD4C  38 00 00 01 */	li r0, 1
/* 8071FD50  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 8071FD54  38 00 00 05 */	li r0, 5
/* 8071FD58  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 8071FD5C  38 00 00 0A */	li r0, 0xa
/* 8071FD60  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 8071FD64  7F C3 F3 78 */	mr r3, r30
/* 8071FD68  38 80 00 0D */	li r4, 0xd
/* 8071FD6C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8071FD70  38 A0 00 02 */	li r5, 2
/* 8071FD74  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8071FD78  4B FF FC CD */	bl anm_init__FP10e_mm_classifUcf
/* 8071FD7C  38 00 00 02 */	li r0, 2
/* 8071FD80  98 1E 09 BE */	stb r0, 0x9be(r30)
/* 8071FD84  88 1E 04 99 */	lbz r0, 0x499(r30)
/* 8071FD88  2C 00 00 01 */	cmpwi r0, 1
/* 8071FD8C  40 82 00 18 */	bne lbl_8071FDA4
/* 8071FD90  3C 60 80 72 */	lis r3, l_HIO@ha /* 0x80722EC0@ha */
/* 8071FD94  38 63 2E C0 */	addi r3, r3, l_HIO@l /* 0x80722EC0@l */
/* 8071FD98  A8 03 00 30 */	lha r0, 0x30(r3)
/* 8071FD9C  B0 1E 06 9C */	sth r0, 0x69c(r30)
/* 8071FDA0  48 00 00 14 */	b lbl_8071FDB4
lbl_8071FDA4:
/* 8071FDA4  3C 60 80 72 */	lis r3, l_HIO@ha /* 0x80722EC0@ha */
/* 8071FDA8  38 63 2E C0 */	addi r3, r3, l_HIO@l /* 0x80722EC0@l */
/* 8071FDAC  A8 03 00 18 */	lha r0, 0x18(r3)
/* 8071FDB0  B0 1E 06 9C */	sth r0, 0x69c(r30)
lbl_8071FDB4:
/* 8071FDB4  88 1E 0B 99 */	lbz r0, 0xb99(r30)
/* 8071FDB8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8071FDBC  98 1E 0B 99 */	stb r0, 0xb99(r30)
/* 8071FDC0  48 00 00 C0 */	b lbl_8071FE80
lbl_8071FDC4:
/* 8071FDC4  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8071FDC8  41 82 00 2C */	beq lbl_8071FDF4
/* 8071FDCC  38 00 00 0A */	li r0, 0xa
/* 8071FDD0  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 8071FDD4  38 00 00 02 */	li r0, 2
/* 8071FDD8  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 8071FDDC  88 1E 0B 99 */	lbz r0, 0xb99(r30)
/* 8071FDE0  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8071FDE4  98 1E 0B 99 */	stb r0, 0xb99(r30)
/* 8071FDE8  38 00 00 00 */	li r0, 0
/* 8071FDEC  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 8071FDF0  48 00 00 90 */	b lbl_8071FE80
lbl_8071FDF4:
/* 8071FDF4  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 8071FDF8  41 82 00 2C */	beq lbl_8071FE24
/* 8071FDFC  38 60 00 0A */	li r3, 0xa
/* 8071FE00  B0 7E 06 6E */	sth r3, 0x66e(r30)
/* 8071FE04  38 00 00 03 */	li r0, 3
/* 8071FE08  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 8071FE0C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8071FE10  D0 1E 06 A8 */	stfs f0, 0x6a8(r30)
/* 8071FE14  B0 7E 06 A4 */	sth r3, 0x6a4(r30)
/* 8071FE18  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8071FE1C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8071FE20  48 00 00 60 */	b lbl_8071FE80
lbl_8071FE24:
/* 8071FE24  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8071FE28  41 82 00 58 */	beq lbl_8071FE80
/* 8071FE2C  38 60 00 0A */	li r3, 0xa
/* 8071FE30  B0 7E 06 6E */	sth r3, 0x66e(r30)
/* 8071FE34  38 00 00 00 */	li r0, 0
/* 8071FE38  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 8071FE3C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8071FE40  D0 1E 06 A8 */	stfs f0, 0x6a8(r30)
/* 8071FE44  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8071FE48  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8071FE4C  B0 7E 06 A4 */	sth r3, 0x6a4(r30)
/* 8071FE50  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 8071FE54  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 8071FE58  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702E6@ha */
/* 8071FE5C  38 03 02 E6 */	addi r0, r3, 0x02E6 /* 0x000702E6@l */
/* 8071FE60  90 01 00 08 */	stw r0, 8(r1)
/* 8071FE64  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8071FE68  38 81 00 08 */	addi r4, r1, 8
/* 8071FE6C  38 A0 FF FF */	li r5, -1
/* 8071FE70  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8071FE74  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8071FE78  7D 89 03 A6 */	mtctr r12
/* 8071FE7C  4E 80 04 21 */	bctrl 
lbl_8071FE80:
/* 8071FE80  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8071FE84  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8071FE88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8071FE8C  7C 08 03 A6 */	mtlr r0
/* 8071FE90  38 21 00 20 */	addi r1, r1, 0x20
/* 8071FE94  4E 80 00 20 */	blr 
