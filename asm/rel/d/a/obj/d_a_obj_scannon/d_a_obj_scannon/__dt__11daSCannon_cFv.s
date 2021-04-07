lbl_80CC6C10:
/* 80CC6C10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CC6C14  7C 08 02 A6 */	mflr r0
/* 80CC6C18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CC6C1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80CC6C20  4B 69 B5 B9 */	bl _savegpr_28
/* 80CC6C24  7C 7C 1B 79 */	or. r28, r3, r3
/* 80CC6C28  7C 9D 23 78 */	mr r29, r4
/* 80CC6C2C  3C 60 80 CD */	lis r3, cNullVec__6Z2Calc@ha /* 0x80CC9304@ha */
/* 80CC6C30  3B E3 93 04 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x80CC9304@l */
/* 80CC6C34  41 82 00 C0 */	beq lbl_80CC6CF4
/* 80CC6C38  3C 60 80 CD */	lis r3, __vt__11daSCannon_c@ha /* 0x80CC95E8@ha */
/* 80CC6C3C  38 03 95 E8 */	addi r0, r3, __vt__11daSCannon_c@l /* 0x80CC95E8@l */
/* 80CC6C40  90 1C 05 70 */	stw r0, 0x570(r28)
/* 80CC6C44  80 1C 06 0C */	lwz r0, 0x60c(r28)
/* 80CC6C48  2C 00 00 03 */	cmpwi r0, 3
/* 80CC6C4C  41 82 00 0C */	beq lbl_80CC6C58
/* 80CC6C50  2C 00 00 0A */	cmpwi r0, 0xa
/* 80CC6C54  40 82 00 0C */	bne lbl_80CC6C60
lbl_80CC6C58:
/* 80CC6C58  83 DF 00 20 */	lwz r30, 0x20(r31)
/* 80CC6C5C  48 00 00 28 */	b lbl_80CC6C84
lbl_80CC6C60:
/* 80CC6C60  2C 00 00 01 */	cmpwi r0, 1
/* 80CC6C64  40 82 00 20 */	bne lbl_80CC6C84
/* 80CC6C68  83 DF 00 24 */	lwz r30, 0x24(r31)
/* 80CC6C6C  88 1C 06 1A */	lbz r0, 0x61a(r28)
/* 80CC6C70  28 00 00 00 */	cmplwi r0, 0
/* 80CC6C74  41 82 00 10 */	beq lbl_80CC6C84
/* 80CC6C78  38 7C 05 7C */	addi r3, r28, 0x57c
/* 80CC6C7C  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 80CC6C80  4B 36 63 89 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
lbl_80CC6C84:
/* 80CC6C84  7F 83 E3 78 */	mr r3, r28
/* 80CC6C88  28 1C 00 00 */	cmplwi r28, 0
/* 80CC6C8C  41 82 00 08 */	beq lbl_80CC6C94
/* 80CC6C90  38 7C 05 68 */	addi r3, r28, 0x568
lbl_80CC6C94:
/* 80CC6C94  7F C4 F3 78 */	mr r4, r30
/* 80CC6C98  4B 36 63 71 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CC6C9C  38 7C 05 74 */	addi r3, r28, 0x574
/* 80CC6CA0  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 80CC6CA4  4B 36 63 65 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CC6CA8  38 7C 05 A0 */	addi r3, r28, 0x5a0
/* 80CC6CAC  38 80 FF FF */	li r4, -1
/* 80CC6CB0  4B 5A 14 01 */	bl __dt__13cBgS_PolyInfoFv
/* 80CC6CB4  34 1C 05 84 */	addic. r0, r28, 0x584
/* 80CC6CB8  41 82 00 20 */	beq lbl_80CC6CD8
/* 80CC6CBC  34 1C 05 84 */	addic. r0, r28, 0x584
/* 80CC6CC0  41 82 00 18 */	beq lbl_80CC6CD8
/* 80CC6CC4  34 1C 05 84 */	addic. r0, r28, 0x584
/* 80CC6CC8  41 82 00 10 */	beq lbl_80CC6CD8
/* 80CC6CCC  3C 60 80 CD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80CC95F4@ha */
/* 80CC6CD0  38 03 95 F4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80CC95F4@l */
/* 80CC6CD4  90 1C 05 84 */	stw r0, 0x584(r28)
lbl_80CC6CD8:
/* 80CC6CD8  7F 83 E3 78 */	mr r3, r28
/* 80CC6CDC  38 80 00 00 */	li r4, 0
/* 80CC6CE0  4B 35 1F AD */	bl __dt__10fopAc_ac_cFv
/* 80CC6CE4  7F A0 07 35 */	extsh. r0, r29
/* 80CC6CE8  40 81 00 0C */	ble lbl_80CC6CF4
/* 80CC6CEC  7F 83 E3 78 */	mr r3, r28
/* 80CC6CF0  4B 60 80 4D */	bl __dl__FPv
lbl_80CC6CF4:
/* 80CC6CF4  7F 83 E3 78 */	mr r3, r28
/* 80CC6CF8  39 61 00 20 */	addi r11, r1, 0x20
/* 80CC6CFC  4B 69 B5 29 */	bl _restgpr_28
/* 80CC6D00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CC6D04  7C 08 03 A6 */	mtlr r0
/* 80CC6D08  38 21 00 20 */	addi r1, r1, 0x20
/* 80CC6D0C  4E 80 00 20 */	blr 
