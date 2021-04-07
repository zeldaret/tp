lbl_8084718C:
/* 8084718C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80847190  7C 08 02 A6 */	mflr r0
/* 80847194  90 01 00 24 */	stw r0, 0x24(r1)
/* 80847198  39 61 00 20 */	addi r11, r1, 0x20
/* 8084719C  4B B1 B0 3D */	bl _savegpr_28
/* 808471A0  7C 7C 1B 78 */	mr r28, r3
/* 808471A4  7C 9D 23 78 */	mr r29, r4
/* 808471A8  3C 60 80 85 */	lis r3, l_arcName@ha /* 0x80848E3C@ha */
/* 808471AC  3B C3 8E 3C */	addi r30, r3, l_arcName@l /* 0x80848E3C@l */
/* 808471B0  38 7E 00 00 */	addi r3, r30, 0
/* 808471B4  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 808471B8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 808471BC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 808471C0  3C A5 00 02 */	addis r5, r5, 2
/* 808471C4  38 C0 00 80 */	li r6, 0x80
/* 808471C8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 808471CC  4B 7F 51 21 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 808471D0  7C 7F 1B 78 */	mr r31, r3
/* 808471D4  B3 BC 06 E8 */	sth r29, 0x6e8(r28)
/* 808471D8  C0 5E 00 18 */	lfs f2, 0x18(r30)
/* 808471DC  D0 5C 05 BC */	stfs f2, 0x5bc(r28)
/* 808471E0  93 FC 05 C0 */	stw r31, 0x5c0(r28)
/* 808471E4  38 7C 05 F8 */	addi r3, r28, 0x5f8
/* 808471E8  88 9F 00 04 */	lbz r4, 4(r31)
/* 808471EC  38 A0 00 00 */	li r5, 0
/* 808471F0  A8 DF 00 06 */	lha r6, 6(r31)
/* 808471F4  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 808471F8  4B 91 73 4D */	bl setFrameCtrl__16daPy_frameCtrl_cFUcssff
/* 808471FC  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80847200  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80847204  80 7C 05 C4 */	lwz r3, 0x5c4(r28)
/* 80847208  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 8084720C  38 80 00 01 */	li r4, 1
/* 80847210  38 A0 00 17 */	li r5, 0x17
/* 80847214  4B 7C 86 35 */	bl initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs
/* 80847218  38 60 00 01 */	li r3, 1
/* 8084721C  39 61 00 20 */	addi r11, r1, 0x20
/* 80847220  4B B1 B0 05 */	bl _restgpr_28
/* 80847224  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80847228  7C 08 03 A6 */	mtlr r0
/* 8084722C  38 21 00 20 */	addi r1, r1, 0x20
/* 80847230  4E 80 00 20 */	blr 
