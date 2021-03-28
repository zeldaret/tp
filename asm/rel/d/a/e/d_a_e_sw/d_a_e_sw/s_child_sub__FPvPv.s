lbl_807AAD28:
/* 807AAD28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807AAD2C  7C 08 02 A6 */	mflr r0
/* 807AAD30  90 01 00 14 */	stw r0, 0x14(r1)
/* 807AAD34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807AAD38  93 C1 00 08 */	stw r30, 8(r1)
/* 807AAD3C  7C 7E 1B 79 */	or. r30, r3, r3
/* 807AAD40  7C 9F 23 78 */	mr r31, r4
/* 807AAD44  41 82 00 0C */	beq lbl_807AAD50
/* 807AAD48  80 7E 00 04 */	lwz r3, 4(r30)
/* 807AAD4C  48 00 00 08 */	b lbl_807AAD54
lbl_807AAD50:
/* 807AAD50  38 60 FF FF */	li r3, -1
lbl_807AAD54:
/* 807AAD54  4B 87 73 E4 */	b fpcM_IsCreating__FUi
/* 807AAD58  2C 03 00 00 */	cmpwi r3, 0
/* 807AAD5C  40 82 00 54 */	bne lbl_807AADB0
/* 807AAD60  7F C3 F3 78 */	mr r3, r30
/* 807AAD64  4B 86 DF 7C */	b fopAc_IsActor__FPv
/* 807AAD68  2C 03 00 00 */	cmpwi r3, 0
/* 807AAD6C  41 82 00 44 */	beq lbl_807AADB0
/* 807AAD70  A8 1E 00 08 */	lha r0, 8(r30)
/* 807AAD74  2C 00 01 F1 */	cmpwi r0, 0x1f1
/* 807AAD78  40 82 00 38 */	bne lbl_807AADB0
/* 807AAD7C  80 7E 04 A4 */	lwz r3, 0x4a4(r30)
/* 807AAD80  28 1F 00 00 */	cmplwi r31, 0
/* 807AAD84  41 82 00 0C */	beq lbl_807AAD90
/* 807AAD88  80 1F 00 04 */	lwz r0, 4(r31)
/* 807AAD8C  48 00 00 08 */	b lbl_807AAD94
lbl_807AAD90:
/* 807AAD90  38 00 FF FF */	li r0, -1
lbl_807AAD94:
/* 807AAD94  7C 03 00 40 */	cmplw r3, r0
/* 807AAD98  40 82 00 18 */	bne lbl_807AADB0
/* 807AAD9C  3C 60 80 7B */	lis r3, struct_807B0200+0x1@ha
/* 807AADA0  38 83 02 01 */	addi r4, r3, struct_807B0200+0x1@l
/* 807AADA4  88 64 00 00 */	lbz r3, 0(r4)
/* 807AADA8  38 03 00 01 */	addi r0, r3, 1
/* 807AADAC  98 04 00 00 */	stb r0, 0(r4)
lbl_807AADB0:
/* 807AADB0  38 60 00 00 */	li r3, 0
/* 807AADB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807AADB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 807AADBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807AADC0  7C 08 03 A6 */	mtlr r0
/* 807AADC4  38 21 00 10 */	addi r1, r1, 0x10
/* 807AADC8  4E 80 00 20 */	blr 
