lbl_80CE0C54:
/* 80CE0C54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE0C58  7C 08 02 A6 */	mflr r0
/* 80CE0C5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE0C60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE0C64  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CE0C68  41 82 00 10 */	beq lbl_80CE0C78
/* 80CE0C6C  7C 80 07 35 */	extsh. r0, r4
/* 80CE0C70  40 81 00 08 */	ble lbl_80CE0C78
/* 80CE0C74  4B 5E E0 C9 */	bl __dl__FPv
lbl_80CE0C78:
/* 80CE0C78  7F E3 FB 78 */	mr r3, r31
/* 80CE0C7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE0C80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE0C84  7C 08 03 A6 */	mtlr r0
/* 80CE0C88  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE0C8C  4E 80 00 20 */	blr 
