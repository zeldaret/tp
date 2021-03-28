lbl_80D377B4:
/* 80D377B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D377B8  7C 08 02 A6 */	mflr r0
/* 80D377BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D377C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D377C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D377C8  41 82 00 10 */	beq lbl_80D377D8
/* 80D377CC  7C 80 07 35 */	extsh. r0, r4
/* 80D377D0  40 81 00 08 */	ble lbl_80D377D8
/* 80D377D4  4B 59 75 68 */	b __dl__FPv
lbl_80D377D8:
/* 80D377D8  7F E3 FB 78 */	mr r3, r31
/* 80D377DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D377E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D377E4  7C 08 03 A6 */	mtlr r0
/* 80D377E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D377EC  4E 80 00 20 */	blr 
