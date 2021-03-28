lbl_806A6154:
/* 806A6154  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806A6158  7C 08 02 A6 */	mflr r0
/* 806A615C  90 01 00 54 */	stw r0, 0x54(r1)
/* 806A6160  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 806A6164  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 806A6168  39 61 00 40 */	addi r11, r1, 0x40
/* 806A616C  4B CB C0 54 */	b _savegpr_22
/* 806A6170  7C 7B 1B 78 */	mr r27, r3
/* 806A6174  38 60 00 58 */	li r3, 0x58
/* 806A6178  4B C2 8A D4 */	b __nw__FUl
/* 806A617C  7C 76 1B 79 */	or. r22, r3, r3
/* 806A6180  41 82 00 9C */	beq lbl_806A621C
/* 806A6184  3C 60 80 6A */	lis r3, stringBase0@ha
/* 806A6188  38 63 72 B4 */	addi r3, r3, stringBase0@l
/* 806A618C  38 63 00 05 */	addi r3, r3, 5
/* 806A6190  38 80 00 15 */	li r4, 0x15
/* 806A6194  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806A6198  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806A619C  3F 05 00 02 */	addis r24, r5, 2
/* 806A61A0  3B 18 C2 F8 */	addi r24, r24, -15624
/* 806A61A4  7F 05 C3 78 */	mr r5, r24
/* 806A61A8  38 C0 00 80 */	li r6, 0x80
/* 806A61AC  4B 99 61 40 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806A61B0  7C 77 1B 78 */	mr r23, r3
/* 806A61B4  3C 60 80 6A */	lis r3, stringBase0@ha
/* 806A61B8  38 63 72 B4 */	addi r3, r3, stringBase0@l
/* 806A61BC  38 63 00 05 */	addi r3, r3, 5
/* 806A61C0  38 80 00 19 */	li r4, 0x19
/* 806A61C4  7F 05 C3 78 */	mr r5, r24
/* 806A61C8  38 C0 00 80 */	li r6, 0x80
/* 806A61CC  4B 99 61 20 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806A61D0  7C 64 1B 78 */	mr r4, r3
/* 806A61D4  38 1B 05 C4 */	addi r0, r27, 0x5c4
/* 806A61D8  90 01 00 08 */	stw r0, 8(r1)
/* 806A61DC  3C 00 00 08 */	lis r0, 8
/* 806A61E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 806A61E4  3C 60 11 02 */	lis r3, 0x1102 /* 0x11020084@ha */
/* 806A61E8  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11020084@l */
/* 806A61EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 806A61F0  7E C3 B3 78 */	mr r3, r22
/* 806A61F4  38 A0 00 00 */	li r5, 0
/* 806A61F8  38 C0 00 00 */	li r6, 0
/* 806A61FC  7E E7 BB 78 */	mr r7, r23
/* 806A6200  39 00 00 02 */	li r8, 2
/* 806A6204  3D 20 80 6A */	lis r9, lit_3905@ha
/* 806A6208  C0 29 71 CC */	lfs f1, lit_3905@l(r9)
/* 806A620C  39 20 00 00 */	li r9, 0
/* 806A6210  39 40 FF FF */	li r10, -1
/* 806A6214  4B 96 A5 BC */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 806A6218  7C 76 1B 78 */	mr r22, r3
lbl_806A621C:
/* 806A621C  92 DB 05 C0 */	stw r22, 0x5c0(r27)
/* 806A6220  80 7B 05 C0 */	lwz r3, 0x5c0(r27)
/* 806A6224  28 03 00 00 */	cmplwi r3, 0
/* 806A6228  41 82 00 10 */	beq lbl_806A6238
/* 806A622C  80 A3 00 04 */	lwz r5, 4(r3)
/* 806A6230  28 05 00 00 */	cmplwi r5, 0
/* 806A6234  40 82 00 0C */	bne lbl_806A6240
lbl_806A6238:
/* 806A6238  38 60 00 00 */	li r3, 0
/* 806A623C  48 00 01 5C */	b lbl_806A6398
lbl_806A6240:
/* 806A6240  93 65 00 14 */	stw r27, 0x14(r5)
/* 806A6244  38 E0 00 00 */	li r7, 0
/* 806A6248  3C 60 80 6A */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 806A624C  38 83 23 78 */	addi r4, r3, nodeCallBack__FP8J3DJointi@l
/* 806A6250  48 00 00 20 */	b lbl_806A6270
lbl_806A6254:
/* 806A6254  54 E0 04 3F */	clrlwi. r0, r7, 0x10
/* 806A6258  41 82 00 14 */	beq lbl_806A626C
/* 806A625C  80 66 00 28 */	lwz r3, 0x28(r6)
/* 806A6260  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 806A6264  7C 63 00 2E */	lwzx r3, r3, r0
/* 806A6268  90 83 00 04 */	stw r4, 4(r3)
lbl_806A626C:
/* 806A626C  38 E7 00 01 */	addi r7, r7, 1
lbl_806A6270:
/* 806A6270  80 C5 00 04 */	lwz r6, 4(r5)
/* 806A6274  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 806A6278  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 806A627C  7C 00 18 40 */	cmplw r0, r3
/* 806A6280  41 80 FF D4 */	blt lbl_806A6254
/* 806A6284  3B 80 00 00 */	li r28, 0
/* 806A6288  3B 40 00 00 */	li r26, 0
/* 806A628C  3C 60 80 6A */	lis r3, l_HIO@ha
/* 806A6290  3B E3 74 C8 */	addi r31, r3, l_HIO@l
/* 806A6294  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806A6298  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806A629C  3F C3 00 02 */	addis r30, r3, 2
/* 806A62A0  3C 60 80 6A */	lis r3, lit_3905@ha
/* 806A62A4  3A E3 71 CC */	addi r23, r3, lit_3905@l
/* 806A62A8  3C 60 80 6A */	lis r3, stringBase0@ha
/* 806A62AC  3B 03 72 B4 */	addi r24, r3, stringBase0@l
/* 806A62B0  3C 60 80 6A */	lis r3, brk_d@ha
/* 806A62B4  3B 23 73 38 */	addi r25, r3, brk_d@l
/* 806A62B8  3B DE C2 F8 */	addi r30, r30, -15624
lbl_806A62BC:
/* 806A62BC  38 60 00 18 */	li r3, 0x18
/* 806A62C0  4B C2 89 8C */	b __nw__FUl
/* 806A62C4  7C 76 1B 79 */	or. r22, r3, r3
/* 806A62C8  41 82 00 20 */	beq lbl_806A62E8
/* 806A62CC  3C 80 80 6A */	lis r4, __vt__12J3DFrameCtrl@ha
/* 806A62D0  38 04 74 94 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 806A62D4  90 16 00 00 */	stw r0, 0(r22)
/* 806A62D8  38 80 00 00 */	li r4, 0
/* 806A62DC  4B C8 21 20 */	b init__12J3DFrameCtrlFs
/* 806A62E0  38 00 00 00 */	li r0, 0
/* 806A62E4  90 16 00 14 */	stw r0, 0x14(r22)
lbl_806A62E8:
/* 806A62E8  3B BA 06 68 */	addi r29, r26, 0x668
/* 806A62EC  7E DB E9 2E */	stwx r22, r27, r29
/* 806A62F0  7C 1B E8 2E */	lwzx r0, r27, r29
/* 806A62F4  28 00 00 00 */	cmplwi r0, 0
/* 806A62F8  40 82 00 0C */	bne lbl_806A6304
/* 806A62FC  38 60 00 00 */	li r3, 0
/* 806A6300  48 00 00 98 */	b lbl_806A6398
lbl_806A6304:
/* 806A6304  38 1C FF FC */	addi r0, r28, -4
/* 806A6308  30 00 FF FF */	addic r0, r0, -1
/* 806A630C  7C 60 01 10 */	subfe r3, r0, r0
/* 806A6310  38 00 00 02 */	li r0, 2
/* 806A6314  7C 16 18 78 */	andc r22, r0, r3
/* 806A6318  C3 F7 00 00 */	lfs f31, 0(r23)
/* 806A631C  2C 1C 00 01 */	cmpwi r28, 1
/* 806A6320  41 82 00 0C */	beq lbl_806A632C
/* 806A6324  2C 1C 00 03 */	cmpwi r28, 3
/* 806A6328  40 82 00 08 */	bne lbl_806A6330
lbl_806A632C:
/* 806A632C  C3 FF 00 24 */	lfs f31, 0x24(r31)
lbl_806A6330:
/* 806A6330  38 78 00 05 */	addi r3, r24, 5
/* 806A6334  7C 99 D0 2E */	lwzx r4, r25, r26
/* 806A6338  7F C5 F3 78 */	mr r5, r30
/* 806A633C  38 C0 00 80 */	li r6, 0x80
/* 806A6340  4B 99 5F AC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806A6344  7C 65 1B 78 */	mr r5, r3
/* 806A6348  80 7B 05 C0 */	lwz r3, 0x5c0(r27)
/* 806A634C  80 63 00 04 */	lwz r3, 4(r3)
/* 806A6350  80 83 00 04 */	lwz r4, 4(r3)
/* 806A6354  7C 7B E8 2E */	lwzx r3, r27, r29
/* 806A6358  38 84 00 58 */	addi r4, r4, 0x58
/* 806A635C  38 C0 00 01 */	li r6, 1
/* 806A6360  7E C7 B3 78 */	mr r7, r22
/* 806A6364  FC 20 F8 90 */	fmr f1, f31
/* 806A6368  39 00 00 00 */	li r8, 0
/* 806A636C  39 20 FF FF */	li r9, -1
/* 806A6370  4B 96 73 9C */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 806A6374  2C 03 00 00 */	cmpwi r3, 0
/* 806A6378  40 82 00 0C */	bne lbl_806A6384
/* 806A637C  38 60 00 00 */	li r3, 0
/* 806A6380  48 00 00 18 */	b lbl_806A6398
lbl_806A6384:
/* 806A6384  3B 9C 00 01 */	addi r28, r28, 1
/* 806A6388  2C 1C 00 05 */	cmpwi r28, 5
/* 806A638C  3B 5A 00 04 */	addi r26, r26, 4
/* 806A6390  41 80 FF 2C */	blt lbl_806A62BC
/* 806A6394  38 60 00 01 */	li r3, 1
lbl_806A6398:
/* 806A6398  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 806A639C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 806A63A0  39 61 00 40 */	addi r11, r1, 0x40
/* 806A63A4  4B CB BE 68 */	b _restgpr_22
/* 806A63A8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806A63AC  7C 08 03 A6 */	mtlr r0
/* 806A63B0  38 21 00 50 */	addi r1, r1, 0x50
/* 806A63B4  4E 80 00 20 */	blr 
