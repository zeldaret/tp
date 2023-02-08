lbl_8076AF1C:
/* 8076AF1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8076AF20  7C 08 02 A6 */	mflr r0
/* 8076AF24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8076AF28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8076AF2C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8076AF30  41 82 00 1C */	beq lbl_8076AF4C
/* 8076AF34  3C A0 80 77 */	lis r5, __vt__10cCcD_GStts@ha /* 0x8076B950@ha */
/* 8076AF38  38 05 B9 50 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x8076B950@l */
/* 8076AF3C  90 1F 00 00 */	stw r0, 0(r31)
/* 8076AF40  7C 80 07 35 */	extsh. r0, r4
/* 8076AF44  40 81 00 08 */	ble lbl_8076AF4C
/* 8076AF48  4B B6 3D F5 */	bl __dl__FPv
lbl_8076AF4C:
/* 8076AF4C  7F E3 FB 78 */	mr r3, r31
/* 8076AF50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8076AF54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8076AF58  7C 08 03 A6 */	mtlr r0
/* 8076AF5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8076AF60  4E 80 00 20 */	blr 
