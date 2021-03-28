lbl_8058FCF8:
/* 8058FCF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058FCFC  7C 08 02 A6 */	mflr r0
/* 8058FD00  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058FD04  39 61 00 20 */	addi r11, r1, 0x20
/* 8058FD08  4B DD 24 CC */	b _savegpr_27
/* 8058FD0C  7C 7F 1B 78 */	mr r31, r3
/* 8058FD10  3C 60 80 59 */	lis r3, l_arcName@ha
/* 8058FD14  38 63 29 A0 */	addi r3, r3, l_arcName@l
/* 8058FD18  80 63 00 00 */	lwz r3, 0(r3)
/* 8058FD1C  38 80 00 07 */	li r4, 7
/* 8058FD20  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8058FD24  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8058FD28  3F C5 00 02 */	addis r30, r5, 2
/* 8058FD2C  3B DE C2 F8 */	addi r30, r30, -15624
/* 8058FD30  7F C5 F3 78 */	mr r5, r30
/* 8058FD34  38 C0 00 80 */	li r6, 0x80
/* 8058FD38  4B AA C5 B4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8058FD3C  3C 80 00 08 */	lis r4, 8
/* 8058FD40  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8058FD44  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8058FD48  4B A8 4F 0C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8058FD4C  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 8058FD50  80 1F 05 A8 */	lwz r0, 0x5a8(r31)
/* 8058FD54  28 00 00 00 */	cmplwi r0, 0
/* 8058FD58  40 82 00 0C */	bne lbl_8058FD64
/* 8058FD5C  38 60 00 00 */	li r3, 0
/* 8058FD60  48 00 04 84 */	b lbl_805901E4
lbl_8058FD64:
/* 8058FD64  3C 60 80 59 */	lis r3, l_arcName@ha
/* 8058FD68  38 63 29 A0 */	addi r3, r3, l_arcName@l
/* 8058FD6C  80 63 00 00 */	lwz r3, 0(r3)
/* 8058FD70  38 80 00 08 */	li r4, 8
/* 8058FD74  7F C5 F3 78 */	mr r5, r30
/* 8058FD78  38 C0 00 80 */	li r6, 0x80
/* 8058FD7C  4B AA C5 70 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8058FD80  3C 80 00 08 */	lis r4, 8
/* 8058FD84  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8058FD88  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8058FD8C  4B A8 4E C8 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8058FD90  90 7F 05 AC */	stw r3, 0x5ac(r31)
/* 8058FD94  80 1F 05 AC */	lwz r0, 0x5ac(r31)
/* 8058FD98  28 00 00 00 */	cmplwi r0, 0
/* 8058FD9C  40 82 00 0C */	bne lbl_8058FDA8
/* 8058FDA0  38 60 00 00 */	li r3, 0
/* 8058FDA4  48 00 04 40 */	b lbl_805901E4
lbl_8058FDA8:
/* 8058FDA8  3C 60 80 59 */	lis r3, l_arcName@ha
/* 8058FDAC  38 63 29 A0 */	addi r3, r3, l_arcName@l
/* 8058FDB0  80 63 00 00 */	lwz r3, 0(r3)
/* 8058FDB4  38 80 00 09 */	li r4, 9
/* 8058FDB8  7F C5 F3 78 */	mr r5, r30
/* 8058FDBC  38 C0 00 80 */	li r6, 0x80
/* 8058FDC0  4B AA C5 2C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8058FDC4  3C 80 00 08 */	lis r4, 8
/* 8058FDC8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8058FDCC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8058FDD0  4B A8 4E 84 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8058FDD4  90 7F 05 B0 */	stw r3, 0x5b0(r31)
/* 8058FDD8  80 1F 05 B0 */	lwz r0, 0x5b0(r31)
/* 8058FDDC  28 00 00 00 */	cmplwi r0, 0
/* 8058FDE0  40 82 00 0C */	bne lbl_8058FDEC
/* 8058FDE4  38 60 00 00 */	li r3, 0
/* 8058FDE8  48 00 03 FC */	b lbl_805901E4
lbl_8058FDEC:
/* 8058FDEC  38 60 00 C0 */	li r3, 0xc0
/* 8058FDF0  4B D3 EE 5C */	b __nw__FUl
/* 8058FDF4  7C 60 1B 79 */	or. r0, r3, r3
/* 8058FDF8  41 82 00 0C */	beq lbl_8058FE04
/* 8058FDFC  4B AE BB 74 */	b __ct__4dBgWFv
/* 8058FE00  7C 60 1B 78 */	mr r0, r3
lbl_8058FE04:
/* 8058FE04  90 1F 05 CC */	stw r0, 0x5cc(r31)
/* 8058FE08  80 1F 05 CC */	lwz r0, 0x5cc(r31)
/* 8058FE0C  28 00 00 00 */	cmplwi r0, 0
/* 8058FE10  41 82 00 3C */	beq lbl_8058FE4C
/* 8058FE14  3C 60 80 59 */	lis r3, l_arcName@ha
/* 8058FE18  38 63 29 A0 */	addi r3, r3, l_arcName@l
/* 8058FE1C  80 63 00 00 */	lwz r3, 0(r3)
/* 8058FE20  38 80 00 16 */	li r4, 0x16
/* 8058FE24  7F C5 F3 78 */	mr r5, r30
/* 8058FE28  38 C0 00 80 */	li r6, 0x80
/* 8058FE2C  4B AA C4 C0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8058FE30  7C 64 1B 78 */	mr r4, r3
/* 8058FE34  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 8058FE38  38 A0 00 01 */	li r5, 1
/* 8058FE3C  38 DF 05 D0 */	addi r6, r31, 0x5d0
/* 8058FE40  4B AE A0 F8 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 8058FE44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8058FE48  41 82 00 14 */	beq lbl_8058FE5C
lbl_8058FE4C:
/* 8058FE4C  38 00 00 00 */	li r0, 0
/* 8058FE50  90 1F 05 CC */	stw r0, 0x5cc(r31)
/* 8058FE54  38 60 00 00 */	li r3, 0
/* 8058FE58  48 00 03 8C */	b lbl_805901E4
lbl_8058FE5C:
/* 8058FE5C  3C 60 80 59 */	lis r3, l_arcName@ha
/* 8058FE60  38 63 29 A0 */	addi r3, r3, l_arcName@l
/* 8058FE64  80 63 00 00 */	lwz r3, 0(r3)
/* 8058FE68  38 80 00 0A */	li r4, 0xa
/* 8058FE6C  7F C5 F3 78 */	mr r5, r30
/* 8058FE70  38 C0 00 80 */	li r6, 0x80
/* 8058FE74  4B AA C4 78 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8058FE78  3C 80 00 08 */	lis r4, 8
/* 8058FE7C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8058FE80  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8058FE84  4B A8 4D D0 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8058FE88  90 7F 05 B4 */	stw r3, 0x5b4(r31)
/* 8058FE8C  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 8058FE90  28 00 00 00 */	cmplwi r0, 0
/* 8058FE94  40 82 00 0C */	bne lbl_8058FEA0
/* 8058FE98  38 60 00 00 */	li r3, 0
/* 8058FE9C  48 00 03 48 */	b lbl_805901E4
lbl_8058FEA0:
/* 8058FEA0  3C 60 80 59 */	lis r3, l_arcName@ha
/* 8058FEA4  38 63 29 A0 */	addi r3, r3, l_arcName@l
/* 8058FEA8  80 63 00 00 */	lwz r3, 0(r3)
/* 8058FEAC  38 80 00 0B */	li r4, 0xb
/* 8058FEB0  7F C5 F3 78 */	mr r5, r30
/* 8058FEB4  38 C0 00 80 */	li r6, 0x80
/* 8058FEB8  4B AA C4 34 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8058FEBC  3C 80 00 08 */	lis r4, 8
/* 8058FEC0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8058FEC4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8058FEC8  4B A8 4D 8C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8058FECC  90 7F 05 B8 */	stw r3, 0x5b8(r31)
/* 8058FED0  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 8058FED4  28 00 00 00 */	cmplwi r0, 0
/* 8058FED8  40 82 00 0C */	bne lbl_8058FEE4
/* 8058FEDC  38 60 00 00 */	li r3, 0
/* 8058FEE0  48 00 03 04 */	b lbl_805901E4
lbl_8058FEE4:
/* 8058FEE4  3C 60 80 59 */	lis r3, l_arcName@ha
/* 8058FEE8  38 63 29 A0 */	addi r3, r3, l_arcName@l
/* 8058FEEC  80 63 00 00 */	lwz r3, 0(r3)
/* 8058FEF0  38 80 00 0C */	li r4, 0xc
/* 8058FEF4  7F C5 F3 78 */	mr r5, r30
/* 8058FEF8  38 C0 00 80 */	li r6, 0x80
/* 8058FEFC  4B AA C3 F0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8058FF00  7C 7D 1B 78 */	mr r29, r3
/* 8058FF04  3C 80 00 08 */	lis r4, 8
/* 8058FF08  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8058FF0C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8058FF10  4B A8 4D 44 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8058FF14  90 7F 05 BC */	stw r3, 0x5bc(r31)
/* 8058FF18  80 1F 05 BC */	lwz r0, 0x5bc(r31)
/* 8058FF1C  28 00 00 00 */	cmplwi r0, 0
/* 8058FF20  40 82 00 0C */	bne lbl_8058FF2C
/* 8058FF24  38 60 00 00 */	li r3, 0
/* 8058FF28  48 00 02 BC */	b lbl_805901E4
lbl_8058FF2C:
/* 8058FF2C  3C 60 80 59 */	lis r3, l_arcName@ha
/* 8058FF30  38 63 29 A0 */	addi r3, r3, l_arcName@l
/* 8058FF34  80 63 00 00 */	lwz r3, 0(r3)
/* 8058FF38  38 80 00 0F */	li r4, 0xf
/* 8058FF3C  7F C5 F3 78 */	mr r5, r30
/* 8058FF40  38 C0 00 80 */	li r6, 0x80
/* 8058FF44  4B AA C3 A8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8058FF48  7C 7B 1B 78 */	mr r27, r3
/* 8058FF4C  38 60 00 18 */	li r3, 0x18
/* 8058FF50  4B D3 EC FC */	b __nw__FUl
/* 8058FF54  7C 7C 1B 79 */	or. r28, r3, r3
/* 8058FF58  41 82 00 20 */	beq lbl_8058FF78
/* 8058FF5C  3C 80 80 59 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 8058FF60  38 04 2D 30 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 8058FF64  90 1C 00 00 */	stw r0, 0(r28)
/* 8058FF68  38 80 00 00 */	li r4, 0
/* 8058FF6C  4B D9 84 90 */	b init__12J3DFrameCtrlFs
/* 8058FF70  38 00 00 00 */	li r0, 0
/* 8058FF74  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_8058FF78:
/* 8058FF78  93 9F 05 C0 */	stw r28, 0x5c0(r31)
/* 8058FF7C  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 8058FF80  28 03 00 00 */	cmplwi r3, 0
/* 8058FF84  41 82 00 30 */	beq lbl_8058FFB4
/* 8058FF88  38 9D 00 58 */	addi r4, r29, 0x58
/* 8058FF8C  7F 65 DB 78 */	mr r5, r27
/* 8058FF90  38 C0 00 01 */	li r6, 1
/* 8058FF94  38 E0 00 02 */	li r7, 2
/* 8058FF98  3D 00 80 59 */	lis r8, lit_4010@ha
/* 8058FF9C  C0 28 29 0C */	lfs f1, lit_4010@l(r8)
/* 8058FFA0  39 00 00 00 */	li r8, 0
/* 8058FFA4  39 20 FF FF */	li r9, -1
/* 8058FFA8  4B A7 D7 64 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 8058FFAC  2C 03 00 00 */	cmpwi r3, 0
/* 8058FFB0  40 82 00 0C */	bne lbl_8058FFBC
lbl_8058FFB4:
/* 8058FFB4  38 60 00 00 */	li r3, 0
/* 8058FFB8  48 00 02 2C */	b lbl_805901E4
lbl_8058FFBC:
/* 8058FFBC  3C 60 80 59 */	lis r3, lit_4010@ha
/* 8058FFC0  C0 03 29 0C */	lfs f0, lit_4010@l(r3)
/* 8058FFC4  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 8058FFC8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8058FFCC  3C 60 80 59 */	lis r3, l_arcName@ha
/* 8058FFD0  38 63 29 A0 */	addi r3, r3, l_arcName@l
/* 8058FFD4  80 63 00 00 */	lwz r3, 0(r3)
/* 8058FFD8  38 80 00 12 */	li r4, 0x12
/* 8058FFDC  7F C5 F3 78 */	mr r5, r30
/* 8058FFE0  38 C0 00 80 */	li r6, 0x80
/* 8058FFE4  4B AA C3 08 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8058FFE8  7C 7B 1B 78 */	mr r27, r3
/* 8058FFEC  38 60 00 18 */	li r3, 0x18
/* 8058FFF0  4B D3 EC 5C */	b __nw__FUl
/* 8058FFF4  7C 7C 1B 79 */	or. r28, r3, r3
/* 8058FFF8  41 82 00 20 */	beq lbl_80590018
/* 8058FFFC  3C 80 80 59 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80590000  38 04 2D 30 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80590004  90 1C 00 00 */	stw r0, 0(r28)
/* 80590008  38 80 00 00 */	li r4, 0
/* 8059000C  4B D9 83 F0 */	b init__12J3DFrameCtrlFs
/* 80590010  38 00 00 00 */	li r0, 0
/* 80590014  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80590018:
/* 80590018  93 9F 05 C4 */	stw r28, 0x5c4(r31)
/* 8059001C  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 80590020  28 03 00 00 */	cmplwi r3, 0
/* 80590024  41 82 00 30 */	beq lbl_80590054
/* 80590028  38 9D 00 58 */	addi r4, r29, 0x58
/* 8059002C  7F 65 DB 78 */	mr r5, r27
/* 80590030  38 C0 00 01 */	li r6, 1
/* 80590034  38 E0 00 02 */	li r7, 2
/* 80590038  3D 00 80 59 */	lis r8, lit_4010@ha
/* 8059003C  C0 28 29 0C */	lfs f1, lit_4010@l(r8)
/* 80590040  39 00 00 00 */	li r8, 0
/* 80590044  39 20 FF FF */	li r9, -1
/* 80590048  4B A7 D5 F4 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 8059004C  2C 03 00 00 */	cmpwi r3, 0
/* 80590050  40 82 00 0C */	bne lbl_8059005C
lbl_80590054:
/* 80590054  38 60 00 00 */	li r3, 0
/* 80590058  48 00 01 8C */	b lbl_805901E4
lbl_8059005C:
/* 8059005C  3C 60 80 59 */	lis r3, lit_4010@ha
/* 80590060  C0 03 29 0C */	lfs f0, lit_4010@l(r3)
/* 80590064  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 80590068  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8059006C  38 60 00 C0 */	li r3, 0xc0
/* 80590070  4B D3 EB DC */	b __nw__FUl
/* 80590074  7C 60 1B 79 */	or. r0, r3, r3
/* 80590078  41 82 00 0C */	beq lbl_80590084
/* 8059007C  4B AE B8 F4 */	b __ct__4dBgWFv
/* 80590080  7C 60 1B 78 */	mr r0, r3
lbl_80590084:
/* 80590084  90 1F 06 30 */	stw r0, 0x630(r31)
/* 80590088  80 1F 06 30 */	lwz r0, 0x630(r31)
/* 8059008C  28 00 00 00 */	cmplwi r0, 0
/* 80590090  41 82 00 3C */	beq lbl_805900CC
/* 80590094  3C 60 80 59 */	lis r3, l_arcName@ha
/* 80590098  38 63 29 A0 */	addi r3, r3, l_arcName@l
/* 8059009C  80 63 00 00 */	lwz r3, 0(r3)
/* 805900A0  38 80 00 17 */	li r4, 0x17
/* 805900A4  7F C5 F3 78 */	mr r5, r30
/* 805900A8  38 C0 00 80 */	li r6, 0x80
/* 805900AC  4B AA C2 40 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805900B0  7C 64 1B 78 */	mr r4, r3
/* 805900B4  80 7F 06 30 */	lwz r3, 0x630(r31)
/* 805900B8  38 A0 00 01 */	li r5, 1
/* 805900BC  38 DF 06 34 */	addi r6, r31, 0x634
/* 805900C0  4B AE 9E 78 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 805900C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805900C8  41 82 00 14 */	beq lbl_805900DC
lbl_805900CC:
/* 805900CC  38 00 00 00 */	li r0, 0
/* 805900D0  90 1F 06 30 */	stw r0, 0x630(r31)
/* 805900D4  38 60 00 00 */	li r3, 0
/* 805900D8  48 00 01 0C */	b lbl_805901E4
lbl_805900DC:
/* 805900DC  38 00 00 02 */	li r0, 2
/* 805900E0  98 1F 0A 28 */	stb r0, 0xa28(r31)
/* 805900E4  38 00 00 05 */	li r0, 5
/* 805900E8  98 1F 0A 29 */	stb r0, 0xa29(r31)
/* 805900EC  38 60 00 3C */	li r3, 0x3c
/* 805900F0  4B D3 EB 5C */	b __nw__FUl
/* 805900F4  28 03 00 00 */	cmplwi r3, 0
/* 805900F8  41 82 00 1C */	beq lbl_80590114
/* 805900FC  3C 80 80 59 */	lis r4, __vt__18mDoExt_3DlineMat_c@ha
/* 80590100  38 04 2D 1C */	addi r0, r4, __vt__18mDoExt_3DlineMat_c@l
/* 80590104  90 03 00 00 */	stw r0, 0(r3)
/* 80590108  3C 80 80 3A */	lis r4, __vt__19mDoExt_3DlineMat1_c@ha
/* 8059010C  38 04 32 48 */	addi r0, r4, __vt__19mDoExt_3DlineMat1_c@l
/* 80590110  90 03 00 00 */	stw r0, 0(r3)
lbl_80590114:
/* 80590114  90 7F 0A 20 */	stw r3, 0xa20(r31)
/* 80590118  38 60 00 3C */	li r3, 0x3c
/* 8059011C  4B D3 EB 30 */	b __nw__FUl
/* 80590120  28 03 00 00 */	cmplwi r3, 0
/* 80590124  41 82 00 1C */	beq lbl_80590140
/* 80590128  3C 80 80 59 */	lis r4, __vt__18mDoExt_3DlineMat_c@ha
/* 8059012C  38 04 2D 1C */	addi r0, r4, __vt__18mDoExt_3DlineMat_c@l
/* 80590130  90 03 00 00 */	stw r0, 0(r3)
/* 80590134  3C 80 80 3A */	lis r4, __vt__19mDoExt_3DlineMat1_c@ha
/* 80590138  38 04 32 48 */	addi r0, r4, __vt__19mDoExt_3DlineMat1_c@l
/* 8059013C  90 03 00 00 */	stw r0, 0(r3)
lbl_80590140:
/* 80590140  90 7F 0A 24 */	stw r3, 0xa24(r31)
/* 80590144  80 1F 0A 20 */	lwz r0, 0xa20(r31)
/* 80590148  28 00 00 00 */	cmplwi r0, 0
/* 8059014C  41 82 00 10 */	beq lbl_8059015C
/* 80590150  80 1F 0A 24 */	lwz r0, 0xa24(r31)
/* 80590154  28 00 00 00 */	cmplwi r0, 0
/* 80590158  40 82 00 0C */	bne lbl_80590164
lbl_8059015C:
/* 8059015C  38 60 00 00 */	li r3, 0
/* 80590160  48 00 00 84 */	b lbl_805901E4
lbl_80590164:
/* 80590164  3C 60 80 59 */	lis r3, l_arcName@ha
/* 80590168  38 63 29 A0 */	addi r3, r3, l_arcName@l
/* 8059016C  80 63 00 00 */	lwz r3, 0(r3)
/* 80590170  38 80 00 1A */	li r4, 0x1a
/* 80590174  7F C5 F3 78 */	mr r5, r30
/* 80590178  38 C0 00 80 */	li r6, 0x80
/* 8059017C  4B AA C1 70 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80590180  7C 66 1B 78 */	mr r6, r3
/* 80590184  80 7F 0A 20 */	lwz r3, 0xa20(r31)
/* 80590188  38 80 00 01 */	li r4, 1
/* 8059018C  88 BF 0A 28 */	lbz r5, 0xa28(r31)
/* 80590190  38 E0 00 01 */	li r7, 1
/* 80590194  4B A8 31 CC */	b init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi
/* 80590198  2C 03 00 00 */	cmpwi r3, 0
/* 8059019C  40 82 00 0C */	bne lbl_805901A8
/* 805901A0  38 60 00 00 */	li r3, 0
/* 805901A4  48 00 00 40 */	b lbl_805901E4
lbl_805901A8:
/* 805901A8  3C 60 80 59 */	lis r3, l_arcName@ha
/* 805901AC  38 63 29 A0 */	addi r3, r3, l_arcName@l
/* 805901B0  80 63 00 00 */	lwz r3, 0(r3)
/* 805901B4  38 80 00 1A */	li r4, 0x1a
/* 805901B8  7F C5 F3 78 */	mr r5, r30
/* 805901BC  38 C0 00 80 */	li r6, 0x80
/* 805901C0  4B AA C1 2C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805901C4  7C 66 1B 78 */	mr r6, r3
/* 805901C8  80 7F 0A 24 */	lwz r3, 0xa24(r31)
/* 805901CC  38 80 00 01 */	li r4, 1
/* 805901D0  88 BF 0A 29 */	lbz r5, 0xa29(r31)
/* 805901D4  38 E0 00 01 */	li r7, 1
/* 805901D8  4B A8 31 88 */	b init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi
/* 805901DC  30 03 FF FF */	addic r0, r3, -1
/* 805901E0  7C 60 19 10 */	subfe r3, r0, r3
lbl_805901E4:
/* 805901E4  39 61 00 20 */	addi r11, r1, 0x20
/* 805901E8  4B DD 20 38 */	b _restgpr_27
/* 805901EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805901F0  7C 08 03 A6 */	mtlr r0
/* 805901F4  38 21 00 20 */	addi r1, r1, 0x20
/* 805901F8  4E 80 00 20 */	blr 
