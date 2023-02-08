lbl_8080BB7C:
/* 8080BB7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8080BB80  7C 08 02 A6 */	mflr r0
/* 8080BB84  90 01 00 24 */	stw r0, 0x24(r1)
/* 8080BB88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8080BB8C  7C 7F 1B 78 */	mr r31, r3
/* 8080BB90  A8 03 06 F4 */	lha r0, 0x6f4(r3)
/* 8080BB94  2C 00 00 00 */	cmpwi r0, 0
/* 8080BB98  40 82 01 50 */	bne lbl_8080BCE8
/* 8080BB9C  80 1F 06 90 */	lwz r0, 0x690(r31)
/* 8080BBA0  2C 00 00 12 */	cmpwi r0, 0x12
/* 8080BBA4  41 82 01 44 */	beq lbl_8080BCE8
/* 8080BBA8  2C 00 00 03 */	cmpwi r0, 3
/* 8080BBAC  40 82 00 08 */	bne lbl_8080BBB4
/* 8080BBB0  48 00 01 38 */	b lbl_8080BCE8
lbl_8080BBB4:
/* 8080BBB4  38 7F 09 54 */	addi r3, r31, 0x954
/* 8080BBB8  4B 87 7C 79 */	bl Move__10dCcD_GSttsFv
/* 8080BBBC  38 7F 09 74 */	addi r3, r31, 0x974
/* 8080BBC0  4B 87 88 A1 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 8080BBC4  28 03 00 00 */	cmplwi r3, 0
/* 8080BBC8  41 82 01 20 */	beq lbl_8080BCE8
/* 8080BBCC  38 7F 09 74 */	addi r3, r31, 0x974
/* 8080BBD0  4B 87 89 29 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8080BBD4  90 7F 0A AC */	stw r3, 0xaac(r31)
/* 8080BBD8  A8 1F 07 00 */	lha r0, 0x700(r31)
/* 8080BBDC  2C 00 00 00 */	cmpwi r0, 0
/* 8080BBE0  41 82 00 14 */	beq lbl_8080BBF4
/* 8080BBE4  80 7F 0A AC */	lwz r3, 0xaac(r31)
/* 8080BBE8  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8080BBEC  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 8080BBF0  40 82 00 F8 */	bne lbl_8080BCE8
lbl_8080BBF4:
/* 8080BBF4  7F E3 FB 78 */	mr r3, r31
/* 8080BBF8  38 9F 0A AC */	addi r4, r31, 0xaac
/* 8080BBFC  4B 87 C0 09 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 8080BC00  80 7F 0A AC */	lwz r3, 0xaac(r31)
/* 8080BC04  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8080BC08  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 8080BC0C  41 82 00 10 */	beq lbl_8080BC1C
/* 8080BC10  38 00 00 14 */	li r0, 0x14
/* 8080BC14  B0 1F 06 F4 */	sth r0, 0x6f4(r31)
/* 8080BC18  48 00 00 0C */	b lbl_8080BC24
lbl_8080BC1C:
/* 8080BC1C  38 00 00 0A */	li r0, 0xa
/* 8080BC20  B0 1F 06 F4 */	sth r0, 0x6f4(r31)
lbl_8080BC24:
/* 8080BC24  A0 1F 0A C8 */	lhz r0, 0xac8(r31)
/* 8080BC28  28 00 00 01 */	cmplwi r0, 1
/* 8080BC2C  41 81 00 0C */	bgt lbl_8080BC38
/* 8080BC30  38 00 00 0A */	li r0, 0xa
/* 8080BC34  B0 1F 06 F4 */	sth r0, 0x6f4(r31)
lbl_8080BC38:
/* 8080BC38  80 7F 0A AC */	lwz r3, 0xaac(r31)
/* 8080BC3C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8080BC40  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 8080BC44  41 82 00 20 */	beq lbl_8080BC64
/* 8080BC48  88 1F 06 A4 */	lbz r0, 0x6a4(r31)
/* 8080BC4C  28 00 00 00 */	cmplwi r0, 0
/* 8080BC50  41 82 00 98 */	beq lbl_8080BCE8
/* 8080BC54  7F E3 FB 78 */	mr r3, r31
/* 8080BC58  38 80 00 04 */	li r4, 4
/* 8080BC5C  4B FF E3 41 */	bl setActionMode__8daE_YM_cFi
/* 8080BC60  48 00 00 88 */	b lbl_8080BCE8
lbl_8080BC64:
/* 8080BC64  88 1F 06 A0 */	lbz r0, 0x6a0(r31)
/* 8080BC68  28 00 00 02 */	cmplwi r0, 2
/* 8080BC6C  41 82 00 7C */	beq lbl_8080BCE8
/* 8080BC70  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700E7@ha */
/* 8080BC74  38 03 00 E7 */	addi r0, r3, 0x00E7 /* 0x000700E7@l */
/* 8080BC78  90 01 00 08 */	stw r0, 8(r1)
/* 8080BC7C  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 8080BC80  38 81 00 08 */	addi r4, r1, 8
/* 8080BC84  38 A0 00 00 */	li r5, 0
/* 8080BC88  38 C0 FF FF */	li r6, -1
/* 8080BC8C  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 8080BC90  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8080BC94  7D 89 03 A6 */	mtctr r12
/* 8080BC98  4E 80 04 21 */	bctrl 
/* 8080BC9C  80 7F 0A AC */	lwz r3, 0xaac(r31)
/* 8080BCA0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8080BCA4  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 8080BCA8  41 82 00 2C */	beq lbl_8080BCD4
/* 8080BCAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8080BCB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8080BCB4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8080BCB8  38 80 00 03 */	li r4, 3
/* 8080BCBC  7F E5 FB 78 */	mr r5, r31
/* 8080BCC0  38 DF 05 38 */	addi r6, r31, 0x538
/* 8080BCC4  38 E0 00 00 */	li r7, 0
/* 8080BCC8  39 00 00 00 */	li r8, 0
/* 8080BCCC  39 20 00 00 */	li r9, 0
/* 8080BCD0  4B 84 05 49 */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
lbl_8080BCD4:
/* 8080BCD4  7F E3 FB 78 */	mr r3, r31
/* 8080BCD8  38 80 00 03 */	li r4, 3
/* 8080BCDC  4B FF E2 C1 */	bl setActionMode__8daE_YM_cFi
/* 8080BCE0  7F E3 FB 78 */	mr r3, r31
/* 8080BCE4  4B FF F7 61 */	bl executeDown__8daE_YM_cFv
lbl_8080BCE8:
/* 8080BCE8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8080BCEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8080BCF0  7C 08 03 A6 */	mtlr r0
/* 8080BCF4  38 21 00 20 */	addi r1, r1, 0x20
/* 8080BCF8  4E 80 00 20 */	blr 
