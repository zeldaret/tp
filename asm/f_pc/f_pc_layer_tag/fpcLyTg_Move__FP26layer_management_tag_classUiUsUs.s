lbl_80021E2C:
/* 80021E2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80021E30  7C 08 02 A6 */	mflr r0
/* 80021E34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80021E38  39 61 00 20 */	addi r11, r1, 0x20
/* 80021E3C  48 34 03 99 */	bl _savegpr_27
/* 80021E40  7C 7B 1B 78 */	mr r27, r3
/* 80021E44  7C 9C 23 78 */	mr r28, r4
/* 80021E48  7C BD 2B 78 */	mr r29, r5
/* 80021E4C  7C DE 33 78 */	mr r30, r6
/* 80021E50  7F 83 E3 78 */	mr r3, r28
/* 80021E54  4B FF F8 F9 */	bl fpcLy_Layer__FUi
/* 80021E58  7C 7F 1B 79 */	or. r31, r3, r3
/* 80021E5C  40 82 00 0C */	bne lbl_80021E68
/* 80021E60  38 60 00 00 */	li r3, 0
/* 80021E64  48 00 00 34 */	b lbl_80021E98
lbl_80021E68:
/* 80021E68  7F 63 DB 78 */	mr r3, r27
/* 80021E6C  4B FF FF 61 */	bl fpcLyTg_QueueTo__FP26layer_management_tag_class
/* 80021E70  2C 03 00 01 */	cmpwi r3, 1
/* 80021E74  40 82 00 20 */	bne lbl_80021E94
/* 80021E78  93 FB 00 14 */	stw r31, 0x14(r27)
/* 80021E7C  7F 63 DB 78 */	mr r3, r27
/* 80021E80  7F 84 E3 78 */	mr r4, r28
/* 80021E84  7F A5 EB 78 */	mr r5, r29
/* 80021E88  7F C6 F3 78 */	mr r6, r30
/* 80021E8C  4B FF FE 49 */	bl fpcLyTg_ToQueue__FP26layer_management_tag_classUiUsUs
/* 80021E90  48 00 00 08 */	b lbl_80021E98
lbl_80021E94:
/* 80021E94  38 60 00 00 */	li r3, 0
lbl_80021E98:
/* 80021E98  39 61 00 20 */	addi r11, r1, 0x20
/* 80021E9C  48 34 03 85 */	bl _restgpr_27
/* 80021EA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80021EA4  7C 08 03 A6 */	mtlr r0
/* 80021EA8  38 21 00 20 */	addi r1, r1, 0x20
/* 80021EAC  4E 80 00 20 */	blr 
