lbl_80590BE0:
/* 80590BE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80590BE4  7C 08 02 A6 */	mflr r0
/* 80590BE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80590BEC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80590BF0  7C 7F 1B 78 */	mr r31, r3
/* 80590BF4  80 03 0A 18 */	lwz r0, 0xa18(r3)
/* 80590BF8  90 01 00 08 */	stw r0, 8(r1)
/* 80590BFC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80590C00  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80590C04  38 81 00 08 */	addi r4, r1, 8
/* 80590C08  4B A8 8B F1 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80590C0C  28 03 00 00 */	cmplwi r3, 0
/* 80590C10  41 82 00 0C */	beq lbl_80590C1C
/* 80590C14  38 00 00 01 */	li r0, 1
/* 80590C18  98 03 07 00 */	stb r0, 0x700(r3)
lbl_80590C1C:
/* 80590C1C  7F E3 FB 78 */	mr r3, r31
/* 80590C20  48 00 0F D9 */	bl setMagneHoleEffect__11daObjMarm_cFv
/* 80590C24  38 00 00 00 */	li r0, 0
/* 80590C28  98 1F 0A 17 */	stb r0, 0xa17(r31)
/* 80590C2C  38 00 00 01 */	li r0, 1
/* 80590C30  98 1F 0A 14 */	stb r0, 0xa14(r31)
/* 80590C34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80590C38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80590C3C  7C 08 03 A6 */	mtlr r0
/* 80590C40  38 21 00 20 */	addi r1, r1, 0x20
/* 80590C44  4E 80 00 20 */	blr 
