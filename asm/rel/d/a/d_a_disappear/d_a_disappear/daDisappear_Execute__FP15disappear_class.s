lbl_804A8F6C:
/* 804A8F6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A8F70  7C 08 02 A6 */	mflr r0
/* 804A8F74  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A8F78  A8 83 05 74 */	lha r4, 0x574(r3)
/* 804A8F7C  2C 04 00 00 */	cmpwi r4, 0
/* 804A8F80  41 82 00 10 */	beq lbl_804A8F90
/* 804A8F84  38 04 FF FF */	addi r0, r4, -1
/* 804A8F88  B0 03 05 74 */	sth r0, 0x574(r3)
/* 804A8F8C  48 00 00 08 */	b lbl_804A8F94
lbl_804A8F90:
/* 804A8F90  4B B7 0C EC */	b fopAcM_delete__FP10fopAc_ac_c
lbl_804A8F94:
/* 804A8F94  38 60 00 01 */	li r3, 1
/* 804A8F98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A8F9C  7C 08 03 A6 */	mtlr r0
/* 804A8FA0  38 21 00 10 */	addi r1, r1, 0x10
/* 804A8FA4  4E 80 00 20 */	blr 
