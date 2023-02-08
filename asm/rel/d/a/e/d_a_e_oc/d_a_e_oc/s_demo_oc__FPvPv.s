lbl_8072D2E8:
/* 8072D2E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8072D2EC  7C 08 02 A6 */	mflr r0
/* 8072D2F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8072D2F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8072D2F8  7C 7F 1B 78 */	mr r31, r3
/* 8072D2FC  4B 8E B9 E5 */	bl fopAc_IsActor__FPv
/* 8072D300  2C 03 00 00 */	cmpwi r3, 0
/* 8072D304  41 82 00 48 */	beq lbl_8072D34C
/* 8072D308  28 1F 00 00 */	cmplwi r31, 0
/* 8072D30C  41 82 00 0C */	beq lbl_8072D318
/* 8072D310  80 7F 00 04 */	lwz r3, 4(r31)
/* 8072D314  48 00 00 08 */	b lbl_8072D31C
lbl_8072D318:
/* 8072D318  38 60 FF FF */	li r3, -1
lbl_8072D31C:
/* 8072D31C  4B 8F 4E 1D */	bl fpcM_IsCreating__FUi
/* 8072D320  2C 03 00 00 */	cmpwi r3, 0
/* 8072D324  40 82 00 28 */	bne lbl_8072D34C
/* 8072D328  A8 1F 00 08 */	lha r0, 8(r31)
/* 8072D32C  2C 00 01 FE */	cmpwi r0, 0x1fe
/* 8072D330  40 82 00 1C */	bne lbl_8072D34C
/* 8072D334  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8072D338  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8072D33C  28 00 00 04 */	cmplwi r0, 4
/* 8072D340  40 82 00 0C */	bne lbl_8072D34C
/* 8072D344  7F E3 FB 78 */	mr r3, r31
/* 8072D348  48 00 00 08 */	b lbl_8072D350
lbl_8072D34C:
/* 8072D34C  38 60 00 00 */	li r3, 0
lbl_8072D350:
/* 8072D350  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8072D354  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8072D358  7C 08 03 A6 */	mtlr r0
/* 8072D35C  38 21 00 10 */	addi r1, r1, 0x10
/* 8072D360  4E 80 00 20 */	blr 
