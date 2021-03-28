lbl_806380F8:
/* 806380F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806380FC  7C 08 02 A6 */	mflr r0
/* 80638100  90 01 00 34 */	stw r0, 0x34(r1)
/* 80638104  39 61 00 30 */	addi r11, r1, 0x30
/* 80638108  4B D2 A0 D0 */	b _savegpr_28
/* 8063810C  7C 7F 1B 78 */	mr r31, r3
/* 80638110  3C 60 80 64 */	lis r3, stringBase0@ha
/* 80638114  38 63 9A 34 */	addi r3, r3, stringBase0@l
/* 80638118  38 80 00 1D */	li r4, 0x1d
/* 8063811C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80638120  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80638124  3F C5 00 02 */	addis r30, r5, 2
/* 80638128  3B DE C2 F8 */	addi r30, r30, -15624
/* 8063812C  7F C5 F3 78 */	mr r5, r30
/* 80638130  38 C0 00 80 */	li r6, 0x80
/* 80638134  4B A0 41 B8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80638138  38 80 00 00 */	li r4, 0
/* 8063813C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80638140  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80638144  4B 9D CB 10 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80638148  90 7F 05 E8 */	stw r3, 0x5e8(r31)
/* 8063814C  80 1F 05 E8 */	lwz r0, 0x5e8(r31)
/* 80638150  28 00 00 00 */	cmplwi r0, 0
/* 80638154  40 82 00 0C */	bne lbl_80638160
/* 80638158  38 60 00 00 */	li r3, 0
/* 8063815C  48 00 06 C4 */	b lbl_80638820
lbl_80638160:
/* 80638160  3C 60 80 64 */	lis r3, stringBase0@ha
/* 80638164  38 63 9A 34 */	addi r3, r3, stringBase0@l
/* 80638168  38 80 00 1E */	li r4, 0x1e
/* 8063816C  7F C5 F3 78 */	mr r5, r30
/* 80638170  38 C0 00 80 */	li r6, 0x80
/* 80638174  4B A0 41 78 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80638178  38 80 00 00 */	li r4, 0
/* 8063817C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80638180  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80638184  4B 9D CA D0 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80638188  90 7F 05 EC */	stw r3, 0x5ec(r31)
/* 8063818C  80 1F 05 EC */	lwz r0, 0x5ec(r31)
/* 80638190  28 00 00 00 */	cmplwi r0, 0
/* 80638194  40 82 00 0C */	bne lbl_806381A0
/* 80638198  38 60 00 00 */	li r3, 0
/* 8063819C  48 00 06 84 */	b lbl_80638820
lbl_806381A0:
/* 806381A0  3C 60 80 64 */	lis r3, stringBase0@ha
/* 806381A4  38 63 9A 34 */	addi r3, r3, stringBase0@l
/* 806381A8  38 80 00 1F */	li r4, 0x1f
/* 806381AC  7F C5 F3 78 */	mr r5, r30
/* 806381B0  38 C0 00 80 */	li r6, 0x80
/* 806381B4  4B A0 41 38 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806381B8  38 80 00 00 */	li r4, 0
/* 806381BC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 806381C0  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 806381C4  4B 9D CA 90 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 806381C8  90 7F 05 F0 */	stw r3, 0x5f0(r31)
/* 806381CC  80 1F 05 F0 */	lwz r0, 0x5f0(r31)
/* 806381D0  28 00 00 00 */	cmplwi r0, 0
/* 806381D4  40 82 00 0C */	bne lbl_806381E0
/* 806381D8  38 60 00 00 */	li r3, 0
/* 806381DC  48 00 06 44 */	b lbl_80638820
lbl_806381E0:
/* 806381E0  3C 60 80 64 */	lis r3, stringBase0@ha
/* 806381E4  38 63 9A 34 */	addi r3, r3, stringBase0@l
/* 806381E8  38 80 00 1C */	li r4, 0x1c
/* 806381EC  7F C5 F3 78 */	mr r5, r30
/* 806381F0  38 C0 00 80 */	li r6, 0x80
/* 806381F4  4B A0 40 F8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806381F8  7C 7D 1B 78 */	mr r29, r3
/* 806381FC  38 60 00 58 */	li r3, 0x58
/* 80638200  4B C9 6A 4C */	b __nw__FUl
/* 80638204  7C 7C 1B 79 */	or. r28, r3, r3
/* 80638208  41 82 00 68 */	beq lbl_80638270
/* 8063820C  3C 60 80 64 */	lis r3, stringBase0@ha
/* 80638210  38 63 9A 34 */	addi r3, r3, stringBase0@l
/* 80638214  38 80 00 14 */	li r4, 0x14
/* 80638218  7F C5 F3 78 */	mr r5, r30
/* 8063821C  38 C0 00 80 */	li r6, 0x80
/* 80638220  4B A0 40 CC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80638224  7C 67 1B 78 */	mr r7, r3
/* 80638228  38 1F 06 34 */	addi r0, r31, 0x634
/* 8063822C  90 01 00 08 */	stw r0, 8(r1)
/* 80638230  38 00 00 00 */	li r0, 0
/* 80638234  90 01 00 0C */	stw r0, 0xc(r1)
/* 80638238  3C 60 11 02 */	lis r3, 0x1102 /* 0x11020284@ha */
/* 8063823C  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11020284@l */
/* 80638240  90 01 00 10 */	stw r0, 0x10(r1)
/* 80638244  7F 83 E3 78 */	mr r3, r28
/* 80638248  7F A4 EB 78 */	mr r4, r29
/* 8063824C  38 A0 00 00 */	li r5, 0
/* 80638250  38 C0 00 00 */	li r6, 0
/* 80638254  39 00 00 00 */	li r8, 0
/* 80638258  3D 20 80 64 */	lis r9, lit_3795@ha
/* 8063825C  C0 29 98 10 */	lfs f1, lit_3795@l(r9)
/* 80638260  39 20 00 00 */	li r9, 0
/* 80638264  39 40 FF FF */	li r10, -1
/* 80638268  4B 9D 85 68 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8063826C  7C 7C 1B 78 */	mr r28, r3
lbl_80638270:
/* 80638270  93 9F 05 F4 */	stw r28, 0x5f4(r31)
/* 80638274  80 7F 05 F4 */	lwz r3, 0x5f4(r31)
/* 80638278  28 03 00 00 */	cmplwi r3, 0
/* 8063827C  41 82 00 10 */	beq lbl_8063828C
/* 80638280  80 03 00 04 */	lwz r0, 4(r3)
/* 80638284  28 00 00 00 */	cmplwi r0, 0
/* 80638288  40 82 00 0C */	bne lbl_80638294
lbl_8063828C:
/* 8063828C  38 60 00 00 */	li r3, 0
/* 80638290  48 00 05 90 */	b lbl_80638820
lbl_80638294:
/* 80638294  38 60 00 18 */	li r3, 0x18
/* 80638298  4B C9 69 B4 */	b __nw__FUl
/* 8063829C  7C 7C 1B 79 */	or. r28, r3, r3
/* 806382A0  41 82 00 20 */	beq lbl_806382C0
/* 806382A4  3C 80 80 64 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 806382A8  38 04 9F 14 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 806382AC  90 1C 00 00 */	stw r0, 0(r28)
/* 806382B0  38 80 00 00 */	li r4, 0
/* 806382B4  4B CF 01 48 */	b init__12J3DFrameCtrlFs
/* 806382B8  38 00 00 00 */	li r0, 0
/* 806382BC  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_806382C0:
/* 806382C0  93 9F 05 D4 */	stw r28, 0x5d4(r31)
/* 806382C4  80 1F 05 D4 */	lwz r0, 0x5d4(r31)
/* 806382C8  28 00 00 00 */	cmplwi r0, 0
/* 806382CC  40 82 00 0C */	bne lbl_806382D8
/* 806382D0  38 60 00 00 */	li r3, 0
/* 806382D4  48 00 05 4C */	b lbl_80638820
lbl_806382D8:
/* 806382D8  3C 60 80 64 */	lis r3, stringBase0@ha
/* 806382DC  38 63 9A 34 */	addi r3, r3, stringBase0@l
/* 806382E0  38 80 00 35 */	li r4, 0x35
/* 806382E4  7F C5 F3 78 */	mr r5, r30
/* 806382E8  38 C0 00 80 */	li r6, 0x80
/* 806382EC  4B A0 40 00 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806382F0  7C 65 1B 78 */	mr r5, r3
/* 806382F4  80 7F 05 E8 */	lwz r3, 0x5e8(r31)
/* 806382F8  80 83 00 04 */	lwz r4, 4(r3)
/* 806382FC  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80638300  38 84 00 58 */	addi r4, r4, 0x58
/* 80638304  38 C0 00 00 */	li r6, 0
/* 80638308  38 E0 00 02 */	li r7, 2
/* 8063830C  3D 00 80 64 */	lis r8, lit_3795@ha
/* 80638310  C0 28 98 10 */	lfs f1, lit_3795@l(r8)
/* 80638314  39 00 00 00 */	li r8, 0
/* 80638318  39 20 FF FF */	li r9, -1
/* 8063831C  4B 9D 53 20 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80638320  2C 03 00 00 */	cmpwi r3, 0
/* 80638324  40 82 00 0C */	bne lbl_80638330
/* 80638328  38 60 00 00 */	li r3, 0
/* 8063832C  48 00 04 F4 */	b lbl_80638820
lbl_80638330:
/* 80638330  80 7F 05 F4 */	lwz r3, 0x5f4(r31)
/* 80638334  80 63 00 04 */	lwz r3, 4(r3)
/* 80638338  83 A3 00 04 */	lwz r29, 4(r3)
/* 8063833C  38 60 00 18 */	li r3, 0x18
/* 80638340  4B C9 69 0C */	b __nw__FUl
/* 80638344  7C 7C 1B 79 */	or. r28, r3, r3
/* 80638348  41 82 00 20 */	beq lbl_80638368
/* 8063834C  3C 80 80 64 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80638350  38 04 9F 14 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80638354  90 1C 00 00 */	stw r0, 0(r28)
/* 80638358  38 80 00 00 */	li r4, 0
/* 8063835C  4B CF 00 A0 */	b init__12J3DFrameCtrlFs
/* 80638360  38 00 00 00 */	li r0, 0
/* 80638364  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80638368:
/* 80638368  93 9F 05 D8 */	stw r28, 0x5d8(r31)
/* 8063836C  80 1F 05 D8 */	lwz r0, 0x5d8(r31)
/* 80638370  28 00 00 00 */	cmplwi r0, 0
/* 80638374  40 82 00 0C */	bne lbl_80638380
/* 80638378  38 60 00 00 */	li r3, 0
/* 8063837C  48 00 04 A4 */	b lbl_80638820
lbl_80638380:
/* 80638380  3C 60 80 64 */	lis r3, stringBase0@ha
/* 80638384  38 63 9A 34 */	addi r3, r3, stringBase0@l
/* 80638388  38 80 00 32 */	li r4, 0x32
/* 8063838C  7F C5 F3 78 */	mr r5, r30
/* 80638390  38 C0 00 80 */	li r6, 0x80
/* 80638394  4B A0 3F 58 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80638398  7C 65 1B 78 */	mr r5, r3
/* 8063839C  80 7F 05 D8 */	lwz r3, 0x5d8(r31)
/* 806383A0  38 9D 00 58 */	addi r4, r29, 0x58
/* 806383A4  38 C0 00 01 */	li r6, 1
/* 806383A8  38 E0 00 00 */	li r7, 0
/* 806383AC  3D 00 80 64 */	lis r8, lit_3795@ha
/* 806383B0  C0 28 98 10 */	lfs f1, lit_3795@l(r8)
/* 806383B4  39 00 00 00 */	li r8, 0
/* 806383B8  39 20 FF FF */	li r9, -1
/* 806383BC  4B 9D 52 80 */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 806383C0  2C 03 00 00 */	cmpwi r3, 0
/* 806383C4  40 82 00 0C */	bne lbl_806383D0
/* 806383C8  38 60 00 00 */	li r3, 0
/* 806383CC  48 00 04 54 */	b lbl_80638820
lbl_806383D0:
/* 806383D0  38 60 00 18 */	li r3, 0x18
/* 806383D4  4B C9 68 78 */	b __nw__FUl
/* 806383D8  7C 7C 1B 79 */	or. r28, r3, r3
/* 806383DC  41 82 00 20 */	beq lbl_806383FC
/* 806383E0  3C 80 80 64 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 806383E4  38 04 9F 14 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 806383E8  90 1C 00 00 */	stw r0, 0(r28)
/* 806383EC  38 80 00 00 */	li r4, 0
/* 806383F0  4B CF 00 0C */	b init__12J3DFrameCtrlFs
/* 806383F4  38 00 00 00 */	li r0, 0
/* 806383F8  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_806383FC:
/* 806383FC  93 9F 05 DC */	stw r28, 0x5dc(r31)
/* 80638400  80 1F 05 DC */	lwz r0, 0x5dc(r31)
/* 80638404  28 00 00 00 */	cmplwi r0, 0
/* 80638408  40 82 00 0C */	bne lbl_80638414
/* 8063840C  38 60 00 05 */	li r3, 5
/* 80638410  48 00 04 10 */	b lbl_80638820
lbl_80638414:
/* 80638414  3C 60 80 64 */	lis r3, stringBase0@ha
/* 80638418  38 63 9A 34 */	addi r3, r3, stringBase0@l
/* 8063841C  38 80 00 3F */	li r4, 0x3f
/* 80638420  7F C5 F3 78 */	mr r5, r30
/* 80638424  38 C0 00 80 */	li r6, 0x80
/* 80638428  4B A0 3E C4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8063842C  7C 65 1B 78 */	mr r5, r3
/* 80638430  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 80638434  38 9D 00 58 */	addi r4, r29, 0x58
/* 80638438  38 C0 00 01 */	li r6, 1
/* 8063843C  38 E0 00 00 */	li r7, 0
/* 80638440  3D 00 80 64 */	lis r8, lit_3795@ha
/* 80638444  C0 28 98 10 */	lfs f1, lit_3795@l(r8)
/* 80638448  39 00 00 00 */	li r8, 0
/* 8063844C  39 20 FF FF */	li r9, -1
/* 80638450  4B 9D 50 FC */	b init__13mDoExt_btpAnmFP16J3DMaterialTableP16J3DAnmTexPatterniifss
/* 80638454  2C 03 00 00 */	cmpwi r3, 0
/* 80638458  40 82 00 0C */	bne lbl_80638464
/* 8063845C  38 60 00 05 */	li r3, 5
/* 80638460  48 00 03 C0 */	b lbl_80638820
lbl_80638464:
/* 80638464  38 60 00 18 */	li r3, 0x18
/* 80638468  4B C9 67 E4 */	b __nw__FUl
/* 8063846C  7C 7C 1B 79 */	or. r28, r3, r3
/* 80638470  41 82 00 20 */	beq lbl_80638490
/* 80638474  3C 80 80 64 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80638478  38 04 9F 14 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 8063847C  90 1C 00 00 */	stw r0, 0(r28)
/* 80638480  38 80 00 00 */	li r4, 0
/* 80638484  4B CE FF 78 */	b init__12J3DFrameCtrlFs
/* 80638488  38 00 00 00 */	li r0, 0
/* 8063848C  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80638490:
/* 80638490  93 9F 05 E0 */	stw r28, 0x5e0(r31)
/* 80638494  80 1F 05 E0 */	lwz r0, 0x5e0(r31)
/* 80638498  28 00 00 00 */	cmplwi r0, 0
/* 8063849C  40 82 00 0C */	bne lbl_806384A8
/* 806384A0  38 60 00 00 */	li r3, 0
/* 806384A4  48 00 03 7C */	b lbl_80638820
lbl_806384A8:
/* 806384A8  3C 60 80 64 */	lis r3, stringBase0@ha
/* 806384AC  38 63 9A 34 */	addi r3, r3, stringBase0@l
/* 806384B0  38 80 00 24 */	li r4, 0x24
/* 806384B4  7F C5 F3 78 */	mr r5, r30
/* 806384B8  38 C0 00 80 */	li r6, 0x80
/* 806384BC  4B A0 3E 30 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806384C0  7C 65 1B 78 */	mr r5, r3
/* 806384C4  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 806384C8  38 9D 00 58 */	addi r4, r29, 0x58
/* 806384CC  38 C0 00 01 */	li r6, 1
/* 806384D0  38 E0 00 02 */	li r7, 2
/* 806384D4  3D 00 80 64 */	lis r8, lit_3795@ha
/* 806384D8  C0 28 98 10 */	lfs f1, lit_3795@l(r8)
/* 806384DC  39 00 00 00 */	li r8, 0
/* 806384E0  39 20 FF FF */	li r9, -1
/* 806384E4  4B 9D 52 28 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 806384E8  2C 03 00 00 */	cmpwi r3, 0
/* 806384EC  40 82 00 0C */	bne lbl_806384F8
/* 806384F0  38 60 00 00 */	li r3, 0
/* 806384F4  48 00 03 2C */	b lbl_80638820
lbl_806384F8:
/* 806384F8  38 60 00 18 */	li r3, 0x18
/* 806384FC  4B C9 67 50 */	b __nw__FUl
/* 80638500  7C 7C 1B 79 */	or. r28, r3, r3
/* 80638504  41 82 00 20 */	beq lbl_80638524
/* 80638508  3C 80 80 64 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 8063850C  38 04 9F 14 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80638510  90 1C 00 00 */	stw r0, 0(r28)
/* 80638514  38 80 00 00 */	li r4, 0
/* 80638518  4B CE FE E4 */	b init__12J3DFrameCtrlFs
/* 8063851C  38 00 00 00 */	li r0, 0
/* 80638520  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_80638524:
/* 80638524  93 9F 05 E4 */	stw r28, 0x5e4(r31)
/* 80638528  80 1F 05 E4 */	lwz r0, 0x5e4(r31)
/* 8063852C  28 00 00 00 */	cmplwi r0, 0
/* 80638530  40 82 00 0C */	bne lbl_8063853C
/* 80638534  38 60 00 00 */	li r3, 0
/* 80638538  48 00 02 E8 */	b lbl_80638820
lbl_8063853C:
/* 8063853C  3C 60 80 64 */	lis r3, stringBase0@ha
/* 80638540  38 63 9A 34 */	addi r3, r3, stringBase0@l
/* 80638544  38 80 00 27 */	li r4, 0x27
/* 80638548  7F C5 F3 78 */	mr r5, r30
/* 8063854C  38 C0 00 80 */	li r6, 0x80
/* 80638550  4B A0 3D 9C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80638554  7C 65 1B 78 */	mr r5, r3
/* 80638558  80 7F 05 E4 */	lwz r3, 0x5e4(r31)
/* 8063855C  38 9D 00 58 */	addi r4, r29, 0x58
/* 80638560  38 C0 00 01 */	li r6, 1
/* 80638564  38 E0 00 00 */	li r7, 0
/* 80638568  3D 00 80 64 */	lis r8, lit_3800@ha
/* 8063856C  C0 28 98 24 */	lfs f1, lit_3800@l(r8)
/* 80638570  39 00 00 00 */	li r8, 0
/* 80638574  39 20 FF FF */	li r9, -1
/* 80638578  4B 9D 51 94 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 8063857C  2C 03 00 00 */	cmpwi r3, 0
/* 80638580  40 82 00 0C */	bne lbl_8063858C
/* 80638584  38 60 00 00 */	li r3, 0
/* 80638588  48 00 02 98 */	b lbl_80638820
lbl_8063858C:
/* 8063858C  38 60 00 C0 */	li r3, 0xc0
/* 80638590  4B C9 66 BC */	b __nw__FUl
/* 80638594  7C 60 1B 79 */	or. r0, r3, r3
/* 80638598  41 82 00 0C */	beq lbl_806385A4
/* 8063859C  4B A4 33 D4 */	b __ct__4dBgWFv
/* 806385A0  7C 60 1B 78 */	mr r0, r3
lbl_806385A4:
/* 806385A4  90 1F 10 14 */	stw r0, 0x1014(r31)
/* 806385A8  80 1F 10 14 */	lwz r0, 0x1014(r31)
/* 806385AC  28 00 00 00 */	cmplwi r0, 0
/* 806385B0  40 82 00 0C */	bne lbl_806385BC
/* 806385B4  38 60 00 00 */	li r3, 0
/* 806385B8  48 00 02 68 */	b lbl_80638820
lbl_806385BC:
/* 806385BC  3C 60 80 64 */	lis r3, stringBase0@ha
/* 806385C0  38 63 9A 34 */	addi r3, r3, stringBase0@l
/* 806385C4  38 63 00 11 */	addi r3, r3, 0x11
/* 806385C8  38 80 00 09 */	li r4, 9
/* 806385CC  7F C5 F3 78 */	mr r5, r30
/* 806385D0  38 C0 00 80 */	li r6, 0x80
/* 806385D4  4B A0 3D 18 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806385D8  7C 64 1B 78 */	mr r4, r3
/* 806385DC  80 7F 10 14 */	lwz r3, 0x1014(r31)
/* 806385E0  38 A0 00 00 */	li r5, 0
/* 806385E4  38 DF 0F E4 */	addi r6, r31, 0xfe4
/* 806385E8  4B A4 19 50 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 806385EC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 806385F0  28 00 00 01 */	cmplwi r0, 1
/* 806385F4  40 82 00 0C */	bne lbl_80638600
/* 806385F8  38 60 00 00 */	li r3, 0
/* 806385FC  48 00 02 24 */	b lbl_80638820
lbl_80638600:
/* 80638600  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80638604  38 03 5A 24 */	addi r0, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80638608  80 7F 10 14 */	lwz r3, 0x1014(r31)
/* 8063860C  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80638610  3C 60 80 64 */	lis r3, stringBase0@ha
/* 80638614  38 63 9A 34 */	addi r3, r3, stringBase0@l
/* 80638618  38 63 00 11 */	addi r3, r3, 0x11
/* 8063861C  38 80 00 04 */	li r4, 4
/* 80638620  7F C5 F3 78 */	mr r5, r30
/* 80638624  38 C0 00 80 */	li r6, 0x80
/* 80638628  4B A0 3C C4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8063862C  38 80 00 00 */	li r4, 0
/* 80638630  3C A0 31 00 */	lis r5, 0x3100 /* 0x31000084@ha */
/* 80638634  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x31000084@l */
/* 80638638  4B 9D C6 1C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8063863C  90 7F 05 FC */	stw r3, 0x5fc(r31)
/* 80638640  80 1F 05 FC */	lwz r0, 0x5fc(r31)
/* 80638644  28 00 00 00 */	cmplwi r0, 0
/* 80638648  40 82 00 0C */	bne lbl_80638654
/* 8063864C  38 60 00 00 */	li r3, 0
/* 80638650  48 00 01 D0 */	b lbl_80638820
lbl_80638654:
/* 80638654  38 60 00 C0 */	li r3, 0xc0
/* 80638658  4B C9 65 F4 */	b __nw__FUl
/* 8063865C  7C 60 1B 79 */	or. r0, r3, r3
/* 80638660  41 82 00 0C */	beq lbl_8063866C
/* 80638664  4B A4 33 0C */	b __ct__4dBgWFv
/* 80638668  7C 60 1B 78 */	mr r0, r3
lbl_8063866C:
/* 8063866C  90 1F 10 18 */	stw r0, 0x1018(r31)
/* 80638670  80 1F 10 18 */	lwz r0, 0x1018(r31)
/* 80638674  28 00 00 00 */	cmplwi r0, 0
/* 80638678  40 82 00 0C */	bne lbl_80638684
/* 8063867C  38 60 00 00 */	li r3, 0
/* 80638680  48 00 01 A0 */	b lbl_80638820
lbl_80638684:
/* 80638684  3C 60 80 64 */	lis r3, stringBase0@ha
/* 80638688  38 63 9A 34 */	addi r3, r3, stringBase0@l
/* 8063868C  38 63 00 11 */	addi r3, r3, 0x11
/* 80638690  38 80 00 0A */	li r4, 0xa
/* 80638694  7F C5 F3 78 */	mr r5, r30
/* 80638698  38 C0 00 80 */	li r6, 0x80
/* 8063869C  4B A0 3C 50 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806386A0  7C 64 1B 78 */	mr r4, r3
/* 806386A4  80 7F 10 18 */	lwz r3, 0x1018(r31)
/* 806386A8  38 A0 00 00 */	li r5, 0
/* 806386AC  38 DF 0F E4 */	addi r6, r31, 0xfe4
/* 806386B0  4B A4 18 88 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 806386B4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 806386B8  28 00 00 01 */	cmplwi r0, 1
/* 806386BC  40 82 00 0C */	bne lbl_806386C8
/* 806386C0  38 60 00 00 */	li r3, 0
/* 806386C4  48 00 01 5C */	b lbl_80638820
lbl_806386C8:
/* 806386C8  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 806386CC  38 03 5A 24 */	addi r0, r3, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 806386D0  80 7F 10 18 */	lwz r3, 0x1018(r31)
/* 806386D4  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 806386D8  3C 60 80 64 */	lis r3, stringBase0@ha
/* 806386DC  38 63 9A 34 */	addi r3, r3, stringBase0@l
/* 806386E0  38 63 00 11 */	addi r3, r3, 0x11
/* 806386E4  38 80 00 05 */	li r4, 5
/* 806386E8  7F C5 F3 78 */	mr r5, r30
/* 806386EC  38 C0 00 80 */	li r6, 0x80
/* 806386F0  4B A0 3B FC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806386F4  38 80 00 00 */	li r4, 0
/* 806386F8  3C A0 31 00 */	lis r5, 0x3100 /* 0x31000084@ha */
/* 806386FC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x31000084@l */
/* 80638700  4B 9D C5 54 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80638704  90 7F 06 00 */	stw r3, 0x600(r31)
/* 80638708  80 1F 06 00 */	lwz r0, 0x600(r31)
/* 8063870C  28 00 00 00 */	cmplwi r0, 0
/* 80638710  40 82 00 0C */	bne lbl_8063871C
/* 80638714  38 60 00 00 */	li r3, 0
/* 80638718  48 00 01 08 */	b lbl_80638820
lbl_8063871C:
/* 8063871C  3C 60 80 64 */	lis r3, stringBase0@ha
/* 80638720  38 63 9A 34 */	addi r3, r3, stringBase0@l
/* 80638724  38 63 00 11 */	addi r3, r3, 0x11
/* 80638728  38 80 00 06 */	li r4, 6
/* 8063872C  7F C5 F3 78 */	mr r5, r30
/* 80638730  38 C0 00 80 */	li r6, 0x80
/* 80638734  4B A0 3B B8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80638738  38 80 00 00 */	li r4, 0
/* 8063873C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80638740  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80638744  4B 9D C5 10 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80638748  90 7F 06 04 */	stw r3, 0x604(r31)
/* 8063874C  80 1F 06 04 */	lwz r0, 0x604(r31)
/* 80638750  28 00 00 00 */	cmplwi r0, 0
/* 80638754  40 82 00 0C */	bne lbl_80638760
/* 80638758  38 60 00 00 */	li r3, 0
/* 8063875C  48 00 00 C4 */	b lbl_80638820
lbl_80638760:
/* 80638760  3C 60 80 64 */	lis r3, stringBase0@ha
/* 80638764  38 63 9A 34 */	addi r3, r3, stringBase0@l
/* 80638768  38 63 00 18 */	addi r3, r3, 0x18
/* 8063876C  38 80 00 0B */	li r4, 0xb
/* 80638770  7F C5 F3 78 */	mr r5, r30
/* 80638774  38 C0 00 80 */	li r6, 0x80
/* 80638778  4B A0 3B 74 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8063877C  7C 7D 1B 78 */	mr r29, r3
/* 80638780  38 60 00 58 */	li r3, 0x58
/* 80638784  4B C9 64 C8 */	b __nw__FUl
/* 80638788  7C 7C 1B 79 */	or. r28, r3, r3
/* 8063878C  41 82 00 6C */	beq lbl_806387F8
/* 80638790  3C 60 80 64 */	lis r3, stringBase0@ha
/* 80638794  38 63 9A 34 */	addi r3, r3, stringBase0@l
/* 80638798  38 63 00 1C */	addi r3, r3, 0x1c
/* 8063879C  38 80 00 1A */	li r4, 0x1a
/* 806387A0  7F C5 F3 78 */	mr r5, r30
/* 806387A4  38 C0 00 80 */	li r6, 0x80
/* 806387A8  4B A0 3B 44 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806387AC  7C 67 1B 78 */	mr r7, r3
/* 806387B0  38 1F 06 34 */	addi r0, r31, 0x634
/* 806387B4  90 01 00 08 */	stw r0, 8(r1)
/* 806387B8  38 00 00 00 */	li r0, 0
/* 806387BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 806387C0  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 806387C4  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 806387C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 806387CC  7F 83 E3 78 */	mr r3, r28
/* 806387D0  7F A4 EB 78 */	mr r4, r29
/* 806387D4  38 A0 00 00 */	li r5, 0
/* 806387D8  38 C0 00 00 */	li r6, 0
/* 806387DC  39 00 00 02 */	li r8, 2
/* 806387E0  3D 20 80 64 */	lis r9, lit_3795@ha
/* 806387E4  C0 29 98 10 */	lfs f1, lit_3795@l(r9)
/* 806387E8  39 20 00 00 */	li r9, 0
/* 806387EC  39 40 FF FF */	li r10, -1
/* 806387F0  4B 9D 7F E0 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 806387F4  7C 7C 1B 78 */	mr r28, r3
lbl_806387F8:
/* 806387F8  93 9F 05 F8 */	stw r28, 0x5f8(r31)
/* 806387FC  80 7F 05 F8 */	lwz r3, 0x5f8(r31)
/* 80638800  28 03 00 00 */	cmplwi r3, 0
/* 80638804  41 82 00 10 */	beq lbl_80638814
/* 80638808  80 03 00 04 */	lwz r0, 4(r3)
/* 8063880C  28 00 00 00 */	cmplwi r0, 0
/* 80638810  40 82 00 0C */	bne lbl_8063881C
lbl_80638814:
/* 80638814  38 60 00 00 */	li r3, 0
/* 80638818  48 00 00 08 */	b lbl_80638820
lbl_8063881C:
/* 8063881C  38 60 00 01 */	li r3, 1
lbl_80638820:
/* 80638820  39 61 00 30 */	addi r11, r1, 0x30
/* 80638824  4B D2 9A 00 */	b _restgpr_28
/* 80638828  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8063882C  7C 08 03 A6 */	mtlr r0
/* 80638830  38 21 00 30 */	addi r1, r1, 0x30
/* 80638834  4E 80 00 20 */	blr 
