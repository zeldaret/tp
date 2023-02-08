lbl_8003C078:
/* 8003C078  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8003C07C  7C 08 02 A6 */	mflr r0
/* 8003C080  90 01 00 34 */	stw r0, 0x34(r1)
/* 8003C084  39 61 00 30 */	addi r11, r1, 0x30
/* 8003C088  48 32 61 45 */	bl _savegpr_25
/* 8003C08C  7C 79 1B 78 */	mr r25, r3
/* 8003C090  7C 9A 23 78 */	mr r26, r4
/* 8003C094  7C BB 2B 78 */	mr r27, r5
/* 8003C098  7C DC 33 78 */	mr r28, r6
/* 8003C09C  7C FD 3B 78 */	mr r29, r7
/* 8003C0A0  7D 1E 43 78 */	mr r30, r8
/* 8003C0A4  48 00 01 41 */	bl getResInfo__14dRes_control_cFPCcP11dRes_info_ci
/* 8003C0A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8003C0AC  40 82 00 8C */	bne lbl_8003C138
/* 8003C0B0  7F 43 D3 78 */	mr r3, r26
/* 8003C0B4  7F 64 DB 78 */	mr r4, r27
/* 8003C0B8  48 00 01 A9 */	bl newResInfo__14dRes_control_cFP11dRes_info_ci
/* 8003C0BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8003C0C0  40 82 00 30 */	bne lbl_8003C0F0
/* 8003C0C4  3C 60 80 38 */	lis r3, d_d_resorce__stringBase0@ha /* 0x803798B8@ha */
/* 8003C0C8  38 63 98 B8 */	addi r3, r3, d_d_resorce__stringBase0@l /* 0x803798B8@l */
/* 8003C0CC  38 63 02 41 */	addi r3, r3, 0x241
/* 8003C0D0  7F 24 CB 78 */	mr r4, r25
/* 8003C0D4  4C C6 31 82 */	crclr 6
/* 8003C0D8  4B FC AB 35 */	bl OSReport_Error
/* 8003C0DC  7F E3 FB 78 */	mr r3, r31
/* 8003C0E0  38 80 FF FF */	li r4, -1
/* 8003C0E4  4B FF E1 9D */	bl __dt__11dRes_info_cFv
/* 8003C0E8  38 60 00 00 */	li r3, 0
/* 8003C0EC  48 00 00 5C */	b lbl_8003C148
lbl_8003C0F0:
/* 8003C0F0  7F 24 CB 78 */	mr r4, r25
/* 8003C0F4  7F 85 E3 78 */	mr r5, r28
/* 8003C0F8  7F A6 EB 78 */	mr r6, r29
/* 8003C0FC  7F C7 F3 78 */	mr r7, r30
/* 8003C100  4B FF E2 49 */	bl set__11dRes_info_cFPCcPCcUcP7JKRHeap
/* 8003C104  2C 03 00 00 */	cmpwi r3, 0
/* 8003C108  40 82 00 30 */	bne lbl_8003C138
/* 8003C10C  3C 60 80 38 */	lis r3, d_d_resorce__stringBase0@ha /* 0x803798B8@ha */
/* 8003C110  38 63 98 B8 */	addi r3, r3, d_d_resorce__stringBase0@l /* 0x803798B8@l */
/* 8003C114  38 63 02 88 */	addi r3, r3, 0x288
/* 8003C118  7F 24 CB 78 */	mr r4, r25
/* 8003C11C  4C C6 31 82 */	crclr 6
/* 8003C120  4B FC AA ED */	bl OSReport_Error
/* 8003C124  7F E3 FB 78 */	mr r3, r31
/* 8003C128  38 80 FF FF */	li r4, -1
/* 8003C12C  4B FF E1 55 */	bl __dt__11dRes_info_cFv
/* 8003C130  38 60 00 00 */	li r3, 0
/* 8003C134  48 00 00 14 */	b lbl_8003C148
lbl_8003C138:
/* 8003C138  A0 7F 00 0C */	lhz r3, 0xc(r31)
/* 8003C13C  38 03 00 01 */	addi r0, r3, 1
/* 8003C140  B0 1F 00 0C */	sth r0, 0xc(r31)
/* 8003C144  38 60 00 01 */	li r3, 1
lbl_8003C148:
/* 8003C148  39 61 00 30 */	addi r11, r1, 0x30
/* 8003C14C  48 32 60 CD */	bl _restgpr_25
/* 8003C150  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8003C154  7C 08 03 A6 */	mtlr r0
/* 8003C158  38 21 00 30 */	addi r1, r1, 0x30
/* 8003C15C  4E 80 00 20 */	blr 
