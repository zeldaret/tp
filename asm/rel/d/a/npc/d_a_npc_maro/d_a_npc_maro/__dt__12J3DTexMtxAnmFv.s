lbl_8055BD40:
/* 8055BD40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055BD44  7C 08 02 A6 */	mflr r0
/* 8055BD48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055BD4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055BD50  7C 7F 1B 79 */	or. r31, r3, r3
/* 8055BD54  41 82 00 10 */	beq lbl_8055BD64
/* 8055BD58  7C 80 07 35 */	extsh. r0, r4
/* 8055BD5C  40 81 00 08 */	ble lbl_8055BD64
/* 8055BD60  4B D7 2F DC */	b __dl__FPv
lbl_8055BD64:
/* 8055BD64  7F E3 FB 78 */	mr r3, r31
/* 8055BD68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055BD6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055BD70  7C 08 03 A6 */	mtlr r0
/* 8055BD74  38 21 00 10 */	addi r1, r1, 0x10
/* 8055BD78  4E 80 00 20 */	blr 
