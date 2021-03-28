lbl_80127CAC:
/* 80127CAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80127CB0  7C 08 02 A6 */	mflr r0
/* 80127CB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80127CB8  A8 03 30 AC */	lha r0, 0x30ac(r3)
/* 80127CBC  2C 00 00 00 */	cmpwi r0, 0
/* 80127CC0  41 82 00 20 */	beq lbl_80127CE0
/* 80127CC4  38 00 00 00 */	li r0, 0
/* 80127CC8  B0 03 30 AC */	sth r0, 0x30ac(r3)
/* 80127CCC  38 00 00 14 */	li r0, 0x14
/* 80127CD0  98 03 2F D2 */	stb r0, 0x2fd2(r3)
/* 80127CD4  38 63 2C A8 */	addi r3, r3, 0x2ca8
/* 80127CD8  38 80 00 00 */	li r4, 0
/* 80127CDC  48 19 BE 21 */	bl setWolfEyeOpen__14Z2CreatureLinkFb
lbl_80127CE0:
/* 80127CE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80127CE4  7C 08 03 A6 */	mtlr r0
/* 80127CE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80127CEC  4E 80 00 20 */	blr 
