lbl_80AB348C:
/* 80AB348C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AB3490  7C 08 02 A6 */	mflr r0
/* 80AB3494  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AB3498  39 61 00 40 */	addi r11, r1, 0x40
/* 80AB349C  4B 8A ED 40 */	b _savegpr_29
/* 80AB34A0  7C 7D 1B 78 */	mr r29, r3
/* 80AB34A4  3C 60 80 AB */	lis r3, m__17daNpcPray_Param_c@ha
/* 80AB34A8  3B E3 58 08 */	addi r31, r3, m__17daNpcPray_Param_c@l
/* 80AB34AC  3C 60 80 AB */	lis r3, l_arcNames@ha
/* 80AB34B0  38 63 59 EC */	addi r3, r3, l_arcNames@l
/* 80AB34B4  80 63 00 00 */	lwz r3, 0(r3)
/* 80AB34B8  38 80 00 09 */	li r4, 9
/* 80AB34BC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80AB34C0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80AB34C4  3C A5 00 02 */	addis r5, r5, 2
/* 80AB34C8  38 C0 00 80 */	li r6, 0x80
/* 80AB34CC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80AB34D0  4B 58 8E 1C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80AB34D4  7C 7E 1B 78 */	mr r30, r3
/* 80AB34D8  38 60 00 58 */	li r3, 0x58
/* 80AB34DC  4B 81 B7 70 */	b __nw__FUl
/* 80AB34E0  7C 60 1B 79 */	or. r0, r3, r3
/* 80AB34E4  41 82 00 48 */	beq lbl_80AB352C
/* 80AB34E8  38 1D 0B 48 */	addi r0, r29, 0xb48
/* 80AB34EC  90 01 00 08 */	stw r0, 8(r1)
/* 80AB34F0  3C 00 00 08 */	lis r0, 8
/* 80AB34F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AB34F8  3C 80 11 00 */	lis r4, 0x1100 /* 0x11000084@ha */
/* 80AB34FC  38 04 00 84 */	addi r0, r4, 0x0084 /* 0x11000084@l */
/* 80AB3500  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AB3504  7F C4 F3 78 */	mr r4, r30
/* 80AB3508  38 A0 00 00 */	li r5, 0
/* 80AB350C  38 C0 00 00 */	li r6, 0
/* 80AB3510  38 E0 00 00 */	li r7, 0
/* 80AB3514  39 00 FF FF */	li r8, -1
/* 80AB3518  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80AB351C  39 20 00 00 */	li r9, 0
/* 80AB3520  39 40 FF FF */	li r10, -1
/* 80AB3524  4B 55 D2 AC */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80AB3528  7C 60 1B 78 */	mr r0, r3
lbl_80AB352C:
/* 80AB352C  90 1D 05 68 */	stw r0, 0x568(r29)
/* 80AB3530  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AB3534  28 03 00 00 */	cmplwi r3, 0
/* 80AB3538  41 82 00 1C */	beq lbl_80AB3554
/* 80AB353C  80 03 00 04 */	lwz r0, 4(r3)
/* 80AB3540  28 00 00 00 */	cmplwi r0, 0
/* 80AB3544  40 82 00 10 */	bne lbl_80AB3554
/* 80AB3548  4B 55 DD C8 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 80AB354C  38 00 00 00 */	li r0, 0
/* 80AB3550  90 1D 05 68 */	stw r0, 0x568(r29)
lbl_80AB3554:
/* 80AB3554  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AB3558  28 03 00 00 */	cmplwi r3, 0
/* 80AB355C  40 82 00 0C */	bne lbl_80AB3568
/* 80AB3560  38 60 00 00 */	li r3, 0
/* 80AB3564  48 00 00 94 */	b lbl_80AB35F8
lbl_80AB3568:
/* 80AB3568  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80AB356C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80AB3570  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80AB3574  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80AB3578  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80AB357C  38 00 00 01 */	li r0, 1
/* 80AB3580  98 03 00 54 */	stb r0, 0x54(r3)
/* 80AB3584  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AB3588  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 80AB358C  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 80AB3590  D0 23 00 48 */	stfs f1, 0x48(r3)
/* 80AB3594  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AB3598  80 A3 00 04 */	lwz r5, 4(r3)
/* 80AB359C  38 C0 00 00 */	li r6, 0
/* 80AB35A0  3C 60 80 AB */	lis r3, ctrlJointCallBack__11daNpcPray_cFP8J3DJointi@ha
/* 80AB35A4  38 83 38 54 */	addi r4, r3, ctrlJointCallBack__11daNpcPray_cFP8J3DJointi@l
/* 80AB35A8  48 00 00 18 */	b lbl_80AB35C0
lbl_80AB35AC:
/* 80AB35AC  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 80AB35B0  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80AB35B4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80AB35B8  90 83 00 04 */	stw r4, 4(r3)
/* 80AB35BC  38 C6 00 01 */	addi r6, r6, 1
lbl_80AB35C0:
/* 80AB35C0  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80AB35C4  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 80AB35C8  7C 03 00 40 */	cmplw r3, r0
/* 80AB35CC  41 80 FF E0 */	blt lbl_80AB35AC
/* 80AB35D0  93 A5 00 14 */	stw r29, 0x14(r5)
/* 80AB35D4  7F A3 EB 78 */	mr r3, r29
/* 80AB35D8  38 80 00 00 */	li r4, 0
/* 80AB35DC  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80AB35E0  38 A0 00 00 */	li r5, 0
/* 80AB35E4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AB35E8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AB35EC  7D 89 03 A6 */	mtctr r12
/* 80AB35F0  4E 80 04 21 */	bctrl 
/* 80AB35F4  38 60 00 01 */	li r3, 1
lbl_80AB35F8:
/* 80AB35F8  39 61 00 40 */	addi r11, r1, 0x40
/* 80AB35FC  4B 8A EC 2C */	b _restgpr_29
/* 80AB3600  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AB3604  7C 08 03 A6 */	mtlr r0
/* 80AB3608  38 21 00 40 */	addi r1, r1, 0x40
/* 80AB360C  4E 80 00 20 */	blr 
