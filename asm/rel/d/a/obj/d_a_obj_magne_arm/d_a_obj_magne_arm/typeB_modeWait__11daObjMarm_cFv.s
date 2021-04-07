lbl_80590E38:
/* 80590E38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80590E3C  7C 08 02 A6 */	mflr r0
/* 80590E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80590E44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80590E48  7C 7F 1B 78 */	mr r31, r3
/* 80590E4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80590E50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80590E54  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80590E58  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80590E5C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80590E60  7C 05 07 74 */	extsb r5, r0
/* 80590E64  4B AA 44 FD */	bl isSwitch__10dSv_info_cCFii
/* 80590E68  2C 03 00 00 */	cmpwi r3, 0
/* 80590E6C  41 82 00 0C */	beq lbl_80590E78
/* 80590E70  7F E3 FB 78 */	mr r3, r31
/* 80590E74  48 00 00 19 */	bl init_typeB_modeMholeOn__11daObjMarm_cFv
lbl_80590E78:
/* 80590E78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80590E7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80590E80  7C 08 03 A6 */	mtlr r0
/* 80590E84  38 21 00 10 */	addi r1, r1, 0x10
/* 80590E88  4E 80 00 20 */	blr 
