lbl_80A4651C:
/* 80A4651C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A46520  7C 08 02 A6 */	mflr r0
/* 80A46524  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A46528  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A4652C  7C 7F 1B 78 */	mr r31, r3
/* 80A46530  3C 80 80 A5 */	lis r4, lit_4507@ha /* 0x80A48C94@ha */
/* 80A46534  38 A4 8C 94 */	addi r5, r4, lit_4507@l /* 0x80A48C94@l */
/* 80A46538  80 85 00 00 */	lwz r4, 0(r5)
/* 80A4653C  80 05 00 04 */	lwz r0, 4(r5)
/* 80A46540  90 81 00 08 */	stw r4, 8(r1)
/* 80A46544  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A46548  80 05 00 08 */	lwz r0, 8(r5)
/* 80A4654C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A46550  38 81 00 08 */	addi r4, r1, 8
/* 80A46554  48 00 05 99 */	bl chkAction__14daNpc_Kolinb_cFM14daNpc_Kolinb_cFPCvPvPv_i
/* 80A46558  2C 03 00 00 */	cmpwi r3, 0
/* 80A4655C  40 82 00 5C */	bne lbl_80A465B8
/* 80A46560  38 00 00 00 */	li r0, 0
/* 80A46564  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80A46568  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A4656C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A46570  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80A46574  28 04 00 01 */	cmplwi r4, 1
/* 80A46578  41 82 00 0C */	beq lbl_80A46584
/* 80A4657C  28 04 00 02 */	cmplwi r4, 2
/* 80A46580  40 82 00 08 */	bne lbl_80A46588
lbl_80A46584:
/* 80A46584  38 00 00 01 */	li r0, 1
lbl_80A46588:
/* 80A46588  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A4658C  41 82 00 2C */	beq lbl_80A465B8
/* 80A46590  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80A46594  4B 60 22 5D */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80A46598  2C 03 00 00 */	cmpwi r3, 0
/* 80A4659C  41 82 00 14 */	beq lbl_80A465B0
/* 80A465A0  38 00 00 01 */	li r0, 1
/* 80A465A4  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80A465A8  7F E3 FB 78 */	mr r3, r31
/* 80A465AC  4B 70 3C 79 */	bl evtChange__8daNpcT_cFv
lbl_80A465B0:
/* 80A465B0  38 60 00 01 */	li r3, 1
/* 80A465B4  48 00 00 08 */	b lbl_80A465BC
lbl_80A465B8:
/* 80A465B8  38 60 00 00 */	li r3, 0
lbl_80A465BC:
/* 80A465BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A465C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A465C4  7C 08 03 A6 */	mtlr r0
/* 80A465C8  38 21 00 20 */	addi r1, r1, 0x20
/* 80A465CC  4E 80 00 20 */	blr 
