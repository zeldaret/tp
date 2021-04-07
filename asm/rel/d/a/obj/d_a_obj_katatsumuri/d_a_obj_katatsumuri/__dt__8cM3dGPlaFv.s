lbl_80C3A490:
/* 80C3A490  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3A494  7C 08 02 A6 */	mflr r0
/* 80C3A498  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3A49C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C3A4A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C3A4A4  41 82 00 1C */	beq lbl_80C3A4C0
/* 80C3A4A8  3C A0 80 C4 */	lis r5, __vt__8cM3dGPla@ha /* 0x80C3C808@ha */
/* 80C3A4AC  38 05 C8 08 */	addi r0, r5, __vt__8cM3dGPla@l /* 0x80C3C808@l */
/* 80C3A4B0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80C3A4B4  7C 80 07 35 */	extsh. r0, r4
/* 80C3A4B8  40 81 00 08 */	ble lbl_80C3A4C0
/* 80C3A4BC  4B 69 48 81 */	bl __dl__FPv
lbl_80C3A4C0:
/* 80C3A4C0  7F E3 FB 78 */	mr r3, r31
/* 80C3A4C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3A4C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3A4CC  7C 08 03 A6 */	mtlr r0
/* 80C3A4D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3A4D4  4E 80 00 20 */	blr 
