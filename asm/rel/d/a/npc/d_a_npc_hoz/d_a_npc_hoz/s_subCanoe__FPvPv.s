lbl_80A01F08:
/* 80A01F08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A01F0C  7C 08 02 A6 */	mflr r0
/* 80A01F10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A01F14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A01F18  7C 7F 1B 78 */	mr r31, r3
/* 80A01F1C  4B 61 6D C4 */	b fopAc_IsActor__FPv
/* 80A01F20  2C 03 00 00 */	cmpwi r3, 0
/* 80A01F24  41 82 00 18 */	beq lbl_80A01F3C
/* 80A01F28  A8 1F 00 08 */	lha r0, 8(r31)
/* 80A01F2C  2C 00 00 ED */	cmpwi r0, 0xed
/* 80A01F30  40 82 00 0C */	bne lbl_80A01F3C
/* 80A01F34  7F E3 FB 78 */	mr r3, r31
/* 80A01F38  48 00 00 08 */	b lbl_80A01F40
lbl_80A01F3C:
/* 80A01F3C  38 60 00 00 */	li r3, 0
lbl_80A01F40:
/* 80A01F40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A01F44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A01F48  7C 08 03 A6 */	mtlr r0
/* 80A01F4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A01F50  4E 80 00 20 */	blr 
