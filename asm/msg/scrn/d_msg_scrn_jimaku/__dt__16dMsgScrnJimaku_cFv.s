lbl_80244A74:
/* 80244A74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80244A78  7C 08 02 A6 */	mflr r0
/* 80244A7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80244A80  39 61 00 20 */	addi r11, r1, 0x20
/* 80244A84  48 11 D7 51 */	bl _savegpr_27
/* 80244A88  7C 7E 1B 79 */	or. r30, r3, r3
/* 80244A8C  7C 9F 23 78 */	mr r31, r4
/* 80244A90  41 82 01 80 */	beq lbl_80244C10
/* 80244A94  3C 60 80 3C */	lis r3, __vt__16dMsgScrnJimaku_c@ha
/* 80244A98  38 03 11 E8 */	addi r0, r3, __vt__16dMsgScrnJimaku_c@l
/* 80244A9C  90 1E 00 00 */	stw r0, 0(r30)
/* 80244AA0  80 7E 00 04 */	lwz r3, 4(r30)
/* 80244AA4  28 03 00 00 */	cmplwi r3, 0
/* 80244AA8  41 82 00 18 */	beq lbl_80244AC0
/* 80244AAC  38 80 00 01 */	li r4, 1
/* 80244AB0  81 83 00 00 */	lwz r12, 0(r3)
/* 80244AB4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80244AB8  7D 89 03 A6 */	mtctr r12
/* 80244ABC  4E 80 04 21 */	bctrl 
lbl_80244AC0:
/* 80244AC0  38 00 00 00 */	li r0, 0
/* 80244AC4  90 1E 00 04 */	stw r0, 4(r30)
/* 80244AC8  80 7E 00 C4 */	lwz r3, 0xc4(r30)
/* 80244ACC  28 03 00 00 */	cmplwi r3, 0
/* 80244AD0  41 82 00 18 */	beq lbl_80244AE8
/* 80244AD4  38 80 00 01 */	li r4, 1
/* 80244AD8  81 83 00 00 */	lwz r12, 0(r3)
/* 80244ADC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80244AE0  7D 89 03 A6 */	mtctr r12
/* 80244AE4  4E 80 04 21 */	bctrl 
lbl_80244AE8:
/* 80244AE8  38 00 00 00 */	li r0, 0
/* 80244AEC  90 1E 00 C4 */	stw r0, 0xc4(r30)
/* 80244AF0  80 9E 00 50 */	lwz r4, 0x50(r30)
/* 80244AF4  28 04 00 00 */	cmplwi r4, 0
/* 80244AF8  41 82 00 14 */	beq lbl_80244B0C
/* 80244AFC  80 7E 00 C8 */	lwz r3, 0xc8(r30)
/* 80244B00  48 08 9A 49 */	bl free__7JKRHeapFPv
/* 80244B04  38 00 00 00 */	li r0, 0
/* 80244B08  90 1E 00 50 */	stw r0, 0x50(r30)
lbl_80244B0C:
/* 80244B0C  80 7E 00 08 */	lwz r3, 8(r30)
/* 80244B10  28 03 00 00 */	cmplwi r3, 0
/* 80244B14  41 82 00 18 */	beq lbl_80244B2C
/* 80244B18  38 80 00 01 */	li r4, 1
/* 80244B1C  81 83 00 00 */	lwz r12, 0(r3)
/* 80244B20  81 8C 00 08 */	lwz r12, 8(r12)
/* 80244B24  7D 89 03 A6 */	mtctr r12
/* 80244B28  4E 80 04 21 */	bctrl 
lbl_80244B2C:
/* 80244B2C  3B A0 00 00 */	li r29, 0
/* 80244B30  93 BE 00 08 */	stw r29, 8(r30)
/* 80244B34  3B 60 00 00 */	li r27, 0
lbl_80244B38:
/* 80244B38  7F 9E EA 14 */	add r28, r30, r29
/* 80244B3C  80 7C 00 0C */	lwz r3, 0xc(r28)
/* 80244B40  28 03 00 00 */	cmplwi r3, 0
/* 80244B44  41 82 00 18 */	beq lbl_80244B5C
/* 80244B48  38 80 00 01 */	li r4, 1
/* 80244B4C  81 83 00 00 */	lwz r12, 0(r3)
/* 80244B50  81 8C 00 08 */	lwz r12, 8(r12)
/* 80244B54  7D 89 03 A6 */	mtctr r12
/* 80244B58  4E 80 04 21 */	bctrl 
lbl_80244B5C:
/* 80244B5C  38 00 00 00 */	li r0, 0
/* 80244B60  90 1C 00 0C */	stw r0, 0xc(r28)
/* 80244B64  80 7C 00 28 */	lwz r3, 0x28(r28)
/* 80244B68  28 03 00 00 */	cmplwi r3, 0
/* 80244B6C  41 82 00 24 */	beq lbl_80244B90
/* 80244B70  41 82 00 18 */	beq lbl_80244B88
/* 80244B74  38 80 00 01 */	li r4, 1
/* 80244B78  81 83 00 00 */	lwz r12, 0(r3)
/* 80244B7C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80244B80  7D 89 03 A6 */	mtctr r12
/* 80244B84  4E 80 04 21 */	bctrl 
lbl_80244B88:
/* 80244B88  38 00 00 00 */	li r0, 0
/* 80244B8C  90 1C 00 28 */	stw r0, 0x28(r28)
lbl_80244B90:
/* 80244B90  3B 7B 00 01 */	addi r27, r27, 1
/* 80244B94  2C 1B 00 02 */	cmpwi r27, 2
/* 80244B98  3B BD 00 04 */	addi r29, r29, 4
/* 80244B9C  41 80 FF 9C */	blt lbl_80244B38
/* 80244BA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80244BA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80244BA8  80 63 5C 6C */	lwz r3, 0x5c6c(r3)
/* 80244BAC  81 83 00 00 */	lwz r12, 0(r3)
/* 80244BB0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80244BB4  7D 89 03 A6 */	mtctr r12
/* 80244BB8  4E 80 04 21 */	bctrl 
/* 80244BBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80244BC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80244BC4  80 63 5C 70 */	lwz r3, 0x5c70(r3)
/* 80244BC8  81 83 00 00 */	lwz r12, 0(r3)
/* 80244BCC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80244BD0  7D 89 03 A6 */	mtctr r12
/* 80244BD4  4E 80 04 21 */	bctrl 
/* 80244BD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80244BDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80244BE0  80 63 5C E4 */	lwz r3, 0x5ce4(r3)
/* 80244BE4  81 83 00 00 */	lwz r12, 0(r3)
/* 80244BE8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80244BEC  7D 89 03 A6 */	mtctr r12
/* 80244BF0  4E 80 04 21 */	bctrl 
/* 80244BF4  7F C3 F3 78 */	mr r3, r30
/* 80244BF8  38 80 00 00 */	li r4, 0
/* 80244BFC  4B FF 75 29 */	bl __dt__14dMsgScrnBase_cFv
/* 80244C00  7F E0 07 35 */	extsh. r0, r31
/* 80244C04  40 81 00 0C */	ble lbl_80244C10
/* 80244C08  7F C3 F3 78 */	mr r3, r30
/* 80244C0C  48 08 A1 31 */	bl __dl__FPv
lbl_80244C10:
/* 80244C10  7F C3 F3 78 */	mr r3, r30
/* 80244C14  39 61 00 20 */	addi r11, r1, 0x20
/* 80244C18  48 11 D6 09 */	bl _restgpr_27
/* 80244C1C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80244C20  7C 08 03 A6 */	mtlr r0
/* 80244C24  38 21 00 20 */	addi r1, r1, 0x20
/* 80244C28  4E 80 00 20 */	blr 
