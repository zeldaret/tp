lbl_80B758D0:
/* 80B758D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B758D4  7C 08 02 A6 */	mflr r0
/* 80B758D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B758DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B758E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B758E4  41 82 00 10 */	beq lbl_80B758F4
/* 80B758E8  7C 80 07 35 */	extsh. r0, r4
/* 80B758EC  40 81 00 08 */	ble lbl_80B758F4
/* 80B758F0  4B 75 94 4C */	b __dl__FPv
lbl_80B758F4:
/* 80B758F4  7F E3 FB 78 */	mr r3, r31
/* 80B758F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B758FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B75900  7C 08 03 A6 */	mtlr r0
/* 80B75904  38 21 00 10 */	addi r1, r1, 0x10
/* 80B75908  4E 80 00 20 */	blr 
