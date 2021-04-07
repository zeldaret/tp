lbl_8004331C:
/* 8004331C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80043320  7C 08 02 A6 */	mflr r0
/* 80043324  90 01 00 14 */	stw r0, 0x14(r1)
/* 80043328  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004332C  93 C1 00 08 */	stw r30, 8(r1)
/* 80043330  7C 9E 23 78 */	mr r30, r4
/* 80043334  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha /* 0x80406194@ha */
/* 80043338  8C 03 61 94 */	lbzu r0, mDemoArcName__20dStage_roomControl_c@l(r3)  /* 0x80406194@l */
/* 8004333C  7C 00 07 75 */	extsb. r0, r0
/* 80043340  41 82 00 38 */	beq lbl_80043378
/* 80043344  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80043348  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8004334C  3C A5 00 02 */	addis r5, r5, 2
/* 80043350  38 C0 00 80 */	li r6, 0x80
/* 80043354  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80043358  4B FF 90 25 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8004335C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80043360  41 82 00 10 */	beq lbl_80043370
/* 80043364  4B FF E1 1D */	bl func_80041480
/* 80043368  7F E3 FB 78 */	mr r3, r31
/* 8004336C  48 00 00 6C */	b lbl_800433D8
lbl_80043370:
/* 80043370  4B FF E1 11 */	bl func_80041480
/* 80043374  48 00 00 08 */	b lbl_8004337C
lbl_80043378:
/* 80043378  4B FF E1 09 */	bl func_80041480
lbl_8004337C:
/* 8004337C  88 6D 87 E4 */	lbz r3, struct_80450D64+0x0(r13)
/* 80043380  7C 63 07 74 */	extsb r3, r3
/* 80043384  4B FE C1 39 */	bl dComIfG_getRoomArcName__Fi
/* 80043388  7F C4 F3 78 */	mr r4, r30
/* 8004338C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80043390  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80043394  3C A5 00 02 */	addis r5, r5, 2
/* 80043398  38 A5 D4 F8 */	addi r5, r5, -11016
/* 8004339C  38 C0 00 40 */	li r6, 0x40
/* 800433A0  4B FF 8F DD */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 800433A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 800433A8  41 82 00 10 */	beq lbl_800433B8
/* 800433AC  4B FF E0 D5 */	bl func_80041480
/* 800433B0  7F E3 FB 78 */	mr r3, r31
/* 800433B4  48 00 00 24 */	b lbl_800433D8
lbl_800433B8:
/* 800433B8  7F C3 F3 78 */	mr r3, r30
/* 800433BC  4B FE C0 79 */	bl dComIfG_getStageRes__FPCc
/* 800433C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 800433C4  41 82 00 10 */	beq lbl_800433D4
/* 800433C8  4B FF E0 B9 */	bl func_80041480
/* 800433CC  7F E3 FB 78 */	mr r3, r31
/* 800433D0  48 00 00 08 */	b lbl_800433D8
lbl_800433D4:
/* 800433D4  38 60 00 00 */	li r3, 0
lbl_800433D8:
/* 800433D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800433DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800433E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800433E4  7C 08 03 A6 */	mtlr r0
/* 800433E8  38 21 00 10 */	addi r1, r1, 0x10
/* 800433EC  4E 80 00 20 */	blr 
