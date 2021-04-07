lbl_80CBDED8:
/* 80CBDED8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CBDEDC  7C 08 02 A6 */	mflr r0
/* 80CBDEE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CBDEE4  39 61 00 20 */	addi r11, r1, 0x20
/* 80CBDEE8  4B 6A 42 ED */	bl _savegpr_27
/* 80CBDEEC  7C 7B 1B 78 */	mr r27, r3
/* 80CBDEF0  3C 60 80 CC */	lis r3, d_a_obj_rock__stringBase0@ha /* 0x80CBE7E4@ha */
/* 80CBDEF4  38 63 E7 E4 */	addi r3, r3, d_a_obj_rock__stringBase0@l /* 0x80CBE7E4@l */
/* 80CBDEF8  38 80 00 03 */	li r4, 3
/* 80CBDEFC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CBDF00  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CBDF04  3C A5 00 02 */	addis r5, r5, 2
/* 80CBDF08  38 C0 00 80 */	li r6, 0x80
/* 80CBDF0C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80CBDF10  4B 37 E3 DD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CBDF14  7C 7D 1B 78 */	mr r29, r3
/* 80CBDF18  3B 80 00 00 */	li r28, 0
/* 80CBDF1C  3B E0 00 00 */	li r31, 0
/* 80CBDF20  3F C0 11 00 */	lis r30, 0x1100
/* 80CBDF24  48 00 00 38 */	b lbl_80CBDF5C
lbl_80CBDF28:
/* 80CBDF28  7F A3 EB 78 */	mr r3, r29
/* 80CBDF2C  3C 80 00 02 */	lis r4, 2
/* 80CBDF30  38 BE 00 84 */	addi r5, r30, 0x84
/* 80CBDF34  4B 35 6D 21 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CBDF38  38 1F 05 78 */	addi r0, r31, 0x578
/* 80CBDF3C  7C 7B 01 2E */	stwx r3, r27, r0
/* 80CBDF40  7C 1B 00 2E */	lwzx r0, r27, r0
/* 80CBDF44  28 00 00 00 */	cmplwi r0, 0
/* 80CBDF48  40 82 00 0C */	bne lbl_80CBDF54
/* 80CBDF4C  38 60 00 00 */	li r3, 0
/* 80CBDF50  48 00 00 1C */	b lbl_80CBDF6C
lbl_80CBDF54:
/* 80CBDF54  3B 9C 00 01 */	addi r28, r28, 1
/* 80CBDF58  3B FF 01 60 */	addi r31, r31, 0x160
lbl_80CBDF5C:
/* 80CBDF5C  80 1B 1B 78 */	lwz r0, 0x1b78(r27)
/* 80CBDF60  7C 1C 00 00 */	cmpw r28, r0
/* 80CBDF64  41 80 FF C4 */	blt lbl_80CBDF28
/* 80CBDF68  38 60 00 01 */	li r3, 1
lbl_80CBDF6C:
/* 80CBDF6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80CBDF70  4B 6A 42 B1 */	bl _restgpr_27
/* 80CBDF74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CBDF78  7C 08 03 A6 */	mtlr r0
/* 80CBDF7C  38 21 00 20 */	addi r1, r1, 0x20
/* 80CBDF80  4E 80 00 20 */	blr 
