lbl_80233E70:
/* 80233E70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80233E74  7C 08 02 A6 */	mflr r0
/* 80233E78  90 01 00 24 */	stw r0, 0x24(r1)
/* 80233E7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80233E80  48 12 E3 59 */	bl _savegpr_28
/* 80233E84  7C 7E 1B 78 */	mr r30, r3
/* 80233E88  7C BF 2B 78 */	mr r31, r5
/* 80233E8C  90 83 01 58 */	stw r4, 0x158(r3)
/* 80233E90  48 00 01 49 */	bl getRevoMessageIndex__12dMsgObject_cFUl
/* 80233E94  7C 7C 1B 78 */	mr r28, r3
/* 80233E98  38 00 00 01 */	li r0, 1
/* 80233E9C  98 1E 04 CB */	stb r0, 0x4cb(r30)
/* 80233EA0  98 1E 04 D4 */	stb r0, 0x4d4(r30)
/* 80233EA4  48 00 3A AD */	bl onCameraCancelFlag__12dMsgObject_cFv
/* 80233EA8  93 9E 01 54 */	stw r28, 0x154(r30)
/* 80233EAC  38 00 02 64 */	li r0, 0x264
/* 80233EB0  90 1E 01 5C */	stw r0, 0x15c(r30)
/* 80233EB4  38 00 00 00 */	li r0, 0
/* 80233EB8  98 1E 04 D1 */	stb r0, 0x4d1(r30)
/* 80233EBC  80 9E 01 40 */	lwz r4, 0x140(r30)
/* 80233EC0  80 1E 01 3C */	lwz r0, 0x13c(r30)
/* 80233EC4  7C 04 00 40 */	cmplw r4, r0
/* 80233EC8  41 82 00 2C */	beq lbl_80233EF4
/* 80233ECC  28 04 00 00 */	cmplwi r4, 0
/* 80233ED0  41 82 00 24 */	beq lbl_80233EF4
/* 80233ED4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80233ED8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80233EDC  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80233EE0  4B E0 F7 AD */	bl setPtT__14dEvt_control_cFPv
/* 80233EE4  38 00 00 01 */	li r0, 1
/* 80233EE8  98 1E 04 D1 */	stb r0, 0x4d1(r30)
/* 80233EEC  80 1E 01 40 */	lwz r0, 0x140(r30)
/* 80233EF0  90 1E 01 3C */	stw r0, 0x13c(r30)
lbl_80233EF4:
/* 80233EF4  7F C3 F3 78 */	mr r3, r30
/* 80233EF8  80 9E 01 54 */	lwz r4, 0x154(r30)
/* 80233EFC  48 00 02 41 */	bl getMessageGroup__12dMsgObject_cFUl
/* 80233F00  48 00 41 C5 */	bl changeGroup__12dMsgObject_cFs
/* 80233F04  38 00 00 00 */	li r0, 0
/* 80233F08  B0 1E 01 72 */	sth r0, 0x172(r30)
/* 80233F0C  A8 1E 01 72 */	lha r0, 0x172(r30)
/* 80233F10  80 7E 01 18 */	lwz r3, 0x118(r30)
/* 80233F14  B0 03 05 DA */	sth r0, 0x5da(r3)
/* 80233F18  80 7E 01 30 */	lwz r3, 0x130(r30)
/* 80233F1C  3B A3 00 20 */	addi r29, r3, 0x20
/* 80233F20  7F C3 F3 78 */	mr r3, r30
/* 80233F24  7F 84 E3 78 */	mr r4, r28
/* 80233F28  48 00 00 5D */	bl getMessageIndex__12dMsgObject_cFUl
/* 80233F2C  1C 03 00 14 */	mulli r0, r3, 0x14
/* 80233F30  7C 7D 02 14 */	add r3, r29, r0
/* 80233F34  88 03 00 1F */	lbz r0, 0x1f(r3)
/* 80233F38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80233F3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80233F40  90 03 5E EC */	stw r0, 0x5eec(r3)
/* 80233F44  38 00 00 00 */	li r0, 0
/* 80233F48  80 7E 01 18 */	lwz r3, 0x118(r30)
/* 80233F4C  90 03 05 C4 */	stw r0, 0x5c4(r3)
/* 80233F50  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80233F54  41 82 00 18 */	beq lbl_80233F6C
/* 80233F58  80 7E 01 14 */	lwz r3, 0x114(r30)
/* 80233F5C  80 9E 01 54 */	lwz r4, 0x154(r30)
/* 80233F60  38 A0 00 00 */	li r5, 0
/* 80233F64  38 C0 00 00 */	li r6, 0
/* 80233F68  48 07 39 8D */	bl setMessageID__Q28JMessage8TControlFUlUlPb
lbl_80233F6C:
/* 80233F6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80233F70  48 12 E2 B5 */	bl _restgpr_28
/* 80233F74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80233F78  7C 08 03 A6 */	mtlr r0
/* 80233F7C  38 21 00 20 */	addi r1, r1, 0x20
/* 80233F80  4E 80 00 20 */	blr 
