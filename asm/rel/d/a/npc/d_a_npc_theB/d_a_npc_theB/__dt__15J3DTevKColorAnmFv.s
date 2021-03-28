lbl_80AFD040:
/* 80AFD040  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AFD044  7C 08 02 A6 */	mflr r0
/* 80AFD048  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFD04C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AFD050  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AFD054  41 82 00 10 */	beq lbl_80AFD064
/* 80AFD058  7C 80 07 35 */	extsh. r0, r4
/* 80AFD05C  40 81 00 08 */	ble lbl_80AFD064
/* 80AFD060  4B 7D 1C DC */	b __dl__FPv
lbl_80AFD064:
/* 80AFD064  7F E3 FB 78 */	mr r3, r31
/* 80AFD068  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AFD06C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AFD070  7C 08 03 A6 */	mtlr r0
/* 80AFD074  38 21 00 10 */	addi r1, r1, 0x10
/* 80AFD078  4E 80 00 20 */	blr 
