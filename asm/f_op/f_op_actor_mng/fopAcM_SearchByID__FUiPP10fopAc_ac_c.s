lbl_800199BC:
/* 800199BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800199C0  7C 08 02 A6 */	mflr r0
/* 800199C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800199C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800199CC  90 61 00 08 */	stw r3, 8(r1)
/* 800199D0  7C 9F 23 78 */	mr r31, r4
/* 800199D4  48 00 87 65 */	bl fpcM_IsCreating__FUi
/* 800199D8  2C 03 00 00 */	cmpwi r3, 0
/* 800199DC  41 82 00 10 */	beq lbl_800199EC
/* 800199E0  38 00 00 00 */	li r0, 0
/* 800199E4  90 1F 00 00 */	stw r0, 0(r31)
/* 800199E8  48 00 00 2C */	b lbl_80019A14
lbl_800199EC:
/* 800199EC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 800199F0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 800199F4  38 81 00 08 */	addi r4, r1, 8
/* 800199F8  4B FF FE 01 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 800199FC  90 7F 00 00 */	stw r3, 0(r31)
/* 80019A00  80 1F 00 00 */	lwz r0, 0(r31)
/* 80019A04  28 00 00 00 */	cmplwi r0, 0
/* 80019A08  40 82 00 0C */	bne lbl_80019A14
/* 80019A0C  38 60 00 00 */	li r3, 0
/* 80019A10  48 00 00 08 */	b lbl_80019A18
lbl_80019A14:
/* 80019A14  38 60 00 01 */	li r3, 1
lbl_80019A18:
/* 80019A18  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80019A1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80019A20  7C 08 03 A6 */	mtlr r0
/* 80019A24  38 21 00 20 */	addi r1, r1, 0x20
/* 80019A28  4E 80 00 20 */	blr 
