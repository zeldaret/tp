lbl_80D43B48:
/* 80D43B48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D43B4C  7C 08 02 A6 */	mflr r0
/* 80D43B50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D43B54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D43B58  93 C1 00 08 */	stw r30, 8(r1)
/* 80D43B5C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D43B60  7C 9F 23 78 */	mr r31, r4
/* 80D43B64  41 82 00 34 */	beq lbl_80D43B98
/* 80D43B68  34 1E 03 CC */	addic. r0, r30, 0x3cc
/* 80D43B6C  41 82 00 1C */	beq lbl_80D43B88
/* 80D43B70  3C 60 80 3D */	lis r3, __vt__16Z2SoundObjSimple@ha
/* 80D43B74  38 03 AD 10 */	addi r0, r3, __vt__16Z2SoundObjSimple@l
/* 80D43B78  90 1E 03 DC */	stw r0, 0x3dc(r30)
/* 80D43B7C  38 7E 03 CC */	addi r3, r30, 0x3cc
/* 80D43B80  38 80 00 00 */	li r4, 0
/* 80D43B84  4B 57 A3 C4 */	b __dt__14Z2SoundObjBaseFv
lbl_80D43B88:
/* 80D43B88  7F E0 07 35 */	extsh. r0, r31
/* 80D43B8C  40 81 00 0C */	ble lbl_80D43B98
/* 80D43B90  7F C3 F3 78 */	mr r3, r30
/* 80D43B94  4B 58 B1 A8 */	b __dl__FPv
lbl_80D43B98:
/* 80D43B98  7F C3 F3 78 */	mr r3, r30
/* 80D43B9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D43BA0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D43BA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D43BA8  7C 08 03 A6 */	mtlr r0
/* 80D43BAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D43BB0  4E 80 00 20 */	blr 
