lbl_80C51F0C:
/* 80C51F0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C51F10  7C 08 02 A6 */	mflr r0
/* 80C51F14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C51F18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C51F1C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C51F20  41 82 00 1C */	beq lbl_80C51F3C
/* 80C51F24  3C A0 80 C5 */	lis r5, __vt__8cM3dGAab@ha
/* 80C51F28  38 05 21 5C */	addi r0, r5, __vt__8cM3dGAab@l
/* 80C51F2C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C51F30  7C 80 07 35 */	extsh. r0, r4
/* 80C51F34  40 81 00 08 */	ble lbl_80C51F3C
/* 80C51F38  4B 67 CE 04 */	b __dl__FPv
lbl_80C51F3C:
/* 80C51F3C  7F E3 FB 78 */	mr r3, r31
/* 80C51F40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C51F44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C51F48  7C 08 03 A6 */	mtlr r0
/* 80C51F4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C51F50  4E 80 00 20 */	blr 
