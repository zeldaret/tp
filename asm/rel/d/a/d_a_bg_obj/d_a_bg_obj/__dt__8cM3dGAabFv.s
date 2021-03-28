lbl_8045C48C:
/* 8045C48C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045C490  7C 08 02 A6 */	mflr r0
/* 8045C494  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045C498  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045C49C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8045C4A0  41 82 00 1C */	beq lbl_8045C4BC
/* 8045C4A4  3C A0 80 46 */	lis r5, __vt__8cM3dGAab@ha
/* 8045C4A8  38 05 CD C0 */	addi r0, r5, __vt__8cM3dGAab@l
/* 8045C4AC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8045C4B0  7C 80 07 35 */	extsh. r0, r4
/* 8045C4B4  40 81 00 08 */	ble lbl_8045C4BC
/* 8045C4B8  4B E7 28 84 */	b __dl__FPv
lbl_8045C4BC:
/* 8045C4BC  7F E3 FB 78 */	mr r3, r31
/* 8045C4C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045C4C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045C4C8  7C 08 03 A6 */	mtlr r0
/* 8045C4CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8045C4D0  4E 80 00 20 */	blr 
