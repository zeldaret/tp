lbl_80D5B600:
/* 80D5B600  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5B604  7C 08 02 A6 */	mflr r0
/* 80D5B608  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5B60C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5B610  7C 7F 1B 78 */	mr r31, r3
/* 80D5B614  4B FF FE 4D */	bl areaCheck__13daLv6CstaSw_cFv
/* 80D5B618  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D5B61C  28 00 00 01 */	cmplwi r0, 1
/* 80D5B620  40 82 00 40 */	bne lbl_80D5B660
/* 80D5B624  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5B628  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5B62C  88 9F 05 68 */	lbz r4, 0x568(r31)
/* 80D5B630  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D5B634  7C 05 07 74 */	extsb r5, r0
/* 80D5B638  4B 2D 9D 28 */	b isSwitch__10dSv_info_cCFii
/* 80D5B63C  2C 03 00 00 */	cmpwi r3, 0
/* 80D5B640  40 82 00 58 */	bne lbl_80D5B698
/* 80D5B644  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5B648  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5B64C  88 9F 05 68 */	lbz r4, 0x568(r31)
/* 80D5B650  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D5B654  7C 05 07 74 */	extsb r5, r0
/* 80D5B658  4B 2D 9B A8 */	b onSwitch__10dSv_info_cFii
/* 80D5B65C  48 00 00 3C */	b lbl_80D5B698
lbl_80D5B660:
/* 80D5B660  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5B664  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5B668  88 9F 05 68 */	lbz r4, 0x568(r31)
/* 80D5B66C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D5B670  7C 05 07 74 */	extsb r5, r0
/* 80D5B674  4B 2D 9C EC */	b isSwitch__10dSv_info_cCFii
/* 80D5B678  2C 03 00 00 */	cmpwi r3, 0
/* 80D5B67C  41 82 00 1C */	beq lbl_80D5B698
/* 80D5B680  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5B684  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5B688  88 9F 05 68 */	lbz r4, 0x568(r31)
/* 80D5B68C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D5B690  7C 05 07 74 */	extsb r5, r0
/* 80D5B694  4B 2D 9C 1C */	b offSwitch__10dSv_info_cFii
lbl_80D5B698:
/* 80D5B698  38 60 00 01 */	li r3, 1
/* 80D5B69C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5B6A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5B6A4  7C 08 03 A6 */	mtlr r0
/* 80D5B6A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5B6AC  4E 80 00 20 */	blr 
