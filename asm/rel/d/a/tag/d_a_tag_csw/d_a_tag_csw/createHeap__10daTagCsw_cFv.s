lbl_80D56EF8:
/* 80D56EF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D56EFC  7C 08 02 A6 */	mflr r0
/* 80D56F00  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D56F04  39 61 00 20 */	addi r11, r1, 0x20
/* 80D56F08  4B 60 B2 D4 */	b _savegpr_29
/* 80D56F0C  7C 7F 1B 78 */	mr r31, r3
/* 80D56F10  3C 60 80 D6 */	lis r3, l_arcName@ha
/* 80D56F14  38 63 86 48 */	addi r3, r3, l_arcName@l
/* 80D56F18  80 63 00 00 */	lwz r3, 0(r3)
/* 80D56F1C  38 80 00 05 */	li r4, 5
/* 80D56F20  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D56F24  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D56F28  3F C5 00 02 */	addis r30, r5, 2
/* 80D56F2C  3B DE C2 F8 */	addi r30, r30, -15624
/* 80D56F30  7F C5 F3 78 */	mr r5, r30
/* 80D56F34  38 C0 00 80 */	li r6, 0x80
/* 80D56F38  4B 2E 53 B4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D56F3C  38 80 00 00 */	li r4, 0
/* 80D56F40  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D56F44  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D56F48  4B 2B DD 0C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D56F4C  90 7F 05 74 */	stw r3, 0x574(r31)
/* 80D56F50  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80D56F54  28 00 00 00 */	cmplwi r0, 0
/* 80D56F58  40 82 00 0C */	bne lbl_80D56F64
/* 80D56F5C  38 60 00 00 */	li r3, 0
/* 80D56F60  48 00 03 40 */	b lbl_80D572A0
lbl_80D56F64:
/* 80D56F64  3C 60 80 D6 */	lis r3, l_arcName@ha
/* 80D56F68  38 63 86 48 */	addi r3, r3, l_arcName@l
/* 80D56F6C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D56F70  38 80 00 06 */	li r4, 6
/* 80D56F74  7F C5 F3 78 */	mr r5, r30
/* 80D56F78  38 C0 00 80 */	li r6, 0x80
/* 80D56F7C  4B 2E 53 70 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D56F80  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80D56F84  2C 00 00 00 */	cmpwi r0, 0
/* 80D56F88  40 82 00 20 */	bne lbl_80D56FA8
/* 80D56F8C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D56F90  54 00 FE 3E */	rlwinm r0, r0, 0x1f, 0x18, 0x1f
/* 80D56F94  2C 00 00 06 */	cmpwi r0, 6
/* 80D56F98  40 82 00 10 */	bne lbl_80D56FA8
/* 80D56F9C  38 00 00 00 */	li r0, 0
/* 80D56FA0  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80D56FA4  48 00 00 2C */	b lbl_80D56FD0
lbl_80D56FA8:
/* 80D56FA8  38 80 00 00 */	li r4, 0
/* 80D56FAC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D56FB0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D56FB4  4B 2B DC A0 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D56FB8  90 7F 05 78 */	stw r3, 0x578(r31)
/* 80D56FBC  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 80D56FC0  28 00 00 00 */	cmplwi r0, 0
/* 80D56FC4  40 82 00 0C */	bne lbl_80D56FD0
/* 80D56FC8  38 60 00 00 */	li r3, 0
/* 80D56FCC  48 00 02 D4 */	b lbl_80D572A0
lbl_80D56FD0:
/* 80D56FD0  C0 1F 08 F0 */	lfs f0, 0x8f0(r31)
/* 80D56FD4  D0 1F 08 EC */	stfs f0, 0x8ec(r31)
/* 80D56FD8  D0 1F 08 E8 */	stfs f0, 0x8e8(r31)
/* 80D56FDC  7F E3 FB 78 */	mr r3, r31
/* 80D56FE0  4B FF FD B9 */	bl setMtx__10daTagCsw_cFv
/* 80D56FE4  38 60 00 18 */	li r3, 0x18
/* 80D56FE8  4B 57 7C 64 */	b __nw__FUl
/* 80D56FEC  7C 7D 1B 79 */	or. r29, r3, r3
/* 80D56FF0  41 82 00 20 */	beq lbl_80D57010
/* 80D56FF4  3C 80 80 D6 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80D56FF8  38 04 87 24 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80D56FFC  90 1D 00 00 */	stw r0, 0(r29)
/* 80D57000  38 80 00 00 */	li r4, 0
/* 80D57004  4B 5D 13 F8 */	b init__12J3DFrameCtrlFs
/* 80D57008  38 00 00 00 */	li r0, 0
/* 80D5700C  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80D57010:
/* 80D57010  93 BF 05 7C */	stw r29, 0x57c(r31)
/* 80D57014  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 80D57018  28 00 00 00 */	cmplwi r0, 0
/* 80D5701C  40 82 00 0C */	bne lbl_80D57028
/* 80D57020  38 60 00 00 */	li r3, 0
/* 80D57024  48 00 02 7C */	b lbl_80D572A0
lbl_80D57028:
/* 80D57028  3C 60 80 D6 */	lis r3, l_arcName@ha
/* 80D5702C  38 63 86 48 */	addi r3, r3, l_arcName@l
/* 80D57030  80 63 00 00 */	lwz r3, 0(r3)
/* 80D57034  38 80 00 09 */	li r4, 9
/* 80D57038  7F C5 F3 78 */	mr r5, r30
/* 80D5703C  38 C0 00 80 */	li r6, 0x80
/* 80D57040  4B 2E 52 AC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D57044  7C 65 1B 78 */	mr r5, r3
/* 80D57048  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80D5704C  80 83 00 04 */	lwz r4, 4(r3)
/* 80D57050  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80D57054  38 84 00 58 */	addi r4, r4, 0x58
/* 80D57058  38 C0 00 01 */	li r6, 1
/* 80D5705C  38 E0 00 00 */	li r7, 0
/* 80D57060  3D 00 80 D6 */	lis r8, lit_3725@ha
/* 80D57064  C0 28 85 D0 */	lfs f1, lit_3725@l(r8)
/* 80D57068  39 00 00 00 */	li r8, 0
/* 80D5706C  39 20 FF FF */	li r9, -1
/* 80D57070  4B 2B 66 9C */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80D57074  2C 03 00 00 */	cmpwi r3, 0
/* 80D57078  40 82 00 0C */	bne lbl_80D57084
/* 80D5707C  38 60 00 00 */	li r3, 0
/* 80D57080  48 00 02 20 */	b lbl_80D572A0
lbl_80D57084:
/* 80D57084  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 80D57088  28 00 00 00 */	cmplwi r0, 0
/* 80D5708C  40 82 00 10 */	bne lbl_80D5709C
/* 80D57090  38 00 00 00 */	li r0, 0
/* 80D57094  90 1F 05 80 */	stw r0, 0x580(r31)
/* 80D57098  48 00 00 A4 */	b lbl_80D5713C
lbl_80D5709C:
/* 80D5709C  38 60 00 18 */	li r3, 0x18
/* 80D570A0  4B 57 7B AC */	b __nw__FUl
/* 80D570A4  7C 7D 1B 79 */	or. r29, r3, r3
/* 80D570A8  41 82 00 20 */	beq lbl_80D570C8
/* 80D570AC  3C 80 80 D6 */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80D570B0  38 04 87 24 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80D570B4  90 1D 00 00 */	stw r0, 0(r29)
/* 80D570B8  38 80 00 00 */	li r4, 0
/* 80D570BC  4B 5D 13 40 */	b init__12J3DFrameCtrlFs
/* 80D570C0  38 00 00 00 */	li r0, 0
/* 80D570C4  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80D570C8:
/* 80D570C8  93 BF 05 80 */	stw r29, 0x580(r31)
/* 80D570CC  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 80D570D0  28 00 00 00 */	cmplwi r0, 0
/* 80D570D4  40 82 00 0C */	bne lbl_80D570E0
/* 80D570D8  38 60 00 00 */	li r3, 0
/* 80D570DC  48 00 01 C4 */	b lbl_80D572A0
lbl_80D570E0:
/* 80D570E0  3C 60 80 D6 */	lis r3, l_arcName@ha
/* 80D570E4  38 63 86 48 */	addi r3, r3, l_arcName@l
/* 80D570E8  80 63 00 00 */	lwz r3, 0(r3)
/* 80D570EC  38 80 00 0A */	li r4, 0xa
/* 80D570F0  7F C5 F3 78 */	mr r5, r30
/* 80D570F4  38 C0 00 80 */	li r6, 0x80
/* 80D570F8  4B 2E 51 F4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D570FC  7C 65 1B 78 */	mr r5, r3
/* 80D57100  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80D57104  80 83 00 04 */	lwz r4, 4(r3)
/* 80D57108  80 7F 05 80 */	lwz r3, 0x580(r31)
/* 80D5710C  38 84 00 58 */	addi r4, r4, 0x58
/* 80D57110  38 C0 00 01 */	li r6, 1
/* 80D57114  38 E0 00 00 */	li r7, 0
/* 80D57118  3D 00 80 D6 */	lis r8, lit_3725@ha
/* 80D5711C  C0 28 85 D0 */	lfs f1, lit_3725@l(r8)
/* 80D57120  39 00 00 00 */	li r8, 0
/* 80D57124  39 20 FF FF */	li r9, -1
/* 80D57128  4B 2B 65 E4 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80D5712C  2C 03 00 00 */	cmpwi r3, 0
/* 80D57130  40 82 00 0C */	bne lbl_80D5713C
/* 80D57134  38 60 00 00 */	li r3, 0
/* 80D57138  48 00 01 68 */	b lbl_80D572A0
lbl_80D5713C:
/* 80D5713C  38 60 00 C0 */	li r3, 0xc0
/* 80D57140  4B 57 7B 0C */	b __nw__FUl
/* 80D57144  7C 60 1B 79 */	or. r0, r3, r3
/* 80D57148  41 82 00 0C */	beq lbl_80D57154
/* 80D5714C  4B 32 48 24 */	b __ct__4dBgWFv
/* 80D57150  7C 60 1B 78 */	mr r0, r3
lbl_80D57154:
/* 80D57154  90 1F 05 84 */	stw r0, 0x584(r31)
/* 80D57158  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 80D5715C  28 00 00 00 */	cmplwi r0, 0
/* 80D57160  40 82 00 0C */	bne lbl_80D5716C
/* 80D57164  38 60 00 00 */	li r3, 0
/* 80D57168  48 00 01 38 */	b lbl_80D572A0
lbl_80D5716C:
/* 80D5716C  3C 60 80 D6 */	lis r3, l_arcName@ha
/* 80D57170  38 63 86 48 */	addi r3, r3, l_arcName@l
/* 80D57174  80 63 00 00 */	lwz r3, 0(r3)
/* 80D57178  38 80 00 0D */	li r4, 0xd
/* 80D5717C  7F C5 F3 78 */	mr r5, r30
/* 80D57180  38 C0 00 80 */	li r6, 0x80
/* 80D57184  4B 2E 51 68 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D57188  7C 64 1B 78 */	mr r4, r3
/* 80D5718C  80 7F 05 84 */	lwz r3, 0x584(r31)
/* 80D57190  38 A0 00 01 */	li r5, 1
/* 80D57194  38 DF 05 8C */	addi r6, r31, 0x58c
/* 80D57198  4B 32 2D A0 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80D5719C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D571A0  41 82 00 0C */	beq lbl_80D571AC
/* 80D571A4  38 60 00 00 */	li r3, 0
/* 80D571A8  48 00 00 F8 */	b lbl_80D572A0
lbl_80D571AC:
/* 80D571AC  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 80D571B0  28 00 00 00 */	cmplwi r0, 0
/* 80D571B4  40 82 00 10 */	bne lbl_80D571C4
/* 80D571B8  38 00 00 00 */	li r0, 0
/* 80D571BC  90 1F 05 F0 */	stw r0, 0x5f0(r31)
/* 80D571C0  48 00 00 74 */	b lbl_80D57234
lbl_80D571C4:
/* 80D571C4  38 60 00 C0 */	li r3, 0xc0
/* 80D571C8  4B 57 7A 84 */	b __nw__FUl
/* 80D571CC  7C 60 1B 79 */	or. r0, r3, r3
/* 80D571D0  41 82 00 0C */	beq lbl_80D571DC
/* 80D571D4  4B 32 47 9C */	b __ct__4dBgWFv
/* 80D571D8  7C 60 1B 78 */	mr r0, r3
lbl_80D571DC:
/* 80D571DC  90 1F 05 F0 */	stw r0, 0x5f0(r31)
/* 80D571E0  80 1F 05 F0 */	lwz r0, 0x5f0(r31)
/* 80D571E4  28 00 00 00 */	cmplwi r0, 0
/* 80D571E8  40 82 00 0C */	bne lbl_80D571F4
/* 80D571EC  38 60 00 00 */	li r3, 0
/* 80D571F0  48 00 00 B0 */	b lbl_80D572A0
lbl_80D571F4:
/* 80D571F4  3C 60 80 D6 */	lis r3, l_arcName@ha
/* 80D571F8  38 63 86 48 */	addi r3, r3, l_arcName@l
/* 80D571FC  80 63 00 00 */	lwz r3, 0(r3)
/* 80D57200  38 80 00 0E */	li r4, 0xe
/* 80D57204  7F C5 F3 78 */	mr r5, r30
/* 80D57208  38 C0 00 80 */	li r6, 0x80
/* 80D5720C  4B 2E 50 E0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D57210  7C 64 1B 78 */	mr r4, r3
/* 80D57214  80 7F 05 F0 */	lwz r3, 0x5f0(r31)
/* 80D57218  38 A0 00 01 */	li r5, 1
/* 80D5721C  38 DF 05 F4 */	addi r6, r31, 0x5f4
/* 80D57220  4B 32 2D 18 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80D57224  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D57228  41 82 00 0C */	beq lbl_80D57234
/* 80D5722C  38 60 00 00 */	li r3, 0
/* 80D57230  48 00 00 70 */	b lbl_80D572A0
lbl_80D57234:
/* 80D57234  38 60 00 C0 */	li r3, 0xc0
/* 80D57238  4B 57 7A 14 */	b __nw__FUl
/* 80D5723C  7C 60 1B 79 */	or. r0, r3, r3
/* 80D57240  41 82 00 0C */	beq lbl_80D5724C
/* 80D57244  4B 32 47 2C */	b __ct__4dBgWFv
/* 80D57248  7C 60 1B 78 */	mr r0, r3
lbl_80D5724C:
/* 80D5724C  90 1F 05 88 */	stw r0, 0x588(r31)
/* 80D57250  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 80D57254  28 00 00 00 */	cmplwi r0, 0
/* 80D57258  40 82 00 0C */	bne lbl_80D57264
/* 80D5725C  38 60 00 00 */	li r3, 0
/* 80D57260  48 00 00 40 */	b lbl_80D572A0
lbl_80D57264:
/* 80D57264  3C 60 80 D6 */	lis r3, l_arcName@ha
/* 80D57268  38 63 86 48 */	addi r3, r3, l_arcName@l
/* 80D5726C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D57270  38 80 00 0F */	li r4, 0xf
/* 80D57274  7F C5 F3 78 */	mr r5, r30
/* 80D57278  38 C0 00 80 */	li r6, 0x80
/* 80D5727C  4B 2E 50 70 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D57280  7C 64 1B 78 */	mr r4, r3
/* 80D57284  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80D57288  38 A0 00 01 */	li r5, 1
/* 80D5728C  38 DF 05 BC */	addi r6, r31, 0x5bc
/* 80D57290  4B 32 2C A8 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80D57294  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D57298  7C 00 00 34 */	cntlzw r0, r0
/* 80D5729C  54 03 D9 7E */	srwi r3, r0, 5
lbl_80D572A0:
/* 80D572A0  39 61 00 20 */	addi r11, r1, 0x20
/* 80D572A4  4B 60 AF 84 */	b _restgpr_29
/* 80D572A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D572AC  7C 08 03 A6 */	mtlr r0
/* 80D572B0  38 21 00 20 */	addi r1, r1, 0x20
/* 80D572B4  4E 80 00 20 */	blr 
