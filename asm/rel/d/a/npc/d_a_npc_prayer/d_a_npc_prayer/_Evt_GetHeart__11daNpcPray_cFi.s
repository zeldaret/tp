lbl_80AB4BFC:
/* 80AB4BFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AB4C00  7C 08 02 A6 */	mflr r0
/* 80AB4C04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AB4C08  39 61 00 20 */	addi r11, r1, 0x20
/* 80AB4C0C  4B 8A D5 D0 */	b _savegpr_29
/* 80AB4C10  7C 7D 1B 78 */	mr r29, r3
/* 80AB4C14  7C 9E 23 78 */	mr r30, r4
/* 80AB4C18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AB4C1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AB4C20  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80AB4C24  38 00 FF FF */	li r0, -1
/* 80AB4C28  90 01 00 08 */	stw r0, 8(r1)
/* 80AB4C2C  7F E3 FB 78 */	mr r3, r31
/* 80AB4C30  3C A0 80 AB */	lis r5, struct_80AB5964+0x0@ha
/* 80AB4C34  38 A5 59 64 */	addi r5, r5, struct_80AB5964+0x0@l
/* 80AB4C38  38 A5 00 1A */	addi r5, r5, 0x1a
/* 80AB4C3C  38 C0 00 03 */	li r6, 3
/* 80AB4C40  4B 59 34 AC */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80AB4C44  28 03 00 00 */	cmplwi r3, 0
/* 80AB4C48  41 82 00 10 */	beq lbl_80AB4C58
/* 80AB4C4C  80 03 00 00 */	lwz r0, 0(r3)
/* 80AB4C50  90 01 00 08 */	stw r0, 8(r1)
/* 80AB4C54  48 00 00 0C */	b lbl_80AB4C60
lbl_80AB4C58:
/* 80AB4C58  38 60 00 01 */	li r3, 1
/* 80AB4C5C  48 00 00 30 */	b lbl_80AB4C8C
lbl_80AB4C60:
/* 80AB4C60  7F E3 FB 78 */	mr r3, r31
/* 80AB4C64  7F C4 F3 78 */	mr r4, r30
/* 80AB4C68  4B 59 30 E4 */	b getIsAddvance__16dEvent_manager_cFi
/* 80AB4C6C  2C 03 00 00 */	cmpwi r3, 0
/* 80AB4C70  41 82 00 10 */	beq lbl_80AB4C80
/* 80AB4C74  7F A3 EB 78 */	mr r3, r29
/* 80AB4C78  38 81 00 08 */	addi r4, r1, 8
/* 80AB4C7C  48 00 00 29 */	bl _Evt_GetHeart_CutInit__11daNpcPray_cFRCi
lbl_80AB4C80:
/* 80AB4C80  7F A3 EB 78 */	mr r3, r29
/* 80AB4C84  38 81 00 08 */	addi r4, r1, 8
/* 80AB4C88  48 00 00 AD */	bl _Evt_GetHeart_CutMain__11daNpcPray_cFRCi
lbl_80AB4C8C:
/* 80AB4C8C  39 61 00 20 */	addi r11, r1, 0x20
/* 80AB4C90  4B 8A D5 98 */	b _restgpr_29
/* 80AB4C94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AB4C98  7C 08 03 A6 */	mtlr r0
/* 80AB4C9C  38 21 00 20 */	addi r1, r1, 0x20
/* 80AB4CA0  4E 80 00 20 */	blr 
