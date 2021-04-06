lbl_800895F4:
/* 800895F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800895F8  7C 08 02 A6 */	mflr r0
/* 800895FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80089600  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80089604  7C 7F 1B 78 */	mr r31, r3
/* 80089608  7C 87 23 78 */	mr r7, r4
/* 8008960C  7C A6 2B 78 */	mr r6, r5
/* 80089610  38 00 00 00 */	li r0, 0
/* 80089614  98 01 00 08 */	stb r0, 8(r1)
/* 80089618  38 81 00 08 */	addi r4, r1, 8
/* 8008961C  7C E5 3B 78 */	mr r5, r7
/* 80089620  4B FF FD 1D */	bl getEvStringData__9dCamera_cFPcPcPc
/* 80089624  38 61 00 08 */	addi r3, r1, 8
/* 80089628  80 A1 00 08 */	lwz r5, 8(r1)
/* 8008962C  3C 85 BF B0 */	addis r4, r5, 0xbfb0
/* 80089630  28 04 4C 41 */	cmplwi r4, 0x4c41
/* 80089634  40 82 00 0C */	bne lbl_80089640
/* 80089638  80 7F 01 80 */	lwz r3, 0x180(r31)
/* 8008963C  48 00 00 E0 */	b lbl_8008971C
lbl_80089640:
/* 80089640  3C 05 BF AD */	addis r0, r5, 0xbfad
/* 80089644  28 00 54 41 */	cmplwi r0, 0x5441
/* 80089648  40 82 00 1C */	bne lbl_80089664
/* 8008964C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80089650  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80089654  38 64 4E C8 */	addi r3, r4, 0x4ec8
/* 80089658  80 84 4F 8C */	lwz r4, 0x4f8c(r4)
/* 8008965C  4B FB 9C 91 */	bl convPId__14dEvt_control_cFUi
/* 80089660  48 00 00 BC */	b lbl_8008971C
lbl_80089664:
/* 80089664  28 04 41 52 */	cmplwi r4, 0x4152
/* 80089668  40 82 00 1C */	bne lbl_80089684
/* 8008966C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80089670  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80089674  38 64 4E C8 */	addi r3, r4, 0x4ec8
/* 80089678  80 84 4F 90 */	lwz r4, 0x4f90(r4)
/* 8008967C  4B FB 9C 71 */	bl convPId__14dEvt_control_cFUi
/* 80089680  48 00 00 9C */	b lbl_8008971C
lbl_80089684:
/* 80089684  3C 85 BF AC */	addis r4, r5, 0xbfac
/* 80089688  28 04 41 4C */	cmplwi r4, 0x414c
/* 8008968C  40 82 00 1C */	bne lbl_800896A8
/* 80089690  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80089694  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80089698  38 64 4E C8 */	addi r3, r4, 0x4ec8
/* 8008969C  80 84 4F 94 */	lwz r4, 0x4f94(r4)
/* 800896A0  4B FB 9C 4D */	bl convPId__14dEvt_control_cFUi
/* 800896A4  48 00 00 78 */	b lbl_8008971C
lbl_800896A8:
/* 800896A8  3C 05 BF BC */	addis r0, r5, 0xbfbc
/* 800896AC  28 00 4F 4F */	cmplwi r0, 0x4f4f
/* 800896B0  40 82 00 1C */	bne lbl_800896CC
/* 800896B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800896B8  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800896BC  38 64 4E C8 */	addi r3, r4, 0x4ec8
/* 800896C0  80 84 4F 9C */	lwz r4, 0x4f9c(r4)
/* 800896C4  4B FB 9C 29 */	bl convPId__14dEvt_control_cFUi
/* 800896C8  48 00 00 54 */	b lbl_8008971C
lbl_800896CC:
/* 800896CC  28 04 41 52 */	cmplwi r4, 0x4152
/* 800896D0  41 82 00 10 */	beq lbl_800896E0
/* 800896D4  3C 05 BF B7 */	addis r0, r5, 0xbfb7
/* 800896D8  28 00 54 45 */	cmplwi r0, 0x5445
/* 800896DC  40 82 00 1C */	bne lbl_800896F8
lbl_800896E0:
/* 800896E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800896E4  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800896E8  38 64 4E C8 */	addi r3, r4, 0x4ec8
/* 800896EC  80 84 4F 98 */	lwz r4, 0x4f98(r4)
/* 800896F0  4B FB 9B FD */	bl convPId__14dEvt_control_cFUi
/* 800896F4  48 00 00 28 */	b lbl_8008971C
lbl_800896F8:
/* 800896F8  3C 05 B3 97 */	addis r0, r5, 0xb397
/* 800896FC  28 00 6E 6B */	cmplwi r0, 0x6e6b
/* 80089700  40 82 00 14 */	bne lbl_80089714
/* 80089704  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80089708  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8008970C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80089710  48 00 00 0C */	b lbl_8008971C
lbl_80089714:
/* 80089714  38 80 FF FF */	li r4, -1
/* 80089718  4B F9 40 89 */	bl fopAcM_searchFromName4Event__FPCcs
lbl_8008971C:
/* 8008971C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80089720  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80089724  7C 08 03 A6 */	mtlr r0
/* 80089728  38 21 00 20 */	addi r1, r1, 0x20
/* 8008972C  4E 80 00 20 */	blr 
