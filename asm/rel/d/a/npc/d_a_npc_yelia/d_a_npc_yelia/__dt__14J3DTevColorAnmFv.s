lbl_80B4DAB8:
/* 80B4DAB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4DABC  7C 08 02 A6 */	mflr r0
/* 80B4DAC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4DAC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4DAC8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B4DACC  41 82 00 10 */	beq lbl_80B4DADC
/* 80B4DAD0  7C 80 07 35 */	extsh. r0, r4
/* 80B4DAD4  40 81 00 08 */	ble lbl_80B4DADC
/* 80B4DAD8  4B 78 12 65 */	bl __dl__FPv
lbl_80B4DADC:
/* 80B4DADC  7F E3 FB 78 */	mr r3, r31
/* 80B4DAE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4DAE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4DAE8  7C 08 03 A6 */	mtlr r0
/* 80B4DAEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4DAF0  4E 80 00 20 */	blr 
