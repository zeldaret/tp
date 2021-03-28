lbl_80BBC300:
/* 80BBC300  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBC304  7C 08 02 A6 */	mflr r0
/* 80BBC308  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBC30C  4B FF F5 29 */	bl Execute__15daObj_BouMato_cFv
/* 80BBC310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBC314  7C 08 03 A6 */	mtlr r0
/* 80BBC318  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBC31C  4E 80 00 20 */	blr 
