lbl_800894C4:
/* 800894C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800894C8  7C 08 02 A6 */	mflr r0
/* 800894CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800894D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800894D4  7C 7F 1B 78 */	mr r31, r3
/* 800894D8  4B FF FB 09 */	bl getEvStringPntData__9dCamera_cFPc
/* 800894DC  28 03 00 00 */	cmplwi r3, 0
/* 800894E0  40 82 00 0C */	bne lbl_800894EC
/* 800894E4  38 60 00 00 */	li r3, 0
/* 800894E8  48 00 00 F8 */	b lbl_800895E0
lbl_800894EC:
/* 800894EC  80 A3 00 00 */	lwz r5, 0(r3)
/* 800894F0  3C 85 BF B0 */	addis r4, r5, 0xbfb0
/* 800894F4  28 04 4C 41 */	cmplwi r4, 0x4c41
/* 800894F8  40 82 00 0C */	bne lbl_80089504
/* 800894FC  80 7F 01 80 */	lwz r3, 0x180(r31)
/* 80089500  48 00 00 E0 */	b lbl_800895E0
lbl_80089504:
/* 80089504  3C 05 BF AD */	addis r0, r5, 0xbfad
/* 80089508  28 00 54 41 */	cmplwi r0, 0x5441
/* 8008950C  40 82 00 1C */	bne lbl_80089528
/* 80089510  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80089514  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80089518  38 64 4E C8 */	addi r3, r4, 0x4ec8
/* 8008951C  80 84 4F 8C */	lwz r4, 0x4f8c(r4)
/* 80089520  4B FB 9D CD */	bl convPId__14dEvt_control_cFUi
/* 80089524  48 00 00 BC */	b lbl_800895E0
lbl_80089528:
/* 80089528  28 04 41 52 */	cmplwi r4, 0x4152
/* 8008952C  40 82 00 1C */	bne lbl_80089548
/* 80089530  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80089534  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80089538  38 64 4E C8 */	addi r3, r4, 0x4ec8
/* 8008953C  80 84 4F 90 */	lwz r4, 0x4f90(r4)
/* 80089540  4B FB 9D AD */	bl convPId__14dEvt_control_cFUi
/* 80089544  48 00 00 9C */	b lbl_800895E0
lbl_80089548:
/* 80089548  3C 85 BF AC */	addis r4, r5, 0xbfac
/* 8008954C  28 04 41 4C */	cmplwi r4, 0x414c
/* 80089550  40 82 00 1C */	bne lbl_8008956C
/* 80089554  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80089558  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8008955C  38 64 4E C8 */	addi r3, r4, 0x4ec8
/* 80089560  80 84 4F 94 */	lwz r4, 0x4f94(r4)
/* 80089564  4B FB 9D 89 */	bl convPId__14dEvt_control_cFUi
/* 80089568  48 00 00 78 */	b lbl_800895E0
lbl_8008956C:
/* 8008956C  3C 05 BF BC */	addis r0, r5, 0xbfbc
/* 80089570  28 00 4F 4F */	cmplwi r0, 0x4f4f
/* 80089574  40 82 00 1C */	bne lbl_80089590
/* 80089578  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8008957C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80089580  38 64 4E C8 */	addi r3, r4, 0x4ec8
/* 80089584  80 84 4F 9C */	lwz r4, 0x4f9c(r4)
/* 80089588  4B FB 9D 65 */	bl convPId__14dEvt_control_cFUi
/* 8008958C  48 00 00 54 */	b lbl_800895E0
lbl_80089590:
/* 80089590  28 04 41 52 */	cmplwi r4, 0x4152
/* 80089594  41 82 00 10 */	beq lbl_800895A4
/* 80089598  3C 05 BF B7 */	addis r0, r5, 0xbfb7
/* 8008959C  28 00 54 45 */	cmplwi r0, 0x5445
/* 800895A0  40 82 00 1C */	bne lbl_800895BC
lbl_800895A4:
/* 800895A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800895A8  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800895AC  38 64 4E C8 */	addi r3, r4, 0x4ec8
/* 800895B0  80 84 4F 98 */	lwz r4, 0x4f98(r4)
/* 800895B4  4B FB 9D 39 */	bl convPId__14dEvt_control_cFUi
/* 800895B8  48 00 00 28 */	b lbl_800895E0
lbl_800895BC:
/* 800895BC  3C 05 B3 97 */	addis r0, r5, 0xb397
/* 800895C0  28 00 6E 6B */	cmplwi r0, 0x6e6b
/* 800895C4  40 82 00 14 */	bne lbl_800895D8
/* 800895C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800895CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800895D0  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 800895D4  48 00 00 0C */	b lbl_800895E0
lbl_800895D8:
/* 800895D8  38 80 FF FF */	li r4, -1
/* 800895DC  4B F9 41 C5 */	bl fopAcM_searchFromName4Event__FPCcs
lbl_800895E0:
/* 800895E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800895E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800895E8  7C 08 03 A6 */	mtlr r0
/* 800895EC  38 21 00 10 */	addi r1, r1, 0x10
/* 800895F0  4E 80 00 20 */	blr 
