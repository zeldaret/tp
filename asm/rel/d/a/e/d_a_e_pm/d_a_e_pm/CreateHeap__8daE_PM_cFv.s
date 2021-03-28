lbl_80742038:
/* 80742038  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8074203C  7C 08 02 A6 */	mflr r0
/* 80742040  90 01 00 34 */	stw r0, 0x34(r1)
/* 80742044  39 61 00 30 */	addi r11, r1, 0x30
/* 80742048  4B C2 01 90 */	b _savegpr_28
/* 8074204C  7C 7F 1B 78 */	mr r31, r3
/* 80742050  3C 60 80 75 */	lis r3, stringBase0@ha
/* 80742054  38 63 C1 48 */	addi r3, r3, stringBase0@l
/* 80742058  38 80 00 1D */	li r4, 0x1d
/* 8074205C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80742060  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80742064  3F C5 00 02 */	addis r30, r5, 2
/* 80742068  3B DE C2 F8 */	addi r30, r30, -15624
/* 8074206C  7F C5 F3 78 */	mr r5, r30
/* 80742070  38 C0 00 80 */	li r6, 0x80
/* 80742074  4B 8F A2 78 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80742078  7C 7C 1B 78 */	mr r28, r3
/* 8074207C  38 60 00 58 */	li r3, 0x58
/* 80742080  4B B8 CB CC */	b __nw__FUl
/* 80742084  7C 7D 1B 79 */	or. r29, r3, r3
/* 80742088  41 82 00 68 */	beq lbl_807420F0
/* 8074208C  3C 60 80 75 */	lis r3, stringBase0@ha
/* 80742090  38 63 C1 48 */	addi r3, r3, stringBase0@l
/* 80742094  38 80 00 10 */	li r4, 0x10
/* 80742098  7F C5 F3 78 */	mr r5, r30
/* 8074209C  38 C0 00 80 */	li r6, 0x80
/* 807420A0  4B 8F A2 4C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807420A4  7C 67 1B 78 */	mr r7, r3
/* 807420A8  38 1F 07 20 */	addi r0, r31, 0x720
/* 807420AC  90 01 00 08 */	stw r0, 8(r1)
/* 807420B0  3C 00 00 08 */	lis r0, 8
/* 807420B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 807420B8  3C 60 11 02 */	lis r3, 0x1102 /* 0x11020084@ha */
/* 807420BC  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11020084@l */
/* 807420C0  90 01 00 10 */	stw r0, 0x10(r1)
/* 807420C4  7F A3 EB 78 */	mr r3, r29
/* 807420C8  7F 84 E3 78 */	mr r4, r28
/* 807420CC  38 A0 00 00 */	li r5, 0
/* 807420D0  38 C0 00 00 */	li r6, 0
/* 807420D4  39 00 00 00 */	li r8, 0
/* 807420D8  3D 20 80 75 */	lis r9, lit_3912@ha
/* 807420DC  C0 29 BF 44 */	lfs f1, lit_3912@l(r9)
/* 807420E0  39 20 00 00 */	li r9, 0
/* 807420E4  39 40 FF FF */	li r10, -1
/* 807420E8  4B 8C E6 E8 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 807420EC  7C 7D 1B 78 */	mr r29, r3
lbl_807420F0:
/* 807420F0  93 BF 07 04 */	stw r29, 0x704(r31)
/* 807420F4  80 7F 07 04 */	lwz r3, 0x704(r31)
/* 807420F8  28 03 00 00 */	cmplwi r3, 0
/* 807420FC  41 82 00 10 */	beq lbl_8074210C
/* 80742100  80 03 00 04 */	lwz r0, 4(r3)
/* 80742104  28 00 00 00 */	cmplwi r0, 0
/* 80742108  40 82 00 0C */	bne lbl_80742114
lbl_8074210C:
/* 8074210C  38 60 00 00 */	li r3, 0
/* 80742110  48 00 02 60 */	b lbl_80742370
lbl_80742114:
/* 80742114  38 60 00 18 */	li r3, 0x18
/* 80742118  4B B8 CB 34 */	b __nw__FUl
/* 8074211C  7C 7D 1B 79 */	or. r29, r3, r3
/* 80742120  41 82 00 20 */	beq lbl_80742140
/* 80742124  3C 80 80 75 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80742128  38 04 C3 28 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 8074212C  90 1D 00 00 */	stw r0, 0(r29)
/* 80742130  38 80 00 00 */	li r4, 0
/* 80742134  4B BE 62 C8 */	b init__12J3DFrameCtrlFs
/* 80742138  38 00 00 00 */	li r0, 0
/* 8074213C  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80742140:
/* 80742140  93 BF 07 00 */	stw r29, 0x700(r31)
/* 80742144  80 1F 07 00 */	lwz r0, 0x700(r31)
/* 80742148  28 00 00 00 */	cmplwi r0, 0
/* 8074214C  40 82 00 0C */	bne lbl_80742158
/* 80742150  38 60 00 05 */	li r3, 5
/* 80742154  48 00 02 1C */	b lbl_80742370
lbl_80742158:
/* 80742158  3C 60 80 75 */	lis r3, stringBase0@ha
/* 8074215C  38 63 C1 48 */	addi r3, r3, stringBase0@l
/* 80742160  38 80 00 23 */	li r4, 0x23
/* 80742164  7F C5 F3 78 */	mr r5, r30
/* 80742168  38 C0 00 80 */	li r6, 0x80
/* 8074216C  4B 8F A1 80 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80742170  7C 65 1B 78 */	mr r5, r3
/* 80742174  80 7F 07 04 */	lwz r3, 0x704(r31)
/* 80742178  80 63 00 04 */	lwz r3, 4(r3)
/* 8074217C  80 83 00 04 */	lwz r4, 4(r3)
/* 80742180  80 7F 07 00 */	lwz r3, 0x700(r31)
/* 80742184  38 84 00 58 */	addi r4, r4, 0x58
/* 80742188  38 C0 00 01 */	li r6, 1
/* 8074218C  38 E0 00 00 */	li r7, 0
/* 80742190  3D 00 80 75 */	lis r8, lit_3912@ha
/* 80742194  C0 28 BF 44 */	lfs f1, lit_3912@l(r8)
/* 80742198  39 00 00 00 */	li r8, 0
/* 8074219C  39 20 FF FF */	li r9, -1
/* 807421A0  4B 8C B3 AC */	b init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss
/* 807421A4  2C 03 00 00 */	cmpwi r3, 0
/* 807421A8  40 82 00 0C */	bne lbl_807421B4
/* 807421AC  38 60 00 05 */	li r3, 5
/* 807421B0  48 00 01 C0 */	b lbl_80742370
lbl_807421B4:
/* 807421B4  3C 60 80 75 */	lis r3, stringBase0@ha
/* 807421B8  38 63 C1 48 */	addi r3, r3, stringBase0@l
/* 807421BC  38 80 00 1E */	li r4, 0x1e
/* 807421C0  7F C5 F3 78 */	mr r5, r30
/* 807421C4  38 C0 00 80 */	li r6, 0x80
/* 807421C8  4B 8F A1 24 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807421CC  3C 80 00 08 */	lis r4, 8
/* 807421D0  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 807421D4  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 807421D8  4B 8D 2A 7C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 807421DC  90 7F 07 0C */	stw r3, 0x70c(r31)
/* 807421E0  80 1F 07 0C */	lwz r0, 0x70c(r31)
/* 807421E4  28 00 00 00 */	cmplwi r0, 0
/* 807421E8  40 82 00 0C */	bne lbl_807421F4
/* 807421EC  38 60 00 00 */	li r3, 0
/* 807421F0  48 00 01 80 */	b lbl_80742370
lbl_807421F4:
/* 807421F4  38 60 00 54 */	li r3, 0x54
/* 807421F8  4B B8 CA 54 */	b __nw__FUl
/* 807421FC  7C 7D 1B 79 */	or. r29, r3, r3
/* 80742200  41 82 00 8C */	beq lbl_8074228C
/* 80742204  3C 60 80 75 */	lis r3, stringBase0@ha
/* 80742208  38 63 C1 48 */	addi r3, r3, stringBase0@l
/* 8074220C  38 80 00 19 */	li r4, 0x19
/* 80742210  7F C5 F3 78 */	mr r5, r30
/* 80742214  38 C0 00 80 */	li r6, 0x80
/* 80742218  4B 8F A0 D4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8074221C  7C 7C 1B 78 */	mr r28, r3
/* 80742220  3C 60 80 75 */	lis r3, stringBase0@ha
/* 80742224  38 63 C1 48 */	addi r3, r3, stringBase0@l
/* 80742228  38 80 00 1F */	li r4, 0x1f
/* 8074222C  7F C5 F3 78 */	mr r5, r30
/* 80742230  38 C0 00 80 */	li r6, 0x80
/* 80742234  4B 8F A0 B8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80742238  7C 64 1B 78 */	mr r4, r3
/* 8074223C  38 00 00 01 */	li r0, 1
/* 80742240  90 01 00 08 */	stw r0, 8(r1)
/* 80742244  38 00 00 00 */	li r0, 0
/* 80742248  90 01 00 0C */	stw r0, 0xc(r1)
/* 8074224C  3C 00 00 08 */	lis r0, 8
/* 80742250  90 01 00 10 */	stw r0, 0x10(r1)
/* 80742254  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80742258  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 8074225C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80742260  7F A3 EB 78 */	mr r3, r29
/* 80742264  38 A0 00 00 */	li r5, 0
/* 80742268  38 C0 00 00 */	li r6, 0
/* 8074226C  7F 87 E3 78 */	mr r7, r28
/* 80742270  39 00 00 00 */	li r8, 0
/* 80742274  3D 20 80 75 */	lis r9, lit_3911@ha
/* 80742278  C0 29 BF 40 */	lfs f1, lit_3911@l(r9)
/* 8074227C  39 20 00 00 */	li r9, 0
/* 80742280  39 40 FF FF */	li r10, -1
/* 80742284  4B 8C D9 C8 */	b __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 80742288  7C 7D 1B 78 */	mr r29, r3
lbl_8074228C:
/* 8074228C  93 BF 07 08 */	stw r29, 0x708(r31)
/* 80742290  80 7F 07 08 */	lwz r3, 0x708(r31)
/* 80742294  28 03 00 00 */	cmplwi r3, 0
/* 80742298  41 82 00 10 */	beq lbl_807422A8
/* 8074229C  80 03 00 04 */	lwz r0, 4(r3)
/* 807422A0  28 00 00 00 */	cmplwi r0, 0
/* 807422A4  40 82 00 0C */	bne lbl_807422B0
lbl_807422A8:
/* 807422A8  38 60 00 00 */	li r3, 0
/* 807422AC  48 00 00 C4 */	b lbl_80742370
lbl_807422B0:
/* 807422B0  38 60 00 54 */	li r3, 0x54
/* 807422B4  4B B8 C9 98 */	b __nw__FUl
/* 807422B8  7C 7C 1B 79 */	or. r28, r3, r3
/* 807422BC  41 82 00 8C */	beq lbl_80742348
/* 807422C0  3C 60 80 75 */	lis r3, stringBase0@ha
/* 807422C4  38 63 C1 48 */	addi r3, r3, stringBase0@l
/* 807422C8  38 80 00 05 */	li r4, 5
/* 807422CC  7F C5 F3 78 */	mr r5, r30
/* 807422D0  38 C0 00 80 */	li r6, 0x80
/* 807422D4  4B 8F A0 18 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807422D8  7C 7D 1B 78 */	mr r29, r3
/* 807422DC  3C 60 80 75 */	lis r3, stringBase0@ha
/* 807422E0  38 63 C1 48 */	addi r3, r3, stringBase0@l
/* 807422E4  38 80 00 1C */	li r4, 0x1c
/* 807422E8  7F C5 F3 78 */	mr r5, r30
/* 807422EC  38 C0 00 80 */	li r6, 0x80
/* 807422F0  4B 8F 9F FC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807422F4  7C 64 1B 78 */	mr r4, r3
/* 807422F8  38 00 00 01 */	li r0, 1
/* 807422FC  90 01 00 08 */	stw r0, 8(r1)
/* 80742300  38 00 00 00 */	li r0, 0
/* 80742304  90 01 00 0C */	stw r0, 0xc(r1)
/* 80742308  3C 00 00 08 */	lis r0, 8
/* 8074230C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80742310  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80742314  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80742318  90 01 00 14 */	stw r0, 0x14(r1)
/* 8074231C  7F 83 E3 78 */	mr r3, r28
/* 80742320  38 A0 00 00 */	li r5, 0
/* 80742324  38 C0 00 00 */	li r6, 0
/* 80742328  7F A7 EB 78 */	mr r7, r29
/* 8074232C  39 00 00 02 */	li r8, 2
/* 80742330  3D 20 80 75 */	lis r9, lit_3912@ha
/* 80742334  C0 29 BF 44 */	lfs f1, lit_3912@l(r9)
/* 80742338  39 20 00 00 */	li r9, 0
/* 8074233C  39 40 FF FF */	li r10, -1
/* 80742340  4B 8C D9 0C */	b __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 80742344  7C 7C 1B 78 */	mr r28, r3
lbl_80742348:
/* 80742348  93 9F 07 10 */	stw r28, 0x710(r31)
/* 8074234C  80 7F 07 10 */	lwz r3, 0x710(r31)
/* 80742350  28 03 00 00 */	cmplwi r3, 0
/* 80742354  41 82 00 10 */	beq lbl_80742364
/* 80742358  80 03 00 04 */	lwz r0, 4(r3)
/* 8074235C  28 00 00 00 */	cmplwi r0, 0
/* 80742360  40 82 00 0C */	bne lbl_8074236C
lbl_80742364:
/* 80742364  38 60 00 00 */	li r3, 0
/* 80742368  48 00 00 08 */	b lbl_80742370
lbl_8074236C:
/* 8074236C  38 60 00 01 */	li r3, 1
lbl_80742370:
/* 80742370  39 61 00 30 */	addi r11, r1, 0x30
/* 80742374  4B C1 FE B0 */	b _restgpr_28
/* 80742378  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8074237C  7C 08 03 A6 */	mtlr r0
/* 80742380  38 21 00 30 */	addi r1, r1, 0x30
/* 80742384  4E 80 00 20 */	blr 
