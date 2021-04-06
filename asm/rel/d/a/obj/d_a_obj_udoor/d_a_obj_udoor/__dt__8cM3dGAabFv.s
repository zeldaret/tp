lbl_80D20D90:
/* 80D20D90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D20D94  7C 08 02 A6 */	mflr r0
/* 80D20D98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D20D9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D20DA0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D20DA4  41 82 00 1C */	beq lbl_80D20DC0
/* 80D20DA8  3C A0 80 D2 */	lis r5, __vt__8cM3dGAab@ha /* 0x80D20EC8@ha */
/* 80D20DAC  38 05 0E C8 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80D20EC8@l */
/* 80D20DB0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80D20DB4  7C 80 07 35 */	extsh. r0, r4
/* 80D20DB8  40 81 00 08 */	ble lbl_80D20DC0
/* 80D20DBC  4B 5A DF 81 */	bl __dl__FPv
lbl_80D20DC0:
/* 80D20DC0  7F E3 FB 78 */	mr r3, r31
/* 80D20DC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D20DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D20DCC  7C 08 03 A6 */	mtlr r0
/* 80D20DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D20DD4  4E 80 00 20 */	blr 
