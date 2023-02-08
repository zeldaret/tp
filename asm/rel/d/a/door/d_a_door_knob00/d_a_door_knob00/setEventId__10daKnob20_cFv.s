lbl_8045EFCC:
/* 8045EFCC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8045EFD0  7C 08 02 A6 */	mflr r0
/* 8045EFD4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8045EFD8  39 61 00 30 */	addi r11, r1, 0x30
/* 8045EFDC  4B F0 31 F1 */	bl _savegpr_25
/* 8045EFE0  7C 79 1B 78 */	mr r25, r3
/* 8045EFE4  3B 40 00 00 */	li r26, 0
/* 8045EFE8  3B E0 00 00 */	li r31, 0
/* 8045EFEC  3B C0 00 00 */	li r30, 0
/* 8045EFF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045EFF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045EFF8  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 8045EFFC  3B 80 00 FF */	li r28, 0xff
/* 8045F000  3C 60 80 46 */	lis r3, ev_name_table@ha /* 0x80460898@ha */
/* 8045F004  3B A3 08 98 */	addi r29, r3, ev_name_table@l /* 0x80460898@l */
lbl_8045F008:
/* 8045F008  38 1A 05 B2 */	addi r0, r26, 0x5b2
/* 8045F00C  7F 99 01 AE */	stbx r28, r25, r0
/* 8045F010  7F 63 DB 78 */	mr r3, r27
/* 8045F014  7F 24 CB 78 */	mr r4, r25
/* 8045F018  7C BD F0 2E */	lwzx r5, r29, r30
/* 8045F01C  7C D9 00 AE */	lbzx r6, r25, r0
/* 8045F020  4B BE 87 39 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 8045F024  38 1F 05 A4 */	addi r0, r31, 0x5a4
/* 8045F028  7C 79 03 2E */	sthx r3, r25, r0
/* 8045F02C  3B 5A 00 01 */	addi r26, r26, 1
/* 8045F030  2C 1A 00 07 */	cmpwi r26, 7
/* 8045F034  3B FF 00 02 */	addi r31, r31, 2
/* 8045F038  3B DE 00 04 */	addi r30, r30, 4
/* 8045F03C  41 80 FF CC */	blt lbl_8045F008
/* 8045F040  39 61 00 30 */	addi r11, r1, 0x30
/* 8045F044  4B F0 31 D5 */	bl _restgpr_25
/* 8045F048  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8045F04C  7C 08 03 A6 */	mtlr r0
/* 8045F050  38 21 00 30 */	addi r1, r1, 0x30
/* 8045F054  4E 80 00 20 */	blr 
