lbl_80B69CA8:
/* 80B69CA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B69CAC  7C 08 02 A6 */	mflr r0
/* 80B69CB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B69CB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B69CB8  93 C1 00 08 */	stw r30, 8(r1)
/* 80B69CBC  7C 7E 1B 78 */	mr r30, r3
/* 80B69CC0  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 80B69CC4  2C 00 00 00 */	cmpwi r0, 0
/* 80B69CC8  41 82 00 28 */	beq lbl_80B69CF0
/* 80B69CCC  83 FE 0B 5C */	lwz r31, 0xb5c(r30)
/* 80B69CD0  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80B69CD4  4B 5D BB C4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B69CD8  93 FE 0B 5C */	stw r31, 0xb5c(r30)
/* 80B69CDC  38 00 00 00 */	li r0, 0
/* 80B69CE0  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80B69CE4  3C 60 80 B7 */	lis r3, lit_4529@ha
/* 80B69CE8  C0 03 BD 7C */	lfs f0, lit_4529@l(r3)
/* 80B69CEC  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80B69CF0:
/* 80B69CF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B69CF4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B69CF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B69CFC  7C 08 03 A6 */	mtlr r0
/* 80B69D00  38 21 00 10 */	addi r1, r1, 0x10
/* 80B69D04  4E 80 00 20 */	blr 
