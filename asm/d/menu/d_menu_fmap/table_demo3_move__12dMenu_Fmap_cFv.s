lbl_801CABD0:
/* 801CABD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CABD4  7C 08 02 A6 */	mflr r0
/* 801CABD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CABDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CABE0  7C 7F 1B 78 */	mr r31, r3
/* 801CABE4  48 00 0A 81 */	bl talkButton__12dMenu_Fmap_cFv
/* 801CABE8  38 7F 00 C4 */	addi r3, r31, 0xc4
/* 801CABEC  38 80 00 00 */	li r4, 0
/* 801CABF0  38 A0 00 00 */	li r5, 0
/* 801CABF4  38 C0 00 00 */	li r6, 0
/* 801CABF8  48 07 F6 E1 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 801CABFC  2C 03 00 00 */	cmpwi r3, 0
/* 801CAC00  41 82 00 1C */	beq lbl_801CAC1C
/* 801CAC04  38 00 00 01 */	li r0, 1
/* 801CAC08  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801CAC0C  98 03 12 3A */	stb r0, 0x123a(r3)
/* 801CAC10  7F E3 FB 78 */	mr r3, r31
/* 801CAC14  38 80 00 0D */	li r4, 0xd
/* 801CAC18  48 00 0A B9 */	bl setProcess__12dMenu_Fmap_cFUc
lbl_801CAC1C:
/* 801CAC1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CAC20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CAC24  7C 08 03 A6 */	mtlr r0
/* 801CAC28  38 21 00 10 */	addi r1, r1, 0x10
/* 801CAC2C  4E 80 00 20 */	blr 
