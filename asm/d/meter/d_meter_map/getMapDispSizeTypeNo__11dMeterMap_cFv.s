lbl_8020D528:
/* 8020D528  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8020D52C  7C 08 02 A6 */	mflr r0
/* 8020D530  90 01 00 24 */	stw r0, 0x24(r1)
/* 8020D534  39 61 00 20 */	addi r11, r1, 0x20
/* 8020D538  48 15 4C A5 */	bl _savegpr_29
/* 8020D53C  3B A0 00 07 */	li r29, 7
/* 8020D540  88 8D 87 E4 */	lbz r4, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 8020D544  7C 84 07 74 */	extsb r4, r4
/* 8020D548  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8020D54C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8020D550  38 7F 4E C4 */	addi r3, r31, 0x4ec4
/* 8020D554  4B E1 6E 31 */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 8020D558  81 83 00 00 */	lwz r12, 0(r3)
/* 8020D55C  81 8C 01 0C */	lwz r12, 0x10c(r12)
/* 8020D560  7D 89 03 A6 */	mtctr r12
/* 8020D564  4E 80 04 21 */	bctrl 
/* 8020D568  28 03 00 00 */	cmplwi r3, 0
/* 8020D56C  41 82 00 0C */	beq lbl_8020D578
/* 8020D570  80 03 00 00 */	lwz r0, 0(r3)
/* 8020D574  54 1D EF 7E */	rlwinm r29, r0, 0x1d, 0x1d, 0x1f
lbl_8020D578:
/* 8020D578  3B DF 4E 20 */	addi r30, r31, 0x4e20
/* 8020D57C  7F C3 F3 78 */	mr r3, r30
/* 8020D580  81 9E 00 00 */	lwz r12, 0(r30)
/* 8020D584  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8020D588  7D 89 03 A6 */	mtctr r12
/* 8020D58C  4E 80 04 21 */	bctrl 
/* 8020D590  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8020D594  54 1F 9F 7E */	rlwinm r31, r0, 0x13, 0x1d, 0x1f
/* 8020D598  7F C3 F3 78 */	mr r3, r30
/* 8020D59C  81 9E 00 00 */	lwz r12, 0(r30)
/* 8020D5A0  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 8020D5A4  7D 89 03 A6 */	mtctr r12
/* 8020D5A8  4E 80 04 21 */	bctrl 
/* 8020D5AC  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 8020D5B0  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 8020D5B4  2C 00 00 01 */	cmpwi r0, 1
/* 8020D5B8  40 82 00 0C */	bne lbl_8020D5C4
/* 8020D5BC  3B A0 00 01 */	li r29, 1
/* 8020D5C0  48 00 00 10 */	b lbl_8020D5D0
lbl_8020D5C4:
/* 8020D5C4  2C 1D 00 07 */	cmpwi r29, 7
/* 8020D5C8  40 82 00 08 */	bne lbl_8020D5D0
/* 8020D5CC  7F FD FB 78 */	mr r29, r31
lbl_8020D5D0:
/* 8020D5D0  38 60 00 00 */	li r3, 0
/* 8020D5D4  2C 1D 00 02 */	cmpwi r29, 2
/* 8020D5D8  41 82 00 3C */	beq lbl_8020D614
/* 8020D5DC  40 80 00 14 */	bge lbl_8020D5F0
/* 8020D5E0  2C 1D 00 00 */	cmpwi r29, 0
/* 8020D5E4  41 82 00 54 */	beq lbl_8020D638
/* 8020D5E8  40 80 00 14 */	bge lbl_8020D5FC
/* 8020D5EC  48 00 00 4C */	b lbl_8020D638
lbl_8020D5F0:
/* 8020D5F0  2C 1D 00 04 */	cmpwi r29, 4
/* 8020D5F4  40 80 00 44 */	bge lbl_8020D638
/* 8020D5F8  48 00 00 2C */	b lbl_8020D624
lbl_8020D5FC:
/* 8020D5FC  2C 00 00 01 */	cmpwi r0, 1
/* 8020D600  40 82 00 0C */	bne lbl_8020D60C
/* 8020D604  38 60 00 04 */	li r3, 4
/* 8020D608  48 00 00 30 */	b lbl_8020D638
lbl_8020D60C:
/* 8020D60C  38 60 00 01 */	li r3, 1
/* 8020D610  48 00 00 28 */	b lbl_8020D638
lbl_8020D614:
/* 8020D614  2C 00 00 01 */	cmpwi r0, 1
/* 8020D618  41 82 00 20 */	beq lbl_8020D638
/* 8020D61C  38 60 00 02 */	li r3, 2
/* 8020D620  48 00 00 18 */	b lbl_8020D638
lbl_8020D624:
/* 8020D624  2C 00 00 01 */	cmpwi r0, 1
/* 8020D628  40 82 00 0C */	bne lbl_8020D634
/* 8020D62C  38 60 00 05 */	li r3, 5
/* 8020D630  48 00 00 08 */	b lbl_8020D638
lbl_8020D634:
/* 8020D634  38 60 00 03 */	li r3, 3
lbl_8020D638:
/* 8020D638  39 61 00 20 */	addi r11, r1, 0x20
/* 8020D63C  48 15 4B ED */	bl _restgpr_29
/* 8020D640  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8020D644  7C 08 03 A6 */	mtlr r0
/* 8020D648  38 21 00 20 */	addi r1, r1, 0x20
/* 8020D64C  4E 80 00 20 */	blr 
