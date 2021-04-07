lbl_807ABAB0:
/* 807ABAB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807ABAB4  7C 08 02 A6 */	mflr r0
/* 807ABAB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 807ABABC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807ABAC0  7C 7F 1B 78 */	mr r31, r3
/* 807ABAC4  38 7F 09 6C */	addi r3, r31, 0x96c
/* 807ABAC8  4B 8D 7D 69 */	bl Move__10dCcD_GSttsFv
/* 807ABACC  A8 1F 06 F2 */	lha r0, 0x6f2(r31)
/* 807ABAD0  2C 00 00 00 */	cmpwi r0, 0
/* 807ABAD4  40 82 02 40 */	bne lbl_807ABD14
/* 807ABAD8  A8 1F 06 82 */	lha r0, 0x682(r31)
/* 807ABADC  2C 00 00 09 */	cmpwi r0, 9
/* 807ABAE0  41 82 02 34 */	beq lbl_807ABD14
/* 807ABAE4  2C 00 00 0A */	cmpwi r0, 0xa
/* 807ABAE8  40 82 00 08 */	bne lbl_807ABAF0
/* 807ABAEC  48 00 02 28 */	b lbl_807ABD14
lbl_807ABAF0:
/* 807ABAF0  80 1F 09 E8 */	lwz r0, 0x9e8(r31)
/* 807ABAF4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807ABAF8  41 82 00 54 */	beq lbl_807ABB4C
/* 807ABAFC  80 1F 09 E8 */	lwz r0, 0x9e8(r31)
/* 807ABB00  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807ABB04  90 1F 09 E8 */	stw r0, 0x9e8(r31)
/* 807ABB08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807ABB0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807ABB10  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807ABB14  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807ABB18  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 807ABB1C  7D 89 03 A6 */	mtctr r12
/* 807ABB20  4E 80 04 21 */	bctrl 
/* 807ABB24  2C 03 00 00 */	cmpwi r3, 0
/* 807ABB28  41 82 00 24 */	beq lbl_807ABB4C
/* 807ABB2C  7F E3 FB 78 */	mr r3, r31
/* 807ABB30  38 80 00 07 */	li r4, 7
/* 807ABB34  38 A0 00 00 */	li r5, 0
/* 807ABB38  4B FF C0 2D */	bl setActionMode__8daE_SW_cFss
/* 807ABB3C  7F E3 FB 78 */	mr r3, r31
/* 807ABB40  38 9F 0A C4 */	addi r4, r31, 0xac4
/* 807ABB44  4B 8D C0 C1 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 807ABB48  48 00 01 CC */	b lbl_807ABD14
lbl_807ABB4C:
/* 807ABB4C  38 7F 09 8C */	addi r3, r31, 0x98c
/* 807ABB50  4B 8D 89 11 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 807ABB54  28 03 00 00 */	cmplwi r3, 0
/* 807ABB58  41 82 01 BC */	beq lbl_807ABD14
/* 807ABB5C  38 7F 09 8C */	addi r3, r31, 0x98c
/* 807ABB60  4B 8D 89 99 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 807ABB64  90 7F 0A C4 */	stw r3, 0xac4(r31)
/* 807ABB68  80 7F 0A C4 */	lwz r3, 0xac4(r31)
/* 807ABB6C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 807ABB70  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 807ABB74  40 82 00 10 */	bne lbl_807ABB84
/* 807ABB78  80 1F 06 98 */	lwz r0, 0x698(r31)
/* 807ABB7C  2C 00 00 01 */	cmpwi r0, 1
/* 807ABB80  40 81 00 10 */	ble lbl_807ABB90
lbl_807ABB84:
/* 807ABB84  38 00 00 64 */	li r0, 0x64
/* 807ABB88  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 807ABB8C  48 00 00 0C */	b lbl_807ABB98
lbl_807ABB90:
/* 807ABB90  38 00 00 0A */	li r0, 0xa
/* 807ABB94  B0 1F 05 62 */	sth r0, 0x562(r31)
lbl_807ABB98:
/* 807ABB98  7F E3 FB 78 */	mr r3, r31
/* 807ABB9C  38 9F 0A C4 */	addi r4, r31, 0xac4
/* 807ABBA0  4B 8D C0 65 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 807ABBA4  80 7F 0A C4 */	lwz r3, 0xac4(r31)
/* 807ABBA8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 807ABBAC  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 807ABBB0  41 82 00 20 */	beq lbl_807ABBD0
/* 807ABBB4  7F E3 FB 78 */	mr r3, r31
/* 807ABBB8  38 80 00 05 */	li r4, 5
/* 807ABBBC  38 A0 00 00 */	li r5, 0
/* 807ABBC0  4B FF BF A5 */	bl setActionMode__8daE_SW_cFss
/* 807ABBC4  7F E3 FB 78 */	mr r3, r31
/* 807ABBC8  4B FF E2 91 */	bl executeHook__8daE_SW_cFv
/* 807ABBCC  48 00 01 48 */	b lbl_807ABD14
lbl_807ABBD0:
/* 807ABBD0  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 807ABBD4  40 82 00 14 */	bne lbl_807ABBE8
/* 807ABBD8  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 807ABBDC  40 82 00 0C */	bne lbl_807ABBE8
/* 807ABBE0  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 807ABBE4  41 82 00 18 */	beq lbl_807ABBFC
lbl_807ABBE8:
/* 807ABBE8  7F E3 FB 78 */	mr r3, r31
/* 807ABBEC  38 80 00 07 */	li r4, 7
/* 807ABBF0  38 A0 00 05 */	li r5, 5
/* 807ABBF4  4B FF BF 71 */	bl setActionMode__8daE_SW_cFss
/* 807ABBF8  48 00 01 1C */	b lbl_807ABD14
lbl_807ABBFC:
/* 807ABBFC  74 60 D8 00 */	andis. r0, r3, 0xd800
/* 807ABC00  41 82 00 10 */	beq lbl_807ABC10
/* 807ABC04  38 00 00 14 */	li r0, 0x14
/* 807ABC08  B0 1F 06 F2 */	sth r0, 0x6f2(r31)
/* 807ABC0C  48 00 00 0C */	b lbl_807ABC18
lbl_807ABC10:
/* 807ABC10  38 00 00 0A */	li r0, 0xa
/* 807ABC14  B0 1F 06 F2 */	sth r0, 0x6f2(r31)
lbl_807ABC18:
/* 807ABC18  A0 1F 0A E0 */	lhz r0, 0xae0(r31)
/* 807ABC1C  28 00 00 01 */	cmplwi r0, 1
/* 807ABC20  41 81 00 0C */	bgt lbl_807ABC2C
/* 807ABC24  38 00 00 0A */	li r0, 0xa
/* 807ABC28  B0 1F 06 F2 */	sth r0, 0x6f2(r31)
lbl_807ABC2C:
/* 807ABC2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807ABC30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807ABC34  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807ABC38  88 83 05 68 */	lbz r4, 0x568(r3)
/* 807ABC3C  80 7F 0A C4 */	lwz r3, 0xac4(r31)
/* 807ABC40  80 03 00 10 */	lwz r0, 0x10(r3)
/* 807ABC44  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 807ABC48  41 82 00 34 */	beq lbl_807ABC7C
/* 807ABC4C  38 04 FF E9 */	addi r0, r4, -23
/* 807ABC50  28 00 00 01 */	cmplwi r0, 1
/* 807ABC54  40 81 00 20 */	ble lbl_807ABC74
/* 807ABC58  2C 04 00 1F */	cmpwi r4, 0x1f
/* 807ABC5C  41 82 00 18 */	beq lbl_807ABC74
/* 807ABC60  38 04 FF EE */	addi r0, r4, -18
/* 807ABC64  28 00 00 01 */	cmplwi r0, 1
/* 807ABC68  40 81 00 0C */	ble lbl_807ABC74
/* 807ABC6C  2C 04 00 14 */	cmpwi r4, 0x14
/* 807ABC70  40 82 00 0C */	bne lbl_807ABC7C
lbl_807ABC74:
/* 807ABC74  38 00 00 00 */	li r0, 0
/* 807ABC78  90 1F 06 98 */	stw r0, 0x698(r31)
lbl_807ABC7C:
/* 807ABC7C  80 7F 0A C4 */	lwz r3, 0xac4(r31)
/* 807ABC80  80 03 00 10 */	lwz r0, 0x10(r3)
/* 807ABC84  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 807ABC88  41 82 00 0C */	beq lbl_807ABC94
/* 807ABC8C  38 00 00 00 */	li r0, 0
/* 807ABC90  90 1F 06 98 */	stw r0, 0x698(r31)
lbl_807ABC94:
/* 807ABC94  80 7F 06 98 */	lwz r3, 0x698(r31)
/* 807ABC98  38 03 FF FF */	addi r0, r3, -1
/* 807ABC9C  90 1F 06 98 */	stw r0, 0x698(r31)
/* 807ABCA0  80 1F 06 98 */	lwz r0, 0x698(r31)
/* 807ABCA4  2C 00 00 00 */	cmpwi r0, 0
/* 807ABCA8  41 81 00 44 */	bgt lbl_807ABCEC
/* 807ABCAC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007035F@ha */
/* 807ABCB0  38 03 03 5F */	addi r0, r3, 0x035F /* 0x0007035F@l */
/* 807ABCB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 807ABCB8  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 807ABCBC  38 81 00 0C */	addi r4, r1, 0xc
/* 807ABCC0  88 BF 06 E9 */	lbz r5, 0x6e9(r31)
/* 807ABCC4  38 C0 FF FF */	li r6, -1
/* 807ABCC8  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 807ABCCC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807ABCD0  7D 89 03 A6 */	mtctr r12
/* 807ABCD4  4E 80 04 21 */	bctrl 
/* 807ABCD8  7F E3 FB 78 */	mr r3, r31
/* 807ABCDC  38 80 00 09 */	li r4, 9
/* 807ABCE0  38 A0 00 00 */	li r5, 0
/* 807ABCE4  4B FF BE 81 */	bl setActionMode__8daE_SW_cFss
/* 807ABCE8  48 00 00 2C */	b lbl_807ABD14
lbl_807ABCEC:
/* 807ABCEC  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007035E@ha */
/* 807ABCF0  38 03 03 5E */	addi r0, r3, 0x035E /* 0x0007035E@l */
/* 807ABCF4  90 01 00 08 */	stw r0, 8(r1)
/* 807ABCF8  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 807ABCFC  38 81 00 08 */	addi r4, r1, 8
/* 807ABD00  38 A0 FF FF */	li r5, -1
/* 807ABD04  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 807ABD08  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807ABD0C  7D 89 03 A6 */	mtctr r12
/* 807ABD10  4E 80 04 21 */	bctrl 
lbl_807ABD14:
/* 807ABD14  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807ABD18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807ABD1C  7C 08 03 A6 */	mtlr r0
/* 807ABD20  38 21 00 20 */	addi r1, r1, 0x20
/* 807ABD24  4E 80 00 20 */	blr 
