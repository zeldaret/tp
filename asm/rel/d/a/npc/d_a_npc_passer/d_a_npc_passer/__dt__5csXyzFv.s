lbl_80AA6690:
/* 80AA6690  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA6694  7C 08 02 A6 */	mflr r0
/* 80AA6698  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA669C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA66A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AA66A4  41 82 00 10 */	beq lbl_80AA66B4
/* 80AA66A8  7C 80 07 35 */	extsh. r0, r4
/* 80AA66AC  40 81 00 08 */	ble lbl_80AA66B4
/* 80AA66B0  4B 82 86 8D */	bl __dl__FPv
lbl_80AA66B4:
/* 80AA66B4  7F E3 FB 78 */	mr r3, r31
/* 80AA66B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA66BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA66C0  7C 08 03 A6 */	mtlr r0
/* 80AA66C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA66C8  4E 80 00 20 */	blr 
