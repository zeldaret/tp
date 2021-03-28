lbl_80BD2ECC:
/* 80BD2ECC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BD2ED0  7C 08 02 A6 */	mflr r0
/* 80BD2ED4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BD2ED8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BD2EDC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BD2EE0  7C 7E 1B 78 */	mr r30, r3
/* 80BD2EE4  7C 9F 23 78 */	mr r31, r4
/* 80BD2EE8  38 00 00 00 */	li r0, 0
/* 80BD2EEC  3C 60 80 BD */	lis r3, data_80BD32B8@ha
/* 80BD2EF0  B0 03 32 B8 */	sth r0, data_80BD32B8@l(r3)
/* 80BD2EF4  88 1E 05 AC */	lbz r0, 0x5ac(r30)
/* 80BD2EF8  28 00 00 01 */	cmplwi r0, 1
/* 80BD2EFC  40 82 00 60 */	bne lbl_80BD2F5C
/* 80BD2F00  80 1E 06 40 */	lwz r0, 0x640(r30)
/* 80BD2F04  90 01 00 08 */	stw r0, 8(r1)
/* 80BD2F08  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80BD2F0C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80BD2F10  38 81 00 08 */	addi r4, r1, 8
/* 80BD2F14  4B 44 68 E4 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80BD2F18  28 03 00 00 */	cmplwi r3, 0
/* 80BD2F1C  41 82 00 2C */	beq lbl_80BD2F48
/* 80BD2F20  88 1E 05 B0 */	lbz r0, 0x5b0(r30)
/* 80BD2F24  28 00 00 00 */	cmplwi r0, 0
/* 80BD2F28  40 82 00 20 */	bne lbl_80BD2F48
/* 80BD2F2C  80 7E 06 40 */	lwz r3, 0x640(r30)
/* 80BD2F30  38 9E 05 B4 */	addi r4, r30, 0x5b4
/* 80BD2F34  4B 44 6A 88 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80BD2F38  38 00 00 01 */	li r0, 1
/* 80BD2F3C  98 1E 05 B0 */	stb r0, 0x5b0(r30)
/* 80BD2F40  38 00 00 00 */	li r0, 0
/* 80BD2F44  98 1E 05 AD */	stb r0, 0x5ad(r30)
lbl_80BD2F48:
/* 80BD2F48  88 1E 05 AE */	lbz r0, 0x5ae(r30)
/* 80BD2F4C  28 00 00 00 */	cmplwi r0, 0
/* 80BD2F50  40 82 00 0C */	bne lbl_80BD2F5C
/* 80BD2F54  7F C3 F3 78 */	mr r3, r30
/* 80BD2F58  4B FF DD D1 */	bl event_proc_call__14daObjCRVGATE_cFv
lbl_80BD2F5C:
/* 80BD2F5C  88 1E 05 AD */	lbz r0, 0x5ad(r30)
/* 80BD2F60  28 00 00 00 */	cmplwi r0, 0
/* 80BD2F64  40 82 00 0C */	bne lbl_80BD2F70
/* 80BD2F68  7F C3 F3 78 */	mr r3, r30
/* 80BD2F6C  4B FF F3 5D */	bl DoorAction__14daObjCRVGATE_cFv
lbl_80BD2F70:
/* 80BD2F70  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80BD2F74  90 1F 00 00 */	stw r0, 0(r31)
/* 80BD2F78  7F C3 F3 78 */	mr r3, r30
/* 80BD2F7C  4B FF F5 AD */	bl setBaseMtx__14daObjCRVGATE_cFv
/* 80BD2F80  A8 7E 06 6C */	lha r3, 0x66c(r30)
/* 80BD2F84  2C 03 00 00 */	cmpwi r3, 0
/* 80BD2F88  41 82 00 0C */	beq lbl_80BD2F94
/* 80BD2F8C  38 03 FF FF */	addi r0, r3, -1
/* 80BD2F90  B0 1E 06 6C */	sth r0, 0x66c(r30)
lbl_80BD2F94:
/* 80BD2F94  7F C3 F3 78 */	mr r3, r30
/* 80BD2F98  4B FF D5 69 */	bl setCcCylinder__14daObjCRVGATE_cFv
/* 80BD2F9C  38 60 00 01 */	li r3, 1
/* 80BD2FA0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BD2FA4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BD2FA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BD2FAC  7C 08 03 A6 */	mtlr r0
/* 80BD2FB0  38 21 00 20 */	addi r1, r1, 0x20
/* 80BD2FB4  4E 80 00 20 */	blr 
