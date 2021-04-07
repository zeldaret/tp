lbl_80D5D830:
/* 80D5D830  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5D834  7C 08 02 A6 */	mflr r0
/* 80D5D838  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5D83C  38 63 05 68 */	addi r3, r3, 0x568
/* 80D5D840  4B 32 6E 19 */	bl ChkCoHit__12dCcD_GObjInfFv
/* 80D5D844  30 03 FF FF */	addic r0, r3, -1
/* 80D5D848  7C 60 19 10 */	subfe r3, r0, r3
/* 80D5D84C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5D850  7C 08 03 A6 */	mtlr r0
/* 80D5D854  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5D858  4E 80 00 20 */	blr 
