lbl_80283F80:
/* 80283F80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80283F84  7C 08 02 A6 */	mflr r0
/* 80283F88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80283F8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80283F90  7C 7F 1B 79 */	or. r31, r3, r3
/* 80283F94  41 82 00 1C */	beq lbl_80283FB0
/* 80283F98  3C A0 80 3C */	lis r5, __vt__Q37JStudio3fvb7TObject@ha
/* 80283F9C  38 05 4A B0 */	addi r0, r5, __vt__Q37JStudio3fvb7TObject@l
/* 80283FA0  90 1F 00 08 */	stw r0, 8(r31)
/* 80283FA4  7C 80 07 35 */	extsh. r0, r4
/* 80283FA8  40 81 00 08 */	ble lbl_80283FB0
/* 80283FAC  48 04 AD 91 */	bl __dl__FPv
lbl_80283FB0:
/* 80283FB0  7F E3 FB 78 */	mr r3, r31
/* 80283FB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80283FB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80283FBC  7C 08 03 A6 */	mtlr r0
/* 80283FC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80283FC4  4E 80 00 20 */	blr 
