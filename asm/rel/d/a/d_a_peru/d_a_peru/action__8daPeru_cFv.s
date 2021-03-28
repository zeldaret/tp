lbl_80D47F10:
/* 80D47F10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D47F14  7C 08 02 A6 */	mflr r0
/* 80D47F18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D47F1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D47F20  7C 7F 1B 78 */	mr r31, r3
/* 80D47F24  38 7F 0E 5C */	addi r3, r31, 0xe5c
/* 80D47F28  4B 61 A0 F0 */	b __ptmf_test
/* 80D47F2C  2C 03 00 00 */	cmpwi r3, 0
/* 80D47F30  41 82 00 18 */	beq lbl_80D47F48
/* 80D47F34  7F E3 FB 78 */	mr r3, r31
/* 80D47F38  38 80 00 00 */	li r4, 0
/* 80D47F3C  39 9F 0E 5C */	addi r12, r31, 0xe5c
/* 80D47F40  4B 61 A1 44 */	b __ptmf_scall
/* 80D47F44  60 00 00 00 */	nop 
lbl_80D47F48:
/* 80D47F48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D47F4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D47F50  7C 08 03 A6 */	mtlr r0
/* 80D47F54  38 21 00 10 */	addi r1, r1, 0x10
/* 80D47F58  4E 80 00 20 */	blr 
