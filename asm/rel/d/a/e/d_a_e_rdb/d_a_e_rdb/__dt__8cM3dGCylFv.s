lbl_8076AC00:
/* 8076AC00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8076AC04  7C 08 02 A6 */	mflr r0
/* 8076AC08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8076AC0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8076AC10  7C 7F 1B 79 */	or. r31, r3, r3
/* 8076AC14  41 82 00 1C */	beq lbl_8076AC30
/* 8076AC18  3C A0 80 77 */	lis r5, __vt__8cM3dGCyl@ha /* 0x8076B974@ha */
/* 8076AC1C  38 05 B9 74 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x8076B974@l */
/* 8076AC20  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8076AC24  7C 80 07 35 */	extsh. r0, r4
/* 8076AC28  40 81 00 08 */	ble lbl_8076AC30
/* 8076AC2C  4B B6 41 11 */	bl __dl__FPv
lbl_8076AC30:
/* 8076AC30  7F E3 FB 78 */	mr r3, r31
/* 8076AC34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8076AC38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8076AC3C  7C 08 03 A6 */	mtlr r0
/* 8076AC40  38 21 00 10 */	addi r1, r1, 0x10
/* 8076AC44  4E 80 00 20 */	blr 
