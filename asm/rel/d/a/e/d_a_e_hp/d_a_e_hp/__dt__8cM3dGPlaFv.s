lbl_806E8978:
/* 806E8978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E897C  7C 08 02 A6 */	mflr r0
/* 806E8980  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E8984  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806E8988  7C 7F 1B 79 */	or. r31, r3, r3
/* 806E898C  41 82 00 1C */	beq lbl_806E89A8
/* 806E8990  3C A0 80 6F */	lis r5, __vt__8cM3dGPla@ha /* 0x806EA4C4@ha */
/* 806E8994  38 05 A4 C4 */	addi r0, r5, __vt__8cM3dGPla@l /* 0x806EA4C4@l */
/* 806E8998  90 1F 00 10 */	stw r0, 0x10(r31)
/* 806E899C  7C 80 07 35 */	extsh. r0, r4
/* 806E89A0  40 81 00 08 */	ble lbl_806E89A8
/* 806E89A4  4B BE 63 99 */	bl __dl__FPv
lbl_806E89A8:
/* 806E89A8  7F E3 FB 78 */	mr r3, r31
/* 806E89AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806E89B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E89B4  7C 08 03 A6 */	mtlr r0
/* 806E89B8  38 21 00 10 */	addi r1, r1, 0x10
/* 806E89BC  4E 80 00 20 */	blr 
