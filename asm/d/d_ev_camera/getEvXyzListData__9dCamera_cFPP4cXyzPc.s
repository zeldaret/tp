lbl_80088F1C:
/* 80088F1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80088F20  7C 08 02 A6 */	mflr r0
/* 80088F24  90 01 00 24 */	stw r0, 0x24(r1)
/* 80088F28  39 61 00 20 */	addi r11, r1, 0x20
/* 80088F2C  48 2D 92 A9 */	bl _savegpr_27
/* 80088F30  7C 7B 1B 78 */	mr r27, r3
/* 80088F34  7C 9C 23 78 */	mr r28, r4
/* 80088F38  7C BD 2B 78 */	mr r29, r5
/* 80088F3C  80 03 06 0C */	lwz r0, 0x60c(r3)
/* 80088F40  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 80088F44  41 82 00 34 */	beq lbl_80088F78
/* 80088F48  7F A4 EB 78 */	mr r4, r29
/* 80088F4C  4B FF FC D9 */	bl searchEventArgData__9dCamera_cFPc
/* 80088F50  2C 03 FF FF */	cmpwi r3, -1
/* 80088F54  40 82 00 0C */	bne lbl_80088F60
/* 80088F58  38 60 00 00 */	li r3, 0
/* 80088F5C  48 00 00 6C */	b lbl_80088FC8
lbl_80088F60:
/* 80088F60  1C 03 00 18 */	mulli r0, r3, 0x18
/* 80088F64  7C 7B 02 14 */	add r3, r27, r0
/* 80088F68  80 03 05 28 */	lwz r0, 0x528(r3)
/* 80088F6C  90 1C 00 00 */	stw r0, 0(r28)
/* 80088F70  80 63 05 24 */	lwz r3, 0x524(r3)
/* 80088F74  48 00 00 54 */	b lbl_80088FC8
lbl_80088F78:
/* 80088F78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80088F7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80088F80  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80088F84  7F C3 F3 78 */	mr r3, r30
/* 80088F88  80 9B 04 EC */	lwz r4, 0x4ec(r27)
/* 80088F8C  4B FB F1 B9 */	bl getMySubstanceNum__16dEvent_manager_cFiPCc
/* 80088F90  7C 7F 1B 79 */	or. r31, r3, r3
/* 80088F94  41 82 00 20 */	beq lbl_80088FB4
/* 80088F98  7F C3 F3 78 */	mr r3, r30
/* 80088F9C  80 9B 04 EC */	lwz r4, 0x4ec(r27)
/* 80088FA0  7F A5 EB 78 */	mr r5, r29
/* 80088FA4  38 C0 00 01 */	li r6, 1
/* 80088FA8  4B FB F1 45 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80088FAC  90 7C 00 00 */	stw r3, 0(r28)
/* 80088FB0  48 00 00 14 */	b lbl_80088FC4
lbl_80088FB4:
/* 80088FB4  38 00 00 01 */	li r0, 1
/* 80088FB8  98 1B 04 F8 */	stb r0, 0x4f8(r27)
/* 80088FBC  38 60 00 00 */	li r3, 0
/* 80088FC0  48 00 00 08 */	b lbl_80088FC8
lbl_80088FC4:
/* 80088FC4  7F E3 FB 78 */	mr r3, r31
lbl_80088FC8:
/* 80088FC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80088FCC  48 2D 92 55 */	bl _restgpr_27
/* 80088FD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80088FD4  7C 08 03 A6 */	mtlr r0
/* 80088FD8  38 21 00 20 */	addi r1, r1, 0x20
/* 80088FDC  4E 80 00 20 */	blr 
