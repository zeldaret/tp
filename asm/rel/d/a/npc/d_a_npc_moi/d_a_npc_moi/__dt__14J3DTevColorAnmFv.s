lbl_80A74890:
/* 80A74890  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A74894  7C 08 02 A6 */	mflr r0
/* 80A74898  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A7489C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A748A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A748A4  41 82 00 10 */	beq lbl_80A748B4
/* 80A748A8  7C 80 07 35 */	extsh. r0, r4
/* 80A748AC  40 81 00 08 */	ble lbl_80A748B4
/* 80A748B0  4B 85 A4 8C */	b __dl__FPv
lbl_80A748B4:
/* 80A748B4  7F E3 FB 78 */	mr r3, r31
/* 80A748B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A748BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A748C0  7C 08 03 A6 */	mtlr r0
/* 80A748C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A748C8  4E 80 00 20 */	blr 
