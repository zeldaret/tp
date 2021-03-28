lbl_80148378:
/* 80148378  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014837C  7C 08 02 A6 */	mflr r0
/* 80148380  90 01 00 14 */	stw r0, 0x14(r1)
/* 80148384  7C 80 23 78 */	mr r0, r4
/* 80148388  7C C7 33 78 */	mr r7, r6
/* 8014838C  38 85 00 58 */	addi r4, r5, 0x58
/* 80148390  7C 05 03 78 */	mr r5, r0
/* 80148394  38 C0 00 01 */	li r6, 1
/* 80148398  39 00 00 00 */	li r8, 0
/* 8014839C  39 20 FF FF */	li r9, -1
/* 801483A0  38 63 06 5C */	addi r3, r3, 0x65c
/* 801483A4  4B EC 53 69 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 801483A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801483AC  7C 08 03 A6 */	mtlr r0
/* 801483B0  38 21 00 10 */	addi r1, r1, 0x10
/* 801483B4  4E 80 00 20 */	blr 
