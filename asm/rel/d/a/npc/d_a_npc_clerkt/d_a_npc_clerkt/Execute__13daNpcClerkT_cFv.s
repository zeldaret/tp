lbl_8099A9A0:
/* 8099A9A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099A9A4  7C 08 02 A6 */	mflr r0
/* 8099A9A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099A9AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8099A9B0  7C 7F 1B 78 */	mr r31, r3
/* 8099A9B4  88 03 0A 88 */	lbz r0, 0xa88(r3)
/* 8099A9B8  28 00 00 00 */	cmplwi r0, 0
/* 8099A9BC  40 82 00 80 */	bne lbl_8099AA3C
/* 8099A9C0  4B 80 01 65 */	bl checkShopOpen__13dShopSystem_cFv
/* 8099A9C4  2C 03 00 00 */	cmpwi r3, 0
/* 8099A9C8  40 82 00 74 */	bne lbl_8099AA3C
/* 8099A9CC  88 1F 10 BC */	lbz r0, 0x10bc(r31)
/* 8099A9D0  28 00 00 00 */	cmplwi r0, 0
/* 8099A9D4  40 82 00 68 */	bne lbl_8099AA3C
/* 8099A9D8  88 1F 10 EA */	lbz r0, 0x10ea(r31)
/* 8099A9DC  28 00 00 00 */	cmplwi r0, 0
/* 8099A9E0  40 82 00 5C */	bne lbl_8099AA3C
/* 8099A9E4  7F E3 FB 78 */	mr r3, r31
/* 8099A9E8  4B 7F C9 51 */	bl initShopSystem__13dShopSystem_cFv
/* 8099A9EC  7F E3 FB 78 */	mr r3, r31
/* 8099A9F0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8099A9F4  54 04 47 3E */	rlwinm r4, r0, 8, 0x1c, 0x1f
/* 8099A9F8  4B 80 01 25 */	bl setSellItemMax__13dShopSystem_cFUc
/* 8099A9FC  38 00 FF FF */	li r0, -1
/* 8099AA00  90 1F 0F 60 */	stw r0, 0xf60(r31)
/* 8099AA04  38 00 00 08 */	li r0, 8
/* 8099AA08  98 1F 0F 77 */	stb r0, 0xf77(r31)
/* 8099AA0C  38 00 00 00 */	li r0, 0
/* 8099AA10  B0 1F 0F 4E */	sth r0, 0xf4e(r31)
/* 8099AA14  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 8099AA18  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 8099AA1C  80 64 00 00 */	lwz r3, 0(r4)
/* 8099AA20  80 04 00 04 */	lwz r0, 4(r4)
/* 8099AA24  90 7F 0E 78 */	stw r3, 0xe78(r31)
/* 8099AA28  90 1F 0E 7C */	stw r0, 0xe7c(r31)
/* 8099AA2C  80 04 00 08 */	lwz r0, 8(r4)
/* 8099AA30  90 1F 0E 80 */	stw r0, 0xe80(r31)
/* 8099AA34  38 00 00 01 */	li r0, 1
/* 8099AA38  98 1F 10 EA */	stb r0, 0x10ea(r31)
lbl_8099AA3C:
/* 8099AA3C  7F E3 FB 78 */	mr r3, r31
/* 8099AA40  4B 7A DA ED */	bl execute__8daNpcT_cFv
/* 8099AA44  88 1F 10 EA */	lbz r0, 0x10ea(r31)
/* 8099AA48  28 00 00 00 */	cmplwi r0, 0
/* 8099AA4C  41 82 00 1C */	beq lbl_8099AA68
/* 8099AA50  7F E3 FB 78 */	mr r3, r31
/* 8099AA54  4B 7F FB 7D */	bl searchItemActor__13dShopSystem_cFv
/* 8099AA58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8099AA5C  41 82 00 0C */	beq lbl_8099AA68
/* 8099AA60  38 7F 0E 78 */	addi r3, r31, 0xe78
/* 8099AA64  4B 7F BA 65 */	bl move__16ShopCam_action_cFv
lbl_8099AA68:
/* 8099AA68  38 60 00 01 */	li r3, 1
/* 8099AA6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8099AA70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099AA74  7C 08 03 A6 */	mtlr r0
/* 8099AA78  38 21 00 10 */	addi r1, r1, 0x10
/* 8099AA7C  4E 80 00 20 */	blr 
