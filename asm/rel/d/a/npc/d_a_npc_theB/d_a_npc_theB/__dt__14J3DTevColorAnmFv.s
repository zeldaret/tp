lbl_80AFD094:
/* 80AFD094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AFD098  7C 08 02 A6 */	mflr r0
/* 80AFD09C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFD0A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AFD0A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AFD0A8  41 82 00 10 */	beq lbl_80AFD0B8
/* 80AFD0AC  7C 80 07 35 */	extsh. r0, r4
/* 80AFD0B0  40 81 00 08 */	ble lbl_80AFD0B8
/* 80AFD0B4  4B 7D 1C 89 */	bl __dl__FPv
lbl_80AFD0B8:
/* 80AFD0B8  7F E3 FB 78 */	mr r3, r31
/* 80AFD0BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AFD0C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AFD0C4  7C 08 03 A6 */	mtlr r0
/* 80AFD0C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AFD0CC  4E 80 00 20 */	blr 
