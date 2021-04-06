lbl_807CFB78:
/* 807CFB78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807CFB7C  7C 08 02 A6 */	mflr r0
/* 807CFB80  90 01 00 14 */	stw r0, 0x14(r1)
/* 807CFB84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807CFB88  7C 7F 1B 78 */	mr r31, r3
/* 807CFB8C  4B 84 91 55 */	bl fopAc_IsActor__FPv
/* 807CFB90  2C 03 00 00 */	cmpwi r3, 0
/* 807CFB94  41 82 00 18 */	beq lbl_807CFBAC
/* 807CFB98  A8 1F 00 08 */	lha r0, 8(r31)
/* 807CFB9C  2C 00 01 B4 */	cmpwi r0, 0x1b4
/* 807CFBA0  40 82 00 0C */	bne lbl_807CFBAC
/* 807CFBA4  38 00 00 14 */	li r0, 0x14
/* 807CFBA8  B0 1F 06 98 */	sth r0, 0x698(r31)
lbl_807CFBAC:
/* 807CFBAC  38 60 00 00 */	li r3, 0
/* 807CFBB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807CFBB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807CFBB8  7C 08 03 A6 */	mtlr r0
/* 807CFBBC  38 21 00 10 */	addi r1, r1, 0x10
/* 807CFBC0  4E 80 00 20 */	blr 
