lbl_80AA9520:
/* 80AA9520  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA9524  7C 08 02 A6 */	mflr r0
/* 80AA9528  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA952C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA9530  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AA9534  41 82 00 1C */	beq lbl_80AA9550
/* 80AA9538  3C A0 80 AB */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x80AADA6C@ha */
/* 80AA953C  38 05 DA 6C */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x80AADA6C@l */
/* 80AA9540  90 1F 00 00 */	stw r0, 0(r31)
/* 80AA9544  7C 80 07 35 */	extsh. r0, r4
/* 80AA9548  40 81 00 08 */	ble lbl_80AA9550
/* 80AA954C  4B 82 57 F1 */	bl __dl__FPv
lbl_80AA9550:
/* 80AA9550  7F E3 FB 78 */	mr r3, r31
/* 80AA9554  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA9558  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA955C  7C 08 03 A6 */	mtlr r0
/* 80AA9560  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA9564  4E 80 00 20 */	blr 
