lbl_8078CA1C:
/* 8078CA1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8078CA20  7C 08 02 A6 */	mflr r0
/* 8078CA24  90 01 00 24 */	stw r0, 0x24(r1)
/* 8078CA28  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8078CA2C  7C 7F 1B 78 */	mr r31, r3
/* 8078CA30  A8 03 06 66 */	lha r0, 0x666(r3)
/* 8078CA34  2C 00 00 00 */	cmpwi r0, 0
/* 8078CA38  40 82 00 C8 */	bne lbl_8078CB00
/* 8078CA3C  38 7F 09 14 */	addi r3, r31, 0x914
/* 8078CA40  4B 8F 6D F0 */	b Move__10dCcD_GSttsFv
/* 8078CA44  38 7F 09 34 */	addi r3, r31, 0x934
/* 8078CA48  4B 8F 7A 18 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8078CA4C  28 03 00 00 */	cmplwi r3, 0
/* 8078CA50  41 82 00 94 */	beq lbl_8078CAE4
/* 8078CA54  38 7F 09 34 */	addi r3, r31, 0x934
/* 8078CA58  4B 8F 7A A0 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8078CA5C  90 7F 0A 6C */	stw r3, 0xa6c(r31)
/* 8078CA60  7F E3 FB 78 */	mr r3, r31
/* 8078CA64  38 9F 0A 6C */	addi r4, r31, 0xa6c
/* 8078CA68  4B 8F B1 9C */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 8078CA6C  80 7F 0A 6C */	lwz r3, 0xa6c(r31)
/* 8078CA70  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8078CA74  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 8078CA78  41 82 00 2C */	beq lbl_8078CAA4
/* 8078CA7C  38 00 00 03 */	li r0, 3
/* 8078CA80  B0 1F 06 6C */	sth r0, 0x66c(r31)
/* 8078CA84  38 00 00 00 */	li r0, 0
/* 8078CA88  B0 1F 06 6E */	sth r0, 0x66e(r31)
/* 8078CA8C  3C 60 80 79 */	lis r3, lit_3844@ha
/* 8078CA90  C0 03 DD BC */	lfs f0, lit_3844@l(r3)
/* 8078CA94  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 8078CA98  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8078CA9C  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 8078CAA0  48 00 00 44 */	b lbl_8078CAE4
lbl_8078CAA4:
/* 8078CAA4  38 00 00 0A */	li r0, 0xa
/* 8078CAA8  B0 1F 06 6C */	sth r0, 0x66c(r31)
/* 8078CAAC  38 00 00 00 */	li r0, 0
/* 8078CAB0  B0 1F 06 6E */	sth r0, 0x66e(r31)
/* 8078CAB4  38 00 03 E8 */	li r0, 0x3e8
/* 8078CAB8  B0 1F 06 66 */	sth r0, 0x666(r31)
/* 8078CABC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702C7@ha */
/* 8078CAC0  38 03 02 C7 */	addi r0, r3, 0x02C7 /* 0x000702C7@l */
/* 8078CAC4  90 01 00 08 */	stw r0, 8(r1)
/* 8078CAC8  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 8078CACC  38 81 00 08 */	addi r4, r1, 8
/* 8078CAD0  38 A0 FF FF */	li r5, -1
/* 8078CAD4  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 8078CAD8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8078CADC  7D 89 03 A6 */	mtctr r12
/* 8078CAE0  4E 80 04 21 */	bctrl 
lbl_8078CAE4:
/* 8078CAE4  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 8078CAE8  2C 00 00 01 */	cmpwi r0, 1
/* 8078CAEC  41 81 00 14 */	bgt lbl_8078CB00
/* 8078CAF0  38 00 00 00 */	li r0, 0
/* 8078CAF4  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 8078CAF8  38 00 00 03 */	li r0, 3
/* 8078CAFC  98 1F 09 EE */	stb r0, 0x9ee(r31)
lbl_8078CB00:
/* 8078CB00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8078CB04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8078CB08  7C 08 03 A6 */	mtlr r0
/* 8078CB0C  38 21 00 20 */	addi r1, r1, 0x20
/* 8078CB10  4E 80 00 20 */	blr 
