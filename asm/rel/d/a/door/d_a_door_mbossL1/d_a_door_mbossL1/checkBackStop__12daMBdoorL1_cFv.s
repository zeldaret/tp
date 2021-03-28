lbl_80676610:
/* 80676610  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80676614  7C 08 02 A6 */	mflr r0
/* 80676618  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067661C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80676620  93 C1 00 08 */	stw r30, 8(r1)
/* 80676624  7C 7E 1B 78 */	mr r30, r3
/* 80676628  4B FF FC 7D */	bl checkFront__12daMBdoorL1_cFv
/* 8067662C  2C 03 00 00 */	cmpwi r3, 0
/* 80676630  41 82 00 0C */	beq lbl_8067663C
/* 80676634  38 60 00 00 */	li r3, 0
/* 80676638  48 00 00 60 */	b lbl_80676698
lbl_8067663C:
/* 8067663C  7F C3 F3 78 */	mr r3, r30
/* 80676640  4B 9C 3B 6C */	b getBackOption__13door_param2_cFP10fopAc_ac_c
/* 80676644  7C 7F 1B 78 */	mr r31, r3
/* 80676648  7F C3 F3 78 */	mr r3, r30
/* 8067664C  4B 9C 3B 90 */	b getSwbit2__13door_param2_cFP10fopAc_ac_c
/* 80676650  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80676654  28 00 00 01 */	cmplwi r0, 1
/* 80676658  41 82 00 0C */	beq lbl_80676664
/* 8067665C  28 00 00 03 */	cmplwi r0, 3
/* 80676660  40 82 00 34 */	bne lbl_80676694
lbl_80676664:
/* 80676664  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80676668  28 04 00 FF */	cmplwi r4, 0xff
/* 8067666C  41 82 00 28 */	beq lbl_80676694
/* 80676670  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80676674  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80676678  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 8067667C  7C 05 07 74 */	extsb r5, r0
/* 80676680  4B 9B EC E0 */	b isSwitch__10dSv_info_cCFii
/* 80676684  2C 03 00 00 */	cmpwi r3, 0
/* 80676688  40 82 00 0C */	bne lbl_80676694
/* 8067668C  38 60 00 01 */	li r3, 1
/* 80676690  48 00 00 08 */	b lbl_80676698
lbl_80676694:
/* 80676694  38 60 00 00 */	li r3, 0
lbl_80676698:
/* 80676698  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8067669C  83 C1 00 08 */	lwz r30, 8(r1)
/* 806766A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806766A4  7C 08 03 A6 */	mtlr r0
/* 806766A8  38 21 00 10 */	addi r1, r1, 0x10
/* 806766AC  4E 80 00 20 */	blr 
