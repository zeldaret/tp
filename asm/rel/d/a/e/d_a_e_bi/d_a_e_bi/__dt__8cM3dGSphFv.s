lbl_8068D160:
/* 8068D160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068D164  7C 08 02 A6 */	mflr r0
/* 8068D168  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068D16C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8068D170  7C 7F 1B 79 */	or. r31, r3, r3
/* 8068D174  41 82 00 1C */	beq lbl_8068D190
/* 8068D178  3C A0 80 69 */	lis r5, __vt__8cM3dGSph@ha
/* 8068D17C  38 05 DA 74 */	addi r0, r5, __vt__8cM3dGSph@l
/* 8068D180  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8068D184  7C 80 07 35 */	extsh. r0, r4
/* 8068D188  40 81 00 08 */	ble lbl_8068D190
/* 8068D18C  4B C4 1B B0 */	b __dl__FPv
lbl_8068D190:
/* 8068D190  7F E3 FB 78 */	mr r3, r31
/* 8068D194  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8068D198  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068D19C  7C 08 03 A6 */	mtlr r0
/* 8068D1A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8068D1A4  4E 80 00 20 */	blr 
