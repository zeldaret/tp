lbl_807CFD34:
/* 807CFD34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807CFD38  7C 08 02 A6 */	mflr r0
/* 807CFD3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807CFD40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807CFD44  93 C1 00 08 */	stw r30, 8(r1)
/* 807CFD48  7C 7E 1B 78 */	mr r30, r3
/* 807CFD4C  7C 9F 23 78 */	mr r31, r4
/* 807CFD50  4B 84 8F 91 */	bl fopAc_IsActor__FPv
/* 807CFD54  2C 03 00 00 */	cmpwi r3, 0
/* 807CFD58  41 82 00 38 */	beq lbl_807CFD90
/* 807CFD5C  A8 1E 00 08 */	lha r0, 8(r30)
/* 807CFD60  2C 00 01 B4 */	cmpwi r0, 0x1b4
/* 807CFD64  40 82 00 2C */	bne lbl_807CFD90
/* 807CFD68  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 807CFD6C  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 807CFD70  7C 03 00 00 */	cmpw r3, r0
/* 807CFD74  40 82 00 1C */	bne lbl_807CFD90
/* 807CFD78  3C 60 80 7D */	lis r3, ew_s1angy@ha /* 0x807D2388@ha */
/* 807CFD7C  A8 03 23 88 */	lha r0, ew_s1angy@l(r3)  /* 0x807D2388@l */
/* 807CFD80  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 807CFD84  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 807CFD88  7F C3 F3 78 */	mr r3, r30
/* 807CFD8C  48 00 00 08 */	b lbl_807CFD94
lbl_807CFD90:
/* 807CFD90  38 60 00 00 */	li r3, 0
lbl_807CFD94:
/* 807CFD94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807CFD98  83 C1 00 08 */	lwz r30, 8(r1)
/* 807CFD9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807CFDA0  7C 08 03 A6 */	mtlr r0
/* 807CFDA4  38 21 00 10 */	addi r1, r1, 0x10
/* 807CFDA8  4E 80 00 20 */	blr 
