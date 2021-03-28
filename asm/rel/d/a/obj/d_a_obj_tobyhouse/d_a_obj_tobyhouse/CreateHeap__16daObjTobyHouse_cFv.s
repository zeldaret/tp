lbl_80D161A4:
/* 80D161A4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D161A8  7C 08 02 A6 */	mflr r0
/* 80D161AC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D161B0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80D161B4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80D161B8  39 61 00 30 */	addi r11, r1, 0x30
/* 80D161BC  4B 64 C0 04 */	b _savegpr_22
/* 80D161C0  7C 7C 1B 78 */	mr r28, r3
/* 80D161C4  3C 60 80 D1 */	lis r3, l_bmd@ha
/* 80D161C8  3B E3 77 4C */	addi r31, r3, l_bmd@l
/* 80D161CC  88 1C 05 E5 */	lbz r0, 0x5e5(r28)
/* 80D161D0  54 00 10 3A */	slwi r0, r0, 2
/* 80D161D4  3C 60 80 D1 */	lis r3, l_arcName@ha
/* 80D161D8  38 63 78 78 */	addi r3, r3, l_arcName@l
/* 80D161DC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80D161E0  38 9F 00 00 */	addi r4, r31, 0
/* 80D161E4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D161E8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D161EC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D161F0  3F C5 00 02 */	addis r30, r5, 2
/* 80D161F4  3B DE C2 F8 */	addi r30, r30, -15624
/* 80D161F8  7F C5 F3 78 */	mr r5, r30
/* 80D161FC  38 C0 00 80 */	li r6, 0x80
/* 80D16200  4B 32 60 EC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D16204  3C 80 00 08 */	lis r4, 8
/* 80D16208  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D1620C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D16210  4B 2F EA 44 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D16214  90 7C 05 A8 */	stw r3, 0x5a8(r28)
/* 80D16218  80 1C 05 A8 */	lwz r0, 0x5a8(r28)
/* 80D1621C  28 00 00 00 */	cmplwi r0, 0
/* 80D16220  40 82 00 0C */	bne lbl_80D1622C
/* 80D16224  38 60 00 00 */	li r3, 0
/* 80D16228  48 00 01 60 */	b lbl_80D16388
lbl_80D1622C:
/* 80D1622C  88 1C 05 E5 */	lbz r0, 0x5e5(r28)
/* 80D16230  28 00 00 00 */	cmplwi r0, 0
/* 80D16234  40 82 00 C4 */	bne lbl_80D162F8
/* 80D16238  3B A0 00 00 */	li r29, 0
/* 80D1623C  3B 60 00 00 */	li r27, 0
/* 80D16240  3C 60 80 D1 */	lis r3, l_arcName@ha
/* 80D16244  3B 03 78 78 */	addi r24, r3, l_arcName@l
/* 80D16248  3B 3F 00 18 */	addi r25, r31, 0x18
/* 80D1624C  C3 FF 00 24 */	lfs f31, 0x24(r31)
lbl_80D16250:
/* 80D16250  88 1C 05 E5 */	lbz r0, 0x5e5(r28)
/* 80D16254  54 00 10 3A */	slwi r0, r0, 2
/* 80D16258  7C 78 00 2E */	lwzx r3, r24, r0
/* 80D1625C  7C 99 D8 2E */	lwzx r4, r25, r27
/* 80D16260  7F C5 F3 78 */	mr r5, r30
/* 80D16264  38 C0 00 80 */	li r6, 0x80
/* 80D16268  4B 32 60 84 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D1626C  7C 76 1B 78 */	mr r22, r3
/* 80D16270  38 60 00 1C */	li r3, 0x1c
/* 80D16274  4B 5B 89 D8 */	b __nw__FUl
/* 80D16278  7C 7A 1B 79 */	or. r26, r3, r3
/* 80D1627C  41 82 00 20 */	beq lbl_80D1629C
/* 80D16280  3C 80 80 D1 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80D16284  38 04 79 80 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80D16288  90 1A 00 00 */	stw r0, 0(r26)
/* 80D1628C  38 80 00 00 */	li r4, 0
/* 80D16290  4B 61 21 6C */	b init__12J3DFrameCtrlFs
/* 80D16294  38 00 00 00 */	li r0, 0
/* 80D16298  90 1A 00 18 */	stw r0, 0x18(r26)
lbl_80D1629C:
/* 80D1629C  3A FB 05 B0 */	addi r23, r27, 0x5b0
/* 80D162A0  7F 5C B9 2E */	stwx r26, r28, r23
/* 80D162A4  7C 7C B8 2E */	lwzx r3, r28, r23
/* 80D162A8  28 03 00 00 */	cmplwi r3, 0
/* 80D162AC  41 82 00 2C */	beq lbl_80D162D8
/* 80D162B0  7E C4 B3 78 */	mr r4, r22
/* 80D162B4  38 A0 00 01 */	li r5, 1
/* 80D162B8  38 C0 00 00 */	li r6, 0
/* 80D162BC  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80D162C0  38 E0 00 00 */	li r7, 0
/* 80D162C4  39 00 FF FF */	li r8, -1
/* 80D162C8  39 20 00 00 */	li r9, 0
/* 80D162CC  4B 2F 75 10 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80D162D0  2C 03 00 00 */	cmpwi r3, 0
/* 80D162D4  40 82 00 0C */	bne lbl_80D162E0
lbl_80D162D8:
/* 80D162D8  38 60 00 00 */	li r3, 0
/* 80D162DC  48 00 00 AC */	b lbl_80D16388
lbl_80D162E0:
/* 80D162E0  7C 7C B8 2E */	lwzx r3, r28, r23
/* 80D162E4  D3 E3 00 0C */	stfs f31, 0xc(r3)
/* 80D162E8  3B BD 00 01 */	addi r29, r29, 1
/* 80D162EC  2C 1D 00 03 */	cmpwi r29, 3
/* 80D162F0  3B 7B 00 04 */	addi r27, r27, 4
/* 80D162F4  41 80 FF 5C */	blt lbl_80D16250
lbl_80D162F8:
/* 80D162F8  88 1C 05 E5 */	lbz r0, 0x5e5(r28)
/* 80D162FC  54 00 10 3A */	slwi r0, r0, 2
/* 80D16300  3C 60 80 D1 */	lis r3, l_arcName@ha
/* 80D16304  38 63 78 78 */	addi r3, r3, l_arcName@l
/* 80D16308  7C 63 00 2E */	lwzx r3, r3, r0
/* 80D1630C  38 9F 00 10 */	addi r4, r31, 0x10
/* 80D16310  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D16314  7F C5 F3 78 */	mr r5, r30
/* 80D16318  38 C0 00 80 */	li r6, 0x80
/* 80D1631C  4B 32 5F D0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D16320  7C 77 1B 78 */	mr r23, r3
/* 80D16324  88 1C 05 E5 */	lbz r0, 0x5e5(r28)
/* 80D16328  54 00 10 3A */	slwi r0, r0, 2
/* 80D1632C  3C 60 80 D1 */	lis r3, l_arcName@ha
/* 80D16330  38 63 78 78 */	addi r3, r3, l_arcName@l
/* 80D16334  7C 63 00 2E */	lwzx r3, r3, r0
/* 80D16338  38 9F 00 00 */	addi r4, r31, 0
/* 80D1633C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D16340  7F C5 F3 78 */	mr r5, r30
/* 80D16344  38 C0 00 80 */	li r6, 0x80
/* 80D16348  4B 32 5F A4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D1634C  7C 64 1B 78 */	mr r4, r3
/* 80D16350  7E E3 BB 78 */	mr r3, r23
/* 80D16354  4B 2F 84 E0 */	b mDoExt_setupShareTexture__FP12J3DModelDataP12J3DModelData
/* 80D16358  7E E3 BB 78 */	mr r3, r23
/* 80D1635C  3C 80 00 08 */	lis r4, 8
/* 80D16360  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D16364  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D16368  4B 2F E8 EC */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D1636C  90 7C 05 AC */	stw r3, 0x5ac(r28)
/* 80D16370  80 1C 05 AC */	lwz r0, 0x5ac(r28)
/* 80D16374  28 00 00 00 */	cmplwi r0, 0
/* 80D16378  40 82 00 0C */	bne lbl_80D16384
/* 80D1637C  38 60 00 00 */	li r3, 0
/* 80D16380  48 00 00 08 */	b lbl_80D16388
lbl_80D16384:
/* 80D16384  38 60 00 01 */	li r3, 1
lbl_80D16388:
/* 80D16388  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80D1638C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80D16390  39 61 00 30 */	addi r11, r1, 0x30
/* 80D16394  4B 64 BE 78 */	b _restgpr_22
/* 80D16398  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D1639C  7C 08 03 A6 */	mtlr r0
/* 80D163A0  38 21 00 40 */	addi r1, r1, 0x40
/* 80D163A4  4E 80 00 20 */	blr 
