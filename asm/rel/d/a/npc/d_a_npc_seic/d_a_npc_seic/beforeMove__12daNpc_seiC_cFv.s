lbl_80AC7F9C:
/* 80AC7F9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC7FA0  7C 08 02 A6 */	mflr r0
/* 80AC7FA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC7FA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC7FAC  93 C1 00 08 */	stw r30, 8(r1)
/* 80AC7FB0  7C 7E 1B 78 */	mr r30, r3
/* 80AC7FB4  3B E0 00 00 */	li r31, 0
/* 80AC7FB8  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80AC7FBC  28 00 00 00 */	cmplwi r0, 0
/* 80AC7FC0  40 82 00 1C */	bne lbl_80AC7FDC
/* 80AC7FC4  4B 56 7A 90 */	b dComIfGs_wolfeye_effect_check__Fv
/* 80AC7FC8  2C 03 00 00 */	cmpwi r3, 0
/* 80AC7FCC  40 82 00 14 */	bne lbl_80AC7FE0
/* 80AC7FD0  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80AC7FD4  28 00 00 00 */	cmplwi r0, 0
/* 80AC7FD8  41 82 00 08 */	beq lbl_80AC7FE0
lbl_80AC7FDC:
/* 80AC7FDC  3B E0 00 01 */	li r31, 1
lbl_80AC7FE0:
/* 80AC7FE0  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80AC7FE4  40 82 00 10 */	bne lbl_80AC7FF4
/* 80AC7FE8  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80AC7FEC  28 00 00 00 */	cmplwi r0, 0
/* 80AC7FF0  41 82 00 0C */	beq lbl_80AC7FFC
lbl_80AC7FF4:
/* 80AC7FF4  38 00 00 00 */	li r0, 0
/* 80AC7FF8  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80AC7FFC:
/* 80AC7FFC  7F C3 F3 78 */	mr r3, r30
/* 80AC8000  48 00 03 35 */	bl ctrlWaitAnm__12daNpc_seiC_cFv
/* 80AC8004  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC8008  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AC800C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC8010  7C 08 03 A6 */	mtlr r0
/* 80AC8014  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC8018  4E 80 00 20 */	blr 
