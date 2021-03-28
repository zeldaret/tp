lbl_80D4AFCC:
/* 80D4AFCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4AFD0  7C 08 02 A6 */	mflr r0
/* 80D4AFD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4AFD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4AFDC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D4AFE0  41 82 00 10 */	beq lbl_80D4AFF0
/* 80D4AFE4  7C 80 07 35 */	extsh. r0, r4
/* 80D4AFE8  40 81 00 08 */	ble lbl_80D4AFF0
/* 80D4AFEC  4B 58 3D 50 */	b __dl__FPv
lbl_80D4AFF0:
/* 80D4AFF0  7F E3 FB 78 */	mr r3, r31
/* 80D4AFF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4AFF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4AFFC  7C 08 03 A6 */	mtlr r0
/* 80D4B000  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4B004  4E 80 00 20 */	blr 
