lbl_80B96DF0:
/* 80B96DF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B96DF4  7C 08 02 A6 */	mflr r0
/* 80B96DF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B96DFC  39 61 00 20 */	addi r11, r1, 0x20
/* 80B96E00  4B 7C B3 D9 */	bl _savegpr_28
/* 80B96E04  7C 7C 1B 78 */	mr r28, r3
/* 80B96E08  7C 9D 23 78 */	mr r29, r4
/* 80B96E0C  7C BE 2B 78 */	mr r30, r5
/* 80B96E10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B96E14  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B96E18  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80B96E1C  4B 4B 15 CD */	bl getRunEventName__16dEvent_manager_cFv
/* 80B96E20  57 A0 10 3A */	slwi r0, r29, 2
/* 80B96E24  3C 80 80 BA */	lis r4, l_evtNames@ha /* 0x80B9B39C@ha */
/* 80B96E28  38 84 B3 9C */	addi r4, r4, l_evtNames@l /* 0x80B9B39C@l */
/* 80B96E2C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B96E30  4B 7D 1B 65 */	bl strcmp
/* 80B96E34  2C 03 00 00 */	cmpwi r3, 0
/* 80B96E38  40 82 00 28 */	bne lbl_80B96E60
/* 80B96E3C  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80B96E40  7F 84 E3 78 */	mr r4, r28
/* 80B96E44  57 C0 10 3A */	slwi r0, r30, 2
/* 80B96E48  3C A0 80 BA */	lis r5, l_evtNames@ha /* 0x80B9B39C@ha */
/* 80B96E4C  38 A5 B3 9C */	addi r5, r5, l_evtNames@l /* 0x80B9B39C@l */
/* 80B96E50  7C A5 00 2E */	lwzx r5, r5, r0
/* 80B96E54  4B 4A BB 05 */	bl setSkipZev__14dEvt_control_cFPvPc
/* 80B96E58  38 60 00 01 */	li r3, 1
/* 80B96E5C  48 00 00 08 */	b lbl_80B96E64
lbl_80B96E60:
/* 80B96E60  38 60 00 00 */	li r3, 0
lbl_80B96E64:
/* 80B96E64  39 61 00 20 */	addi r11, r1, 0x20
/* 80B96E68  4B 7C B3 BD */	bl _restgpr_28
/* 80B96E6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B96E70  7C 08 03 A6 */	mtlr r0
/* 80B96E74  38 21 00 20 */	addi r1, r1, 0x20
/* 80B96E78  4E 80 00 20 */	blr 
