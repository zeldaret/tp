lbl_801BEFCC:
/* 801BEFCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801BEFD0  7C 08 02 A6 */	mflr r0
/* 801BEFD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801BEFD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801BEFDC  7C 7F 1B 78 */	mr r31, r3
/* 801BEFE0  80 63 00 94 */	lwz r3, 0x94(r3)
/* 801BEFE4  48 09 66 25 */	bl hide__13CPaneMgrAlphaFv
/* 801BEFE8  38 80 00 00 */	li r4, 0
/* 801BEFEC  88 1F 01 78 */	lbz r0, 0x178(r31)
/* 801BEFF0  54 00 10 3A */	slwi r0, r0, 2
/* 801BEFF4  7C 7F 02 14 */	add r3, r31, r0
/* 801BEFF8  80 63 00 88 */	lwz r3, 0x88(r3)
/* 801BEFFC  B0 83 00 64 */	sth r4, 0x64(r3)
/* 801BF000  88 1F 01 77 */	lbz r0, 0x177(r31)
/* 801BF004  54 00 10 3A */	slwi r0, r0, 2
/* 801BF008  7C 7F 02 14 */	add r3, r31, r0
/* 801BF00C  80 63 00 88 */	lwz r3, 0x88(r3)
/* 801BF010  B0 83 00 64 */	sth r4, 0x64(r3)
/* 801BF014  38 00 00 01 */	li r0, 1
/* 801BF018  98 1F 01 7C */	stb r0, 0x17c(r31)
/* 801BF01C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801BF020  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801BF024  7C 08 03 A6 */	mtlr r0
/* 801BF028  38 21 00 10 */	addi r1, r1, 0x10
/* 801BF02C  4E 80 00 20 */	blr 
