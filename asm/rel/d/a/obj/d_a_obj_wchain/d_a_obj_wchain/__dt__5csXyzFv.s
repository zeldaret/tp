lbl_80D30394:
/* 80D30394  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D30398  7C 08 02 A6 */	mflr r0
/* 80D3039C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D303A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D303A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D303A8  41 82 00 10 */	beq lbl_80D303B8
/* 80D303AC  7C 80 07 35 */	extsh. r0, r4
/* 80D303B0  40 81 00 08 */	ble lbl_80D303B8
/* 80D303B4  4B 59 E9 88 */	b __dl__FPv
lbl_80D303B8:
/* 80D303B8  7F E3 FB 78 */	mr r3, r31
/* 80D303BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D303C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D303C4  7C 08 03 A6 */	mtlr r0
/* 80D303C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D303CC  4E 80 00 20 */	blr 
