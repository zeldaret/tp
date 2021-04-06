lbl_8001BC74:
/* 8001BC74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001BC78  7C 08 02 A6 */	mflr r0
/* 8001BC7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001BC80  39 61 00 20 */	addi r11, r1, 0x20
/* 8001BC84  48 34 65 4D */	bl _savegpr_26
/* 8001BC88  7C 7A 1B 78 */	mr r26, r3
/* 8001BC8C  7C 9B 23 78 */	mr r27, r4
/* 8001BC90  7C BC 2B 78 */	mr r28, r5
/* 8001BC94  7C DD 33 78 */	mr r29, r6
/* 8001BC98  7C FE 3B 78 */	mr r30, r7
/* 8001BC9C  7D 1F 43 78 */	mr r31, r8
/* 8001BCA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001BCA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8001BCA8  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8001BCAC  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 8001BCB0  48 02 7A 75 */	bl setGtItm__14dEvt_control_cFUc
/* 8001BCB4  2C 1B 00 FF */	cmpwi r27, 0xff
/* 8001BCB8  40 82 00 0C */	bne lbl_8001BCC4
/* 8001BCBC  38 60 FF FF */	li r3, -1
/* 8001BCC0  48 00 00 24 */	b lbl_8001BCE4
lbl_8001BCC4:
/* 8001BCC4  7F 43 D3 78 */	mr r3, r26
/* 8001BCC8  7F 64 DB 78 */	mr r4, r27
/* 8001BCCC  7F 85 E3 78 */	mr r5, r28
/* 8001BCD0  7F C6 F3 78 */	mr r6, r30
/* 8001BCD4  7F A7 EB 78 */	mr r7, r29
/* 8001BCD8  7F E8 FB 78 */	mr r8, r31
/* 8001BCDC  39 20 00 00 */	li r9, 0
/* 8001BCE0  48 00 03 99 */	bl fopAcM_createDemoItem__FPC4cXyziiPC5csXyziPC4cXyzUc
lbl_8001BCE4:
/* 8001BCE4  39 61 00 20 */	addi r11, r1, 0x20
/* 8001BCE8  48 34 65 35 */	bl _restgpr_26
/* 8001BCEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001BCF0  7C 08 03 A6 */	mtlr r0
/* 8001BCF4  38 21 00 20 */	addi r1, r1, 0x20
/* 8001BCF8  4E 80 00 20 */	blr 
