lbl_80BE1B5C:
/* 80BE1B5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE1B60  7C 08 02 A6 */	mflr r0
/* 80BE1B64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE1B68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE1B6C  93 C1 00 08 */	stw r30, 8(r1)
/* 80BE1B70  7C 7E 1B 78 */	mr r30, r3
/* 80BE1B74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BE1B78  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80BE1B7C  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80BE1B80  3C 80 80 BE */	lis r4, stringBase0@ha
/* 80BE1B84  38 84 20 48 */	addi r4, r4, stringBase0@l
/* 80BE1B88  38 84 00 08 */	addi r4, r4, 8
/* 80BE1B8C  4B 46 5F 50 */	b endCheckOld__16dEvent_manager_cFPCc
/* 80BE1B90  2C 03 00 00 */	cmpwi r3, 0
/* 80BE1B94  41 82 00 14 */	beq lbl_80BE1BA8
/* 80BE1B98  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80BE1B9C  4B 46 08 CC */	b reset__14dEvt_control_cFv
/* 80BE1BA0  7F C3 F3 78 */	mr r3, r30
/* 80BE1BA4  4B 43 80 D8 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80BE1BA8:
/* 80BE1BA8  38 60 00 01 */	li r3, 1
/* 80BE1BAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE1BB0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BE1BB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE1BB8  7C 08 03 A6 */	mtlr r0
/* 80BE1BBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE1BC0  4E 80 00 20 */	blr 
