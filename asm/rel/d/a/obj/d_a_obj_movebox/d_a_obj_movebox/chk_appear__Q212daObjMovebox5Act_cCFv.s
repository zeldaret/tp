lbl_8047F530:
/* 8047F530  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047F534  7C 08 02 A6 */	mflr r0
/* 8047F538  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047F53C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8047F540  93 C1 00 08 */	stw r30, 8(r1)
/* 8047F544  7C 7E 1B 78 */	mr r30, r3
/* 8047F548  A0 03 08 B0 */	lhz r0, 0x8b0(r3)
/* 8047F54C  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 8047F550  4B FF F0 D9 */	bl prm_get_swSave1__Q212daObjMovebox5Act_cCFv
/* 8047F554  2C 1F 00 FF */	cmpwi r31, 0xff
/* 8047F558  40 82 00 0C */	bne lbl_8047F564
/* 8047F55C  2C 03 00 FF */	cmpwi r3, 0xff
/* 8047F560  40 82 00 0C */	bne lbl_8047F56C
lbl_8047F564:
/* 8047F564  38 60 00 01 */	li r3, 1
/* 8047F568  48 00 00 4C */	b lbl_8047F5B4
lbl_8047F56C:
/* 8047F56C  7F C3 F3 78 */	mr r3, r30
/* 8047F570  4B FF F0 B9 */	bl prm_get_swSave1__Q212daObjMovebox5Act_cCFv
/* 8047F574  7C 64 1B 78 */	mr r4, r3
/* 8047F578  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8047F57C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8047F580  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8047F584  7C 05 07 74 */	extsb r5, r0
/* 8047F588  4B BB 5D D9 */	bl isSwitch__10dSv_info_cCFii
/* 8047F58C  30 03 FF FF */	addic r0, r3, -1
/* 8047F590  7C 00 19 10 */	subfe r0, r0, r3
/* 8047F594  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8047F598  38 60 00 01 */	li r3, 1
/* 8047F59C  38 80 00 00 */	li r4, 0
/* 8047F5A0  40 82 00 08 */	bne lbl_8047F5A8
/* 8047F5A4  7C 64 1B 78 */	mr r4, r3
lbl_8047F5A8:
/* 8047F5A8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8047F5AC  40 82 00 08 */	bne lbl_8047F5B4
/* 8047F5B0  38 60 00 00 */	li r3, 0
lbl_8047F5B4:
/* 8047F5B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047F5B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8047F5BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047F5C0  7C 08 03 A6 */	mtlr r0
/* 8047F5C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8047F5C8  4E 80 00 20 */	blr 
