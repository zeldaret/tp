lbl_80C6A2AC:
/* 80C6A2AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6A2B0  7C 08 02 A6 */	mflr r0
/* 80C6A2B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6A2B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6A2BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C6A2C0  41 82 00 1C */	beq lbl_80C6A2DC
/* 80C6A2C4  3C A0 80 C7 */	lis r5, __vt__17dEvLib_callback_c@ha /* 0x80C6A49C@ha */
/* 80C6A2C8  38 05 A4 9C */	addi r0, r5, __vt__17dEvLib_callback_c@l /* 0x80C6A49C@l */
/* 80C6A2CC  90 1F 00 00 */	stw r0, 0(r31)
/* 80C6A2D0  7C 80 07 35 */	extsh. r0, r4
/* 80C6A2D4  40 81 00 08 */	ble lbl_80C6A2DC
/* 80C6A2D8  4B 66 4A 65 */	bl __dl__FPv
lbl_80C6A2DC:
/* 80C6A2DC  7F E3 FB 78 */	mr r3, r31
/* 80C6A2E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6A2E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6A2E8  7C 08 03 A6 */	mtlr r0
/* 80C6A2EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6A2F0  4E 80 00 20 */	blr 
