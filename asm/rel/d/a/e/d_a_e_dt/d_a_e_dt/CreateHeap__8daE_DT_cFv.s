lbl_806B5214:
/* 806B5214  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806B5218  7C 08 02 A6 */	mflr r0
/* 806B521C  90 01 00 34 */	stw r0, 0x34(r1)
/* 806B5220  39 61 00 30 */	addi r11, r1, 0x30
/* 806B5224  4B CA CF B4 */	b _savegpr_28
/* 806B5228  7C 7E 1B 78 */	mr r30, r3
/* 806B522C  3C 60 80 6B */	lis r3, stringBase0@ha
/* 806B5230  38 63 5E D0 */	addi r3, r3, stringBase0@l
/* 806B5234  38 80 00 1C */	li r4, 0x1c
/* 806B5238  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806B523C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806B5240  3F E5 00 02 */	addis r31, r5, 2
/* 806B5244  3B FF C2 F8 */	addi r31, r31, -15624
/* 806B5248  7F E5 FB 78 */	mr r5, r31
/* 806B524C  38 C0 00 80 */	li r6, 0x80
/* 806B5250  4B 98 70 9C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806B5254  7C 7C 1B 78 */	mr r28, r3
/* 806B5258  38 60 00 58 */	li r3, 0x58
/* 806B525C  4B C1 99 F0 */	b __nw__FUl
/* 806B5260  7C 7D 1B 79 */	or. r29, r3, r3
/* 806B5264  41 82 00 68 */	beq lbl_806B52CC
/* 806B5268  3C 60 80 6B */	lis r3, stringBase0@ha
/* 806B526C  38 63 5E D0 */	addi r3, r3, stringBase0@l
/* 806B5270  38 80 00 17 */	li r4, 0x17
/* 806B5274  7F E5 FB 78 */	mr r5, r31
/* 806B5278  38 C0 00 80 */	li r6, 0x80
/* 806B527C  4B 98 70 70 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806B5280  7C 67 1B 78 */	mr r7, r3
/* 806B5284  38 1E 05 D4 */	addi r0, r30, 0x5d4
/* 806B5288  90 01 00 08 */	stw r0, 8(r1)
/* 806B528C  38 00 00 00 */	li r0, 0
/* 806B5290  90 01 00 0C */	stw r0, 0xc(r1)
/* 806B5294  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 806B5298  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 806B529C  90 01 00 10 */	stw r0, 0x10(r1)
/* 806B52A0  7F A3 EB 78 */	mr r3, r29
/* 806B52A4  7F 84 E3 78 */	mr r4, r28
/* 806B52A8  38 A0 00 00 */	li r5, 0
/* 806B52AC  38 C0 00 00 */	li r6, 0
/* 806B52B0  39 00 00 00 */	li r8, 0
/* 806B52B4  3D 20 80 6B */	lis r9, lit_3868@ha
/* 806B52B8  C0 29 5C FC */	lfs f1, lit_3868@l(r9)
/* 806B52BC  39 20 00 00 */	li r9, 0
/* 806B52C0  39 40 FF FF */	li r10, -1
/* 806B52C4  4B 95 B5 0C */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 806B52C8  7C 7D 1B 78 */	mr r29, r3
lbl_806B52CC:
/* 806B52CC  93 BE 05 D0 */	stw r29, 0x5d0(r30)
/* 806B52D0  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806B52D4  28 03 00 00 */	cmplwi r3, 0
/* 806B52D8  41 82 00 10 */	beq lbl_806B52E8
/* 806B52DC  80 A3 00 04 */	lwz r5, 4(r3)
/* 806B52E0  28 05 00 00 */	cmplwi r5, 0
/* 806B52E4  40 82 00 0C */	bne lbl_806B52F0
lbl_806B52E8:
/* 806B52E8  38 60 00 00 */	li r3, 0
/* 806B52EC  48 00 01 3C */	b lbl_806B5428
lbl_806B52F0:
/* 806B52F0  93 C5 00 14 */	stw r30, 0x14(r5)
/* 806B52F4  38 E0 00 01 */	li r7, 1
/* 806B52F8  3C 60 80 6B */	lis r3, JointCallBack__8daE_DT_cFP8J3DJointi@ha
/* 806B52FC  38 83 DB A0 */	addi r4, r3, JointCallBack__8daE_DT_cFP8J3DJointi@l
/* 806B5300  48 00 00 18 */	b lbl_806B5318
lbl_806B5304:
/* 806B5304  80 66 00 28 */	lwz r3, 0x28(r6)
/* 806B5308  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 806B530C  7C 63 00 2E */	lwzx r3, r3, r0
/* 806B5310  90 83 00 04 */	stw r4, 4(r3)
/* 806B5314  38 E7 00 01 */	addi r7, r7, 1
lbl_806B5318:
/* 806B5318  80 C5 00 04 */	lwz r6, 4(r5)
/* 806B531C  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 806B5320  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 806B5324  7C 00 18 40 */	cmplw r0, r3
/* 806B5328  41 80 FF DC */	blt lbl_806B5304
/* 806B532C  3C 60 80 6B */	lis r3, stringBase0@ha
/* 806B5330  38 83 5E D0 */	addi r4, r3, stringBase0@l
/* 806B5334  38 64 00 05 */	addi r3, r4, 5
/* 806B5338  38 84 00 12 */	addi r4, r4, 0x12
/* 806B533C  7F E5 FB 78 */	mr r5, r31
/* 806B5340  38 C0 00 80 */	li r6, 0x80
/* 806B5344  4B 98 70 38 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 806B5348  3C 80 00 08 */	lis r4, 8
/* 806B534C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 806B5350  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 806B5354  4B 95 F9 00 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 806B5358  90 7E 05 C4 */	stw r3, 0x5c4(r30)
/* 806B535C  80 1E 05 C4 */	lwz r0, 0x5c4(r30)
/* 806B5360  28 00 00 00 */	cmplwi r0, 0
/* 806B5364  40 82 00 0C */	bne lbl_806B5370
/* 806B5368  38 60 00 00 */	li r3, 0
/* 806B536C  48 00 00 BC */	b lbl_806B5428
lbl_806B5370:
/* 806B5370  3C 60 80 6B */	lis r3, stringBase0@ha
/* 806B5374  38 63 5E D0 */	addi r3, r3, stringBase0@l
/* 806B5378  38 80 00 1D */	li r4, 0x1d
/* 806B537C  7F E5 FB 78 */	mr r5, r31
/* 806B5380  38 C0 00 80 */	li r6, 0x80
/* 806B5384  4B 98 6F 68 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806B5388  38 80 00 00 */	li r4, 0
/* 806B538C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 806B5390  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 806B5394  4B 95 F8 C0 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 806B5398  90 7E 05 C8 */	stw r3, 0x5c8(r30)
/* 806B539C  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 806B53A0  28 03 00 00 */	cmplwi r3, 0
/* 806B53A4  40 82 00 0C */	bne lbl_806B53B0
/* 806B53A8  38 60 00 00 */	li r3, 0
/* 806B53AC  48 00 00 7C */	b lbl_806B5428
lbl_806B53B0:
/* 806B53B0  93 C3 00 14 */	stw r30, 0x14(r3)
/* 806B53B4  38 C0 00 01 */	li r6, 1
/* 806B53B8  3C 60 80 6B */	lis r3, JointCallBackTuba__8daE_DT_cFP8J3DJointi@ha
/* 806B53BC  38 83 DD 30 */	addi r4, r3, JointCallBackTuba__8daE_DT_cFP8J3DJointi@l
/* 806B53C0  48 00 00 18 */	b lbl_806B53D8
lbl_806B53C4:
/* 806B53C4  80 65 00 28 */	lwz r3, 0x28(r5)
/* 806B53C8  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 806B53CC  7C 63 00 2E */	lwzx r3, r3, r0
/* 806B53D0  90 83 00 04 */	stw r4, 4(r3)
/* 806B53D4  38 C6 00 01 */	addi r6, r6, 1
lbl_806B53D8:
/* 806B53D8  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 806B53DC  80 A3 00 04 */	lwz r5, 4(r3)
/* 806B53E0  A0 65 00 2C */	lhz r3, 0x2c(r5)
/* 806B53E4  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 806B53E8  7C 00 18 40 */	cmplw r0, r3
/* 806B53EC  41 80 FF D8 */	blt lbl_806B53C4
/* 806B53F0  3C 60 80 6B */	lis r3, stringBase0@ha
/* 806B53F4  38 63 5E D0 */	addi r3, r3, stringBase0@l
/* 806B53F8  38 80 00 1E */	li r4, 0x1e
/* 806B53FC  7F E5 FB 78 */	mr r5, r31
/* 806B5400  38 C0 00 80 */	li r6, 0x80
/* 806B5404  4B 98 6E E8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806B5408  38 80 00 00 */	li r4, 0
/* 806B540C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 806B5410  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 806B5414  4B 95 F8 40 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 806B5418  90 7E 05 CC */	stw r3, 0x5cc(r30)
/* 806B541C  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 806B5420  30 03 FF FF */	addic r0, r3, -1
/* 806B5424  7C 60 19 10 */	subfe r3, r0, r3
lbl_806B5428:
/* 806B5428  39 61 00 30 */	addi r11, r1, 0x30
/* 806B542C  4B CA CD F8 */	b _restgpr_28
/* 806B5430  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806B5434  7C 08 03 A6 */	mtlr r0
/* 806B5438  38 21 00 30 */	addi r1, r1, 0x30
/* 806B543C  4E 80 00 20 */	blr 
