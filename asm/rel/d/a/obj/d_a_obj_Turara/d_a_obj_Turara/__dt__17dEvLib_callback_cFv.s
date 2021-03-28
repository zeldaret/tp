lbl_80B9E6B0:
/* 80B9E6B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9E6B4  7C 08 02 A6 */	mflr r0
/* 80B9E6B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9E6BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9E6C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B9E6C4  41 82 00 1C */	beq lbl_80B9E6E0
/* 80B9E6C8  3C A0 80 BA */	lis r5, __vt__17dEvLib_callback_c@ha
/* 80B9E6CC  38 05 EB 08 */	addi r0, r5, __vt__17dEvLib_callback_c@l
/* 80B9E6D0  90 1F 00 00 */	stw r0, 0(r31)
/* 80B9E6D4  7C 80 07 35 */	extsh. r0, r4
/* 80B9E6D8  40 81 00 08 */	ble lbl_80B9E6E0
/* 80B9E6DC  4B 73 06 60 */	b __dl__FPv
lbl_80B9E6E0:
/* 80B9E6E0  7F E3 FB 78 */	mr r3, r31
/* 80B9E6E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9E6E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9E6EC  7C 08 03 A6 */	mtlr r0
/* 80B9E6F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9E6F4  4E 80 00 20 */	blr 
