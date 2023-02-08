lbl_80B6AB18:
/* 80B6AB18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6AB1C  7C 08 02 A6 */	mflr r0
/* 80B6AB20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6AB24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6AB28  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B6AB2C  41 82 00 1C */	beq lbl_80B6AB48
/* 80B6AB30  3C A0 80 B7 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80B6BF78@ha */
/* 80B6AB34  38 05 BF 78 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80B6BF78@l */
/* 80B6AB38  90 1F 00 00 */	stw r0, 0(r31)
/* 80B6AB3C  7C 80 07 35 */	extsh. r0, r4
/* 80B6AB40  40 81 00 08 */	ble lbl_80B6AB48
/* 80B6AB44  4B 76 41 F9 */	bl __dl__FPv
lbl_80B6AB48:
/* 80B6AB48  7F E3 FB 78 */	mr r3, r31
/* 80B6AB4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6AB50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6AB54  7C 08 03 A6 */	mtlr r0
/* 80B6AB58  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6AB5C  4E 80 00 20 */	blr 
