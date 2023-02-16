lbl_802CB38C:
/* 802CB38C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802CB390  7C 08 02 A6 */	mflr r0
/* 802CB394  90 01 00 34 */	stw r0, 0x34(r1)
/* 802CB398  39 61 00 30 */	addi r11, r1, 0x30
/* 802CB39C  48 09 6E 3D */	bl _savegpr_28
/* 802CB3A0  7C 7F 1B 78 */	mr r31, r3
/* 802CB3A4  88 63 00 8E */	lbz r3, 0x8e(r3)
/* 802CB3A8  7C 60 07 74 */	extsb r0, r3
/* 802CB3AC  2C 00 FF FF */	cmpwi r0, -1
/* 802CB3B0  41 82 00 10 */	beq lbl_802CB3C0
/* 802CB3B4  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 802CB3B8  28 00 00 00 */	cmplwi r0, 0
/* 802CB3BC  40 82 00 0C */	bne lbl_802CB3C8
lbl_802CB3C0:
/* 802CB3C0  38 60 FF FF */	li r3, -1
/* 802CB3C4  48 00 02 74 */	b lbl_802CB638
lbl_802CB3C8:
/* 802CB3C8  80 AD 86 04 */	lwz r5, __OSReport_disable-0x14(r13)
/* 802CB3CC  38 80 00 00 */	li r4, 0
/* 802CB3D0  80 05 00 08 */	lwz r0, 8(r5)
/* 802CB3D4  28 00 00 00 */	cmplwi r0, 0
/* 802CB3D8  40 82 00 10 */	bne lbl_802CB3E8
/* 802CB3DC  88 05 00 BA */	lbz r0, 0xba(r5)
/* 802CB3E0  28 00 00 00 */	cmplwi r0, 0
/* 802CB3E4  41 82 00 08 */	beq lbl_802CB3EC
lbl_802CB3E8:
/* 802CB3E8  38 80 00 01 */	li r4, 1
lbl_802CB3EC:
/* 802CB3EC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802CB3F0  41 82 00 08 */	beq lbl_802CB3F8
/* 802CB3F4  48 00 02 44 */	b lbl_802CB638
lbl_802CB3F8:
/* 802CB3F8  80 9F 00 88 */	lwz r4, 0x88(r31)
/* 802CB3FC  28 04 00 00 */	cmplwi r4, 0
/* 802CB400  40 82 00 20 */	bne lbl_802CB420
/* 802CB404  A8 1F 00 90 */	lha r0, 0x90(r31)
/* 802CB408  2C 00 00 00 */	cmpwi r0, 0
/* 802CB40C  40 81 00 0C */	ble lbl_802CB418
/* 802CB410  38 00 FF FF */	li r0, -1
/* 802CB414  B0 1F 00 90 */	sth r0, 0x90(r31)
lbl_802CB418:
/* 802CB418  38 60 FF FF */	li r3, -1
/* 802CB41C  48 00 02 1C */	b lbl_802CB638
lbl_802CB420:
/* 802CB420  A8 7F 00 90 */	lha r3, 0x90(r31)
/* 802CB424  A0 1F 00 BE */	lhz r0, 0xbe(r31)
/* 802CB428  7C 03 00 00 */	cmpw r3, r0
/* 802CB42C  41 80 00 FC */	blt lbl_802CB528
/* 802CB430  3B C0 00 00 */	li r30, 0
/* 802CB434  3B A0 00 00 */	li r29, 0
/* 802CB438  48 00 00 24 */	b lbl_802CB45C
lbl_802CB43C:
/* 802CB43C  7F E3 FB 78 */	mr r3, r31
/* 802CB440  7F A4 EB 78 */	mr r4, r29
/* 802CB444  4B FF FE DD */	bl getCorrectLine__13Z2WolfHowlMgrFUc
/* 802CB448  54 60 84 3E */	srwi r0, r3, 0x10
/* 802CB44C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 802CB450  88 01 00 11 */	lbz r0, 0x11(r1)
/* 802CB454  7F DE 02 14 */	add r30, r30, r0
/* 802CB458  3B BD 00 01 */	addi r29, r29, 1
lbl_802CB45C:
/* 802CB45C  7F E3 FB 78 */	mr r3, r31
/* 802CB460  4B FF FF 11 */	bl getCorrectLineNum__13Z2WolfHowlMgrFv
/* 802CB464  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 802CB468  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 802CB46C  7C 00 18 40 */	cmplw r0, r3
/* 802CB470  41 80 FF CC */	blt lbl_802CB43C
/* 802CB474  88 6D 83 0E */	lbz r3, data_8045088E(r13)
/* 802CB478  80 1F 00 88 */	lwz r0, 0x88(r31)
/* 802CB47C  7C 03 00 50 */	subf r0, r3, r0
/* 802CB480  7C 00 F0 40 */	cmplw r0, r30
/* 802CB484  40 80 00 0C */	bge lbl_802CB490
/* 802CB488  38 60 FF FF */	li r3, -1
/* 802CB48C  48 00 01 AC */	b lbl_802CB638
lbl_802CB490:
/* 802CB490  38 00 00 0D */	li r0, 0xd
/* 802CB494  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CB498  80 6D 86 08 */	lwz r3, __OSReport_disable-0x10(r13)
/* 802CB49C  38 81 00 14 */	addi r4, r1, 0x14
/* 802CB4A0  38 A0 00 00 */	li r5, 0
/* 802CB4A4  38 C0 00 00 */	li r6, 0
/* 802CB4A8  38 E0 00 00 */	li r7, 0
/* 802CB4AC  C0 22 C4 64 */	lfs f1, lit_3486(r2)
/* 802CB4B0  FC 40 08 90 */	fmr f2, f1
/* 802CB4B4  C0 62 C4 7C */	lfs f3, lit_3590(r2)
/* 802CB4B8  FC 80 18 90 */	fmr f4, f3
/* 802CB4BC  39 00 00 00 */	li r8, 0
/* 802CB4C0  4B FE 04 C5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 802CB4C4  88 1F 00 8E */	lbz r0, 0x8e(r31)
/* 802CB4C8  7C 00 07 74 */	extsb r0, r0
/* 802CB4CC  2C 00 00 02 */	cmpwi r0, 2
/* 802CB4D0  40 81 00 30 */	ble lbl_802CB500
/* 802CB4D4  80 6D 86 00 */	lwz r3, __OSReport_disable-0x18(r13)
/* 802CB4D8  80 63 00 04 */	lwz r3, 4(r3)
/* 802CB4DC  2C 03 00 21 */	cmpwi r3, 0x21
/* 802CB4E0  40 82 00 38 */	bne lbl_802CB518
/* 802CB4E4  54 00 10 3A */	slwi r0, r0, 2
/* 802CB4E8  3C 60 80 43 */	lis r3, sCorrectDuo@ha /* 0x80434240@ha */
/* 802CB4EC  38 63 42 40 */	addi r3, r3, sCorrectDuo@l /* 0x80434240@l */
/* 802CB4F0  7C 83 00 2E */	lwzx r4, r3, r0
/* 802CB4F4  80 6D 86 04 */	lwz r3, __OSReport_disable-0x14(r13)
/* 802CB4F8  4B FE 3F A5 */	bl subBgmStart__8Z2SeqMgrFUl
/* 802CB4FC  48 00 00 1C */	b lbl_802CB518
lbl_802CB500:
/* 802CB500  54 00 10 3A */	slwi r0, r0, 2
/* 802CB504  3C 60 80 43 */	lis r3, sCorrectPhrase@ha /* 0x804341F8@ha */
/* 802CB508  38 63 41 F8 */	addi r3, r3, sCorrectPhrase@l /* 0x804341F8@l */
/* 802CB50C  7C 83 00 2E */	lwzx r4, r3, r0
/* 802CB510  80 6D 86 04 */	lwz r3, __OSReport_disable-0x14(r13)
/* 802CB514  4B FE 3F 89 */	bl subBgmStart__8Z2SeqMgrFUl
lbl_802CB518:
/* 802CB518  38 00 FF FF */	li r0, -1
/* 802CB51C  B0 1F 00 90 */	sth r0, 0x90(r31)
/* 802CB520  88 7F 00 8E */	lbz r3, 0x8e(r31)
/* 802CB524  48 00 01 14 */	b lbl_802CB638
lbl_802CB528:
/* 802CB528  28 04 00 01 */	cmplwi r4, 1
/* 802CB52C  40 82 00 18 */	bne lbl_802CB544
/* 802CB530  38 00 00 00 */	li r0, 0
/* 802CB534  B0 1F 00 90 */	sth r0, 0x90(r31)
/* 802CB538  98 1F 00 BA */	stb r0, 0xba(r31)
/* 802CB53C  98 1F 00 BC */	stb r0, 0xbc(r31)
/* 802CB540  48 00 00 F4 */	b lbl_802CB634
lbl_802CB544:
/* 802CB544  88 0D 83 0E */	lbz r0, data_8045088E(r13)
/* 802CB548  7C 04 00 40 */	cmplw r4, r0
/* 802CB54C  41 80 00 E8 */	blt lbl_802CB634
/* 802CB550  7F A0 20 50 */	subf r29, r0, r4
/* 802CB554  3B C0 00 00 */	li r30, 0
/* 802CB558  3B 80 00 00 */	li r28, 0
/* 802CB55C  48 00 00 24 */	b lbl_802CB580
lbl_802CB560:
/* 802CB560  7F E3 FB 78 */	mr r3, r31
/* 802CB564  7F 84 E3 78 */	mr r4, r28
/* 802CB568  4B FF FD B9 */	bl getCorrectLine__13Z2WolfHowlMgrFUc
/* 802CB56C  54 60 84 3E */	srwi r0, r3, 0x10
/* 802CB570  B0 01 00 0C */	sth r0, 0xc(r1)
/* 802CB574  88 01 00 0D */	lbz r0, 0xd(r1)
/* 802CB578  7F DE 02 14 */	add r30, r30, r0
/* 802CB57C  3B 9C 00 01 */	addi r28, r28, 1
lbl_802CB580:
/* 802CB580  57 83 06 3E */	clrlwi r3, r28, 0x18
/* 802CB584  88 1F 00 BA */	lbz r0, 0xba(r31)
/* 802CB588  7C 03 00 40 */	cmplw r3, r0
/* 802CB58C  40 81 FF D4 */	ble lbl_802CB560
/* 802CB590  7C 1D F0 40 */	cmplw r29, r30
/* 802CB594  40 81 00 80 */	ble lbl_802CB614
/* 802CB598  7F E3 FB 78 */	mr r3, r31
/* 802CB59C  4B FF FD D5 */	bl getCorrectLineNum__13Z2WolfHowlMgrFv
/* 802CB5A0  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 802CB5A4  88 1F 00 BA */	lbz r0, 0xba(r31)
/* 802CB5A8  7C 00 18 40 */	cmplw r0, r3
/* 802CB5AC  40 80 00 68 */	bge lbl_802CB614
/* 802CB5B0  A8 7F 00 90 */	lha r3, 0x90(r31)
/* 802CB5B4  88 1F 00 BC */	lbz r0, 0xbc(r31)
/* 802CB5B8  7C 03 02 14 */	add r0, r3, r0
/* 802CB5BC  B0 1F 00 90 */	sth r0, 0x90(r31)
/* 802CB5C0  7F E3 FB 78 */	mr r3, r31
/* 802CB5C4  88 9F 00 BA */	lbz r4, 0xba(r31)
/* 802CB5C8  4B FF FD 59 */	bl getCorrectLine__13Z2WolfHowlMgrFUc
/* 802CB5CC  54 60 84 3E */	srwi r0, r3, 0x10
/* 802CB5D0  B0 01 00 08 */	sth r0, 8(r1)
/* 802CB5D4  88 9F 00 BC */	lbz r4, 0xbc(r31)
/* 802CB5D8  88 61 00 09 */	lbz r3, 9(r1)
/* 802CB5DC  38 00 00 06 */	li r0, 6
/* 802CB5E0  7C 03 03 D6 */	divw r0, r3, r0
/* 802CB5E4  7C 04 00 00 */	cmpw r4, r0
/* 802CB5E8  40 81 00 14 */	ble lbl_802CB5FC
/* 802CB5EC  A8 7F 00 90 */	lha r3, 0x90(r31)
/* 802CB5F0  88 0D 83 15 */	lbz r0, struct_80450894+0x1(r13)
/* 802CB5F4  7C 03 02 14 */	add r0, r3, r0
/* 802CB5F8  B0 1F 00 90 */	sth r0, 0x90(r31)
lbl_802CB5FC:
/* 802CB5FC  88 7F 00 BA */	lbz r3, 0xba(r31)
/* 802CB600  38 03 00 01 */	addi r0, r3, 1
/* 802CB604  98 1F 00 BA */	stb r0, 0xba(r31)
/* 802CB608  38 00 00 00 */	li r0, 0
/* 802CB60C  98 1F 00 BC */	stb r0, 0xbc(r31)
/* 802CB610  48 00 00 24 */	b lbl_802CB634
lbl_802CB614:
/* 802CB614  7F E3 FB 78 */	mr r3, r31
/* 802CB618  48 00 00 39 */	bl getOnLineNum__13Z2WolfHowlMgrFv
/* 802CB61C  7C 60 07 74 */	extsb r0, r3
/* 802CB620  2C 00 FF FF */	cmpwi r0, -1
/* 802CB624  40 81 00 10 */	ble lbl_802CB634
/* 802CB628  88 7F 00 BC */	lbz r3, 0xbc(r31)
/* 802CB62C  38 03 00 01 */	addi r0, r3, 1
/* 802CB630  98 1F 00 BC */	stb r0, 0xbc(r31)
lbl_802CB634:
/* 802CB634  38 60 FF FF */	li r3, -1
lbl_802CB638:
/* 802CB638  39 61 00 30 */	addi r11, r1, 0x30
/* 802CB63C  48 09 6B E9 */	bl _restgpr_28
/* 802CB640  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802CB644  7C 08 03 A6 */	mtlr r0
/* 802CB648  38 21 00 30 */	addi r1, r1, 0x30
/* 802CB64C  4E 80 00 20 */	blr 
