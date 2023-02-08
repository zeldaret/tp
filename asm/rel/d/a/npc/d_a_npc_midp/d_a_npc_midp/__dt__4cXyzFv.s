lbl_80A72BDC:
/* 80A72BDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A72BE0  7C 08 02 A6 */	mflr r0
/* 80A72BE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A72BE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A72BEC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A72BF0  41 82 00 10 */	beq lbl_80A72C00
/* 80A72BF4  7C 80 07 35 */	extsh. r0, r4
/* 80A72BF8  40 81 00 08 */	ble lbl_80A72C00
/* 80A72BFC  4B 85 C1 41 */	bl __dl__FPv
lbl_80A72C00:
/* 80A72C00  7F E3 FB 78 */	mr r3, r31
/* 80A72C04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A72C08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A72C0C  7C 08 03 A6 */	mtlr r0
/* 80A72C10  38 21 00 10 */	addi r1, r1, 0x10
/* 80A72C14  4E 80 00 20 */	blr 
