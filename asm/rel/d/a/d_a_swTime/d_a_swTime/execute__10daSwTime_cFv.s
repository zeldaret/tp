lbl_80D4F6C8:
/* 80D4F6C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4F6CC  7C 08 02 A6 */	mflr r0
/* 80D4F6D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4F6D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4F6D8  7C 7F 1B 78 */	mr r31, r3
/* 80D4F6DC  88 83 05 6A */	lbz r4, 0x56a(r3)
/* 80D4F6E0  28 04 00 FF */	cmplwi r4, 0xff
/* 80D4F6E4  41 82 00 28 */	beq lbl_80D4F70C
/* 80D4F6E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D4F6EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D4F6F0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D4F6F4  7C 05 07 74 */	extsb r5, r0
/* 80D4F6F8  4B 2E 5C 68 */	b isSwitch__10dSv_info_cCFii
/* 80D4F6FC  2C 03 00 00 */	cmpwi r3, 0
/* 80D4F700  40 82 00 0C */	bne lbl_80D4F70C
/* 80D4F704  38 60 00 01 */	li r3, 1
/* 80D4F708  48 00 00 3C */	b lbl_80D4F744
lbl_80D4F70C:
/* 80D4F70C  4B 45 03 04 */	b dKy_getdaytime_hour__Fv
/* 80D4F710  88 1F 05 68 */	lbz r0, 0x568(r31)
/* 80D4F714  7C 00 18 00 */	cmpw r0, r3
/* 80D4F718  40 82 00 28 */	bne lbl_80D4F740
/* 80D4F71C  4B 45 03 20 */	b dKy_getdaytime_minute__Fv
/* 80D4F720  2C 03 00 00 */	cmpwi r3, 0
/* 80D4F724  40 82 00 1C */	bne lbl_80D4F740
/* 80D4F728  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D4F72C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D4F730  88 9F 05 69 */	lbz r4, 0x569(r31)
/* 80D4F734  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D4F738  7C 05 07 74 */	extsb r5, r0
/* 80D4F73C  4B 2E 5A C4 */	b onSwitch__10dSv_info_cFii
lbl_80D4F740:
/* 80D4F740  38 60 00 01 */	li r3, 1
lbl_80D4F744:
/* 80D4F744  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4F748  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4F74C  7C 08 03 A6 */	mtlr r0
/* 80D4F750  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4F754  4E 80 00 20 */	blr 
