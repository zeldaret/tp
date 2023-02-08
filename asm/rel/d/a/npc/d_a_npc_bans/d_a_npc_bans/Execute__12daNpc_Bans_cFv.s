lbl_8096336C:
/* 8096336C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80963370  7C 08 02 A6 */	mflr r0
/* 80963374  90 01 00 14 */	stw r0, 0x14(r1)
/* 80963378  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8096337C  7C 7F 1B 78 */	mr r31, r3
/* 80963380  88 03 0A 88 */	lbz r0, 0xa88(r3)
/* 80963384  28 00 00 00 */	cmplwi r0, 0
/* 80963388  40 82 00 78 */	bne lbl_80963400
/* 8096338C  4B 83 77 99 */	bl checkShopOpen__13dShopSystem_cFv
/* 80963390  2C 03 00 00 */	cmpwi r3, 0
/* 80963394  40 82 00 6C */	bne lbl_80963400
/* 80963398  88 1F 12 00 */	lbz r0, 0x1200(r31)
/* 8096339C  28 00 00 04 */	cmplwi r0, 4
/* 809633A0  40 82 00 60 */	bne lbl_80963400
/* 809633A4  88 1F 12 65 */	lbz r0, 0x1265(r31)
/* 809633A8  28 00 00 00 */	cmplwi r0, 0
/* 809633AC  40 82 00 54 */	bne lbl_80963400
/* 809633B0  7F E3 FB 78 */	mr r3, r31
/* 809633B4  4B 83 3F 85 */	bl initShopSystem__13dShopSystem_cFv
/* 809633B8  7F E3 FB 78 */	mr r3, r31
/* 809633BC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 809633C0  54 04 47 3E */	rlwinm r4, r0, 8, 0x1c, 0x1f
/* 809633C4  4B 83 77 59 */	bl setSellItemMax__13dShopSystem_cFUc
/* 809633C8  38 00 FF FF */	li r0, -1
/* 809633CC  90 1F 0F 60 */	stw r0, 0xf60(r31)
/* 809633D0  38 00 00 00 */	li r0, 0
/* 809633D4  B0 1F 0F 4E */	sth r0, 0xf4e(r31)
/* 809633D8  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 809633DC  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 809633E0  80 64 00 00 */	lwz r3, 0(r4)
/* 809633E4  80 04 00 04 */	lwz r0, 4(r4)
/* 809633E8  90 7F 0E 78 */	stw r3, 0xe78(r31)
/* 809633EC  90 1F 0E 7C */	stw r0, 0xe7c(r31)
/* 809633F0  80 04 00 08 */	lwz r0, 8(r4)
/* 809633F4  90 1F 0E 80 */	stw r0, 0xe80(r31)
/* 809633F8  38 00 00 01 */	li r0, 1
/* 809633FC  98 1F 12 65 */	stb r0, 0x1265(r31)
lbl_80963400:
/* 80963400  7F E3 FB 78 */	mr r3, r31
/* 80963404  4B 7E 51 29 */	bl execute__8daNpcT_cFv
/* 80963408  88 1F 12 65 */	lbz r0, 0x1265(r31)
/* 8096340C  28 00 00 00 */	cmplwi r0, 0
/* 80963410  41 82 00 1C */	beq lbl_8096342C
/* 80963414  7F E3 FB 78 */	mr r3, r31
/* 80963418  4B 83 71 B9 */	bl searchItemActor__13dShopSystem_cFv
/* 8096341C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80963420  41 82 00 0C */	beq lbl_8096342C
/* 80963424  38 7F 0E 78 */	addi r3, r31, 0xe78
/* 80963428  4B 83 30 A1 */	bl move__16ShopCam_action_cFv
lbl_8096342C:
/* 8096342C  38 60 00 01 */	li r3, 1
/* 80963430  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80963434  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80963438  7C 08 03 A6 */	mtlr r0
/* 8096343C  38 21 00 10 */	addi r1, r1, 0x10
/* 80963440  4E 80 00 20 */	blr 
