lbl_80A72C18:
/* 80A72C18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A72C1C  7C 08 02 A6 */	mflr r0
/* 80A72C20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A72C24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A72C28  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A72C2C  41 82 00 10 */	beq lbl_80A72C3C
/* 80A72C30  7C 80 07 35 */	extsh. r0, r4
/* 80A72C34  40 81 00 08 */	ble lbl_80A72C3C
/* 80A72C38  4B 85 C1 05 */	bl __dl__FPv
lbl_80A72C3C:
/* 80A72C3C  7F E3 FB 78 */	mr r3, r31
/* 80A72C40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A72C44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A72C48  7C 08 03 A6 */	mtlr r0
/* 80A72C4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A72C50  4E 80 00 20 */	blr 
