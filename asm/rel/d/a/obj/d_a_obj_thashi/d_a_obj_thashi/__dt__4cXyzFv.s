lbl_80D0C2DC:
/* 80D0C2DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0C2E0  7C 08 02 A6 */	mflr r0
/* 80D0C2E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0C2E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0C2EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D0C2F0  41 82 00 10 */	beq lbl_80D0C300
/* 80D0C2F4  7C 80 07 35 */	extsh. r0, r4
/* 80D0C2F8  40 81 00 08 */	ble lbl_80D0C300
/* 80D0C2FC  4B 5C 2A 40 */	b __dl__FPv
lbl_80D0C300:
/* 80D0C300  7F E3 FB 78 */	mr r3, r31
/* 80D0C304  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0C308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0C30C  7C 08 03 A6 */	mtlr r0
/* 80D0C310  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0C314  4E 80 00 20 */	blr 
