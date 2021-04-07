lbl_8001BBE8:
/* 8001BBE8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8001BBEC  7C 08 02 A6 */	mflr r0
/* 8001BBF0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8001BBF4  39 61 00 30 */	addi r11, r1, 0x30
/* 8001BBF8  48 34 65 D5 */	bl _savegpr_25
/* 8001BBFC  7C 79 1B 78 */	mr r25, r3
/* 8001BC00  7C 9A 23 78 */	mr r26, r4
/* 8001BC04  7C BB 2B 78 */	mr r27, r5
/* 8001BC08  7C DC 33 78 */	mr r28, r6
/* 8001BC0C  7C FD 3B 78 */	mr r29, r7
/* 8001BC10  7D 1E 43 78 */	mr r30, r8
/* 8001BC14  7D 3F 4B 78 */	mr r31, r9
/* 8001BC18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001BC1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8001BC20  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8001BC24  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 8001BC28  48 02 7A FD */	bl setGtItm__14dEvt_control_cFUc
/* 8001BC2C  2C 1A 00 FF */	cmpwi r26, 0xff
/* 8001BC30  40 82 00 0C */	bne lbl_8001BC3C
/* 8001BC34  38 60 FF FF */	li r3, -1
/* 8001BC38  48 00 00 24 */	b lbl_8001BC5C
lbl_8001BC3C:
/* 8001BC3C  7F 23 CB 78 */	mr r3, r25
/* 8001BC40  7F 44 D3 78 */	mr r4, r26
/* 8001BC44  7F 85 E3 78 */	mr r5, r28
/* 8001BC48  7F C6 F3 78 */	mr r6, r30
/* 8001BC4C  7F A7 EB 78 */	mr r7, r29
/* 8001BC50  7F E8 FB 78 */	mr r8, r31
/* 8001BC54  7F 69 DB 78 */	mr r9, r27
/* 8001BC58  48 00 04 21 */	bl fopAcM_createDemoItem__FPC4cXyziiPC5csXyziPC4cXyzUc
lbl_8001BC5C:
/* 8001BC5C  39 61 00 30 */	addi r11, r1, 0x30
/* 8001BC60  48 34 65 B9 */	bl _restgpr_25
/* 8001BC64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8001BC68  7C 08 03 A6 */	mtlr r0
/* 8001BC6C  38 21 00 30 */	addi r1, r1, 0x30
/* 8001BC70  4E 80 00 20 */	blr 
