lbl_802F5E88:
/* 802F5E88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F5E8C  7C 08 02 A6 */	mflr r0
/* 802F5E90  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F5E94  39 61 00 20 */	addi r11, r1, 0x20
/* 802F5E98  48 06 C3 3D */	bl _savegpr_27
/* 802F5E9C  7C 7B 1B 78 */	mr r27, r3
/* 802F5EA0  7C BE 2B 78 */	mr r30, r5
/* 802F5EA4  7C DD 33 78 */	mr r29, r6
/* 802F5EA8  7C FF 3B 78 */	mr r31, r7
/* 802F5EAC  3C 60 80 3D */	lis r3, __vt__7J2DPane@ha /* 0x803CCFD0@ha */
/* 802F5EB0  38 03 CF D0 */	addi r0, r3, __vt__7J2DPane@l /* 0x803CCFD0@l */
/* 802F5EB4  90 1B 00 00 */	stw r0, 0(r27)
/* 802F5EB8  3B 9B 00 DC */	addi r28, r27, 0xdc
/* 802F5EBC  7F 83 E3 78 */	mr r3, r28
/* 802F5EC0  4B FE 60 55 */	bl initiate__10JSUPtrListFv
/* 802F5EC4  38 7C 00 0C */	addi r3, r28, 0xc
/* 802F5EC8  7F 64 DB 78 */	mr r4, r27
/* 802F5ECC  4B FE 5F 31 */	bl __ct__10JSUPtrLinkFPv
/* 802F5ED0  38 00 00 00 */	li r0, 0
/* 802F5ED4  90 1B 00 F8 */	stw r0, 0xf8(r27)
/* 802F5ED8  7F 63 DB 78 */	mr r3, r27
/* 802F5EDC  7F A6 EB 78 */	mr r6, r29
/* 802F5EE0  7F C5 F3 78 */	mr r5, r30
/* 802F5EE4  7F E7 FB 78 */	mr r7, r31
/* 802F5EE8  48 00 00 21 */	bl func_802F5F08
/* 802F5EEC  7F 63 DB 78 */	mr r3, r27
/* 802F5EF0  39 61 00 20 */	addi r11, r1, 0x20
/* 802F5EF4  48 06 C3 2D */	bl _restgpr_27
/* 802F5EF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F5EFC  7C 08 03 A6 */	mtlr r0
/* 802F5F00  38 21 00 20 */	addi r1, r1, 0x20
/* 802F5F04  4E 80 00 20 */	blr 
