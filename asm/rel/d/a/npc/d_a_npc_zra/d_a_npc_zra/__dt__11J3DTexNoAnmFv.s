lbl_80B7A408:
/* 80B7A408  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7A40C  7C 08 02 A6 */	mflr r0
/* 80B7A410  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7A414  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B7A418  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B7A41C  41 82 00 1C */	beq lbl_80B7A438
/* 80B7A420  3C A0 80 B9 */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x80B8D938@ha */
/* 80B7A424  38 05 D9 38 */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x80B8D938@l */
/* 80B7A428  90 1F 00 00 */	stw r0, 0(r31)
/* 80B7A42C  7C 80 07 35 */	extsh. r0, r4
/* 80B7A430  40 81 00 08 */	ble lbl_80B7A438
/* 80B7A434  4B 75 49 09 */	bl __dl__FPv
lbl_80B7A438:
/* 80B7A438  7F E3 FB 78 */	mr r3, r31
/* 80B7A43C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B7A440  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7A444  7C 08 03 A6 */	mtlr r0
/* 80B7A448  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7A44C  4E 80 00 20 */	blr 
