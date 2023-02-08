lbl_801C659C:
/* 801C659C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C65A0  7C 08 02 A6 */	mflr r0
/* 801C65A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C65A8  4B FF EB A5 */	bl _draw__15dMenu_Fishing_cFv
/* 801C65AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C65B0  7C 08 03 A6 */	mtlr r0
/* 801C65B4  38 21 00 10 */	addi r1, r1, 0x10
/* 801C65B8  4E 80 00 20 */	blr 
