lbl_806CC824:
/* 806CC824  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806CC828  7C 08 02 A6 */	mflr r0
/* 806CC82C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806CC830  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806CC834  7C 7F 1B 79 */	or. r31, r3, r3
/* 806CC838  41 82 00 1C */	beq lbl_806CC854
/* 806CC83C  3C A0 80 6D */	lis r5, __vt__8cM3dGSph@ha /* 0x806CD308@ha */
/* 806CC840  38 05 D3 08 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x806CD308@l */
/* 806CC844  90 1F 00 10 */	stw r0, 0x10(r31)
/* 806CC848  7C 80 07 35 */	extsh. r0, r4
/* 806CC84C  40 81 00 08 */	ble lbl_806CC854
/* 806CC850  4B C0 24 ED */	bl __dl__FPv
lbl_806CC854:
/* 806CC854  7F E3 FB 78 */	mr r3, r31
/* 806CC858  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806CC85C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806CC860  7C 08 03 A6 */	mtlr r0
/* 806CC864  38 21 00 10 */	addi r1, r1, 0x10
/* 806CC868  4E 80 00 20 */	blr 
