lbl_80B4FDD8:
/* 80B4FDD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B4FDDC  7C 08 02 A6 */	mflr r0
/* 80B4FDE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B4FDE4  39 61 00 20 */	addi r11, r1, 0x20
/* 80B4FDE8  4B 81 23 EC */	b _savegpr_27
/* 80B4FDEC  7C 7B 1B 78 */	mr r27, r3
/* 80B4FDF0  7C 9C 23 78 */	mr r28, r4
/* 80B4FDF4  3B C0 00 00 */	li r30, 0
/* 80B4FDF8  3B A0 FF FF */	li r29, -1
/* 80B4FDFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B4FE00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B4FE04  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80B4FE08  7F E3 FB 78 */	mr r3, r31
/* 80B4FE0C  3C A0 80 B5 */	lis r5, struct_80B52408+0x0@ha
/* 80B4FE10  38 A5 24 08 */	addi r5, r5, struct_80B52408+0x0@l
/* 80B4FE14  38 A5 00 AA */	addi r5, r5, 0xaa
/* 80B4FE18  38 C0 00 03 */	li r6, 3
/* 80B4FE1C  4B 4F 82 D0 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B4FE20  28 03 00 00 */	cmplwi r3, 0
/* 80B4FE24  41 82 00 08 */	beq lbl_80B4FE2C
/* 80B4FE28  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80B4FE2C:
/* 80B4FE2C  7F E3 FB 78 */	mr r3, r31
/* 80B4FE30  7F 84 E3 78 */	mr r4, r28
/* 80B4FE34  4B 4F 7F 18 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B4FE38  2C 1D 00 00 */	cmpwi r29, 0
/* 80B4FE3C  41 82 00 08 */	beq lbl_80B4FE44
/* 80B4FE40  48 00 00 1C */	b lbl_80B4FE5C
lbl_80B4FE44:
/* 80B4FE44  7F 63 DB 78 */	mr r3, r27
/* 80B4FE48  81 9B 0E 3C */	lwz r12, 0xe3c(r27)
/* 80B4FE4C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80B4FE50  7D 89 03 A6 */	mtctr r12
/* 80B4FE54  4E 80 04 21 */	bctrl 
/* 80B4FE58  3B C0 00 01 */	li r30, 1
lbl_80B4FE5C:
/* 80B4FE5C  7F C3 F3 78 */	mr r3, r30
/* 80B4FE60  39 61 00 20 */	addi r11, r1, 0x20
/* 80B4FE64  4B 81 23 BC */	b _restgpr_27
/* 80B4FE68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B4FE6C  7C 08 03 A6 */	mtlr r0
/* 80B4FE70  38 21 00 20 */	addi r1, r1, 0x20
/* 80B4FE74  4E 80 00 20 */	blr 
