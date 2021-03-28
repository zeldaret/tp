lbl_80A1F638:
/* 80A1F638  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A1F63C  7C 08 02 A6 */	mflr r0
/* 80A1F640  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A1F644  39 61 00 20 */	addi r11, r1, 0x20
/* 80A1F648  4B 94 2B 90 */	b _savegpr_28
/* 80A1F64C  7C 7F 1B 78 */	mr r31, r3
/* 80A1F650  7C 9C 23 78 */	mr r28, r4
/* 80A1F654  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A1F658  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A1F65C  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A1F660  38 00 FF FF */	li r0, -1
/* 80A1F664  90 01 00 08 */	stw r0, 8(r1)
/* 80A1F668  7F C3 F3 78 */	mr r3, r30
/* 80A1F66C  3C A0 80 A2 */	lis r5, struct_80A21358+0x0@ha
/* 80A1F670  38 A5 13 58 */	addi r5, r5, struct_80A21358+0x0@l
/* 80A1F674  38 A5 00 65 */	addi r5, r5, 0x65
/* 80A1F678  38 C0 00 03 */	li r6, 3
/* 80A1F67C  4B 62 8A 70 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A1F680  28 03 00 00 */	cmplwi r3, 0
/* 80A1F684  41 82 00 10 */	beq lbl_80A1F694
/* 80A1F688  80 03 00 00 */	lwz r0, 0(r3)
/* 80A1F68C  90 01 00 08 */	stw r0, 8(r1)
/* 80A1F690  48 00 00 0C */	b lbl_80A1F69C
lbl_80A1F694:
/* 80A1F694  38 60 00 01 */	li r3, 1
/* 80A1F698  48 00 00 90 */	b lbl_80A1F728
lbl_80A1F69C:
/* 80A1F69C  7F C3 F3 78 */	mr r3, r30
/* 80A1F6A0  7F 84 E3 78 */	mr r4, r28
/* 80A1F6A4  4B 62 86 A8 */	b getIsAddvance__16dEvent_manager_cFi
/* 80A1F6A8  2C 03 00 00 */	cmpwi r3, 0
/* 80A1F6AC  41 82 00 10 */	beq lbl_80A1F6BC
/* 80A1F6B0  7F E3 FB 78 */	mr r3, r31
/* 80A1F6B4  38 81 00 08 */	addi r4, r1, 8
/* 80A1F6B8  48 00 00 89 */	bl _Evt_Kasi_Talk_CutInit__15daNpcKasiHana_cFRCi
lbl_80A1F6BC:
/* 80A1F6BC  3B A0 FF FF */	li r29, -1
/* 80A1F6C0  38 60 01 21 */	li r3, 0x121
/* 80A1F6C4  4B 73 5F 70 */	b daNpcF_chkEvtBit__FUl
/* 80A1F6C8  2C 03 00 00 */	cmpwi r3, 0
/* 80A1F6CC  41 82 00 24 */	beq lbl_80A1F6F0
/* 80A1F6D0  7F C3 F3 78 */	mr r3, r30
/* 80A1F6D4  7F 84 E3 78 */	mr r4, r28
/* 80A1F6D8  3C A0 80 A2 */	lis r5, struct_80A21358+0x0@ha
/* 80A1F6DC  38 A5 13 58 */	addi r5, r5, struct_80A21358+0x0@l
/* 80A1F6E0  38 A5 00 6B */	addi r5, r5, 0x6b
/* 80A1F6E4  38 C0 00 03 */	li r6, 3
/* 80A1F6E8  4B 62 8A 04 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A1F6EC  48 00 00 20 */	b lbl_80A1F70C
lbl_80A1F6F0:
/* 80A1F6F0  7F C3 F3 78 */	mr r3, r30
/* 80A1F6F4  7F 84 E3 78 */	mr r4, r28
/* 80A1F6F8  3C A0 80 A2 */	lis r5, struct_80A21358+0x0@ha
/* 80A1F6FC  38 A5 13 58 */	addi r5, r5, struct_80A21358+0x0@l
/* 80A1F700  38 A5 00 72 */	addi r5, r5, 0x72
/* 80A1F704  38 C0 00 03 */	li r6, 3
/* 80A1F708  4B 62 89 E4 */	b getMySubstanceP__16dEvent_manager_cFiPCci
lbl_80A1F70C:
/* 80A1F70C  28 03 00 00 */	cmplwi r3, 0
/* 80A1F710  41 82 00 08 */	beq lbl_80A1F718
/* 80A1F714  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80A1F718:
/* 80A1F718  7F E3 FB 78 */	mr r3, r31
/* 80A1F71C  38 81 00 08 */	addi r4, r1, 8
/* 80A1F720  7F A5 EB 78 */	mr r5, r29
/* 80A1F724  48 00 01 3D */	bl _Evt_Kasi_Talk_CutMain__15daNpcKasiHana_cFRCii
lbl_80A1F728:
/* 80A1F728  39 61 00 20 */	addi r11, r1, 0x20
/* 80A1F72C  4B 94 2A F8 */	b _restgpr_28
/* 80A1F730  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A1F734  7C 08 03 A6 */	mtlr r0
/* 80A1F738  38 21 00 20 */	addi r1, r1, 0x20
/* 80A1F73C  4E 80 00 20 */	blr 
