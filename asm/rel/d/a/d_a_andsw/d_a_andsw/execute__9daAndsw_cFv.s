lbl_80457A20:
/* 80457A20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80457A24  7C 08 02 A6 */	mflr r0
/* 80457A28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80457A2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80457A30  7C 7F 1B 78 */	mr r31, r3
/* 80457A34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80457A38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80457A3C  88 9F 05 69 */	lbz r4, 0x569(r31)
/* 80457A40  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80457A44  7C 05 07 74 */	extsb r5, r0
/* 80457A48  4B BD D9 19 */	bl isSwitch__10dSv_info_cCFii
/* 80457A4C  2C 03 00 00 */	cmpwi r3, 0
/* 80457A50  41 82 00 54 */	beq lbl_80457AA4
/* 80457A54  A8 7F 05 6A */	lha r3, 0x56a(r31)
/* 80457A58  2C 03 00 00 */	cmpwi r3, 0
/* 80457A5C  40 81 00 0C */	ble lbl_80457A68
/* 80457A60  38 03 FF FF */	addi r0, r3, -1
/* 80457A64  B0 1F 05 6A */	sth r0, 0x56a(r31)
lbl_80457A68:
/* 80457A68  A8 1F 05 6A */	lha r0, 0x56a(r31)
/* 80457A6C  2C 00 00 00 */	cmpwi r0, 0
/* 80457A70  40 82 00 34 */	bne lbl_80457AA4
/* 80457A74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80457A78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80457A7C  88 9F 05 68 */	lbz r4, 0x568(r31)
/* 80457A80  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80457A84  7C 05 07 74 */	extsb r5, r0
/* 80457A88  4B BD D8 29 */	bl offSwitch__10dSv_info_cFii
/* 80457A8C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80457A90  54 00 46 3E */	srwi r0, r0, 0x18
/* 80457A94  28 00 00 01 */	cmplwi r0, 1
/* 80457A98  40 82 00 0C */	bne lbl_80457AA4
/* 80457A9C  7F E3 FB 78 */	mr r3, r31
/* 80457AA0  4B BC 21 DD */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80457AA4:
/* 80457AA4  38 60 00 01 */	li r3, 1
/* 80457AA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80457AAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80457AB0  7C 08 03 A6 */	mtlr r0
/* 80457AB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80457AB8  4E 80 00 20 */	blr 
