lbl_80BA7178:
/* 80BA7178  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BA717C  7C 08 02 A6 */	mflr r0
/* 80BA7180  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BA7184  39 61 00 20 */	addi r11, r1, 0x20
/* 80BA7188  4B 7B B0 4D */	bl _savegpr_27
/* 80BA718C  7C 7D 1B 78 */	mr r29, r3
/* 80BA7190  3C 60 80 BA */	lis r3, l_dzb@ha /* 0x80BA7CFC@ha */
/* 80BA7194  3B E3 7C FC */	addi r31, r3, l_dzb@l /* 0x80BA7CFC@l */
/* 80BA7198  3C 60 80 BA */	lis r3, l_arcName@ha /* 0x80BA7D90@ha */
/* 80BA719C  38 63 7D 90 */	addi r3, r3, l_arcName@l /* 0x80BA7D90@l */
/* 80BA71A0  80 63 00 00 */	lwz r3, 0(r3)
/* 80BA71A4  38 80 00 09 */	li r4, 9
/* 80BA71A8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA71AC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA71B0  3F C5 00 02 */	addis r30, r5, 2
/* 80BA71B4  3B DE C2 F8 */	addi r30, r30, -15624
/* 80BA71B8  7F C5 F3 78 */	mr r5, r30
/* 80BA71BC  38 C0 00 80 */	li r6, 0x80
/* 80BA71C0  4B 49 51 2D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BA71C4  3C 80 00 08 */	lis r4, 8
/* 80BA71C8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80BA71CC  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80BA71D0  4B 46 DA 85 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BA71D4  90 7D 05 A8 */	stw r3, 0x5a8(r29)
/* 80BA71D8  80 1D 05 A8 */	lwz r0, 0x5a8(r29)
/* 80BA71DC  28 00 00 00 */	cmplwi r0, 0
/* 80BA71E0  40 82 00 0C */	bne lbl_80BA71EC
/* 80BA71E4  38 60 00 00 */	li r3, 0
/* 80BA71E8  48 00 01 28 */	b lbl_80BA7310
lbl_80BA71EC:
/* 80BA71EC  3C 60 80 BA */	lis r3, l_arcName@ha /* 0x80BA7D90@ha */
/* 80BA71F0  38 63 7D 90 */	addi r3, r3, l_arcName@l /* 0x80BA7D90@l */
/* 80BA71F4  80 63 00 00 */	lwz r3, 0(r3)
/* 80BA71F8  38 80 00 06 */	li r4, 6
/* 80BA71FC  7F C5 F3 78 */	mr r5, r30
/* 80BA7200  38 C0 00 80 */	li r6, 0x80
/* 80BA7204  4B 49 50 E9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BA7208  7C 7B 1B 78 */	mr r27, r3
/* 80BA720C  38 60 00 1C */	li r3, 0x1c
/* 80BA7210  4B 72 7A 3D */	bl __nw__FUl
/* 80BA7214  7C 7C 1B 79 */	or. r28, r3, r3
/* 80BA7218  41 82 00 20 */	beq lbl_80BA7238
/* 80BA721C  3C 80 80 BA */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80BA7E6C@ha */
/* 80BA7220  38 04 7E 6C */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80BA7E6C@l */
/* 80BA7224  90 1C 00 00 */	stw r0, 0(r28)
/* 80BA7228  38 80 00 00 */	li r4, 0
/* 80BA722C  4B 78 11 D1 */	bl init__12J3DFrameCtrlFs
/* 80BA7230  38 00 00 00 */	li r0, 0
/* 80BA7234  90 1C 00 18 */	stw r0, 0x18(r28)
lbl_80BA7238:
/* 80BA7238  93 9D 05 AC */	stw r28, 0x5ac(r29)
/* 80BA723C  80 7D 05 AC */	lwz r3, 0x5ac(r29)
/* 80BA7240  28 03 00 00 */	cmplwi r3, 0
/* 80BA7244  41 82 00 2C */	beq lbl_80BA7270
/* 80BA7248  7F 64 DB 78 */	mr r4, r27
/* 80BA724C  38 A0 00 01 */	li r5, 1
/* 80BA7250  38 C0 00 00 */	li r6, 0
/* 80BA7254  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80BA7258  38 E0 00 00 */	li r7, 0
/* 80BA725C  39 00 FF FF */	li r8, -1
/* 80BA7260  39 20 00 00 */	li r9, 0
/* 80BA7264  4B 46 65 79 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80BA7268  2C 03 00 00 */	cmpwi r3, 0
/* 80BA726C  40 82 00 0C */	bne lbl_80BA7278
lbl_80BA7270:
/* 80BA7270  38 60 00 00 */	li r3, 0
/* 80BA7274  48 00 00 9C */	b lbl_80BA7310
lbl_80BA7278:
/* 80BA7278  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80BA727C  80 7D 05 AC */	lwz r3, 0x5ac(r29)
/* 80BA7280  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80BA7284  38 60 00 C0 */	li r3, 0xc0
/* 80BA7288  4B 72 79 C5 */	bl __nw__FUl
/* 80BA728C  7C 60 1B 79 */	or. r0, r3, r3
/* 80BA7290  41 82 00 0C */	beq lbl_80BA729C
/* 80BA7294  4B 4D 46 DD */	bl __ct__4dBgWFv
/* 80BA7298  7C 60 1B 78 */	mr r0, r3
lbl_80BA729C:
/* 80BA729C  90 1D 05 B0 */	stw r0, 0x5b0(r29)
/* 80BA72A0  80 1D 05 B0 */	lwz r0, 0x5b0(r29)
/* 80BA72A4  28 00 00 00 */	cmplwi r0, 0
/* 80BA72A8  41 82 00 54 */	beq lbl_80BA72FC
/* 80BA72AC  3C 60 80 BA */	lis r3, l_arcName@ha /* 0x80BA7D90@ha */
/* 80BA72B0  38 63 7D 90 */	addi r3, r3, l_arcName@l /* 0x80BA7D90@l */
/* 80BA72B4  80 63 00 00 */	lwz r3, 0(r3)
/* 80BA72B8  38 9F 00 00 */	addi r4, r31, 0
/* 80BA72BC  80 84 00 04 */	lwz r4, 4(r4)
/* 80BA72C0  7F C5 F3 78 */	mr r5, r30
/* 80BA72C4  38 C0 00 80 */	li r6, 0x80
/* 80BA72C8  4B 49 50 25 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BA72CC  7C 64 1B 78 */	mr r4, r3
/* 80BA72D0  80 7D 05 B0 */	lwz r3, 0x5b0(r29)
/* 80BA72D4  38 A0 00 01 */	li r5, 1
/* 80BA72D8  38 DD 05 B4 */	addi r6, r29, 0x5b4
/* 80BA72DC  4B 4D 2C 5D */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80BA72E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BA72E4  40 82 00 18 */	bne lbl_80BA72FC
/* 80BA72E8  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Trans__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075B44@ha */
/* 80BA72EC  38 03 5B 44 */	addi r0, r3, dBgS_MoveBGProc_Trans__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075B44@l */
/* 80BA72F0  80 7D 05 B0 */	lwz r3, 0x5b0(r29)
/* 80BA72F4  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80BA72F8  48 00 00 14 */	b lbl_80BA730C
lbl_80BA72FC:
/* 80BA72FC  38 00 00 00 */	li r0, 0
/* 80BA7300  90 1D 05 B0 */	stw r0, 0x5b0(r29)
/* 80BA7304  38 60 00 00 */	li r3, 0
/* 80BA7308  48 00 00 08 */	b lbl_80BA7310
lbl_80BA730C:
/* 80BA730C  38 60 00 01 */	li r3, 1
lbl_80BA7310:
/* 80BA7310  39 61 00 20 */	addi r11, r1, 0x20
/* 80BA7314  4B 7B AF 0D */	bl _restgpr_27
/* 80BA7318  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BA731C  7C 08 03 A6 */	mtlr r0
/* 80BA7320  38 21 00 20 */	addi r1, r1, 0x20
/* 80BA7324  4E 80 00 20 */	blr 
