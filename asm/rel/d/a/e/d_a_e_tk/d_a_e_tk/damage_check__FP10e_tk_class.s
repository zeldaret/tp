lbl_807B84DC:
/* 807B84DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B84E0  7C 08 02 A6 */	mflr r0
/* 807B84E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B84E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807B84EC  7C 7F 1B 78 */	mr r31, r3
/* 807B84F0  A8 03 06 9E */	lha r0, 0x69e(r3)
/* 807B84F4  2C 00 00 00 */	cmpwi r0, 0
/* 807B84F8  40 82 00 D0 */	bne lbl_807B85C8
/* 807B84FC  38 7F 08 E4 */	addi r3, r31, 0x8e4
/* 807B8500  4B 8C B3 31 */	bl Move__10dCcD_GSttsFv
/* 807B8504  38 7F 09 04 */	addi r3, r31, 0x904
/* 807B8508  4B 8C BF 59 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 807B850C  28 03 00 00 */	cmplwi r3, 0
/* 807B8510  41 82 00 9C */	beq lbl_807B85AC
/* 807B8514  38 7F 09 04 */	addi r3, r31, 0x904
/* 807B8518  4B 8C BF E1 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 807B851C  90 7F 0A 3C */	stw r3, 0xa3c(r31)
/* 807B8520  38 7F 0A 3C */	addi r3, r31, 0xa3c
/* 807B8524  4B 8C F5 35 */	bl at_power_check__FP11dCcU_AtInfo
/* 807B8528  80 7F 0A 3C */	lwz r3, 0xa3c(r31)
/* 807B852C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 807B8530  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 807B8534  41 82 00 10 */	beq lbl_807B8544
/* 807B8538  38 00 00 14 */	li r0, 0x14
/* 807B853C  B0 1F 06 9E */	sth r0, 0x69e(r31)
/* 807B8540  48 00 00 0C */	b lbl_807B854C
lbl_807B8544:
/* 807B8544  38 00 00 0A */	li r0, 0xa
/* 807B8548  B0 1F 06 9E */	sth r0, 0x69e(r31)
lbl_807B854C:
/* 807B854C  80 7F 0A 3C */	lwz r3, 0xa3c(r31)
/* 807B8550  80 03 00 10 */	lwz r0, 0x10(r3)
/* 807B8554  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 807B8558  41 82 00 20 */	beq lbl_807B8578
/* 807B855C  38 00 00 01 */	li r0, 1
/* 807B8560  B0 1F 06 76 */	sth r0, 0x676(r31)
/* 807B8564  38 00 00 0A */	li r0, 0xa
/* 807B8568  B0 1F 06 78 */	sth r0, 0x678(r31)
/* 807B856C  38 00 00 32 */	li r0, 0x32
/* 807B8570  B0 1F 06 96 */	sth r0, 0x696(r31)
/* 807B8574  48 00 00 38 */	b lbl_807B85AC
lbl_807B8578:
/* 807B8578  7F E3 FB 78 */	mr r3, r31
/* 807B857C  38 9F 0A 3C */	addi r4, r31, 0xa3c
/* 807B8580  4B 8C F6 85 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 807B8584  88 1F 0A 5C */	lbz r0, 0xa5c(r31)
/* 807B8588  28 00 00 10 */	cmplwi r0, 0x10
/* 807B858C  40 82 00 10 */	bne lbl_807B859C
/* 807B8590  38 00 00 09 */	li r0, 9
/* 807B8594  B0 1F 06 76 */	sth r0, 0x676(r31)
/* 807B8598  48 00 00 0C */	b lbl_807B85A4
lbl_807B859C:
/* 807B859C  38 00 00 0A */	li r0, 0xa
/* 807B85A0  B0 1F 06 76 */	sth r0, 0x676(r31)
lbl_807B85A4:
/* 807B85A4  38 00 00 00 */	li r0, 0
/* 807B85A8  B0 1F 06 78 */	sth r0, 0x678(r31)
lbl_807B85AC:
/* 807B85AC  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 807B85B0  2C 00 00 01 */	cmpwi r0, 1
/* 807B85B4  41 81 00 14 */	bgt lbl_807B85C8
/* 807B85B8  38 00 00 00 */	li r0, 0
/* 807B85BC  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 807B85C0  38 00 00 03 */	li r0, 3
/* 807B85C4  98 1F 09 BE */	stb r0, 0x9be(r31)
lbl_807B85C8:
/* 807B85C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807B85CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B85D0  7C 08 03 A6 */	mtlr r0
/* 807B85D4  38 21 00 10 */	addi r1, r1, 0x10
/* 807B85D8  4E 80 00 20 */	blr 
