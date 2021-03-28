lbl_80A1FD64:
/* 80A1FD64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A1FD68  7C 08 02 A6 */	mflr r0
/* 80A1FD6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A1FD70  39 61 00 20 */	addi r11, r1, 0x20
/* 80A1FD74  4B 94 24 64 */	b _savegpr_28
/* 80A1FD78  7C 7F 1B 78 */	mr r31, r3
/* 80A1FD7C  7C 9C 23 78 */	mr r28, r4
/* 80A1FD80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A1FD84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A1FD88  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80A1FD8C  38 00 FF FF */	li r0, -1
/* 80A1FD90  90 01 00 08 */	stw r0, 8(r1)
/* 80A1FD94  7F C3 F3 78 */	mr r3, r30
/* 80A1FD98  3C A0 80 A2 */	lis r5, struct_80A21358+0x0@ha
/* 80A1FD9C  38 A5 13 58 */	addi r5, r5, struct_80A21358+0x0@l
/* 80A1FDA0  38 A5 00 65 */	addi r5, r5, 0x65
/* 80A1FDA4  38 C0 00 03 */	li r6, 3
/* 80A1FDA8  4B 62 83 44 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A1FDAC  28 03 00 00 */	cmplwi r3, 0
/* 80A1FDB0  41 82 00 10 */	beq lbl_80A1FDC0
/* 80A1FDB4  80 03 00 00 */	lwz r0, 0(r3)
/* 80A1FDB8  90 01 00 08 */	stw r0, 8(r1)
/* 80A1FDBC  48 00 00 0C */	b lbl_80A1FDC8
lbl_80A1FDC0:
/* 80A1FDC0  38 60 00 01 */	li r3, 1
/* 80A1FDC4  48 00 00 90 */	b lbl_80A1FE54
lbl_80A1FDC8:
/* 80A1FDC8  7F C3 F3 78 */	mr r3, r30
/* 80A1FDCC  7F 84 E3 78 */	mr r4, r28
/* 80A1FDD0  4B 62 7F 7C */	b getIsAddvance__16dEvent_manager_cFi
/* 80A1FDD4  2C 03 00 00 */	cmpwi r3, 0
/* 80A1FDD8  41 82 00 10 */	beq lbl_80A1FDE8
/* 80A1FDDC  7F E3 FB 78 */	mr r3, r31
/* 80A1FDE0  38 81 00 08 */	addi r4, r1, 8
/* 80A1FDE4  48 00 00 89 */	bl _Evt_Kasi_Cheer_CutInit__15daNpcKasiHana_cFRCi
lbl_80A1FDE8:
/* 80A1FDE8  3B A0 FF FF */	li r29, -1
/* 80A1FDEC  38 60 01 22 */	li r3, 0x122
/* 80A1FDF0  4B 73 58 44 */	b daNpcF_chkEvtBit__FUl
/* 80A1FDF4  2C 03 00 00 */	cmpwi r3, 0
/* 80A1FDF8  41 82 00 24 */	beq lbl_80A1FE1C
/* 80A1FDFC  7F C3 F3 78 */	mr r3, r30
/* 80A1FE00  7F 84 E3 78 */	mr r4, r28
/* 80A1FE04  3C A0 80 A2 */	lis r5, struct_80A21358+0x0@ha
/* 80A1FE08  38 A5 13 58 */	addi r5, r5, struct_80A21358+0x0@l
/* 80A1FE0C  38 A5 00 6B */	addi r5, r5, 0x6b
/* 80A1FE10  38 C0 00 03 */	li r6, 3
/* 80A1FE14  4B 62 82 D8 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A1FE18  48 00 00 20 */	b lbl_80A1FE38
lbl_80A1FE1C:
/* 80A1FE1C  7F C3 F3 78 */	mr r3, r30
/* 80A1FE20  7F 84 E3 78 */	mr r4, r28
/* 80A1FE24  3C A0 80 A2 */	lis r5, struct_80A21358+0x0@ha
/* 80A1FE28  38 A5 13 58 */	addi r5, r5, struct_80A21358+0x0@l
/* 80A1FE2C  38 A5 00 72 */	addi r5, r5, 0x72
/* 80A1FE30  38 C0 00 03 */	li r6, 3
/* 80A1FE34  4B 62 82 B8 */	b getMySubstanceP__16dEvent_manager_cFiPCci
lbl_80A1FE38:
/* 80A1FE38  28 03 00 00 */	cmplwi r3, 0
/* 80A1FE3C  41 82 00 08 */	beq lbl_80A1FE44
/* 80A1FE40  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80A1FE44:
/* 80A1FE44  7F E3 FB 78 */	mr r3, r31
/* 80A1FE48  38 81 00 08 */	addi r4, r1, 8
/* 80A1FE4C  7F A5 EB 78 */	mr r5, r29
/* 80A1FE50  48 00 01 29 */	bl _Evt_Kasi_Cheer_CutMain__15daNpcKasiHana_cFRCii
lbl_80A1FE54:
/* 80A1FE54  39 61 00 20 */	addi r11, r1, 0x20
/* 80A1FE58  4B 94 23 CC */	b _restgpr_28
/* 80A1FE5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A1FE60  7C 08 03 A6 */	mtlr r0
/* 80A1FE64  38 21 00 20 */	addi r1, r1, 0x20
/* 80A1FE68  4E 80 00 20 */	blr 
