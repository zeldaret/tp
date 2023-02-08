lbl_808031E8:
/* 808031E8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 808031EC  7C 08 02 A6 */	mflr r0
/* 808031F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 808031F4  39 61 00 30 */	addi r11, r1, 0x30
/* 808031F8  4B B5 EF DD */	bl _savegpr_27
/* 808031FC  7C 7F 1B 78 */	mr r31, r3
/* 80803200  38 60 00 58 */	li r3, 0x58
/* 80803204  4B AC BA 49 */	bl __nw__FUl
/* 80803208  7C 7E 1B 79 */	or. r30, r3, r3
/* 8080320C  41 82 00 94 */	beq lbl_808032A0
/* 80803210  3C 60 80 80 */	lis r3, d_a_e_yh__stringBase0@ha /* 0x808043DC@ha */
/* 80803214  38 63 43 DC */	addi r3, r3, d_a_e_yh__stringBase0@l /* 0x808043DC@l */
/* 80803218  38 80 00 13 */	li r4, 0x13
/* 8080321C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80803220  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80803224  3F 85 00 02 */	addis r28, r5, 2
/* 80803228  3B 9C C2 F8 */	addi r28, r28, -15624
/* 8080322C  7F 85 E3 78 */	mr r5, r28
/* 80803230  38 C0 00 80 */	li r6, 0x80
/* 80803234  4B 83 90 B9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80803238  7C 7D 1B 78 */	mr r29, r3
/* 8080323C  3C 60 80 80 */	lis r3, d_a_e_yh__stringBase0@ha /* 0x808043DC@ha */
/* 80803240  38 63 43 DC */	addi r3, r3, d_a_e_yh__stringBase0@l /* 0x808043DC@l */
/* 80803244  38 80 00 18 */	li r4, 0x18
/* 80803248  7F 85 E3 78 */	mr r5, r28
/* 8080324C  38 C0 00 80 */	li r6, 0x80
/* 80803250  4B 83 90 9D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80803254  7C 64 1B 78 */	mr r4, r3
/* 80803258  38 1F 05 BC */	addi r0, r31, 0x5bc
/* 8080325C  90 01 00 08 */	stw r0, 8(r1)
/* 80803260  3C 00 00 08 */	lis r0, 8
/* 80803264  90 01 00 0C */	stw r0, 0xc(r1)
/* 80803268  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 8080326C  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80803270  90 01 00 10 */	stw r0, 0x10(r1)
/* 80803274  7F C3 F3 78 */	mr r3, r30
/* 80803278  38 A0 00 00 */	li r5, 0
/* 8080327C  38 C0 00 00 */	li r6, 0
/* 80803280  7F A7 EB 78 */	mr r7, r29
/* 80803284  39 00 00 02 */	li r8, 2
/* 80803288  3D 20 80 80 */	lis r9, lit_3904@ha /* 0x80804284@ha */
/* 8080328C  C0 29 42 84 */	lfs f1, lit_3904@l(r9)  /* 0x80804284@l */
/* 80803290  39 20 00 00 */	li r9, 0
/* 80803294  39 40 FF FF */	li r10, -1
/* 80803298  4B 80 D5 39 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8080329C  7C 7E 1B 78 */	mr r30, r3
lbl_808032A0:
/* 808032A0  93 DF 05 B8 */	stw r30, 0x5b8(r31)
/* 808032A4  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 808032A8  28 03 00 00 */	cmplwi r3, 0
/* 808032AC  41 82 00 10 */	beq lbl_808032BC
/* 808032B0  83 83 00 04 */	lwz r28, 4(r3)
/* 808032B4  28 1C 00 00 */	cmplwi r28, 0
/* 808032B8  40 82 00 0C */	bne lbl_808032C4
lbl_808032BC:
/* 808032BC  38 60 00 00 */	li r3, 0
/* 808032C0  48 00 01 9C */	b lbl_8080345C
lbl_808032C4:
/* 808032C4  38 60 00 18 */	li r3, 0x18
/* 808032C8  4B AC B9 85 */	bl __nw__FUl
/* 808032CC  7C 7E 1B 79 */	or. r30, r3, r3
/* 808032D0  41 82 00 20 */	beq lbl_808032F0
/* 808032D4  3C 80 80 80 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x808046F8@ha */
/* 808032D8  38 04 46 F8 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x808046F8@l */
/* 808032DC  90 1E 00 00 */	stw r0, 0(r30)
/* 808032E0  38 80 00 00 */	li r4, 0
/* 808032E4  4B B2 51 19 */	bl init__12J3DFrameCtrlFs
/* 808032E8  38 00 00 00 */	li r0, 0
/* 808032EC  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_808032F0:
/* 808032F0  93 DF 06 60 */	stw r30, 0x660(r31)
/* 808032F4  80 1F 06 60 */	lwz r0, 0x660(r31)
/* 808032F8  28 00 00 00 */	cmplwi r0, 0
/* 808032FC  40 82 00 0C */	bne lbl_80803308
/* 80803300  38 60 00 00 */	li r3, 0
/* 80803304  48 00 01 58 */	b lbl_8080345C
lbl_80803308:
/* 80803308  3C 60 80 80 */	lis r3, d_a_e_yh__stringBase0@ha /* 0x808043DC@ha */
/* 8080330C  38 63 43 DC */	addi r3, r3, d_a_e_yh__stringBase0@l /* 0x808043DC@l */
/* 80803310  38 80 00 1D */	li r4, 0x1d
/* 80803314  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80803318  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8080331C  3F C5 00 02 */	addis r30, r5, 2
/* 80803320  3B DE C2 F8 */	addi r30, r30, -15624
/* 80803324  7F C5 F3 78 */	mr r5, r30
/* 80803328  38 C0 00 80 */	li r6, 0x80
/* 8080332C  4B 83 8F C1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80803330  7C 65 1B 78 */	mr r5, r3
/* 80803334  80 9C 00 04 */	lwz r4, 4(r28)
/* 80803338  80 7F 06 60 */	lwz r3, 0x660(r31)
/* 8080333C  38 84 00 58 */	addi r4, r4, 0x58
/* 80803340  38 C0 00 01 */	li r6, 1
/* 80803344  38 E0 00 02 */	li r7, 2
/* 80803348  3D 00 80 80 */	lis r8, lit_3904@ha /* 0x80804284@ha */
/* 8080334C  C0 28 42 84 */	lfs f1, lit_3904@l(r8)  /* 0x80804284@l */
/* 80803350  39 00 00 00 */	li r8, 0
/* 80803354  39 20 FF FF */	li r9, -1
/* 80803358  4B 80 A3 B5 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 8080335C  2C 03 00 00 */	cmpwi r3, 0
/* 80803360  40 82 00 0C */	bne lbl_8080336C
/* 80803364  38 60 00 00 */	li r3, 0
/* 80803368  48 00 00 F4 */	b lbl_8080345C
lbl_8080336C:
/* 8080336C  3C 60 80 80 */	lis r3, d_a_e_yh__stringBase0@ha /* 0x808043DC@ha */
/* 80803370  38 63 43 DC */	addi r3, r3, d_a_e_yh__stringBase0@l /* 0x808043DC@l */
/* 80803374  38 80 00 20 */	li r4, 0x20
/* 80803378  7F C5 F3 78 */	mr r5, r30
/* 8080337C  38 C0 00 80 */	li r6, 0x80
/* 80803380  4B 83 8F 6D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80803384  7C 66 1B 78 */	mr r6, r3
/* 80803388  38 7F 08 08 */	addi r3, r31, 0x808
/* 8080338C  38 80 00 01 */	li r4, 1
/* 80803390  38 A0 00 0C */	li r5, 0xc
/* 80803394  38 E0 00 01 */	li r7, 1
/* 80803398  4B 80 FF C9 */	bl init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi
/* 8080339C  2C 03 00 00 */	cmpwi r3, 0
/* 808033A0  40 82 00 0C */	bne lbl_808033AC
/* 808033A4  38 60 00 00 */	li r3, 0
/* 808033A8  48 00 00 B4 */	b lbl_8080345C
lbl_808033AC:
/* 808033AC  80 7F 08 40 */	lwz r3, 0x840(r31)
/* 808033B0  80 83 00 04 */	lwz r4, 4(r3)
/* 808033B4  3C 60 80 80 */	lis r3, lit_4145@ha /* 0x808042D0@ha */
/* 808033B8  C0 03 42 D0 */	lfs f0, lit_4145@l(r3)  /* 0x808042D0@l */
/* 808033BC  38 00 00 0C */	li r0, 0xc
/* 808033C0  7C 09 03 A6 */	mtctr r0
lbl_808033C4:
/* 808033C4  D0 04 00 00 */	stfs f0, 0(r4)
/* 808033C8  38 84 00 04 */	addi r4, r4, 4
/* 808033CC  42 00 FF F8 */	bdnz lbl_808033C4
/* 808033D0  3C 60 80 80 */	lis r3, d_a_e_yh__stringBase0@ha /* 0x808043DC@ha */
/* 808033D4  38 63 43 DC */	addi r3, r3, d_a_e_yh__stringBase0@l /* 0x808043DC@l */
/* 808033D8  38 80 00 1A */	li r4, 0x1a
/* 808033DC  7F C5 F3 78 */	mr r5, r30
/* 808033E0  38 C0 00 80 */	li r6, 0x80
/* 808033E4  4B 83 8F 09 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 808033E8  7C 7D 1B 78 */	mr r29, r3
/* 808033EC  3B 60 00 01 */	li r27, 1
/* 808033F0  3B C0 00 04 */	li r30, 4
lbl_808033F4:
/* 808033F4  57 60 07 FF */	clrlwi. r0, r27, 0x1f
/* 808033F8  41 82 00 50 */	beq lbl_80803448
/* 808033FC  7F A3 EB 78 */	mr r3, r29
/* 80803400  3C 80 00 08 */	lis r4, 8
/* 80803404  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80803408  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 8080340C  4B 81 18 49 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80803410  7F 9F F2 14 */	add r28, r31, r30
/* 80803414  90 7C 07 78 */	stw r3, 0x778(r28)
/* 80803418  80 1C 07 78 */	lwz r0, 0x778(r28)
/* 8080341C  28 00 00 00 */	cmplwi r0, 0
/* 80803420  40 82 00 0C */	bne lbl_8080342C
/* 80803424  38 60 00 00 */	li r3, 0
/* 80803428  48 00 00 34 */	b lbl_8080345C
lbl_8080342C:
/* 8080342C  3C 60 80 80 */	lis r3, lit_3904@ha /* 0x80804284@ha */
/* 80803430  C0 23 42 84 */	lfs f1, lit_3904@l(r3)  /* 0x80804284@l */
/* 80803434  4B A6 45 21 */	bl cM_rndF__Ff
/* 80803438  3C 60 80 80 */	lis r3, lit_3904@ha /* 0x80804284@ha */
/* 8080343C  C0 03 42 84 */	lfs f0, lit_3904@l(r3)  /* 0x80804284@l */
/* 80803440  EC 00 08 2A */	fadds f0, f0, f1
/* 80803444  D0 1C 07 D8 */	stfs f0, 0x7d8(r28)
lbl_80803448:
/* 80803448  3B 7B 00 01 */	addi r27, r27, 1
/* 8080344C  2C 1B 00 0B */	cmpwi r27, 0xb
/* 80803450  3B DE 00 04 */	addi r30, r30, 4
/* 80803454  41 80 FF A0 */	blt lbl_808033F4
/* 80803458  38 60 00 01 */	li r3, 1
lbl_8080345C:
/* 8080345C  39 61 00 30 */	addi r11, r1, 0x30
/* 80803460  4B B5 ED C1 */	bl _restgpr_27
/* 80803464  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80803468  7C 08 03 A6 */	mtlr r0
/* 8080346C  38 21 00 30 */	addi r1, r1, 0x30
/* 80803470  4E 80 00 20 */	blr 
