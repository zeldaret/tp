lbl_80A43F24:
/* 80A43F24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A43F28  7C 08 02 A6 */	mflr r0
/* 80A43F2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A43F30  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A43F34  7C 7F 1B 78 */	mr r31, r3
/* 80A43F38  38 7F 0E 48 */	addi r3, r31, 0xe48
/* 80A43F3C  4B 91 E0 DD */	bl __ptmf_test
/* 80A43F40  2C 03 00 00 */	cmpwi r3, 0
/* 80A43F44  41 82 00 54 */	beq lbl_80A43F98
/* 80A43F48  38 7F 0E 54 */	addi r3, r31, 0xe54
/* 80A43F4C  38 9F 0E 48 */	addi r4, r31, 0xe48
/* 80A43F50  4B 91 E0 F9 */	bl __ptmf_cmpr
/* 80A43F54  2C 03 00 00 */	cmpwi r3, 0
/* 80A43F58  40 82 00 1C */	bne lbl_80A43F74
/* 80A43F5C  7F E3 FB 78 */	mr r3, r31
/* 80A43F60  38 80 00 00 */	li r4, 0
/* 80A43F64  39 9F 0E 54 */	addi r12, r31, 0xe54
/* 80A43F68  4B 91 E1 1D */	bl __ptmf_scall
/* 80A43F6C  60 00 00 00 */	nop 
/* 80A43F70  48 00 00 28 */	b lbl_80A43F98
lbl_80A43F74:
/* 80A43F74  80 7F 0E 48 */	lwz r3, 0xe48(r31)
/* 80A43F78  80 1F 0E 4C */	lwz r0, 0xe4c(r31)
/* 80A43F7C  90 61 00 08 */	stw r3, 8(r1)
/* 80A43F80  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A43F84  80 1F 0E 50 */	lwz r0, 0xe50(r31)
/* 80A43F88  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A43F8C  7F E3 FB 78 */	mr r3, r31
/* 80A43F90  38 81 00 08 */	addi r4, r1, 8
/* 80A43F94  48 00 03 B1 */	bl setAction__11daNpc_Knj_cFM11daNpc_Knj_cFPCvPvPv_i
lbl_80A43F98:
/* 80A43F98  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A43F9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A43FA0  7C 08 03 A6 */	mtlr r0
/* 80A43FA4  38 21 00 20 */	addi r1, r1, 0x20
/* 80A43FA8  4E 80 00 20 */	blr 
