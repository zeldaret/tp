lbl_80041DDC:
/* 80041DDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80041DE0  7C 08 02 A6 */	mflr r0
/* 80041DE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80041DE8  39 61 00 20 */	addi r11, r1, 0x20
/* 80041DEC  48 32 03 E9 */	bl _savegpr_27
/* 80041DF0  7C 7B 1B 78 */	mr r27, r3
/* 80041DF4  7C 9C 23 78 */	mr r28, r4
/* 80041DF8  83 E4 00 08 */	lwz r31, 8(r4)
/* 80041DFC  83 C4 00 0C */	lwz r30, 0xc(r4)
/* 80041E00  AB A4 00 10 */	lha r29, 0x10(r4)
/* 80041E04  28 1E 00 00 */	cmplwi r30, 0
/* 80041E08  40 82 00 0C */	bne lbl_80041E14
/* 80041E0C  38 60 00 00 */	li r3, 0
/* 80041E10  48 00 00 F0 */	b lbl_80041F00
lbl_80041E14:
/* 80041E14  A0 1C 00 02 */	lhz r0, 2(r28)
/* 80041E18  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80041E1C  40 82 00 44 */	bne lbl_80041E60
/* 80041E20  28 1F 00 00 */	cmplwi r31, 0
/* 80041E24  41 82 00 1C */	beq lbl_80041E40
/* 80041E28  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80041E2C  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 80041E30  2C 00 00 02 */	cmpwi r0, 2
/* 80041E34  41 82 00 0C */	beq lbl_80041E40
/* 80041E38  38 60 00 00 */	li r3, 0
/* 80041E3C  48 00 00 C4 */	b lbl_80041F00
lbl_80041E40:
/* 80041E40  28 1E 00 00 */	cmplwi r30, 0
/* 80041E44  41 82 00 1C */	beq lbl_80041E60
/* 80041E48  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 80041E4C  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 80041E50  2C 00 00 02 */	cmpwi r0, 2
/* 80041E54  41 82 00 0C */	beq lbl_80041E60
/* 80041E58  38 60 00 00 */	li r3, 0
/* 80041E5C  48 00 00 A4 */	b lbl_80041F00
lbl_80041E60:
/* 80041E60  7F 63 DB 78 */	mr r3, r27
/* 80041E64  7F 84 E3 78 */	mr r4, r28
/* 80041E68  4B FF FA CD */	bl beforeFlagProc__14dEvt_control_cFP12dEvt_order_c
/* 80041E6C  2C 03 00 00 */	cmpwi r3, 0
/* 80041E70  40 82 00 0C */	bne lbl_80041E7C
/* 80041E74  38 60 00 00 */	li r3, 0
/* 80041E78  48 00 00 88 */	b lbl_80041F00
lbl_80041E7C:
/* 80041E7C  28 1F 00 00 */	cmplwi r31, 0
/* 80041E80  41 82 00 18 */	beq lbl_80041E98
/* 80041E84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80041E88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80041E8C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80041E90  80 9F 01 00 */	lwz r4, 0x100(r31)
/* 80041E94  48 00 49 6D */	bl setObjectArchive__16dEvent_manager_cFPc
lbl_80041E98:
/* 80041E98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80041E9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80041EA0  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80041EA4  7F A4 EB 78 */	mr r4, r29
/* 80041EA8  48 00 5A DD */	bl order__16dEvent_manager_cFs
/* 80041EAC  2C 03 00 00 */	cmpwi r3, 0
/* 80041EB0  40 82 00 0C */	bne lbl_80041EBC
/* 80041EB4  38 60 00 00 */	li r3, 0
/* 80041EB8  48 00 00 48 */	b lbl_80041F00
lbl_80041EBC:
/* 80041EBC  28 1F 00 00 */	cmplwi r31, 0
/* 80041EC0  41 82 00 0C */	beq lbl_80041ECC
/* 80041EC4  38 00 00 02 */	li r0, 2
/* 80041EC8  B0 1F 00 F8 */	sth r0, 0xf8(r31)
lbl_80041ECC:
/* 80041ECC  28 1E 00 00 */	cmplwi r30, 0
/* 80041ED0  41 82 00 0C */	beq lbl_80041EDC
/* 80041ED4  38 00 00 02 */	li r0, 2
/* 80041ED8  B0 1E 00 F8 */	sth r0, 0xf8(r30)
lbl_80041EDC:
/* 80041EDC  38 00 00 02 */	li r0, 2
/* 80041EE0  98 1B 00 E4 */	stb r0, 0xe4(r27)
/* 80041EE4  7F 63 DB 78 */	mr r3, r27
/* 80041EE8  7F 84 E3 78 */	mr r4, r28
/* 80041EEC  4B FF F9 19 */	bl setParam__14dEvt_control_cFP12dEvt_order_c
/* 80041EF0  7F 63 DB 78 */	mr r3, r27
/* 80041EF4  7F 84 E3 78 */	mr r4, r28
/* 80041EF8  4B FF FA 6D */	bl afterFlagProc__14dEvt_control_cFP12dEvt_order_c
/* 80041EFC  38 60 00 01 */	li r3, 1
lbl_80041F00:
/* 80041F00  39 61 00 20 */	addi r11, r1, 0x20
/* 80041F04  48 32 03 1D */	bl _restgpr_27
/* 80041F08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80041F0C  7C 08 03 A6 */	mtlr r0
/* 80041F10  38 21 00 20 */	addi r1, r1, 0x20
/* 80041F14  4E 80 00 20 */	blr 
