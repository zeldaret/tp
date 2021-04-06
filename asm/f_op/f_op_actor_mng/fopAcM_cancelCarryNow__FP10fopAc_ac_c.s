lbl_8001CBA0:
/* 8001CBA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001CBA4  7C 08 02 A6 */	mflr r0
/* 8001CBA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001CBAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001CBB0  7C 7F 1B 78 */	mr r31, r3
/* 8001CBB4  80 63 04 9C */	lwz r3, 0x49c(r3)
/* 8001CBB8  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 8001CBBC  41 82 00 8C */	beq lbl_8001CC48
/* 8001CBC0  54 60 04 E2 */	rlwinm r0, r3, 0, 0x13, 0x11
/* 8001CBC4  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 8001CBC8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8001CBCC  7C 00 07 74 */	extsb r0, r0
/* 8001CBD0  2C 00 FF FF */	cmpwi r0, -1
/* 8001CBD4  41 82 00 3C */	beq lbl_8001CC10
/* 8001CBD8  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha /* 0x803F6094@ha */
/* 8001CBDC  38 63 60 94 */	addi r3, r3, mStatus__20dStage_roomControl_c@l /* 0x803F6094@l */
/* 8001CBE0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8001CBE4  7C 00 07 74 */	extsb r0, r0
/* 8001CBE8  1C 00 04 04 */	mulli r0, r0, 0x404
/* 8001CBEC  7C 63 02 14 */	add r3, r3, r0
/* 8001CBF0  80 63 03 FC */	lwz r3, 0x3fc(r3)
/* 8001CBF4  48 00 20 BD */	bl fopScnM_SearchByID__FUi
/* 8001CBF8  28 03 00 00 */	cmplwi r3, 0
/* 8001CBFC  41 82 00 14 */	beq lbl_8001CC10
/* 8001CC00  7F E3 FB 78 */	mr r3, r31
/* 8001CC04  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8001CC08  7C 04 07 74 */	extsb r4, r0
/* 8001CC0C  4B FF CD 29 */	bl fopAcM_setRoomLayer__FPvi
lbl_8001CC10:
/* 8001CC10  38 00 00 00 */	li r0, 0
/* 8001CC14  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 8001CC18  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 8001CC1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001CC20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8001CC24  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8001CC28  28 00 00 00 */	cmplwi r0, 0
/* 8001CC2C  41 82 00 1C */	beq lbl_8001CC48
/* 8001CC30  88 1F 04 96 */	lbz r0, 0x496(r31)
/* 8001CC34  28 00 00 02 */	cmplwi r0, 2
/* 8001CC38  41 82 00 10 */	beq lbl_8001CC48
/* 8001CC3C  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8001CC40  60 00 08 00 */	ori r0, r0, 0x800
/* 8001CC44  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_8001CC48:
/* 8001CC48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001CC4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001CC50  7C 08 03 A6 */	mtlr r0
/* 8001CC54  38 21 00 10 */	addi r1, r1, 0x10
/* 8001CC58  4E 80 00 20 */	blr 
