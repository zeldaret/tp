lbl_805E5D0C:
/* 805E5D0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E5D10  7C 08 02 A6 */	mflr r0
/* 805E5D14  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E5D18  4B FF BF 11 */	bl Md_DemoAction__8daB_GG_cFv
/* 805E5D1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E5D20  7C 08 03 A6 */	mtlr r0
/* 805E5D24  38 21 00 10 */	addi r1, r1, 0x10
/* 805E5D28  4E 80 00 20 */	blr 
