lbl_809AE550:
/* 809AE550  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AE554  7C 08 02 A6 */	mflr r0
/* 809AE558  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AE55C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809AE560  7C 7F 1B 78 */	mr r31, r3
/* 809AE564  4B 7A 3A B1 */	bl execute__8daNpcF_cFv
/* 809AE568  4B 7B 0E BD */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 809AE56C  2C 03 00 00 */	cmpwi r3, 0
/* 809AE570  41 82 00 44 */	beq lbl_809AE5B4
/* 809AE574  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 809AE578  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 809AE57C  40 82 00 38 */	bne lbl_809AE5B4
/* 809AE580  7F E3 FB 78 */	mr r3, r31
/* 809AE584  48 00 03 69 */	bl chkFindPlayer__12daNpcDrSol_cFv
/* 809AE588  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809AE58C  41 82 00 28 */	beq lbl_809AE5B4
/* 809AE590  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 809AE594  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 809AE598  2C 04 00 FF */	cmpwi r4, 0xff
/* 809AE59C  41 82 00 18 */	beq lbl_809AE5B4
/* 809AE5A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809AE5A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809AE5A8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 809AE5AC  7C 05 07 74 */	extsb r5, r0
/* 809AE5B0  4B 68 6C 51 */	bl onSwitch__10dSv_info_cFii
lbl_809AE5B4:
/* 809AE5B4  38 60 00 01 */	li r3, 1
/* 809AE5B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809AE5BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AE5C0  7C 08 03 A6 */	mtlr r0
/* 809AE5C4  38 21 00 10 */	addi r1, r1, 0x10
/* 809AE5C8  4E 80 00 20 */	blr 
