lbl_80D1F10C:
/* 80D1F10C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1F110  7C 08 02 A6 */	mflr r0
/* 80D1F114  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1F118  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1F11C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D1F120  41 82 00 10 */	beq lbl_80D1F130
/* 80D1F124  7C 80 07 35 */	extsh. r0, r4
/* 80D1F128  40 81 00 08 */	ble lbl_80D1F130
/* 80D1F12C  4B 5A FC 11 */	bl __dl__FPv
lbl_80D1F130:
/* 80D1F130  7F E3 FB 78 */	mr r3, r31
/* 80D1F134  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1F138  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1F13C  7C 08 03 A6 */	mtlr r0
/* 80D1F140  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1F144  4E 80 00 20 */	blr 
