lbl_80557E38:
/* 80557E38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80557E3C  7C 08 02 A6 */	mflr r0
/* 80557E40  90 01 00 24 */	stw r0, 0x24(r1)
/* 80557E44  39 61 00 20 */	addi r11, r1, 0x20
/* 80557E48  4B E0 A3 90 */	b _savegpr_28
/* 80557E4C  7C 7C 1B 78 */	mr r28, r3
/* 80557E50  7C 9D 23 78 */	mr r29, r4
/* 80557E54  3B C0 FF FF */	li r30, -1
/* 80557E58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80557E5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80557E60  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80557E64  7F E3 FB 78 */	mr r3, r31
/* 80557E68  3C A0 80 56 */	lis r5, struct_8055A77C+0x0@ha
/* 80557E6C  38 A5 A7 7C */	addi r5, r5, struct_8055A77C+0x0@l
/* 80557E70  38 A5 01 39 */	addi r5, r5, 0x139
/* 80557E74  38 C0 00 03 */	li r6, 3
/* 80557E78  4B AF 02 74 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80557E7C  28 03 00 00 */	cmplwi r3, 0
/* 80557E80  41 82 00 08 */	beq lbl_80557E88
/* 80557E84  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80557E88:
/* 80557E88  7F E3 FB 78 */	mr r3, r31
/* 80557E8C  7F A4 EB 78 */	mr r4, r29
/* 80557E90  4B AE FE BC */	b getIsAddvance__16dEvent_manager_cFi
/* 80557E94  2C 1E 00 00 */	cmpwi r30, 0
/* 80557E98  41 82 00 08 */	beq lbl_80557EA0
/* 80557E9C  48 00 00 20 */	b lbl_80557EBC
lbl_80557EA0:
/* 80557EA0  7F 83 E3 78 */	mr r3, r28
/* 80557EA4  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 80557EA8  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80557EAC  7D 89 03 A6 */	mtctr r12
/* 80557EB0  4E 80 04 21 */	bctrl 
/* 80557EB4  38 60 00 01 */	li r3, 1
/* 80557EB8  48 00 00 08 */	b lbl_80557EC0
lbl_80557EBC:
/* 80557EBC  38 60 00 01 */	li r3, 1
lbl_80557EC0:
/* 80557EC0  39 61 00 20 */	addi r11, r1, 0x20
/* 80557EC4  4B E0 A3 60 */	b _restgpr_28
/* 80557EC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80557ECC  7C 08 03 A6 */	mtlr r0
/* 80557ED0  38 21 00 20 */	addi r1, r1, 0x20
/* 80557ED4  4E 80 00 20 */	blr 
