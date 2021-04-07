lbl_804D5888:
/* 804D5888  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D588C  7C 08 02 A6 */	mflr r0
/* 804D5890  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D5894  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D5898  93 C1 00 08 */	stw r30, 8(r1)
/* 804D589C  7C 7E 1B 78 */	mr r30, r3
/* 804D58A0  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 804D58A4  7C 03 07 74 */	extsb r3, r0
/* 804D58A8  4B B4 71 75 */	bl fopAcM_myRoomSearchEnemy__FSc
/* 804D58AC  28 03 00 00 */	cmplwi r3, 0
/* 804D58B0  41 82 00 10 */	beq lbl_804D58C0
/* 804D58B4  38 00 00 01 */	li r0, 1
/* 804D58B8  98 1E 05 68 */	stb r0, 0x568(r30)
/* 804D58BC  48 00 00 60 */	b lbl_804D591C
lbl_804D58C0:
/* 804D58C0  A8 7E 05 6A */	lha r3, 0x56a(r30)
/* 804D58C4  2C 03 00 00 */	cmpwi r3, 0
/* 804D58C8  40 81 00 10 */	ble lbl_804D58D8
/* 804D58CC  38 03 FF FF */	addi r0, r3, -1
/* 804D58D0  B0 1E 05 6A */	sth r0, 0x56a(r30)
/* 804D58D4  48 00 00 48 */	b lbl_804D591C
lbl_804D58D8:
/* 804D58D8  A8 1E 05 6C */	lha r0, 0x56c(r30)
/* 804D58DC  2C 00 FF FF */	cmpwi r0, -1
/* 804D58E0  40 82 00 10 */	bne lbl_804D58F0
/* 804D58E4  38 00 00 00 */	li r0, 0
/* 804D58E8  98 1E 05 68 */	stb r0, 0x568(r30)
/* 804D58EC  48 00 00 0C */	b lbl_804D58F8
lbl_804D58F0:
/* 804D58F0  38 00 00 03 */	li r0, 3
/* 804D58F4  98 1E 05 68 */	stb r0, 0x568(r30)
lbl_804D58F8:
/* 804D58F8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 804D58FC  7C 1F 07 74 */	extsb r31, r0
/* 804D5900  7F C3 F3 78 */	mr r3, r30
/* 804D5904  4B FF FF 21 */	bl getSwbit__10daAlldie_cFv
/* 804D5908  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 804D590C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804D5910  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804D5914  7F E5 FB 78 */	mr r5, r31
/* 804D5918  4B B5 F8 E9 */	bl onSwitch__10dSv_info_cFii
lbl_804D591C:
/* 804D591C  38 60 00 01 */	li r3, 1
/* 804D5920  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D5924  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D5928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D592C  7C 08 03 A6 */	mtlr r0
/* 804D5930  38 21 00 10 */	addi r1, r1, 0x10
/* 804D5934  4E 80 00 20 */	blr 
