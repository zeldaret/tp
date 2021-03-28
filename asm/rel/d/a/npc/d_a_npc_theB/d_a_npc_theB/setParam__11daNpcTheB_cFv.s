lbl_80AFD938:
/* 80AFD938  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AFD93C  7C 08 02 A6 */	mflr r0
/* 80AFD940  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AFD944  39 61 00 40 */	addi r11, r1, 0x40
/* 80AFD948  4B 86 48 84 */	b _savegpr_25
/* 80AFD94C  7C 7F 1B 78 */	mr r31, r3
/* 80AFD950  80 63 0D C0 */	lwz r3, 0xdc0(r3)
/* 80AFD954  80 1F 0D C4 */	lwz r0, 0xdc4(r31)
/* 80AFD958  90 61 00 08 */	stw r3, 8(r1)
/* 80AFD95C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AFD960  80 1F 0D C8 */	lwz r0, 0xdc8(r31)
/* 80AFD964  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AFD968  3C 60 80 B0 */	lis r3, m__17daNpcTheB_Param_c@ha
/* 80AFD96C  38 63 0D 6C */	addi r3, r3, m__17daNpcTheB_Param_c@l
/* 80AFD970  AB 43 00 48 */	lha r26, 0x48(r3)
/* 80AFD974  AB 63 00 4A */	lha r27, 0x4a(r3)
/* 80AFD978  AB 83 00 4C */	lha r28, 0x4c(r3)
/* 80AFD97C  AB A3 00 4E */	lha r29, 0x4e(r3)
/* 80AFD980  38 7F 0D C0 */	addi r3, r31, 0xdc0
/* 80AFD984  38 81 00 08 */	addi r4, r1, 8
/* 80AFD988  4B 86 46 C0 */	b __ptmf_cmpr
/* 80AFD98C  2C 03 00 00 */	cmpwi r3, 0
/* 80AFD990  41 82 00 2C */	beq lbl_80AFD9BC
/* 80AFD994  3B 20 00 01 */	li r25, 1
/* 80AFD998  3B C0 00 08 */	li r30, 8
/* 80AFD99C  48 00 00 18 */	b lbl_80AFD9B4
lbl_80AFD9A0:
/* 80AFD9A0  38 7E 0C 78 */	addi r3, r30, 0xc78
/* 80AFD9A4  7C 7F 1A 14 */	add r3, r31, r3
/* 80AFD9A8  4B 65 2D 08 */	b initialize__18daNpcF_ActorMngr_cFv
/* 80AFD9AC  3B 39 00 01 */	addi r25, r25, 1
/* 80AFD9B0  3B DE 00 08 */	addi r30, r30, 8
lbl_80AFD9B4:
/* 80AFD9B4  2C 19 00 01 */	cmpwi r25, 1
/* 80AFD9B8  41 80 FF E8 */	blt lbl_80AFD9A0
lbl_80AFD9BC:
/* 80AFD9BC  38 00 00 00 */	li r0, 0
/* 80AFD9C0  90 1F 0D E0 */	stw r0, 0xde0(r31)
/* 80AFD9C4  90 1F 0D E4 */	stw r0, 0xde4(r31)
/* 80AFD9C8  7F E3 FB 78 */	mr r3, r31
/* 80AFD9CC  7F 84 07 34 */	extsh r4, r28
/* 80AFD9D0  7F A5 07 34 */	extsh r5, r29
/* 80AFD9D4  4B 65 68 A4 */	b getDistTableIdx__8daNpcF_cFii
/* 80AFD9D8  98 7F 05 44 */	stb r3, 0x544(r31)
/* 80AFD9DC  88 1F 05 44 */	lbz r0, 0x544(r31)
/* 80AFD9E0  98 1F 05 45 */	stb r0, 0x545(r31)
/* 80AFD9E4  7F E3 FB 78 */	mr r3, r31
/* 80AFD9E8  7F 44 07 34 */	extsh r4, r26
/* 80AFD9EC  7F 65 07 34 */	extsh r5, r27
/* 80AFD9F0  4B 65 68 88 */	b getDistTableIdx__8daNpcF_cFii
/* 80AFD9F4  98 7F 05 47 */	stb r3, 0x547(r31)
/* 80AFD9F8  38 00 00 22 */	li r0, 0x22
/* 80AFD9FC  98 1F 05 4C */	stb r0, 0x54c(r31)
/* 80AFDA00  38 00 00 00 */	li r0, 0
/* 80AFDA04  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80AFDA08  80 7F 04 A4 */	lwz r3, 0x4a4(r31)
/* 80AFDA0C  4B 52 39 4C */	b fpcEx_SearchByID__FUi
/* 80AFDA10  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 80AFDA14  3C 60 80 B0 */	lis r3, lit_4248@ha
/* 80AFDA18  C0 03 0D F0 */	lfs f0, lit_4248@l(r3)
/* 80AFDA1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AFDA20  40 81 00 10 */	ble lbl_80AFDA30
/* 80AFDA24  38 00 01 00 */	li r0, 0x100
/* 80AFDA28  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80AFDA2C  48 00 00 34 */	b lbl_80AFDA60
lbl_80AFDA30:
/* 80AFDA30  80 1F 0D F4 */	lwz r0, 0xdf4(r31)
/* 80AFDA34  2C 00 00 00 */	cmpwi r0, 0
/* 80AFDA38  40 81 00 28 */	ble lbl_80AFDA60
/* 80AFDA3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AFDA40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AFDA44  38 63 09 78 */	addi r3, r3, 0x978
/* 80AFDA48  38 80 00 37 */	li r4, 0x37
/* 80AFDA4C  4B 53 71 9C */	b isSwitch__12dSv_danBit_cCFi
/* 80AFDA50  2C 03 00 00 */	cmpwi r3, 0
/* 80AFDA54  40 82 00 0C */	bne lbl_80AFDA60
/* 80AFDA58  38 00 00 0A */	li r0, 0xa
/* 80AFDA5C  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80AFDA60:
/* 80AFDA60  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 80AFDA64  3C 80 80 B0 */	lis r4, m__17daNpcTheB_Param_c@ha
/* 80AFDA68  38 84 0D 6C */	addi r4, r4, m__17daNpcTheB_Param_c@l
/* 80AFDA6C  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80AFDA70  4B 57 84 D0 */	b SetWallR__12dBgS_AcchCirFf
/* 80AFDA74  3C 60 80 B0 */	lis r3, m__17daNpcTheB_Param_c@ha
/* 80AFDA78  38 63 0D 6C */	addi r3, r3, m__17daNpcTheB_Param_c@l
/* 80AFDA7C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80AFDA80  D0 1F 08 14 */	stfs f0, 0x814(r31)
/* 80AFDA84  C0 03 00 04 */	lfs f0, 4(r3)
/* 80AFDA88  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80AFDA8C  39 61 00 40 */	addi r11, r1, 0x40
/* 80AFDA90  4B 86 47 88 */	b _restgpr_25
/* 80AFDA94  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AFDA98  7C 08 03 A6 */	mtlr r0
/* 80AFDA9C  38 21 00 40 */	addi r1, r1, 0x40
/* 80AFDAA0  4E 80 00 20 */	blr 
