lbl_809967F8:
/* 809967F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809967FC  7C 08 02 A6 */	mflr r0
/* 80996800  90 01 00 14 */	stw r0, 0x14(r1)
/* 80996804  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80996808  7C 7F 1B 78 */	mr r31, r3
/* 8099680C  88 03 0A 88 */	lbz r0, 0xa88(r3)
/* 80996810  28 00 00 00 */	cmplwi r0, 0
/* 80996814  40 82 00 78 */	bne lbl_8099688C
/* 80996818  4B 80 43 0C */	b checkShopOpen__13dShopSystem_cFv
/* 8099681C  2C 03 00 00 */	cmpwi r3, 0
/* 80996820  40 82 00 6C */	bne lbl_8099688C
/* 80996824  88 1F 10 D4 */	lbz r0, 0x10d4(r31)
/* 80996828  28 00 00 00 */	cmplwi r0, 0
/* 8099682C  40 82 00 60 */	bne lbl_8099688C
/* 80996830  88 1F 11 11 */	lbz r0, 0x1111(r31)
/* 80996834  28 00 00 00 */	cmplwi r0, 0
/* 80996838  40 82 00 54 */	bne lbl_8099688C
/* 8099683C  7F E3 FB 78 */	mr r3, r31
/* 80996840  4B 80 0A F8 */	b initShopSystem__13dShopSystem_cFv
/* 80996844  7F E3 FB 78 */	mr r3, r31
/* 80996848  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8099684C  54 04 47 3E */	rlwinm r4, r0, 8, 0x1c, 0x1f
/* 80996850  4B 80 42 CC */	b setSellItemMax__13dShopSystem_cFUc
/* 80996854  38 00 FF FF */	li r0, -1
/* 80996858  90 1F 0F 60 */	stw r0, 0xf60(r31)
/* 8099685C  38 00 00 00 */	li r0, 0
/* 80996860  B0 1F 0F 4E */	sth r0, 0xf4e(r31)
/* 80996864  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80996868  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 8099686C  80 64 00 00 */	lwz r3, 0(r4)
/* 80996870  80 04 00 04 */	lwz r0, 4(r4)
/* 80996874  90 7F 0E 78 */	stw r3, 0xe78(r31)
/* 80996878  90 1F 0E 7C */	stw r0, 0xe7c(r31)
/* 8099687C  80 04 00 08 */	lwz r0, 8(r4)
/* 80996880  90 1F 0E 80 */	stw r0, 0xe80(r31)
/* 80996884  38 00 00 01 */	li r0, 1
/* 80996888  98 1F 11 11 */	stb r0, 0x1111(r31)
lbl_8099688C:
/* 8099688C  7F E3 FB 78 */	mr r3, r31
/* 80996890  4B 7B 1C 9C */	b execute__8daNpcT_cFv
/* 80996894  88 1F 11 11 */	lbz r0, 0x1111(r31)
/* 80996898  28 00 00 00 */	cmplwi r0, 0
/* 8099689C  41 82 00 1C */	beq lbl_809968B8
/* 809968A0  7F E3 FB 78 */	mr r3, r31
/* 809968A4  4B 80 3D 2C */	b searchItemActor__13dShopSystem_cFv
/* 809968A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809968AC  41 82 00 0C */	beq lbl_809968B8
/* 809968B0  38 7F 0E 78 */	addi r3, r31, 0xe78
/* 809968B4  4B 7F FC 14 */	b move__16ShopCam_action_cFv
lbl_809968B8:
/* 809968B8  38 60 00 01 */	li r3, 1
/* 809968BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809968C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809968C4  7C 08 03 A6 */	mtlr r0
/* 809968C8  38 21 00 10 */	addi r1, r1, 0x10
/* 809968CC  4E 80 00 20 */	blr 
