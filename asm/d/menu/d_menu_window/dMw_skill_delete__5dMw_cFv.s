lbl_801FCAEC:
/* 801FCAEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FCAF0  7C 08 02 A6 */	mflr r0
/* 801FCAF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FCAF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FCAFC  7C 7F 1B 78 */	mr r31, r3
/* 801FCB00  80 63 01 30 */	lwz r3, 0x130(r3)
/* 801FCB04  28 03 00 00 */	cmplwi r3, 0
/* 801FCB08  41 82 00 40 */	beq lbl_801FCB48
/* 801FCB0C  4B FF AE 45 */	bl isSync__13dMenu_Skill_cFv
/* 801FCB10  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FCB14  40 82 00 0C */	bne lbl_801FCB20
/* 801FCB18  38 60 00 00 */	li r3, 0
/* 801FCB1C  48 00 00 64 */	b lbl_801FCB80
lbl_801FCB20:
/* 801FCB20  80 7F 01 30 */	lwz r3, 0x130(r31)
/* 801FCB24  28 03 00 00 */	cmplwi r3, 0
/* 801FCB28  41 82 00 18 */	beq lbl_801FCB40
/* 801FCB2C  38 80 00 01 */	li r4, 1
/* 801FCB30  81 83 00 00 */	lwz r12, 0(r3)
/* 801FCB34  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801FCB38  7D 89 03 A6 */	mtctr r12
/* 801FCB3C  4E 80 04 21 */	bctrl 
lbl_801FCB40:
/* 801FCB40  38 00 00 00 */	li r0, 0
/* 801FCB44  90 1F 01 30 */	stw r0, 0x130(r31)
lbl_801FCB48:
/* 801FCB48  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 801FCB4C  28 03 00 00 */	cmplwi r3, 0
/* 801FCB50  41 82 00 24 */	beq lbl_801FCB74
/* 801FCB54  41 82 00 18 */	beq lbl_801FCB6C
/* 801FCB58  38 80 00 01 */	li r4, 1
/* 801FCB5C  81 83 00 00 */	lwz r12, 0(r3)
/* 801FCB60  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801FCB64  7D 89 03 A6 */	mtctr r12
/* 801FCB68  4E 80 04 21 */	bctrl 
lbl_801FCB6C:
/* 801FCB6C  38 00 00 00 */	li r0, 0
/* 801FCB70  90 1F 01 0C */	stw r0, 0x10c(r31)
lbl_801FCB74:
/* 801FCB74  7F E3 FB 78 */	mr r3, r31
/* 801FCB78  48 00 05 5D */	bl checkMemSize__5dMw_cFv
/* 801FCB7C  38 60 00 01 */	li r3, 1
lbl_801FCB80:
/* 801FCB80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FCB84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FCB88  7C 08 03 A6 */	mtlr r0
/* 801FCB8C  38 21 00 10 */	addi r1, r1, 0x10
/* 801FCB90  4E 80 00 20 */	blr 
