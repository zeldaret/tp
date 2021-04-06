lbl_809DB088:
/* 809DB088  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DB08C  7C 08 02 A6 */	mflr r0
/* 809DB090  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DB094  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809DB098  7C 7F 1B 79 */	or. r31, r3, r3
/* 809DB09C  41 82 00 10 */	beq lbl_809DB0AC
/* 809DB0A0  7C 80 07 35 */	extsh. r0, r4
/* 809DB0A4  40 81 00 08 */	ble lbl_809DB0AC
/* 809DB0A8  4B 8F 3C 95 */	bl __dl__FPv
lbl_809DB0AC:
/* 809DB0AC  7F E3 FB 78 */	mr r3, r31
/* 809DB0B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809DB0B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DB0B8  7C 08 03 A6 */	mtlr r0
/* 809DB0BC  38 21 00 10 */	addi r1, r1, 0x10
/* 809DB0C0  4E 80 00 20 */	blr 
