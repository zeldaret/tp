lbl_800C1E0C:
/* 800C1E0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C1E10  7C 08 02 A6 */	mflr r0
/* 800C1E14  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C1E18  39 61 00 20 */	addi r11, r1, 0x20
/* 800C1E1C  48 2A 03 BD */	bl _savegpr_28
/* 800C1E20  7C 7D 1B 78 */	mr r29, r3
/* 800C1E24  7C 9E 23 78 */	mr r30, r4
/* 800C1E28  80 62 98 D8 */	lwz r3, lit_72043(r2)
/* 800C1E2C  80 02 98 DC */	lwz r0, data_804532DC(r2)
/* 800C1E30  90 61 00 08 */	stw r3, 8(r1)
/* 800C1E34  90 01 00 0C */	stw r0, 0xc(r1)
/* 800C1E38  54 80 10 3A */	slwi r0, r4, 2
/* 800C1E3C  38 61 00 08 */	addi r3, r1, 8
/* 800C1E40  7F E3 00 2E */	lwzx r31, r3, r0
/* 800C1E44  80 7D 06 4C */	lwz r3, 0x64c(r29)
/* 800C1E48  7F EC FB 78 */	mr r12, r31
/* 800C1E4C  7D 89 03 A6 */	mtctr r12
/* 800C1E50  4E 80 04 21 */	bctrl 
/* 800C1E54  80 7D 06 B8 */	lwz r3, 0x6b8(r29)
/* 800C1E58  80 63 00 04 */	lwz r3, 4(r3)
/* 800C1E5C  7F EC FB 78 */	mr r12, r31
/* 800C1E60  7D 89 03 A6 */	mtctr r12
/* 800C1E64  4E 80 04 21 */	bctrl 
/* 800C1E68  80 7D 06 78 */	lwz r3, 0x678(r29)
/* 800C1E6C  80 63 00 04 */	lwz r3, 4(r3)
/* 800C1E70  7F EC FB 78 */	mr r12, r31
/* 800C1E74  7D 89 03 A6 */	mtctr r12
/* 800C1E78  4E 80 04 21 */	bctrl 
/* 800C1E7C  80 7D 06 BC */	lwz r3, 0x6bc(r29)
/* 800C1E80  80 63 00 04 */	lwz r3, 4(r3)
/* 800C1E84  7F EC FB 78 */	mr r12, r31
/* 800C1E88  7D 89 03 A6 */	mtctr r12
/* 800C1E8C  4E 80 04 21 */	bctrl 
/* 800C1E90  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 800C1E94  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800C1E98  41 82 00 1C */	beq lbl_800C1EB4
/* 800C1E9C  80 7D 07 8C */	lwz r3, 0x78c(r29)
/* 800C1EA0  80 63 00 04 */	lwz r3, 4(r3)
/* 800C1EA4  7F EC FB 78 */	mr r12, r31
/* 800C1EA8  7D 89 03 A6 */	mtctr r12
/* 800C1EAC  4E 80 04 21 */	bctrl 
/* 800C1EB0  48 00 00 54 */	b lbl_800C1F04
lbl_800C1EB4:
/* 800C1EB4  80 7D 06 54 */	lwz r3, 0x654(r29)
/* 800C1EB8  80 63 00 04 */	lwz r3, 4(r3)
/* 800C1EBC  7F EC FB 78 */	mr r12, r31
/* 800C1EC0  7D 89 03 A6 */	mtctr r12
/* 800C1EC4  4E 80 04 21 */	bctrl 
/* 800C1EC8  80 7D 06 58 */	lwz r3, 0x658(r29)
/* 800C1ECC  80 63 00 04 */	lwz r3, 4(r3)
/* 800C1ED0  7F EC FB 78 */	mr r12, r31
/* 800C1ED4  7D 89 03 A6 */	mtctr r12
/* 800C1ED8  4E 80 04 21 */	bctrl 
/* 800C1EDC  80 7D 06 5C */	lwz r3, 0x65c(r29)
/* 800C1EE0  80 63 00 04 */	lwz r3, 4(r3)
/* 800C1EE4  7F EC FB 78 */	mr r12, r31
/* 800C1EE8  7D 89 03 A6 */	mtctr r12
/* 800C1EEC  4E 80 04 21 */	bctrl 
/* 800C1EF0  80 7D 07 84 */	lwz r3, 0x784(r29)
/* 800C1EF4  80 63 00 04 */	lwz r3, 4(r3)
/* 800C1EF8  7F EC FB 78 */	mr r12, r31
/* 800C1EFC  7D 89 03 A6 */	mtctr r12
/* 800C1F00  4E 80 04 21 */	bctrl 
lbl_800C1F04:
/* 800C1F04  2C 1E 00 01 */	cmpwi r30, 1
/* 800C1F08  40 82 00 4C */	bne lbl_800C1F54
/* 800C1F0C  3B 80 00 00 */	li r28, 0
/* 800C1F10  3B C0 00 00 */	li r30, 0
/* 800C1F14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C1F18  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_800C1F1C:
/* 800C1F1C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 800C1F20  38 63 02 10 */	addi r3, r3, 0x210
/* 800C1F24  38 1E 32 40 */	addi r0, r30, 0x3240
/* 800C1F28  7C 9D 00 2E */	lwzx r4, r29, r0
/* 800C1F2C  4B F8 99 ED */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 800C1F30  28 03 00 00 */	cmplwi r3, 0
/* 800C1F34  41 82 00 10 */	beq lbl_800C1F44
/* 800C1F38  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 800C1F3C  60 00 00 04 */	ori r0, r0, 4
/* 800C1F40  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_800C1F44:
/* 800C1F44  3B 9C 00 01 */	addi r28, r28, 1
/* 800C1F48  2C 1C 00 06 */	cmpwi r28, 6
/* 800C1F4C  3B DE 00 04 */	addi r30, r30, 4
/* 800C1F50  41 80 FF CC */	blt lbl_800C1F1C
lbl_800C1F54:
/* 800C1F54  39 61 00 20 */	addi r11, r1, 0x20
/* 800C1F58  48 2A 02 CD */	bl _restgpr_28
/* 800C1F5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C1F60  7C 08 03 A6 */	mtlr r0
/* 800C1F64  38 21 00 20 */	addi r1, r1, 0x20
/* 800C1F68  4E 80 00 20 */	blr 
