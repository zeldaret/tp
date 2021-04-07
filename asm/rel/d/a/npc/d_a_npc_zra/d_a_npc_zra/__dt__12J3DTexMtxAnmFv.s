lbl_80B7A474:
/* 80B7A474  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7A478  7C 08 02 A6 */	mflr r0
/* 80B7A47C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7A480  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B7A484  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B7A488  41 82 00 10 */	beq lbl_80B7A498
/* 80B7A48C  7C 80 07 35 */	extsh. r0, r4
/* 80B7A490  40 81 00 08 */	ble lbl_80B7A498
/* 80B7A494  4B 75 48 A9 */	bl __dl__FPv
lbl_80B7A498:
/* 80B7A498  7F E3 FB 78 */	mr r3, r31
/* 80B7A49C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B7A4A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7A4A4  7C 08 03 A6 */	mtlr r0
/* 80B7A4A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7A4AC  4E 80 00 20 */	blr 
