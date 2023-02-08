lbl_8067E810:
/* 8067E810  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067E814  7C 08 02 A6 */	mflr r0
/* 8067E818  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067E81C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8067E820  7C 7F 1B 79 */	or. r31, r3, r3
/* 8067E824  41 82 00 1C */	beq lbl_8067E840
/* 8067E828  3C A0 80 68 */	lis r5, __vt__10cCcD_GStts@ha /* 0x8067EAB0@ha */
/* 8067E82C  38 05 EA B0 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x8067EAB0@l */
/* 8067E830  90 1F 00 00 */	stw r0, 0(r31)
/* 8067E834  7C 80 07 35 */	extsh. r0, r4
/* 8067E838  40 81 00 08 */	ble lbl_8067E840
/* 8067E83C  4B C5 05 01 */	bl __dl__FPv
lbl_8067E840:
/* 8067E840  7F E3 FB 78 */	mr r3, r31
/* 8067E844  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8067E848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067E84C  7C 08 03 A6 */	mtlr r0
/* 8067E850  38 21 00 10 */	addi r1, r1, 0x10
/* 8067E854  4E 80 00 20 */	blr 
