lbl_80557BD4:
/* 80557BD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80557BD8  7C 08 02 A6 */	mflr r0
/* 80557BDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80557BE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80557BE4  4B E0 A5 F4 */	b _savegpr_28
/* 80557BE8  7C 7C 1B 78 */	mr r28, r3
/* 80557BEC  7C 9D 23 78 */	mr r29, r4
/* 80557BF0  3B C0 FF FF */	li r30, -1
/* 80557BF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80557BF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80557BFC  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80557C00  7F E3 FB 78 */	mr r3, r31
/* 80557C04  3C A0 80 56 */	lis r5, struct_8055A77C+0x0@ha
/* 80557C08  38 A5 A7 7C */	addi r5, r5, struct_8055A77C+0x0@l
/* 80557C0C  38 A5 01 39 */	addi r5, r5, 0x139
/* 80557C10  38 C0 00 03 */	li r6, 3
/* 80557C14  4B AF 04 D8 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80557C18  28 03 00 00 */	cmplwi r3, 0
/* 80557C1C  41 82 00 08 */	beq lbl_80557C24
/* 80557C20  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80557C24:
/* 80557C24  7F E3 FB 78 */	mr r3, r31
/* 80557C28  7F A4 EB 78 */	mr r4, r29
/* 80557C2C  4B AF 01 20 */	b getIsAddvance__16dEvent_manager_cFi
/* 80557C30  2C 1E 00 00 */	cmpwi r30, 0
/* 80557C34  41 82 00 08 */	beq lbl_80557C3C
/* 80557C38  48 00 00 18 */	b lbl_80557C50
lbl_80557C3C:
/* 80557C3C  7F 83 E3 78 */	mr r3, r28
/* 80557C40  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 80557C44  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80557C48  7D 89 03 A6 */	mtctr r12
/* 80557C4C  4E 80 04 21 */	bctrl 
lbl_80557C50:
/* 80557C50  38 60 00 00 */	li r3, 0
/* 80557C54  39 61 00 20 */	addi r11, r1, 0x20
/* 80557C58  4B E0 A5 CC */	b _restgpr_28
/* 80557C5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80557C60  7C 08 03 A6 */	mtlr r0
/* 80557C64  38 21 00 20 */	addi r1, r1, 0x20
/* 80557C68  4E 80 00 20 */	blr 
