lbl_80B696B4:
/* 80B696B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B696B8  7C 08 02 A6 */	mflr r0
/* 80B696BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B696C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B696C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B696C8  41 82 00 10 */	beq lbl_80B696D8
/* 80B696CC  7C 80 07 35 */	extsh. r0, r4
/* 80B696D0  40 81 00 08 */	ble lbl_80B696D8
/* 80B696D4  4B 76 56 68 */	b __dl__FPv
lbl_80B696D8:
/* 80B696D8  7F E3 FB 78 */	mr r3, r31
/* 80B696DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B696E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B696E4  7C 08 03 A6 */	mtlr r0
/* 80B696E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B696EC  4E 80 00 20 */	blr 
