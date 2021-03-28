lbl_80BC6174:
/* 80BC6174  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC6178  7C 08 02 A6 */	mflr r0
/* 80BC617C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC6180  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC6184  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BC6188  41 82 00 1C */	beq lbl_80BC61A4
/* 80BC618C  3C A0 80 BC */	lis r5, __vt__8cM3dGCyl@ha
/* 80BC6190  38 05 6C 04 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80BC6194  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80BC6198  7C 80 07 35 */	extsh. r0, r4
/* 80BC619C  40 81 00 08 */	ble lbl_80BC61A4
/* 80BC61A0  4B 70 8B 9C */	b __dl__FPv
lbl_80BC61A4:
/* 80BC61A4  7F E3 FB 78 */	mr r3, r31
/* 80BC61A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC61AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC61B0  7C 08 03 A6 */	mtlr r0
/* 80BC61B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC61B8  4E 80 00 20 */	blr 
