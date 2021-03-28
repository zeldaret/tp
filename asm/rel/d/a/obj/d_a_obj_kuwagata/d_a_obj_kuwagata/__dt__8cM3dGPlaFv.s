lbl_80C4ABFC:
/* 80C4ABFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4AC00  7C 08 02 A6 */	mflr r0
/* 80C4AC04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4AC08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4AC0C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C4AC10  41 82 00 1C */	beq lbl_80C4AC2C
/* 80C4AC14  3C A0 80 C5 */	lis r5, __vt__8cM3dGPla@ha
/* 80C4AC18  38 05 D6 34 */	addi r0, r5, __vt__8cM3dGPla@l
/* 80C4AC1C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80C4AC20  7C 80 07 35 */	extsh. r0, r4
/* 80C4AC24  40 81 00 08 */	ble lbl_80C4AC2C
/* 80C4AC28  4B 68 41 14 */	b __dl__FPv
lbl_80C4AC2C:
/* 80C4AC2C  7F E3 FB 78 */	mr r3, r31
/* 80C4AC30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4AC34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4AC38  7C 08 03 A6 */	mtlr r0
/* 80C4AC3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4AC40  4E 80 00 20 */	blr 
