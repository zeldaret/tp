lbl_809D45F8:
/* 809D45F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D45FC  7C 08 02 A6 */	mflr r0
/* 809D4600  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D4604  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D4608  7C 7F 1B 78 */	mr r31, r3
/* 809D460C  88 03 0A 88 */	lbz r0, 0xa88(r3)
/* 809D4610  28 00 00 00 */	cmplwi r0, 0
/* 809D4614  40 82 00 7C */	bne lbl_809D4690
/* 809D4618  4B 7C 65 0C */	b checkShopOpen__13dShopSystem_cFv
/* 809D461C  2C 03 00 00 */	cmpwi r3, 0
/* 809D4620  40 82 00 70 */	bne lbl_809D4690
/* 809D4624  88 1F 10 BC */	lbz r0, 0x10bc(r31)
/* 809D4628  28 00 00 00 */	cmplwi r0, 0
/* 809D462C  40 82 00 64 */	bne lbl_809D4690
/* 809D4630  88 1F 10 DD */	lbz r0, 0x10dd(r31)
/* 809D4634  28 00 00 00 */	cmplwi r0, 0
/* 809D4638  40 82 00 58 */	bne lbl_809D4690
/* 809D463C  7F E3 FB 78 */	mr r3, r31
/* 809D4640  4B 7C 2C F8 */	b initShopSystem__13dShopSystem_cFv
/* 809D4644  7F E3 FB 78 */	mr r3, r31
/* 809D4648  48 00 01 BD */	bl getMaxNumItem__11daNpc_grM_cFv
/* 809D464C  7C 64 1B 78 */	mr r4, r3
/* 809D4650  7F E3 FB 78 */	mr r3, r31
/* 809D4654  4B 7C 64 C8 */	b setSellItemMax__13dShopSystem_cFUc
/* 809D4658  38 00 FF FF */	li r0, -1
/* 809D465C  90 1F 0F 60 */	stw r0, 0xf60(r31)
/* 809D4660  38 00 00 00 */	li r0, 0
/* 809D4664  B0 1F 0F 4E */	sth r0, 0xf4e(r31)
/* 809D4668  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 809D466C  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 809D4670  80 64 00 00 */	lwz r3, 0(r4)
/* 809D4674  80 04 00 04 */	lwz r0, 4(r4)
/* 809D4678  90 7F 0E 78 */	stw r3, 0xe78(r31)
/* 809D467C  90 1F 0E 7C */	stw r0, 0xe7c(r31)
/* 809D4680  80 04 00 08 */	lwz r0, 8(r4)
/* 809D4684  90 1F 0E 80 */	stw r0, 0xe80(r31)
/* 809D4688  38 00 00 01 */	li r0, 1
/* 809D468C  98 1F 10 DD */	stb r0, 0x10dd(r31)
lbl_809D4690:
/* 809D4690  7F E3 FB 78 */	mr r3, r31
/* 809D4694  4B 77 3E 98 */	b execute__8daNpcT_cFv
/* 809D4698  88 1F 10 DD */	lbz r0, 0x10dd(r31)
/* 809D469C  28 00 00 00 */	cmplwi r0, 0
/* 809D46A0  41 82 00 1C */	beq lbl_809D46BC
/* 809D46A4  7F E3 FB 78 */	mr r3, r31
/* 809D46A8  4B 7C 5F 28 */	b searchItemActor__13dShopSystem_cFv
/* 809D46AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809D46B0  41 82 00 0C */	beq lbl_809D46BC
/* 809D46B4  38 7F 0E 78 */	addi r3, r31, 0xe78
/* 809D46B8  4B 7C 1E 10 */	b move__16ShopCam_action_cFv
lbl_809D46BC:
/* 809D46BC  38 60 00 01 */	li r3, 1
/* 809D46C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D46C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D46C8  7C 08 03 A6 */	mtlr r0
/* 809D46CC  38 21 00 10 */	addi r1, r1, 0x10
/* 809D46D0  4E 80 00 20 */	blr 
