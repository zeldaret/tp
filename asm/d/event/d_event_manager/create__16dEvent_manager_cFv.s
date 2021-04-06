lbl_80046710:
/* 80046710  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80046714  7C 08 02 A6 */	mflr r0
/* 80046718  90 01 00 24 */	stw r0, 0x24(r1)
/* 8004671C  39 61 00 20 */	addi r11, r1, 0x20
/* 80046720  48 31 BA BD */	bl _savegpr_29
/* 80046724  7C 7D 1B 78 */	mr r29, r3
/* 80046728  38 00 00 00 */	li r0, 0
/* 8004672C  90 03 01 8C */	stw r0, 0x18c(r3)
/* 80046730  38 7D 01 90 */	addi r3, r29, 0x190
/* 80046734  4B FF FC A9 */	bl init__18dEvent_exception_cFv
/* 80046738  38 7D 01 BC */	addi r3, r29, 0x1bc
/* 8004673C  4B FF D7 1D */	bl init__11dEvDtFlag_cFv
/* 80046740  38 60 00 00 */	li r3, 0
/* 80046744  90 7D 01 B4 */	stw r3, 0x1b4(r29)
/* 80046748  38 00 FF FF */	li r0, -1
/* 8004674C  B0 1D 01 AA */	sth r0, 0x1aa(r29)
/* 80046750  90 7D 01 B8 */	stw r3, 0x1b8(r29)
/* 80046754  90 1D 01 B0 */	stw r0, 0x1b0(r29)
/* 80046758  98 7D 06 BC */	stb r3, 0x6bc(r29)
/* 8004675C  3B C0 00 04 */	li r30, 4
/* 80046760  3B E0 00 90 */	li r31, 0x90
lbl_80046764:
/* 80046764  7C 7D FA 14 */	add r3, r29, r31
/* 80046768  4B FF F9 D1 */	bl init__11dEvDtBase_cFv
/* 8004676C  3B DE 00 01 */	addi r30, r30, 1
/* 80046770  2C 1E 00 09 */	cmpwi r30, 9
/* 80046774  3B FF 00 24 */	addi r31, r31, 0x24
/* 80046778  40 81 FF EC */	ble lbl_80046764
/* 8004677C  3C 60 80 38 */	lis r3, data_80379F50@ha /* 0x80379F50@ha */
/* 80046780  38 63 9F 50 */	addi r3, r3, data_80379F50@l /* 0x80379F50@l */
/* 80046784  4B FE 8C B1 */	bl dComIfG_getStageRes__FPCc
/* 80046788  7C 64 1B 78 */	mr r4, r3
/* 8004678C  38 7D 00 6C */	addi r3, r29, 0x6c
/* 80046790  38 A0 FF FF */	li r5, -1
/* 80046794  4B FF F9 D9 */	bl init__11dEvDtBase_cFPci
/* 80046798  38 7D 01 68 */	addi r3, r29, 0x168
/* 8004679C  4B FF F9 9D */	bl init__11dEvDtBase_cFv
/* 800467A0  3C 60 80 38 */	lis r3, d_event_d_event_manager__stringBase0@ha /* 0x80379F60@ha */
/* 800467A4  38 63 9F 60 */	addi r3, r3, d_event_d_event_manager__stringBase0@l /* 0x80379F60@l */
/* 800467A8  38 63 01 1E */	addi r3, r3, 0x11e
/* 800467AC  3C 80 80 38 */	lis r4, data_80379F50@ha /* 0x80379F50@ha */
/* 800467B0  38 84 9F 50 */	addi r4, r4, data_80379F50@l /* 0x80379F50@l */
/* 800467B4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800467B8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800467BC  3C A5 00 02 */	addis r5, r5, 2
/* 800467C0  38 C0 00 80 */	li r6, 0x80
/* 800467C4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 800467C8  4B FF 5B B5 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 800467CC  7C 64 1B 78 */	mr r4, r3
/* 800467D0  38 7D 00 24 */	addi r3, r29, 0x24
/* 800467D4  38 A0 FF FF */	li r5, -1
/* 800467D8  4B FF F9 95 */	bl init__11dEvDtBase_cFPci
/* 800467DC  38 7D 00 48 */	addi r3, r29, 0x48
/* 800467E0  4B FF F9 59 */	bl init__11dEvDtBase_cFv
/* 800467E4  38 60 00 01 */	li r3, 1
/* 800467E8  39 61 00 20 */	addi r11, r1, 0x20
/* 800467EC  48 31 BA 3D */	bl _restgpr_29
/* 800467F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800467F4  7C 08 03 A6 */	mtlr r0
/* 800467F8  38 21 00 20 */	addi r1, r1, 0x20
/* 800467FC  4E 80 00 20 */	blr 
