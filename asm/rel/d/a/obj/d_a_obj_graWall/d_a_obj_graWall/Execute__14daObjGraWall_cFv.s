lbl_80C10DD8:
/* 80C10DD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C10DDC  7C 08 02 A6 */	mflr r0
/* 80C10DE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C10DE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C10DE8  7C 7F 1B 78 */	mr r31, r3
/* 80C10DEC  88 83 06 E0 */	lbz r4, 0x6e0(r3)
/* 80C10DF0  28 04 00 FF */	cmplwi r4, 0xff
/* 80C10DF4  41 82 00 30 */	beq lbl_80C10E24
/* 80C10DF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C10DFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C10E00  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80C10E04  7C 05 07 74 */	extsb r5, r0
/* 80C10E08  4B 42 45 59 */	bl isSwitch__10dSv_info_cCFii
/* 80C10E0C  2C 03 00 00 */	cmpwi r3, 0
/* 80C10E10  41 82 00 48 */	beq lbl_80C10E58
/* 80C10E14  7F E3 FB 78 */	mr r3, r31
/* 80C10E18  4B 40 8E 65 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80C10E1C  38 60 00 01 */	li r3, 1
/* 80C10E20  48 00 00 44 */	b lbl_80C10E64
lbl_80C10E24:
/* 80C10E24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C10E28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C10E2C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80C10E30  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80C10E34  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80C10E38  A0 84 00 7C */	lhz r4, 0x7c(r4)
/* 80C10E3C  4B 42 3B 81 */	bl isEventBit__11dSv_event_cCFUs
/* 80C10E40  2C 03 00 00 */	cmpwi r3, 0
/* 80C10E44  41 82 00 14 */	beq lbl_80C10E58
/* 80C10E48  7F E3 FB 78 */	mr r3, r31
/* 80C10E4C  4B 40 8E 31 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80C10E50  38 60 00 01 */	li r3, 1
/* 80C10E54  48 00 00 10 */	b lbl_80C10E64
lbl_80C10E58:
/* 80C10E58  7F E3 FB 78 */	mr r3, r31
/* 80C10E5C  48 00 00 79 */	bl col_set__14daObjGraWall_cFv
/* 80C10E60  38 60 00 01 */	li r3, 1
lbl_80C10E64:
/* 80C10E64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C10E68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C10E6C  7C 08 03 A6 */	mtlr r0
/* 80C10E70  38 21 00 10 */	addi r1, r1, 0x10
/* 80C10E74  4E 80 00 20 */	blr 
