lbl_80590B8C:
/* 80590B8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80590B90  7C 08 02 A6 */	mflr r0
/* 80590B94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80590B98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80590B9C  7C 7F 1B 78 */	mr r31, r3
/* 80590BA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80590BA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80590BA8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80590BAC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80590BB0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80590BB4  7C 05 07 74 */	extsb r5, r0
/* 80590BB8  4B AA 47 A8 */	b isSwitch__10dSv_info_cCFii
/* 80590BBC  2C 03 00 00 */	cmpwi r3, 0
/* 80590BC0  41 82 00 0C */	beq lbl_80590BCC
/* 80590BC4  7F E3 FB 78 */	mr r3, r31
/* 80590BC8  48 00 00 19 */	bl init_typeA_modeMholeOn__11daObjMarm_cFv
lbl_80590BCC:
/* 80590BCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80590BD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80590BD4  7C 08 03 A6 */	mtlr r0
/* 80590BD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80590BDC  4E 80 00 20 */	blr 
