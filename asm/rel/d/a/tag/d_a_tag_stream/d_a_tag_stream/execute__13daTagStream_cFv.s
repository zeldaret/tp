lbl_80D63B58:
/* 80D63B58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D63B5C  7C 08 02 A6 */	mflr r0
/* 80D63B60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D63B64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D63B68  7C 7F 1B 78 */	mr r31, r3
/* 80D63B6C  88 83 05 6B */	lbz r4, 0x56b(r3)
/* 80D63B70  28 04 00 FF */	cmplwi r4, 0xff
/* 80D63B74  41 82 00 20 */	beq lbl_80D63B94
/* 80D63B78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D63B7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D63B80  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D63B84  7C 05 07 74 */	extsb r5, r0
/* 80D63B88  4B 2D 17 D9 */	bl isSwitch__10dSv_info_cCFii
/* 80D63B8C  2C 03 00 00 */	cmpwi r3, 0
/* 80D63B90  41 82 00 10 */	beq lbl_80D63BA0
lbl_80D63B94:
/* 80D63B94  38 00 00 01 */	li r0, 1
/* 80D63B98  98 1F 05 69 */	stb r0, 0x569(r31)
/* 80D63B9C  48 00 00 0C */	b lbl_80D63BA8
lbl_80D63BA0:
/* 80D63BA0  38 00 00 00 */	li r0, 0
/* 80D63BA4  98 1F 05 69 */	stb r0, 0x569(r31)
lbl_80D63BA8:
/* 80D63BA8  38 60 00 01 */	li r3, 1
/* 80D63BAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D63BB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D63BB4  7C 08 03 A6 */	mtlr r0
/* 80D63BB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D63BBC  4E 80 00 20 */	blr 
