lbl_802F5D40:
/* 802F5D40  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802F5D44  7C 08 02 A6 */	mflr r0
/* 802F5D48  90 01 00 34 */	stw r0, 0x34(r1)
/* 802F5D4C  39 61 00 30 */	addi r11, r1, 0x30
/* 802F5D50  48 06 C4 7D */	bl _savegpr_25
/* 802F5D54  7C 79 1B 78 */	mr r25, r3
/* 802F5D58  7C 9B 23 78 */	mr r27, r4
/* 802F5D5C  7C BC 2B 78 */	mr r28, r5
/* 802F5D60  7C FE 3B 78 */	mr r30, r7
/* 802F5D64  7D 1D 43 78 */	mr r29, r8
/* 802F5D68  7D 3F 4B 78 */	mr r31, r9
/* 802F5D6C  3C 60 80 3D */	lis r3, __vt__7J2DPane@ha
/* 802F5D70  38 03 CF D0 */	addi r0, r3, __vt__7J2DPane@l
/* 802F5D74  90 19 00 00 */	stw r0, 0(r25)
/* 802F5D78  3B 59 00 DC */	addi r26, r25, 0xdc
/* 802F5D7C  7F 43 D3 78 */	mr r3, r26
/* 802F5D80  4B FE 61 95 */	bl initiate__10JSUPtrListFv
/* 802F5D84  38 7A 00 0C */	addi r3, r26, 0xc
/* 802F5D88  7F 24 CB 78 */	mr r4, r25
/* 802F5D8C  4B FE 60 71 */	bl __ct__10JSUPtrLinkFPv
/* 802F5D90  38 00 00 00 */	li r0, 0
/* 802F5D94  90 19 00 F8 */	stw r0, 0xf8(r25)
/* 802F5D98  7F 23 CB 78 */	mr r3, r25
/* 802F5D9C  7F 64 DB 78 */	mr r4, r27
/* 802F5DA0  7F 85 E3 78 */	mr r5, r28
/* 802F5DA4  7F A8 EB 78 */	mr r8, r29
/* 802F5DA8  7F C7 F3 78 */	mr r7, r30
/* 802F5DAC  7F E9 FB 78 */	mr r9, r31
/* 802F5DB0  48 00 00 21 */	bl func_802F5DD0
/* 802F5DB4  7F 23 CB 78 */	mr r3, r25
/* 802F5DB8  39 61 00 30 */	addi r11, r1, 0x30
/* 802F5DBC  48 06 C4 5D */	bl _restgpr_25
/* 802F5DC0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802F5DC4  7C 08 03 A6 */	mtlr r0
/* 802F5DC8  38 21 00 30 */	addi r1, r1, 0x30
/* 802F5DCC  4E 80 00 20 */	blr 
