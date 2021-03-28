lbl_805AD90C:
/* 805AD90C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805AD910  7C 08 02 A6 */	mflr r0
/* 805AD914  90 01 00 34 */	stw r0, 0x34(r1)
/* 805AD918  39 61 00 30 */	addi r11, r1, 0x30
/* 805AD91C  4B DB 48 BC */	b _savegpr_28
/* 805AD920  7C 7F 1B 78 */	mr r31, r3
/* 805AD924  3C 60 80 5B */	lis r3, stringBase0@ha
/* 805AD928  38 63 E0 AC */	addi r3, r3, stringBase0@l
/* 805AD92C  38 80 00 49 */	li r4, 0x49
/* 805AD930  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 805AD934  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 805AD938  3F A5 00 02 */	addis r29, r5, 2
/* 805AD93C  3B BD C2 F8 */	addi r29, r29, -15624
/* 805AD940  7F A5 EB 78 */	mr r5, r29
/* 805AD944  38 C0 00 80 */	li r6, 0x80
/* 805AD948  4B A8 E9 A4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805AD94C  7C 7C 1B 78 */	mr r28, r3
/* 805AD950  38 60 00 58 */	li r3, 0x58
/* 805AD954  4B D2 12 F8 */	b __nw__FUl
/* 805AD958  7C 7E 1B 79 */	or. r30, r3, r3
/* 805AD95C  41 82 00 68 */	beq lbl_805AD9C4
/* 805AD960  3C 60 80 5B */	lis r3, stringBase0@ha
/* 805AD964  38 63 E0 AC */	addi r3, r3, stringBase0@l
/* 805AD968  38 80 00 2F */	li r4, 0x2f
/* 805AD96C  7F A5 EB 78 */	mr r5, r29
/* 805AD970  38 C0 00 80 */	li r6, 0x80
/* 805AD974  4B A8 E9 78 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805AD978  7C 67 1B 78 */	mr r7, r3
/* 805AD97C  38 1F 07 8C */	addi r0, r31, 0x78c
/* 805AD980  90 01 00 08 */	stw r0, 8(r1)
/* 805AD984  38 00 00 00 */	li r0, 0
/* 805AD988  90 01 00 0C */	stw r0, 0xc(r1)
/* 805AD98C  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 805AD990  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 805AD994  90 01 00 10 */	stw r0, 0x10(r1)
/* 805AD998  7F C3 F3 78 */	mr r3, r30
/* 805AD99C  7F 84 E3 78 */	mr r4, r28
/* 805AD9A0  38 A0 00 00 */	li r5, 0
/* 805AD9A4  38 C0 00 00 */	li r6, 0
/* 805AD9A8  39 00 00 02 */	li r8, 2
/* 805AD9AC  3D 20 80 5B */	lis r9, lit_3853@ha
/* 805AD9B0  C0 29 DF 5C */	lfs f1, lit_3853@l(r9)
/* 805AD9B4  39 20 00 00 */	li r9, 0
/* 805AD9B8  39 40 FF FF */	li r10, -1
/* 805AD9BC  4B A6 2E 14 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 805AD9C0  7C 7E 1B 78 */	mr r30, r3
lbl_805AD9C4:
/* 805AD9C4  93 DF 07 88 */	stw r30, 0x788(r31)
/* 805AD9C8  38 00 00 2F */	li r0, 0x2f
/* 805AD9CC  90 1F 08 90 */	stw r0, 0x890(r31)
/* 805AD9D0  80 7F 07 88 */	lwz r3, 0x788(r31)
/* 805AD9D4  28 03 00 00 */	cmplwi r3, 0
/* 805AD9D8  41 82 00 10 */	beq lbl_805AD9E8
/* 805AD9DC  80 03 00 04 */	lwz r0, 4(r3)
/* 805AD9E0  28 00 00 00 */	cmplwi r0, 0
/* 805AD9E4  40 82 00 0C */	bne lbl_805AD9F0
lbl_805AD9E8:
/* 805AD9E8  38 60 00 00 */	li r3, 0
/* 805AD9EC  48 00 00 08 */	b lbl_805AD9F4
lbl_805AD9F0:
/* 805AD9F0  38 60 00 01 */	li r3, 1
lbl_805AD9F4:
/* 805AD9F4  39 61 00 30 */	addi r11, r1, 0x30
/* 805AD9F8  4B DB 48 2C */	b _restgpr_28
/* 805AD9FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805ADA00  7C 08 03 A6 */	mtlr r0
/* 805ADA04  38 21 00 30 */	addi r1, r1, 0x30
/* 805ADA08  4E 80 00 20 */	blr 
