lbl_80A79EA8:
/* 80A79EA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A79EAC  7C 08 02 A6 */	mflr r0
/* 80A79EB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A79EB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A79EB8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A79EBC  41 82 00 10 */	beq lbl_80A79ECC
/* 80A79EC0  7C 80 07 35 */	extsh. r0, r4
/* 80A79EC4  40 81 00 08 */	ble lbl_80A79ECC
/* 80A79EC8  4B 85 4E 75 */	bl __dl__FPv
lbl_80A79ECC:
/* 80A79ECC  7F E3 FB 78 */	mr r3, r31
/* 80A79ED0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A79ED4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A79ED8  7C 08 03 A6 */	mtlr r0
/* 80A79EDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A79EE0  4E 80 00 20 */	blr 
