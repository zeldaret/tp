lbl_80D388F0:
/* 80D388F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D388F4  7C 08 02 A6 */	mflr r0
/* 80D388F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D388FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80D38900  4B 62 98 DD */	bl _savegpr_29
/* 80D38904  7C 7F 1B 78 */	mr r31, r3
/* 80D38908  3C 60 80 D4 */	lis r3, l_arcName@ha /* 0x80D39284@ha */
/* 80D3890C  38 63 92 84 */	addi r3, r3, l_arcName@l /* 0x80D39284@l */
/* 80D38910  80 63 00 00 */	lwz r3, 0(r3)
/* 80D38914  38 80 00 09 */	li r4, 9
/* 80D38918  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D3891C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D38920  3F C5 00 02 */	addis r30, r5, 2
/* 80D38924  3B DE C2 F8 */	addi r30, r30, -15624
/* 80D38928  7F C5 F3 78 */	mr r5, r30
/* 80D3892C  38 C0 00 80 */	li r6, 0x80
/* 80D38930  4B 30 39 BD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D38934  3C 80 00 08 */	lis r4, 8
/* 80D38938  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D3893C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D38940  4B 2D C3 15 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D38944  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80D38948  80 1F 05 A8 */	lwz r0, 0x5a8(r31)
/* 80D3894C  28 00 00 00 */	cmplwi r0, 0
/* 80D38950  40 82 00 0C */	bne lbl_80D3895C
/* 80D38954  38 60 00 00 */	li r3, 0
/* 80D38958  48 00 00 B0 */	b lbl_80D38A08
lbl_80D3895C:
/* 80D3895C  88 1F 05 B0 */	lbz r0, 0x5b0(r31)
/* 80D38960  54 00 10 3A */	slwi r0, r0, 2
/* 80D38964  3C 60 80 D4 */	lis r3, l_bck@ha /* 0x80D3922C@ha */
/* 80D38968  38 63 92 2C */	addi r3, r3, l_bck@l /* 0x80D3922C@l */
/* 80D3896C  7C 83 00 2E */	lwzx r4, r3, r0
/* 80D38970  2C 04 00 00 */	cmpwi r4, 0
/* 80D38974  40 81 00 90 */	ble lbl_80D38A04
/* 80D38978  3C 60 80 D4 */	lis r3, l_arcName@ha /* 0x80D39284@ha */
/* 80D3897C  38 63 92 84 */	addi r3, r3, l_arcName@l /* 0x80D39284@l */
/* 80D38980  80 63 00 00 */	lwz r3, 0(r3)
/* 80D38984  7F C5 F3 78 */	mr r5, r30
/* 80D38988  38 C0 00 80 */	li r6, 0x80
/* 80D3898C  4B 30 39 61 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D38990  7C 7D 1B 78 */	mr r29, r3
/* 80D38994  38 60 00 1C */	li r3, 0x1c
/* 80D38998  4B 59 62 B5 */	bl __nw__FUl
/* 80D3899C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D389A0  41 82 00 20 */	beq lbl_80D389C0
/* 80D389A4  3C 80 80 D4 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80D39334@ha */
/* 80D389A8  38 04 93 34 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80D39334@l */
/* 80D389AC  90 1E 00 00 */	stw r0, 0(r30)
/* 80D389B0  38 80 00 00 */	li r4, 0
/* 80D389B4  4B 5E FA 49 */	bl init__12J3DFrameCtrlFs
/* 80D389B8  38 00 00 00 */	li r0, 0
/* 80D389BC  90 1E 00 18 */	stw r0, 0x18(r30)
lbl_80D389C0:
/* 80D389C0  93 DF 05 AC */	stw r30, 0x5ac(r31)
/* 80D389C4  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80D389C8  28 03 00 00 */	cmplwi r3, 0
/* 80D389CC  41 82 00 30 */	beq lbl_80D389FC
/* 80D389D0  7F A4 EB 78 */	mr r4, r29
/* 80D389D4  38 A0 00 01 */	li r5, 1
/* 80D389D8  38 C0 00 02 */	li r6, 2
/* 80D389DC  3C E0 80 D4 */	lis r7, lit_3696@ha /* 0x80D39248@ha */
/* 80D389E0  C0 27 92 48 */	lfs f1, lit_3696@l(r7)  /* 0x80D39248@l */
/* 80D389E4  38 E0 00 00 */	li r7, 0
/* 80D389E8  39 00 FF FF */	li r8, -1
/* 80D389EC  39 20 00 00 */	li r9, 0
/* 80D389F0  4B 2D 4D ED */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80D389F4  2C 03 00 00 */	cmpwi r3, 0
/* 80D389F8  40 82 00 0C */	bne lbl_80D38A04
lbl_80D389FC:
/* 80D389FC  38 60 00 00 */	li r3, 0
/* 80D38A00  48 00 00 08 */	b lbl_80D38A08
lbl_80D38A04:
/* 80D38A04  38 60 00 01 */	li r3, 1
lbl_80D38A08:
/* 80D38A08  39 61 00 20 */	addi r11, r1, 0x20
/* 80D38A0C  4B 62 98 1D */	bl _restgpr_29
/* 80D38A10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D38A14  7C 08 03 A6 */	mtlr r0
/* 80D38A18  38 21 00 20 */	addi r1, r1, 0x20
/* 80D38A1C  4E 80 00 20 */	blr 
