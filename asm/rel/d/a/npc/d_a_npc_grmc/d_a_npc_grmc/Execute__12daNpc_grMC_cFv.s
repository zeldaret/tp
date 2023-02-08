lbl_809D79F0:
/* 809D79F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D79F4  7C 08 02 A6 */	mflr r0
/* 809D79F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D79FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D7A00  7C 7F 1B 78 */	mr r31, r3
/* 809D7A04  88 03 0A 88 */	lbz r0, 0xa88(r3)
/* 809D7A08  28 00 00 00 */	cmplwi r0, 0
/* 809D7A0C  40 82 00 84 */	bne lbl_809D7A90
/* 809D7A10  4B 7C 31 15 */	bl checkShopOpen__13dShopSystem_cFv
/* 809D7A14  2C 03 00 00 */	cmpwi r3, 0
/* 809D7A18  40 82 00 78 */	bne lbl_809D7A90
/* 809D7A1C  88 1F 10 BC */	lbz r0, 0x10bc(r31)
/* 809D7A20  28 00 00 00 */	cmplwi r0, 0
/* 809D7A24  40 82 00 6C */	bne lbl_809D7A90
/* 809D7A28  88 1F 10 DD */	lbz r0, 0x10dd(r31)
/* 809D7A2C  28 00 00 00 */	cmplwi r0, 0
/* 809D7A30  40 82 00 60 */	bne lbl_809D7A90
/* 809D7A34  7F E3 FB 78 */	mr r3, r31
/* 809D7A38  4B 7B F9 01 */	bl initShopSystem__13dShopSystem_cFv
/* 809D7A3C  7F E3 FB 78 */	mr r3, r31
/* 809D7A40  48 00 01 75 */	bl getMaxNumItem__12daNpc_grMC_cFv
/* 809D7A44  7C 64 1B 78 */	mr r4, r3
/* 809D7A48  7F E3 FB 78 */	mr r3, r31
/* 809D7A4C  4B 7C 30 D1 */	bl setSellItemMax__13dShopSystem_cFUc
/* 809D7A50  38 00 FF FF */	li r0, -1
/* 809D7A54  90 1F 0F 60 */	stw r0, 0xf60(r31)
/* 809D7A58  38 00 00 05 */	li r0, 5
/* 809D7A5C  98 1F 0F 77 */	stb r0, 0xf77(r31)
/* 809D7A60  38 00 00 00 */	li r0, 0
/* 809D7A64  B0 1F 0F 4E */	sth r0, 0xf4e(r31)
/* 809D7A68  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 809D7A6C  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 809D7A70  80 64 00 00 */	lwz r3, 0(r4)
/* 809D7A74  80 04 00 04 */	lwz r0, 4(r4)
/* 809D7A78  90 7F 0E 78 */	stw r3, 0xe78(r31)
/* 809D7A7C  90 1F 0E 7C */	stw r0, 0xe7c(r31)
/* 809D7A80  80 04 00 08 */	lwz r0, 8(r4)
/* 809D7A84  90 1F 0E 80 */	stw r0, 0xe80(r31)
/* 809D7A88  38 00 00 01 */	li r0, 1
/* 809D7A8C  98 1F 10 DD */	stb r0, 0x10dd(r31)
lbl_809D7A90:
/* 809D7A90  7F E3 FB 78 */	mr r3, r31
/* 809D7A94  4B 77 0A 99 */	bl execute__8daNpcT_cFv
/* 809D7A98  88 1F 10 DD */	lbz r0, 0x10dd(r31)
/* 809D7A9C  28 00 00 00 */	cmplwi r0, 0
/* 809D7AA0  41 82 00 1C */	beq lbl_809D7ABC
/* 809D7AA4  7F E3 FB 78 */	mr r3, r31
/* 809D7AA8  4B 7C 2B 29 */	bl searchItemActor__13dShopSystem_cFv
/* 809D7AAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809D7AB0  41 82 00 0C */	beq lbl_809D7ABC
/* 809D7AB4  38 7F 0E 78 */	addi r3, r31, 0xe78
/* 809D7AB8  4B 7B EA 11 */	bl move__16ShopCam_action_cFv
lbl_809D7ABC:
/* 809D7ABC  38 60 00 01 */	li r3, 1
/* 809D7AC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D7AC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D7AC8  7C 08 03 A6 */	mtlr r0
/* 809D7ACC  38 21 00 10 */	addi r1, r1, 0x10
/* 809D7AD0  4E 80 00 20 */	blr 
