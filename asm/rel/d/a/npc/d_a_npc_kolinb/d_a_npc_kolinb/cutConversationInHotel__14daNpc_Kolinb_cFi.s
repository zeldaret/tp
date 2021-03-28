lbl_80A46BC0:
/* 80A46BC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A46BC4  7C 08 02 A6 */	mflr r0
/* 80A46BC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A46BCC  39 61 00 20 */	addi r11, r1, 0x20
/* 80A46BD0  4B 91 B6 08 */	b _savegpr_28
/* 80A46BD4  7C 9C 23 78 */	mr r28, r4
/* 80A46BD8  3B C0 00 00 */	li r30, 0
/* 80A46BDC  3B A0 FF FF */	li r29, -1
/* 80A46BE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A46BE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A46BE8  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80A46BEC  7F E3 FB 78 */	mr r3, r31
/* 80A46BF0  3C A0 80 A5 */	lis r5, struct_80A487DC+0x0@ha
/* 80A46BF4  38 A5 87 DC */	addi r5, r5, struct_80A487DC+0x0@l
/* 80A46BF8  38 A5 00 71 */	addi r5, r5, 0x71
/* 80A46BFC  38 C0 00 03 */	li r6, 3
/* 80A46C00  4B 60 14 EC */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A46C04  28 03 00 00 */	cmplwi r3, 0
/* 80A46C08  41 82 00 08 */	beq lbl_80A46C10
/* 80A46C0C  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80A46C10:
/* 80A46C10  7F E3 FB 78 */	mr r3, r31
/* 80A46C14  7F 84 E3 78 */	mr r4, r28
/* 80A46C18  4B 60 11 34 */	b getIsAddvance__16dEvent_manager_cFi
/* 80A46C1C  2C 1D 00 00 */	cmpwi r29, 0
/* 80A46C20  41 82 00 08 */	beq lbl_80A46C28
/* 80A46C24  48 00 00 08 */	b lbl_80A46C2C
lbl_80A46C28:
/* 80A46C28  3B C0 00 01 */	li r30, 1
lbl_80A46C2C:
/* 80A46C2C  7F C3 F3 78 */	mr r3, r30
/* 80A46C30  39 61 00 20 */	addi r11, r1, 0x20
/* 80A46C34  4B 91 B5 F0 */	b _restgpr_28
/* 80A46C38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A46C3C  7C 08 03 A6 */	mtlr r0
/* 80A46C40  38 21 00 20 */	addi r1, r1, 0x20
/* 80A46C44  4E 80 00 20 */	blr 
