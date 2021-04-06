lbl_807DBF50:
/* 807DBF50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807DBF54  7C 08 02 A6 */	mflr r0
/* 807DBF58  90 01 00 14 */	stw r0, 0x14(r1)
/* 807DBF5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807DBF60  7C 7F 1B 78 */	mr r31, r3
/* 807DBF64  4B 83 CD 7D */	bl fopAc_IsActor__FPv
/* 807DBF68  2C 03 00 00 */	cmpwi r3, 0
/* 807DBF6C  41 82 00 28 */	beq lbl_807DBF94
/* 807DBF70  A8 1F 00 08 */	lha r0, 8(r31)
/* 807DBF74  2C 00 00 EF */	cmpwi r0, 0xef
/* 807DBF78  40 82 00 1C */	bne lbl_807DBF94
/* 807DBF7C  88 1F 07 9D */	lbz r0, 0x79d(r31)
/* 807DBF80  7C 00 07 75 */	extsb. r0, r0
/* 807DBF84  40 82 00 10 */	bne lbl_807DBF94
/* 807DBF88  3C 60 80 7E */	lis r3, lit_4476@ha /* 0x807E29D4@ha */
/* 807DBF8C  C0 03 29 D4 */	lfs f0, lit_4476@l(r3)  /* 0x807E29D4@l */
/* 807DBF90  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_807DBF94:
/* 807DBF94  38 60 00 00 */	li r3, 0
/* 807DBF98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807DBF9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807DBFA0  7C 08 03 A6 */	mtlr r0
/* 807DBFA4  38 21 00 10 */	addi r1, r1, 0x10
/* 807DBFA8  4E 80 00 20 */	blr 
