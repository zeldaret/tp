lbl_8018F580:
/* 8018F580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018F584  7C 08 02 A6 */	mflr r0
/* 8018F588  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018F58C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018F590  7C 7F 1B 78 */	mr r31, r3
/* 8018F594  A8 63 03 AC */	lha r3, 0x3ac(r3)
/* 8018F598  2C 03 00 00 */	cmpwi r3, 0
/* 8018F59C  41 82 00 0C */	beq lbl_8018F5A8
/* 8018F5A0  38 03 FF FF */	addi r0, r3, -1
/* 8018F5A4  B0 1F 03 AC */	sth r0, 0x3ac(r31)
lbl_8018F5A8:
/* 8018F5A8  3C 60 80 3F */	lis r3, g_mDoMemCd_control@ha
/* 8018F5AC  38 63 AF 40 */	addi r3, r3, g_mDoMemCd_control@l
/* 8018F5B0  4B E8 77 31 */	bl SaveSync__15mDoMemCd_Ctrl_cFv
/* 8018F5B4  90 7F 03 B4 */	stw r3, 0x3b4(r31)
/* 8018F5B8  80 1F 03 B4 */	lwz r0, 0x3b4(r31)
/* 8018F5BC  2C 00 00 00 */	cmpwi r0, 0
/* 8018F5C0  41 82 00 0C */	beq lbl_8018F5CC
/* 8018F5C4  38 00 00 10 */	li r0, 0x10
/* 8018F5C8  98 1F 02 71 */	stb r0, 0x271(r31)
lbl_8018F5CC:
/* 8018F5CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018F5D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018F5D4  7C 08 03 A6 */	mtlr r0
/* 8018F5D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8018F5DC  4E 80 00 20 */	blr 
