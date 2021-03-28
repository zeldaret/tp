lbl_8059D520:
/* 8059D520  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059D524  7C 08 02 A6 */	mflr r0
/* 8059D528  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059D52C  39 61 00 20 */	addi r11, r1, 0x20
/* 8059D530  4B DC 4C A8 */	b _savegpr_28
/* 8059D534  7C 7F 1B 78 */	mr r31, r3
/* 8059D538  88 03 04 99 */	lbz r0, 0x499(r3)
/* 8059D53C  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 8059D540  2C 00 00 01 */	cmpwi r0, 1
/* 8059D544  41 82 00 28 */	beq lbl_8059D56C
/* 8059D548  40 80 00 34 */	bge lbl_8059D57C
/* 8059D54C  2C 00 00 00 */	cmpwi r0, 0
/* 8059D550  40 80 00 08 */	bge lbl_8059D558
/* 8059D554  48 00 00 28 */	b lbl_8059D57C
lbl_8059D558:
/* 8059D558  3C 60 80 5A */	lis r3, struct_8059DF24+0x0@ha
/* 8059D55C  38 63 DF 24 */	addi r3, r3, struct_8059DF24+0x0@l
/* 8059D560  38 83 00 0E */	addi r4, r3, 0xe
/* 8059D564  3B C3 00 19 */	addi r30, r3, 0x19
/* 8059D568  48 00 00 14 */	b lbl_8059D57C
lbl_8059D56C:
/* 8059D56C  3C 60 80 5A */	lis r3, struct_8059DF24+0x0@ha
/* 8059D570  38 63 DF 24 */	addi r3, r3, struct_8059DF24+0x0@l
/* 8059D574  38 83 00 26 */	addi r4, r3, 0x26
/* 8059D578  3B C3 00 34 */	addi r30, r3, 0x34
lbl_8059D57C:
/* 8059D57C  80 7F 07 60 */	lwz r3, 0x760(r31)
/* 8059D580  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8059D584  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8059D588  3F 85 00 02 */	addis r28, r5, 2
/* 8059D58C  3B 9C C2 F8 */	addi r28, r28, -15624
/* 8059D590  7F 85 E3 78 */	mr r5, r28
/* 8059D594  38 C0 00 80 */	li r6, 0x80
/* 8059D598  4B A9 ED E4 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8059D59C  7C 7D 1B 78 */	mr r29, r3
/* 8059D5A0  80 7F 07 60 */	lwz r3, 0x760(r31)
/* 8059D5A4  7F C4 F3 78 */	mr r4, r30
/* 8059D5A8  7F 85 E3 78 */	mr r5, r28
/* 8059D5AC  38 C0 00 80 */	li r6, 0x80
/* 8059D5B0  4B A9 ED CC */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8059D5B4  7C 7E 1B 78 */	mr r30, r3
/* 8059D5B8  7F A3 EB 78 */	mr r3, r29
/* 8059D5BC  3C 80 00 08 */	lis r4, 8
/* 8059D5C0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8059D5C4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8059D5C8  4B A7 76 8C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8059D5CC  90 7F 05 6C */	stw r3, 0x56c(r31)
/* 8059D5D0  7F C3 F3 78 */	mr r3, r30
/* 8059D5D4  3C 80 00 08 */	lis r4, 8
/* 8059D5D8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8059D5DC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8059D5E0  4B A7 76 74 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8059D5E4  90 7F 05 70 */	stw r3, 0x570(r31)
/* 8059D5E8  80 1F 05 6C */	lwz r0, 0x56c(r31)
/* 8059D5EC  28 00 00 00 */	cmplwi r0, 0
/* 8059D5F0  41 82 00 10 */	beq lbl_8059D600
/* 8059D5F4  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 8059D5F8  28 00 00 00 */	cmplwi r0, 0
/* 8059D5FC  40 82 00 0C */	bne lbl_8059D608
lbl_8059D600:
/* 8059D600  38 60 00 00 */	li r3, 0
/* 8059D604  48 00 00 58 */	b lbl_8059D65C
lbl_8059D608:
/* 8059D608  38 A0 00 00 */	li r5, 0
/* 8059D60C  3C 60 80 5A */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 8059D610  38 83 D1 C4 */	addi r4, r3, nodeCallBack__FP8J3DJointi@l
/* 8059D614  48 00 00 30 */	b lbl_8059D644
lbl_8059D618:
/* 8059D618  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 8059D61C  80 63 00 04 */	lwz r3, 4(r3)
/* 8059D620  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8059D624  54 A0 13 BA */	rlwinm r0, r5, 2, 0xe, 0x1d
/* 8059D628  7C 63 00 2E */	lwzx r3, r3, r0
/* 8059D62C  28 03 00 00 */	cmplwi r3, 0
/* 8059D630  41 82 00 10 */	beq lbl_8059D640
/* 8059D634  90 83 00 04 */	stw r4, 4(r3)
/* 8059D638  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 8059D63C  93 E3 00 14 */	stw r31, 0x14(r3)
lbl_8059D640:
/* 8059D640  38 A5 00 01 */	addi r5, r5, 1
lbl_8059D644:
/* 8059D644  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 8059D648  28 00 00 03 */	cmplwi r0, 3
/* 8059D64C  41 80 FF CC */	blt lbl_8059D618
/* 8059D650  80 1F 05 6C */	lwz r0, 0x56c(r31)
/* 8059D654  90 1F 05 68 */	stw r0, 0x568(r31)
/* 8059D658  38 60 00 01 */	li r3, 1
lbl_8059D65C:
/* 8059D65C  39 61 00 20 */	addi r11, r1, 0x20
/* 8059D660  4B DC 4B C4 */	b _restgpr_28
/* 8059D664  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059D668  7C 08 03 A6 */	mtlr r0
/* 8059D66C  38 21 00 20 */	addi r1, r1, 0x20
/* 8059D670  4E 80 00 20 */	blr 
