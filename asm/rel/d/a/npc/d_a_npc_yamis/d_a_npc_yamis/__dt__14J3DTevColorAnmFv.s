lbl_80B46C40:
/* 80B46C40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B46C44  7C 08 02 A6 */	mflr r0
/* 80B46C48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B46C4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B46C50  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B46C54  41 82 00 10 */	beq lbl_80B46C64
/* 80B46C58  7C 80 07 35 */	extsh. r0, r4
/* 80B46C5C  40 81 00 08 */	ble lbl_80B46C64
/* 80B46C60  4B 78 80 DD */	bl __dl__FPv
lbl_80B46C64:
/* 80B46C64  7F E3 FB 78 */	mr r3, r31
/* 80B46C68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B46C6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B46C70  7C 08 03 A6 */	mtlr r0
/* 80B46C74  38 21 00 10 */	addi r1, r1, 0x10
/* 80B46C78  4E 80 00 20 */	blr 
