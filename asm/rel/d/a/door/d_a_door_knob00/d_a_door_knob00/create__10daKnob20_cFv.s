lbl_8045ED1C:
/* 8045ED1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045ED20  7C 08 02 A6 */	mflr r0
/* 8045ED24  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045ED28  39 61 00 20 */	addi r11, r1, 0x20
/* 8045ED2C  4B F0 34 B1 */	bl _savegpr_29
/* 8045ED30  7C 7F 1B 78 */	mr r31, r3
/* 8045ED34  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8045ED38  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8045ED3C  40 82 00 4C */	bne lbl_8045ED88
/* 8045ED40  7F E0 FB 79 */	or. r0, r31, r31
/* 8045ED44  41 82 00 38 */	beq lbl_8045ED7C
/* 8045ED48  7C 1E 03 78 */	mr r30, r0
/* 8045ED4C  4B BB 9E 19 */	bl __ct__10fopAc_ac_cFv
/* 8045ED50  3B BE 05 7C */	addi r29, r30, 0x57c
/* 8045ED54  3C 60 80 46 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80460A88@ha */
/* 8045ED58  38 03 0A 88 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80460A88@l */
/* 8045ED5C  90 1E 05 7C */	stw r0, 0x57c(r30)
/* 8045ED60  7F A3 EB 78 */	mr r3, r29
/* 8045ED64  38 80 00 00 */	li r4, 0
/* 8045ED68  4B EC 96 95 */	bl init__12J3DFrameCtrlFs
/* 8045ED6C  38 00 00 00 */	li r0, 0
/* 8045ED70  90 1D 00 18 */	stw r0, 0x18(r29)
/* 8045ED74  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 8045ED78  4B DE B1 89 */	bl __ct__10dMsgFlow_cFv
lbl_8045ED7C:
/* 8045ED7C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8045ED80  60 00 00 08 */	ori r0, r0, 8
/* 8045ED84  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8045ED88:
/* 8045ED88  7F E3 FB 78 */	mr r3, r31
/* 8045ED8C  4B FF FA FD */	bl getAlwaysArcName__10daKnob20_cFv
/* 8045ED90  7C 64 1B 78 */	mr r4, r3
/* 8045ED94  38 7F 05 70 */	addi r3, r31, 0x570
/* 8045ED98  4B BC E1 25 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8045ED9C  2C 03 00 04 */	cmpwi r3, 4
/* 8045EDA0  41 82 00 08 */	beq lbl_8045EDA8
/* 8045EDA4  48 00 00 58 */	b lbl_8045EDFC
lbl_8045EDA8:
/* 8045EDA8  7F E3 FB 78 */	mr r3, r31
/* 8045EDAC  4B FF FA ED */	bl getEvArcName__10daKnob20_cFv
/* 8045EDB0  7C 64 1B 78 */	mr r4, r3
/* 8045EDB4  38 7F 05 68 */	addi r3, r31, 0x568
/* 8045EDB8  4B BC E1 05 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8045EDBC  2C 03 00 04 */	cmpwi r3, 4
/* 8045EDC0  41 82 00 08 */	beq lbl_8045EDC8
/* 8045EDC4  48 00 00 38 */	b lbl_8045EDFC
lbl_8045EDC8:
/* 8045EDC8  7F E3 FB 78 */	mr r3, r31
/* 8045EDCC  3C 80 80 46 */	lis r4, CheckCreateHeap__FP10fopAc_ac_c@ha /* 0x8045E940@ha */
/* 8045EDD0  38 84 E9 40 */	addi r4, r4, CheckCreateHeap__FP10fopAc_ac_c@l /* 0x8045E940@l */
/* 8045EDD4  3C A0 80 00 */	lis r5, 0x8000 /* 0x80003800@ha */
/* 8045EDD8  38 A5 38 00 */	addi r5, r5, 0x3800 /* 0x80003800@l */
/* 8045EDDC  4B BB B6 D5 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8045EDE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8045EDE4  40 82 00 0C */	bne lbl_8045EDF0
/* 8045EDE8  38 60 00 05 */	li r3, 5
/* 8045EDEC  48 00 00 10 */	b lbl_8045EDFC
lbl_8045EDF0:
/* 8045EDF0  7F E3 FB 78 */	mr r3, r31
/* 8045EDF4  4B FF FE 51 */	bl CreateInit__10daKnob20_cFv
/* 8045EDF8  38 60 00 04 */	li r3, 4
lbl_8045EDFC:
/* 8045EDFC  39 61 00 20 */	addi r11, r1, 0x20
/* 8045EE00  4B F0 34 29 */	bl _restgpr_29
/* 8045EE04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045EE08  7C 08 03 A6 */	mtlr r0
/* 8045EE0C  38 21 00 20 */	addi r1, r1, 0x20
/* 8045EE10  4E 80 00 20 */	blr 
