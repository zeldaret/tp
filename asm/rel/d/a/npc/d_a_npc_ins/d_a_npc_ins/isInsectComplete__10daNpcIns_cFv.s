lbl_80A11BE8:
/* 80A11BE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A11BEC  7C 08 02 A6 */	mflr r0
/* 80A11BF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A11BF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A11BF8  93 C1 00 08 */	stw r30, 8(r1)
/* 80A11BFC  3C 60 80 A1 */	lis r3, l_insectParams@ha
/* 80A11C00  38 03 3D AC */	addi r0, r3, l_insectParams@l
/* 80A11C04  7C 1F 03 78 */	mr r31, r0
/* 80A11C08  3B C0 00 00 */	li r30, 0
lbl_80A11C0C:
/* 80A11C0C  80 7F 00 00 */	lwz r3, 0(r31)
/* 80A11C10  4B 74 3A 24 */	b daNpcF_chkEvtBit__FUl
/* 80A11C14  2C 03 00 00 */	cmpwi r3, 0
/* 80A11C18  40 82 00 0C */	bne lbl_80A11C24
/* 80A11C1C  38 60 00 00 */	li r3, 0
/* 80A11C20  48 00 00 18 */	b lbl_80A11C38
lbl_80A11C24:
/* 80A11C24  3B DE 00 01 */	addi r30, r30, 1
/* 80A11C28  2C 1E 00 18 */	cmpwi r30, 0x18
/* 80A11C2C  3B FF 00 08 */	addi r31, r31, 8
/* 80A11C30  41 80 FF DC */	blt lbl_80A11C0C
/* 80A11C34  38 60 00 01 */	li r3, 1
lbl_80A11C38:
/* 80A11C38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A11C3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A11C40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A11C44  7C 08 03 A6 */	mtlr r0
/* 80A11C48  38 21 00 10 */	addi r1, r1, 0x10
/* 80A11C4C  4E 80 00 20 */	blr 
