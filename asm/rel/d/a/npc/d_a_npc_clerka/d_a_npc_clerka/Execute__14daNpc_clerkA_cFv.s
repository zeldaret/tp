lbl_80992D84:
/* 80992D84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80992D88  7C 08 02 A6 */	mflr r0
/* 80992D8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80992D90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80992D94  7C 7F 1B 78 */	mr r31, r3
/* 80992D98  88 03 0A 88 */	lbz r0, 0xa88(r3)
/* 80992D9C  28 00 00 00 */	cmplwi r0, 0
/* 80992DA0  40 82 00 78 */	bne lbl_80992E18
/* 80992DA4  4B 80 7D 80 */	b checkShopOpen__13dShopSystem_cFv
/* 80992DA8  2C 03 00 00 */	cmpwi r3, 0
/* 80992DAC  40 82 00 6C */	bne lbl_80992E18
/* 80992DB0  88 1F 10 BC */	lbz r0, 0x10bc(r31)
/* 80992DB4  28 00 00 00 */	cmplwi r0, 0
/* 80992DB8  40 82 00 60 */	bne lbl_80992E18
/* 80992DBC  88 1F 10 EF */	lbz r0, 0x10ef(r31)
/* 80992DC0  28 00 00 00 */	cmplwi r0, 0
/* 80992DC4  40 82 00 54 */	bne lbl_80992E18
/* 80992DC8  7F E3 FB 78 */	mr r3, r31
/* 80992DCC  4B 80 45 6C */	b initShopSystem__13dShopSystem_cFv
/* 80992DD0  7F E3 FB 78 */	mr r3, r31
/* 80992DD4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80992DD8  54 04 47 3E */	rlwinm r4, r0, 8, 0x1c, 0x1f
/* 80992DDC  4B 80 7D 40 */	b setSellItemMax__13dShopSystem_cFUc
/* 80992DE0  38 00 FF FF */	li r0, -1
/* 80992DE4  90 1F 0F 60 */	stw r0, 0xf60(r31)
/* 80992DE8  38 00 00 00 */	li r0, 0
/* 80992DEC  B0 1F 0F 4E */	sth r0, 0xf4e(r31)
/* 80992DF0  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80992DF4  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80992DF8  80 64 00 00 */	lwz r3, 0(r4)
/* 80992DFC  80 04 00 04 */	lwz r0, 4(r4)
/* 80992E00  90 7F 0E 78 */	stw r3, 0xe78(r31)
/* 80992E04  90 1F 0E 7C */	stw r0, 0xe7c(r31)
/* 80992E08  80 04 00 08 */	lwz r0, 8(r4)
/* 80992E0C  90 1F 0E 80 */	stw r0, 0xe80(r31)
/* 80992E10  38 00 00 01 */	li r0, 1
/* 80992E14  98 1F 10 EF */	stb r0, 0x10ef(r31)
lbl_80992E18:
/* 80992E18  7F E3 FB 78 */	mr r3, r31
/* 80992E1C  4B 7B 57 10 */	b execute__8daNpcT_cFv
/* 80992E20  88 1F 10 EF */	lbz r0, 0x10ef(r31)
/* 80992E24  28 00 00 00 */	cmplwi r0, 0
/* 80992E28  41 82 00 1C */	beq lbl_80992E44
/* 80992E2C  7F E3 FB 78 */	mr r3, r31
/* 80992E30  4B 80 77 A0 */	b searchItemActor__13dShopSystem_cFv
/* 80992E34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80992E38  41 82 00 0C */	beq lbl_80992E44
/* 80992E3C  38 7F 0E 78 */	addi r3, r31, 0xe78
/* 80992E40  4B 80 36 88 */	b move__16ShopCam_action_cFv
lbl_80992E44:
/* 80992E44  38 60 00 01 */	li r3, 1
/* 80992E48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80992E4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80992E50  7C 08 03 A6 */	mtlr r0
/* 80992E54  38 21 00 10 */	addi r1, r1, 0x10
/* 80992E58  4E 80 00 20 */	blr 
