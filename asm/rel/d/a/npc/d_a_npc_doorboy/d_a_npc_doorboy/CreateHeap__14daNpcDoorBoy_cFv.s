lbl_809AB320:
/* 809AB320  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809AB324  7C 08 02 A6 */	mflr r0
/* 809AB328  90 01 00 44 */	stw r0, 0x44(r1)
/* 809AB32C  39 61 00 40 */	addi r11, r1, 0x40
/* 809AB330  4B 9B 6E AC */	b _savegpr_29
/* 809AB334  7C 7D 1B 78 */	mr r29, r3
/* 809AB338  3C 60 80 9B */	lis r3, m__20daNpcDoorBoy_Param_c@ha
/* 809AB33C  3B E3 D9 A8 */	addi r31, r3, m__20daNpcDoorBoy_Param_c@l
/* 809AB340  3C 60 80 9B */	lis r3, l_arcNames@ha
/* 809AB344  38 63 DB 9C */	addi r3, r3, l_arcNames@l
/* 809AB348  80 63 00 00 */	lwz r3, 0(r3)
/* 809AB34C  38 80 00 04 */	li r4, 4
/* 809AB350  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 809AB354  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 809AB358  3C A5 00 02 */	addis r5, r5, 2
/* 809AB35C  38 C0 00 80 */	li r6, 0x80
/* 809AB360  38 A5 C2 F8 */	addi r5, r5, -15624
/* 809AB364  4B 69 0F 88 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 809AB368  7C 7E 1B 78 */	mr r30, r3
/* 809AB36C  38 60 00 58 */	li r3, 0x58
/* 809AB370  4B 92 38 DC */	b __nw__FUl
/* 809AB374  7C 60 1B 79 */	or. r0, r3, r3
/* 809AB378  41 82 00 48 */	beq lbl_809AB3C0
/* 809AB37C  38 1D 0B 48 */	addi r0, r29, 0xb48
/* 809AB380  90 01 00 08 */	stw r0, 8(r1)
/* 809AB384  3C 00 00 08 */	lis r0, 8
/* 809AB388  90 01 00 0C */	stw r0, 0xc(r1)
/* 809AB38C  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020084@ha */
/* 809AB390  38 04 00 84 */	addi r0, r4, 0x0084 /* 0x11020084@l */
/* 809AB394  90 01 00 10 */	stw r0, 0x10(r1)
/* 809AB398  7F C4 F3 78 */	mr r4, r30
/* 809AB39C  38 A0 00 00 */	li r5, 0
/* 809AB3A0  38 C0 00 00 */	li r6, 0
/* 809AB3A4  38 E0 00 00 */	li r7, 0
/* 809AB3A8  39 00 FF FF */	li r8, -1
/* 809AB3AC  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 809AB3B0  39 20 00 00 */	li r9, 0
/* 809AB3B4  39 40 FF FF */	li r10, -1
/* 809AB3B8  4B 66 54 18 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 809AB3BC  7C 60 1B 78 */	mr r0, r3
lbl_809AB3C0:
/* 809AB3C0  90 1D 05 68 */	stw r0, 0x568(r29)
/* 809AB3C4  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809AB3C8  28 03 00 00 */	cmplwi r3, 0
/* 809AB3CC  41 82 00 1C */	beq lbl_809AB3E8
/* 809AB3D0  80 03 00 04 */	lwz r0, 4(r3)
/* 809AB3D4  28 00 00 00 */	cmplwi r0, 0
/* 809AB3D8  40 82 00 10 */	bne lbl_809AB3E8
/* 809AB3DC  4B 66 5F 34 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 809AB3E0  38 00 00 00 */	li r0, 0
/* 809AB3E4  90 1D 05 68 */	stw r0, 0x568(r29)
lbl_809AB3E8:
/* 809AB3E8  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809AB3EC  28 03 00 00 */	cmplwi r3, 0
/* 809AB3F0  40 82 00 0C */	bne lbl_809AB3FC
/* 809AB3F4  38 60 00 00 */	li r3, 0
/* 809AB3F8  48 00 00 94 */	b lbl_809AB48C
lbl_809AB3FC:
/* 809AB3FC  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 809AB400  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 809AB404  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 809AB408  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809AB40C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 809AB410  38 00 00 01 */	li r0, 1
/* 809AB414  98 03 00 54 */	stb r0, 0x54(r3)
/* 809AB418  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809AB41C  D0 23 00 40 */	stfs f1, 0x40(r3)
/* 809AB420  D0 03 00 44 */	stfs f0, 0x44(r3)
/* 809AB424  D0 23 00 48 */	stfs f1, 0x48(r3)
/* 809AB428  38 A0 00 00 */	li r5, 0
/* 809AB42C  3C 60 80 9B */	lis r3, ctrlJointCallBack__14daNpcDoorBoy_cFP8J3DJointi@ha
/* 809AB430  38 83 B7 24 */	addi r4, r3, ctrlJointCallBack__14daNpcDoorBoy_cFP8J3DJointi@l
/* 809AB434  48 00 00 18 */	b lbl_809AB44C
lbl_809AB438:
/* 809AB438  80 7E 00 28 */	lwz r3, 0x28(r30)
/* 809AB43C  54 A0 13 BA */	rlwinm r0, r5, 2, 0xe, 0x1d
/* 809AB440  7C 63 00 2E */	lwzx r3, r3, r0
/* 809AB444  90 83 00 04 */	stw r4, 4(r3)
/* 809AB448  38 A5 00 01 */	addi r5, r5, 1
lbl_809AB44C:
/* 809AB44C  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 809AB450  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 809AB454  7C 03 00 40 */	cmplw r3, r0
/* 809AB458  41 80 FF E0 */	blt lbl_809AB438
/* 809AB45C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809AB460  80 63 00 04 */	lwz r3, 4(r3)
/* 809AB464  93 A3 00 14 */	stw r29, 0x14(r3)
/* 809AB468  7F A3 EB 78 */	mr r3, r29
/* 809AB46C  38 80 00 00 */	li r4, 0
/* 809AB470  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 809AB474  38 A0 00 00 */	li r5, 0
/* 809AB478  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809AB47C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809AB480  7D 89 03 A6 */	mtctr r12
/* 809AB484  4E 80 04 21 */	bctrl 
/* 809AB488  38 60 00 01 */	li r3, 1
lbl_809AB48C:
/* 809AB48C  39 61 00 40 */	addi r11, r1, 0x40
/* 809AB490  4B 9B 6D 98 */	b _restgpr_29
/* 809AB494  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809AB498  7C 08 03 A6 */	mtlr r0
/* 809AB49C  38 21 00 40 */	addi r1, r1, 0x40
/* 809AB4A0  4E 80 00 20 */	blr 
