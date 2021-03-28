lbl_80023E94:
/* 80023E94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80023E98  7C 08 02 A6 */	mflr r0
/* 80023E9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80023EA0  3C 60 80 38 */	lis r3, d_d_stage__stringBase0@ha
/* 80023EA4  38 63 8A 50 */	addi r3, r3, d_d_stage__stringBase0@l
/* 80023EA8  38 63 00 08 */	addi r3, r3, 8
/* 80023EAC  4C C6 31 82 */	crclr 6
/* 80023EB0  4B FE 2D 5D */	bl OSReport_Error
/* 80023EB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80023EB8  7C 08 03 A6 */	mtlr r0
/* 80023EBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80023EC0  4E 80 00 20 */	blr 
