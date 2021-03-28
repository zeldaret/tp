lbl_80336DB4:
/* 80336DB4  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80336DB8  7C 08 02 A6 */	mflr r0
/* 80336DBC  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80336DC0  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80336DC4  48 02 B4 11 */	bl _savegpr_27
/* 80336DC8  7C 9C 23 78 */	mr r28, r4
/* 80336DCC  7C BB 2B 78 */	mr r27, r5
/* 80336DD0  3B E0 00 00 */	li r31, 0
/* 80336DD4  38 61 00 08 */	addi r3, r1, 8
/* 80336DD8  4B FF 92 15 */	bl __ct__18J3DMaterialFactoryFRC16J3DMaterialBlock
/* 80336DDC  A3 DC 00 08 */	lhz r30, 8(r28)
/* 80336DE0  38 61 00 08 */	addi r3, r1, 8
/* 80336DE4  4B FF 94 D9 */	bl countUniqueMaterials__18J3DMaterialFactoryFv
/* 80336DE8  54 7D 04 3E */	clrlwi r29, r3, 0x10
/* 80336DEC  80 1C 00 14 */	lwz r0, 0x14(r28)
/* 80336DF0  28 00 00 00 */	cmplwi r0, 0
/* 80336DF4  41 82 00 08 */	beq lbl_80336DFC
/* 80336DF8  3B E0 00 10 */	li r31, 0x10
lbl_80336DFC:
/* 80336DFC  57 C0 10 3A */	slwi r0, r30, 2
/* 80336E00  7F FF 02 14 */	add r31, r31, r0
/* 80336E04  57 64 02 95 */	rlwinm. r4, r27, 0, 0xa, 0xa
/* 80336E08  41 82 00 14 */	beq lbl_80336E1C
/* 80336E0C  1C 7D 00 4C */	mulli r3, r29, 0x4c
/* 80336E10  38 03 00 1F */	addi r0, r3, 0x1f
/* 80336E14  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 80336E18  7F FF 02 14 */	add r31, r31, r0
lbl_80336E1C:
/* 80336E1C  28 04 00 00 */	cmplwi r4, 0
/* 80336E20  41 82 00 34 */	beq lbl_80336E54
/* 80336E24  3B 80 00 00 */	li r28, 0
/* 80336E28  48 00 00 24 */	b lbl_80336E4C
lbl_80336E2C:
/* 80336E2C  38 61 00 08 */	addi r3, r1, 8
/* 80336E30  38 80 00 00 */	li r4, 0
/* 80336E34  38 A0 00 00 */	li r5, 0
/* 80336E38  7F 86 E3 78 */	mr r6, r28
/* 80336E3C  7F 67 DB 78 */	mr r7, r27
/* 80336E40  4B FF AC 3D */	bl calcSize__18J3DMaterialFactoryCFP11J3DMaterialQ218J3DMaterialFactory12MaterialTypeiUl
/* 80336E44  7F FF 1A 14 */	add r31, r31, r3
/* 80336E48  3B 9C 00 01 */	addi r28, r28, 1
lbl_80336E4C:
/* 80336E4C  7C 1C E8 40 */	cmplw r28, r29
/* 80336E50  41 80 FF DC */	blt lbl_80336E2C
lbl_80336E54:
/* 80336E54  3B 80 00 00 */	li r28, 0
/* 80336E58  48 00 00 24 */	b lbl_80336E7C
lbl_80336E5C:
/* 80336E5C  38 61 00 08 */	addi r3, r1, 8
/* 80336E60  38 80 00 00 */	li r4, 0
/* 80336E64  38 A0 00 00 */	li r5, 0
/* 80336E68  7F 86 E3 78 */	mr r6, r28
/* 80336E6C  7F 67 DB 78 */	mr r7, r27
/* 80336E70  4B FF AC 0D */	bl calcSize__18J3DMaterialFactoryCFP11J3DMaterialQ218J3DMaterialFactory12MaterialTypeiUl
/* 80336E74  7F FF 1A 14 */	add r31, r31, r3
/* 80336E78  3B 9C 00 01 */	addi r28, r28, 1
lbl_80336E7C:
/* 80336E7C  7C 1C F0 40 */	cmplw r28, r30
/* 80336E80  41 80 FF DC */	blt lbl_80336E5C
/* 80336E84  7F E3 FB 78 */	mr r3, r31
/* 80336E88  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80336E8C  48 02 B3 95 */	bl _restgpr_27
/* 80336E90  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80336E94  7C 08 03 A6 */	mtlr r0
/* 80336E98  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80336E9C  4E 80 00 20 */	blr 
