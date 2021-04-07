lbl_8046D474:
/* 8046D474  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046D478  7C 08 02 A6 */	mflr r0
/* 8046D47C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046D480  39 61 00 20 */	addi r11, r1, 0x20
/* 8046D484  4B EF 4D 59 */	bl _savegpr_29
/* 8046D488  7C 7F 1B 78 */	mr r31, r3
/* 8046D48C  3C 60 80 47 */	lis r3, d_a_kytag04__stringBase0@ha /* 0x8046DA50@ha */
/* 8046D490  38 63 DA 50 */	addi r3, r3, d_a_kytag04__stringBase0@l /* 0x8046DA50@l */
/* 8046D494  38 63 00 16 */	addi r3, r3, 0x16
/* 8046D498  38 80 00 05 */	li r4, 5
/* 8046D49C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046D4A0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046D4A4  3F A5 00 02 */	addis r29, r5, 2
/* 8046D4A8  3B BD C2 F8 */	addi r29, r29, -15624
/* 8046D4AC  7F A5 EB 78 */	mr r5, r29
/* 8046D4B0  38 C0 00 80 */	li r6, 0x80
/* 8046D4B4  4B BC EE 39 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8046D4B8  7C 7E 1B 78 */	mr r30, r3
/* 8046D4BC  3C 80 00 08 */	lis r4, 8
/* 8046D4C0  3C A0 11 02 */	lis r5, 0x1102 /* 0x11020202@ha */
/* 8046D4C4  38 A5 02 02 */	addi r5, r5, 0x0202 /* 0x11020202@l */
/* 8046D4C8  4B BA 77 8D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8046D4CC  90 7F 05 68 */	stw r3, 0x568(r31)
/* 8046D4D0  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 8046D4D4  28 00 00 00 */	cmplwi r0, 0
/* 8046D4D8  41 82 00 A8 */	beq lbl_8046D580
/* 8046D4DC  3C 60 80 47 */	lis r3, d_a_kytag04__stringBase0@ha /* 0x8046DA50@ha */
/* 8046D4E0  38 63 DA 50 */	addi r3, r3, d_a_kytag04__stringBase0@l /* 0x8046DA50@l */
/* 8046D4E4  38 63 00 16 */	addi r3, r3, 0x16
/* 8046D4E8  38 80 00 0E */	li r4, 0xe
/* 8046D4EC  7F A5 EB 78 */	mr r5, r29
/* 8046D4F0  38 C0 00 80 */	li r6, 0x80
/* 8046D4F4  4B BC ED F9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8046D4F8  7C 65 1B 78 */	mr r5, r3
/* 8046D4FC  38 7F 05 6C */	addi r3, r31, 0x56c
/* 8046D500  38 9E 00 58 */	addi r4, r30, 0x58
/* 8046D504  38 C0 00 01 */	li r6, 1
/* 8046D508  38 E0 00 02 */	li r7, 2
/* 8046D50C  3D 00 80 47 */	lis r8, lit_3964@ha /* 0x8046DA28@ha */
/* 8046D510  C0 28 DA 28 */	lfs f1, lit_3964@l(r8)  /* 0x8046DA28@l */
/* 8046D514  39 00 00 00 */	li r8, 0
/* 8046D518  39 20 FF FF */	li r9, -1
/* 8046D51C  4B BA 01 21 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 8046D520  2C 03 00 00 */	cmpwi r3, 0
/* 8046D524  40 82 00 0C */	bne lbl_8046D530
/* 8046D528  38 60 00 00 */	li r3, 0
/* 8046D52C  48 00 00 58 */	b lbl_8046D584
lbl_8046D530:
/* 8046D530  3C 60 80 47 */	lis r3, d_a_kytag04__stringBase0@ha /* 0x8046DA50@ha */
/* 8046D534  38 63 DA 50 */	addi r3, r3, d_a_kytag04__stringBase0@l /* 0x8046DA50@l */
/* 8046D538  38 63 00 16 */	addi r3, r3, 0x16
/* 8046D53C  38 80 00 08 */	li r4, 8
/* 8046D540  7F A5 EB 78 */	mr r5, r29
/* 8046D544  38 C0 00 80 */	li r6, 0x80
/* 8046D548  4B BC ED A5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8046D54C  7C 65 1B 78 */	mr r5, r3
/* 8046D550  38 7F 05 84 */	addi r3, r31, 0x584
/* 8046D554  38 9E 00 58 */	addi r4, r30, 0x58
/* 8046D558  38 C0 00 01 */	li r6, 1
/* 8046D55C  38 E0 00 00 */	li r7, 0
/* 8046D560  3D 00 80 47 */	lis r8, lit_3964@ha /* 0x8046DA28@ha */
/* 8046D564  C0 28 DA 28 */	lfs f1, lit_3964@l(r8)  /* 0x8046DA28@l */
/* 8046D568  39 00 00 00 */	li r8, 0
/* 8046D56C  39 20 FF FF */	li r9, -1
/* 8046D570  4B BA 01 9D */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 8046D574  30 03 FF FF */	addic r0, r3, -1
/* 8046D578  7C 60 19 10 */	subfe r3, r0, r3
/* 8046D57C  48 00 00 08 */	b lbl_8046D584
lbl_8046D580:
/* 8046D580  38 60 00 00 */	li r3, 0
lbl_8046D584:
/* 8046D584  39 61 00 20 */	addi r11, r1, 0x20
/* 8046D588  4B EF 4C A1 */	bl _restgpr_29
/* 8046D58C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046D590  7C 08 03 A6 */	mtlr r0
/* 8046D594  38 21 00 20 */	addi r1, r1, 0x20
/* 8046D598  4E 80 00 20 */	blr 
