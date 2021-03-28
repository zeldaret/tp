lbl_8018F2A4:
/* 8018F2A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8018F2A8  7C 08 02 A6 */	mflr r0
/* 8018F2AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8018F2B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8018F2B4  7C 7F 1B 78 */	mr r31, r3
/* 8018F2B8  A8 63 03 AC */	lha r3, 0x3ac(r3)
/* 8018F2BC  2C 03 00 00 */	cmpwi r3, 0
/* 8018F2C0  41 82 00 0C */	beq lbl_8018F2CC
/* 8018F2C4  38 03 FF FF */	addi r0, r3, -1
/* 8018F2C8  B0 1F 03 AC */	sth r0, 0x3ac(r31)
lbl_8018F2CC:
/* 8018F2CC  3C 60 80 3F */	lis r3, g_mDoMemCd_control@ha
/* 8018F2D0  38 63 AF 40 */	addi r3, r3, g_mDoMemCd_control@l
/* 8018F2D4  4B E8 7C 59 */	bl FormatSync__15mDoMemCd_Ctrl_cFv
/* 8018F2D8  90 7F 03 B4 */	stw r3, 0x3b4(r31)
/* 8018F2DC  80 1F 03 B4 */	lwz r0, 0x3b4(r31)
/* 8018F2E0  2C 00 00 00 */	cmpwi r0, 0
/* 8018F2E4  41 82 00 0C */	beq lbl_8018F2F0
/* 8018F2E8  38 00 00 0B */	li r0, 0xb
/* 8018F2EC  98 1F 02 71 */	stb r0, 0x271(r31)
lbl_8018F2F0:
/* 8018F2F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8018F2F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8018F2F8  7C 08 03 A6 */	mtlr r0
/* 8018F2FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8018F300  4E 80 00 20 */	blr 
