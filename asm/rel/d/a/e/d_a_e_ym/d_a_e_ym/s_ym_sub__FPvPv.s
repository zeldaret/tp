lbl_80812F0C:
/* 80812F0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80812F10  7C 08 02 A6 */	mflr r0
/* 80812F14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80812F18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80812F1C  93 C1 00 08 */	stw r30, 8(r1)
/* 80812F20  7C 7E 1B 78 */	mr r30, r3
/* 80812F24  7C 9F 23 78 */	mr r31, r4
/* 80812F28  4B 80 5D B9 */	bl fopAc_IsActor__FPv
/* 80812F2C  2C 03 00 00 */	cmpwi r3, 0
/* 80812F30  41 82 00 80 */	beq lbl_80812FB0
/* 80812F34  A8 1E 00 08 */	lha r0, 8(r30)
/* 80812F38  2C 00 01 F4 */	cmpwi r0, 0x1f4
/* 80812F3C  40 82 00 74 */	bne lbl_80812FB0
/* 80812F40  28 1E 00 00 */	cmplwi r30, 0
/* 80812F44  41 82 00 0C */	beq lbl_80812F50
/* 80812F48  80 7E 00 04 */	lwz r3, 4(r30)
/* 80812F4C  48 00 00 08 */	b lbl_80812F54
lbl_80812F50:
/* 80812F50  38 60 FF FF */	li r3, -1
lbl_80812F54:
/* 80812F54  4B 80 F1 E5 */	bl fpcM_IsCreating__FUi
/* 80812F58  2C 03 00 00 */	cmpwi r3, 0
/* 80812F5C  40 82 00 54 */	bne lbl_80812FB0
/* 80812F60  7C 1E F8 40 */	cmplw r30, r31
/* 80812F64  41 82 00 4C */	beq lbl_80812FB0
/* 80812F68  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80812F6C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80812F70  4B A5 40 BD */	bl __eq__4cXyzCFRC3Vec
/* 80812F74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80812F78  41 82 00 38 */	beq lbl_80812FB0
/* 80812F7C  88 1F 06 AA */	lbz r0, 0x6aa(r31)
/* 80812F80  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80812F84  41 82 00 14 */	beq lbl_80812F98
/* 80812F88  88 1E 06 AA */	lbz r0, 0x6aa(r30)
/* 80812F8C  60 00 00 84 */	ori r0, r0, 0x84
/* 80812F90  98 1E 06 AA */	stb r0, 0x6aa(r30)
/* 80812F94  48 00 00 10 */	b lbl_80812FA4
lbl_80812F98:
/* 80812F98  88 1E 06 AA */	lbz r0, 0x6aa(r30)
/* 80812F9C  60 00 00 82 */	ori r0, r0, 0x82
/* 80812FA0  98 1E 06 AA */	stb r0, 0x6aa(r30)
lbl_80812FA4:
/* 80812FA4  88 1F 06 AA */	lbz r0, 0x6aa(r31)
/* 80812FA8  60 00 00 81 */	ori r0, r0, 0x81
/* 80812FAC  98 1F 06 AA */	stb r0, 0x6aa(r31)
lbl_80812FB0:
/* 80812FB0  38 60 00 00 */	li r3, 0
/* 80812FB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80812FB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80812FBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80812FC0  7C 08 03 A6 */	mtlr r0
/* 80812FC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80812FC8  4E 80 00 20 */	blr 
