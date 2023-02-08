lbl_8095D468:
/* 8095D468  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8095D46C  7C 08 02 A6 */	mflr r0
/* 8095D470  90 01 00 14 */	stw r0, 0x14(r1)
/* 8095D474  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8095D478  93 C1 00 08 */	stw r30, 8(r1)
/* 8095D47C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8095D480  7C 9F 23 78 */	mr r31, r4
/* 8095D484  41 82 00 38 */	beq lbl_8095D4BC
/* 8095D488  3C 80 80 96 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x8095DCB4@ha */
/* 8095D48C  38 84 DC B4 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x8095DCB4@l */
/* 8095D490  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8095D494  38 04 00 0C */	addi r0, r4, 0xc
/* 8095D498  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8095D49C  38 04 00 18 */	addi r0, r4, 0x18
/* 8095D4A0  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8095D4A4  38 80 00 00 */	li r4, 0
/* 8095D4A8  4B 71 8A ED */	bl __dt__9dBgS_AcchFv
/* 8095D4AC  7F E0 07 35 */	extsh. r0, r31
/* 8095D4B0  40 81 00 0C */	ble lbl_8095D4BC
/* 8095D4B4  7F C3 F3 78 */	mr r3, r30
/* 8095D4B8  4B 97 18 85 */	bl __dl__FPv
lbl_8095D4BC:
/* 8095D4BC  7F C3 F3 78 */	mr r3, r30
/* 8095D4C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8095D4C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8095D4C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8095D4CC  7C 08 03 A6 */	mtlr r0
/* 8095D4D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8095D4D4  4E 80 00 20 */	blr 
