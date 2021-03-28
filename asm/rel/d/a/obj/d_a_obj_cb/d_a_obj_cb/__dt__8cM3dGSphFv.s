lbl_80BC563C:
/* 80BC563C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC5640  7C 08 02 A6 */	mflr r0
/* 80BC5644  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC5648  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC564C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BC5650  41 82 00 1C */	beq lbl_80BC566C
/* 80BC5654  3C A0 80 BC */	lis r5, __vt__8cM3dGSph@ha
/* 80BC5658  38 05 58 A4 */	addi r0, r5, __vt__8cM3dGSph@l
/* 80BC565C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80BC5660  7C 80 07 35 */	extsh. r0, r4
/* 80BC5664  40 81 00 08 */	ble lbl_80BC566C
/* 80BC5668  4B 70 96 D4 */	b __dl__FPv
lbl_80BC566C:
/* 80BC566C  7F E3 FB 78 */	mr r3, r31
/* 80BC5670  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC5674  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC5678  7C 08 03 A6 */	mtlr r0
/* 80BC567C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC5680  4E 80 00 20 */	blr 
