lbl_8033979C:
/* 8033979C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803397A0  7C 08 02 A6 */	mflr r0
/* 803397A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803397A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803397AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 803397B0  41 82 00 30 */	beq lbl_803397E0
/* 803397B4  3C 60 80 3D */	lis r3, __vt__20J3DAnmVisibilityFull@ha
/* 803397B8  38 03 F2 74 */	addi r0, r3, __vt__20J3DAnmVisibilityFull@l
/* 803397BC  90 1F 00 00 */	stw r0, 0(r31)
/* 803397C0  41 82 00 10 */	beq lbl_803397D0
/* 803397C4  3C 60 80 3A */	lis r3, __vt__10J3DAnmBase@ha
/* 803397C8  38 03 7C 38 */	addi r0, r3, __vt__10J3DAnmBase@l
/* 803397CC  90 1F 00 00 */	stw r0, 0(r31)
lbl_803397D0:
/* 803397D0  7C 80 07 35 */	extsh. r0, r4
/* 803397D4  40 81 00 0C */	ble lbl_803397E0
/* 803397D8  7F E3 FB 78 */	mr r3, r31
/* 803397DC  4B F9 55 61 */	bl __dl__FPv
lbl_803397E0:
/* 803397E0  7F E3 FB 78 */	mr r3, r31
/* 803397E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803397E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803397EC  7C 08 03 A6 */	mtlr r0
/* 803397F0  38 21 00 10 */	addi r1, r1, 0x10
/* 803397F4  4E 80 00 20 */	blr 
