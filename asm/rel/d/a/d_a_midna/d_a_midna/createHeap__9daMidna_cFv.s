lbl_804BC868:
/* 804BC868  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804BC86C  7C 08 02 A6 */	mflr r0
/* 804BC870  90 01 00 34 */	stw r0, 0x34(r1)
/* 804BC874  39 61 00 30 */	addi r11, r1, 0x30
/* 804BC878  4B EA 59 5C */	b _savegpr_27
/* 804BC87C  7C 7F 1B 78 */	mr r31, r3
/* 804BC880  3B 60 00 00 */	li r27, 0
/* 804BC884  3B 80 00 00 */	li r28, 0
/* 804BC888  3B C0 10 00 */	li r30, 0x1000
/* 804BC88C  3B A0 38 00 */	li r29, 0x3800
lbl_804BC890:
/* 804BC890  2C 1B 00 02 */	cmpwi r27, 2
/* 804BC894  40 82 00 10 */	bne lbl_804BC8A4
/* 804BC898  38 1C 05 EC */	addi r0, r28, 0x5ec
/* 804BC89C  7F DF 01 2E */	stwx r30, r31, r0
/* 804BC8A0  48 00 00 0C */	b lbl_804BC8AC
lbl_804BC8A4:
/* 804BC8A4  38 1C 05 EC */	addi r0, r28, 0x5ec
/* 804BC8A8  7F BF 01 2E */	stwx r29, r31, r0
lbl_804BC8AC:
/* 804BC8AC  38 7C 05 E4 */	addi r3, r28, 0x5e4
/* 804BC8B0  7C 7F 1A 14 */	add r3, r31, r3
/* 804BC8B4  4B CA 25 10 */	b mallocBuffer__14daPy_anmHeap_cFv
/* 804BC8B8  28 03 00 00 */	cmplwi r3, 0
/* 804BC8BC  40 82 00 0C */	bne lbl_804BC8C8
/* 804BC8C0  38 60 00 00 */	li r3, 0
/* 804BC8C4  48 00 07 74 */	b lbl_804BD038
lbl_804BC8C8:
/* 804BC8C8  3B 7B 00 01 */	addi r27, r27, 1
/* 804BC8CC  2C 1B 00 03 */	cmpwi r27, 3
/* 804BC8D0  3B 9C 00 14 */	addi r28, r28, 0x14
/* 804BC8D4  41 80 FF BC */	blt lbl_804BC890
/* 804BC8D8  3B A0 00 00 */	li r29, 0
/* 804BC8DC  3B 80 00 00 */	li r28, 0
lbl_804BC8E0:
/* 804BC8E0  38 60 01 04 */	li r3, 0x104
/* 804BC8E4  4B E1 23 68 */	b __nw__FUl
/* 804BC8E8  7C 7E 1B 79 */	or. r30, r3, r3
/* 804BC8EC  41 82 00 CC */	beq lbl_804BC9B8
/* 804BC8F0  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 804BC8F4  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 804BC8F8  90 1E 00 00 */	stw r0, 0(r30)
/* 804BC8FC  38 7E 00 04 */	addi r3, r30, 4
/* 804BC900  3C 80 80 4C */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 804BC904  38 84 D2 3C */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 804BC908  3C A0 80 4C */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 804BC90C  38 A5 D2 00 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 804BC910  38 C0 00 08 */	li r6, 8
/* 804BC914  38 E0 00 02 */	li r7, 2
/* 804BC918  4B EA 54 48 */	b __construct_array
/* 804BC91C  38 7E 00 14 */	addi r3, r30, 0x14
/* 804BC920  3C 80 80 4C */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 804BC924  38 84 D1 E8 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 804BC928  3C A0 80 4C */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 804BC92C  38 A5 D1 AC */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 804BC930  38 C0 00 08 */	li r6, 8
/* 804BC934  38 E0 00 08 */	li r7, 8
/* 804BC938  4B EA 54 28 */	b __construct_array
/* 804BC93C  38 7E 00 54 */	addi r3, r30, 0x54
/* 804BC940  3C 80 80 4C */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 804BC944  38 84 D1 88 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 804BC948  3C A0 80 4C */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 804BC94C  38 A5 D1 40 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 804BC950  38 C0 00 0C */	li r6, 0xc
/* 804BC954  38 E0 00 08 */	li r7, 8
/* 804BC958  4B EA 54 08 */	b __construct_array
/* 804BC95C  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 804BC960  3C 80 80 4C */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 804BC964  38 84 D1 28 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 804BC968  3C A0 80 4C */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 804BC96C  38 A5 D0 EC */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 804BC970  38 C0 00 08 */	li r6, 8
/* 804BC974  38 E0 00 04 */	li r7, 4
/* 804BC978  4B EA 53 E8 */	b __construct_array
/* 804BC97C  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 804BC980  3C 80 80 4C */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 804BC984  38 84 D0 D4 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 804BC988  3C A0 80 4C */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 804BC98C  38 A5 D0 98 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 804BC990  38 C0 00 08 */	li r6, 8
/* 804BC994  38 E0 00 04 */	li r7, 4
/* 804BC998  4B EA 53 C8 */	b __construct_array
/* 804BC99C  7F C3 F3 78 */	mr r3, r30
/* 804BC9A0  4B E6 F9 80 */	b initialize__14J3DMaterialAnmFv
/* 804BC9A4  3C 60 80 4C */	lis r3, __vt__16daMidna_matAnm_c@ha
/* 804BC9A8  38 03 6C C4 */	addi r0, r3, __vt__16daMidna_matAnm_c@l
/* 804BC9AC  90 1E 00 00 */	stw r0, 0(r30)
/* 804BC9B0  7F C3 F3 78 */	mr r3, r30
/* 804BC9B4  4B FF F8 65 */	bl init__16daMidna_matAnm_cFv
lbl_804BC9B8:
/* 804BC9B8  38 1C 06 F0 */	addi r0, r28, 0x6f0
/* 804BC9BC  7F DF 01 2E */	stwx r30, r31, r0
/* 804BC9C0  7C 1F 00 2E */	lwzx r0, r31, r0
/* 804BC9C4  28 00 00 00 */	cmplwi r0, 0
/* 804BC9C8  40 82 00 0C */	bne lbl_804BC9D4
/* 804BC9CC  38 60 00 00 */	li r3, 0
/* 804BC9D0  48 00 06 68 */	b lbl_804BD038
lbl_804BC9D4:
/* 804BC9D4  3B BD 00 01 */	addi r29, r29, 1
/* 804BC9D8  2C 1D 00 02 */	cmpwi r29, 2
/* 804BC9DC  3B 9C 00 04 */	addi r28, r28, 4
/* 804BC9E0  41 80 FF 00 */	blt lbl_804BC8E0
/* 804BC9E4  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha
/* 804BC9E8  88 03 61 94 */	lbz r0, mDemoArcName__20dStage_roomControl_c@l(r3)
/* 804BC9EC  7C 00 07 75 */	extsb. r0, r0
/* 804BC9F0  41 82 03 20 */	beq lbl_804BCD10
/* 804BC9F4  7F E3 FB 78 */	mr r3, r31
/* 804BC9F8  38 9F 06 C8 */	addi r4, r31, 0x6c8
/* 804BC9FC  3C A0 80 4C */	lis r5, stringBase0@ha
/* 804BCA00  38 A5 6A 60 */	addi r5, r5, stringBase0@l
/* 804BCA04  38 C0 00 00 */	li r6, 0
/* 804BCA08  4B FF FD CD */	bl initDemoModel__9daMidna_cFPP8J3DModelPCcUl
/* 804BCA0C  2C 03 00 00 */	cmpwi r3, 0
/* 804BCA10  40 82 00 0C */	bne lbl_804BCA1C
/* 804BCA14  38 60 00 00 */	li r3, 0
/* 804BCA18  48 00 06 20 */	b lbl_804BD038
lbl_804BCA1C:
/* 804BCA1C  80 1F 06 C8 */	lwz r0, 0x6c8(r31)
/* 804BCA20  28 00 00 00 */	cmplwi r0, 0
/* 804BCA24  41 82 00 28 */	beq lbl_804BCA4C
/* 804BCA28  38 7F 06 CC */	addi r3, r31, 0x6cc
/* 804BCA2C  3C 80 80 4C */	lis r4, stringBase0@ha
/* 804BCA30  38 84 6A 60 */	addi r4, r4, stringBase0@l
/* 804BCA34  38 84 00 1E */	addi r4, r4, 0x1e
/* 804BCA38  4B BE 75 60 */	b initDemoBck__9daAlink_cFPP13mDoExt_bckAnmPCc
/* 804BCA3C  2C 03 00 00 */	cmpwi r3, 0
/* 804BCA40  40 82 00 0C */	bne lbl_804BCA4C
/* 804BCA44  38 60 00 00 */	li r3, 0
/* 804BCA48  48 00 05 F0 */	b lbl_804BD038
lbl_804BCA4C:
/* 804BCA4C  7F E3 FB 78 */	mr r3, r31
/* 804BCA50  38 9F 06 D0 */	addi r4, r31, 0x6d0
/* 804BCA54  3C A0 80 4C */	lis r5, stringBase0@ha
/* 804BCA58  38 A5 6A 60 */	addi r5, r5, stringBase0@l
/* 804BCA5C  38 A5 00 3C */	addi r5, r5, 0x3c
/* 804BCA60  38 C0 00 00 */	li r6, 0
/* 804BCA64  4B FF FD 71 */	bl initDemoModel__9daMidna_cFPP8J3DModelPCcUl
/* 804BCA68  2C 03 00 00 */	cmpwi r3, 0
/* 804BCA6C  40 82 00 0C */	bne lbl_804BCA78
/* 804BCA70  38 60 00 00 */	li r3, 0
/* 804BCA74  48 00 05 C4 */	b lbl_804BD038
lbl_804BCA78:
/* 804BCA78  80 1F 06 D0 */	lwz r0, 0x6d0(r31)
/* 804BCA7C  28 00 00 00 */	cmplwi r0, 0
/* 804BCA80  41 82 00 28 */	beq lbl_804BCAA8
/* 804BCA84  38 7F 06 D4 */	addi r3, r31, 0x6d4
/* 804BCA88  3C 80 80 4C */	lis r4, stringBase0@ha
/* 804BCA8C  38 84 6A 60 */	addi r4, r4, stringBase0@l
/* 804BCA90  38 84 00 5A */	addi r4, r4, 0x5a
/* 804BCA94  4B BE 75 04 */	b initDemoBck__9daAlink_cFPP13mDoExt_bckAnmPCc
/* 804BCA98  2C 03 00 00 */	cmpwi r3, 0
/* 804BCA9C  40 82 00 0C */	bne lbl_804BCAA8
/* 804BCAA0  38 60 00 00 */	li r3, 0
/* 804BCAA4  48 00 05 94 */	b lbl_804BD038
lbl_804BCAA8:
/* 804BCAA8  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha
/* 804BCAAC  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l
/* 804BCAB0  3C 80 80 4C */	lis r4, stringBase0@ha
/* 804BCAB4  38 84 6A 60 */	addi r4, r4, stringBase0@l
/* 804BCAB8  38 84 00 78 */	addi r4, r4, 0x78
/* 804BCABC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 804BCAC0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 804BCAC4  3F C5 00 02 */	addis r30, r5, 2
/* 804BCAC8  3B DE C2 F8 */	addi r30, r30, -15624
/* 804BCACC  7F C5 F3 78 */	mr r5, r30
/* 804BCAD0  38 C0 00 80 */	li r6, 0x80
/* 804BCAD4  4B B7 F8 A8 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 804BCAD8  28 03 00 00 */	cmplwi r3, 0
/* 804BCADC  41 82 00 50 */	beq lbl_804BCB2C
/* 804BCAE0  38 80 00 00 */	li r4, 0
/* 804BCAE4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 804BCAE8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 804BCAEC  4B B5 81 68 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804BCAF0  90 7F 06 D8 */	stw r3, 0x6d8(r31)
/* 804BCAF4  80 1F 06 D8 */	lwz r0, 0x6d8(r31)
/* 804BCAF8  28 00 00 00 */	cmplwi r0, 0
/* 804BCAFC  40 82 00 0C */	bne lbl_804BCB08
/* 804BCB00  38 60 00 00 */	li r3, 0
/* 804BCB04  48 00 05 34 */	b lbl_804BD038
lbl_804BCB08:
/* 804BCB08  38 7F 06 DC */	addi r3, r31, 0x6dc
/* 804BCB0C  3C 80 80 4C */	lis r4, stringBase0@ha
/* 804BCB10  38 84 6A 60 */	addi r4, r4, stringBase0@l
/* 804BCB14  38 84 00 96 */	addi r4, r4, 0x96
/* 804BCB18  4B BE 74 80 */	b initDemoBck__9daAlink_cFPP13mDoExt_bckAnmPCc
/* 804BCB1C  2C 03 00 00 */	cmpwi r3, 0
/* 804BCB20  40 82 00 0C */	bne lbl_804BCB2C
/* 804BCB24  38 60 00 00 */	li r3, 0
/* 804BCB28  48 00 05 10 */	b lbl_804BD038
lbl_804BCB2C:
/* 804BCB2C  7F E3 FB 78 */	mr r3, r31
/* 804BCB30  38 9F 06 AC */	addi r4, r31, 0x6ac
/* 804BCB34  3C A0 80 4C */	lis r5, stringBase0@ha
/* 804BCB38  38 A5 6A 60 */	addi r5, r5, stringBase0@l
/* 804BCB3C  38 A5 00 B4 */	addi r5, r5, 0xb4
/* 804BCB40  3C C0 01 00 */	lis r6, 0x100
/* 804BCB44  4B FF FC 91 */	bl initDemoModel__9daMidna_cFPP8J3DModelPCcUl
/* 804BCB48  2C 03 00 00 */	cmpwi r3, 0
/* 804BCB4C  40 82 00 0C */	bne lbl_804BCB58
/* 804BCB50  38 60 00 00 */	li r3, 0
/* 804BCB54  48 00 04 E4 */	b lbl_804BD038
lbl_804BCB58:
/* 804BCB58  7F E3 FB 78 */	mr r3, r31
/* 804BCB5C  38 9F 06 B0 */	addi r4, r31, 0x6b0
/* 804BCB60  3C A0 80 4C */	lis r5, stringBase0@ha
/* 804BCB64  38 A5 6A 60 */	addi r5, r5, stringBase0@l
/* 804BCB68  38 A5 00 D4 */	addi r5, r5, 0xd4
/* 804BCB6C  38 C0 02 00 */	li r6, 0x200
/* 804BCB70  4B FF FC 65 */	bl initDemoModel__9daMidna_cFPP8J3DModelPCcUl
/* 804BCB74  2C 03 00 00 */	cmpwi r3, 0
/* 804BCB78  40 82 00 0C */	bne lbl_804BCB84
/* 804BCB7C  38 60 00 00 */	li r3, 0
/* 804BCB80  48 00 04 B8 */	b lbl_804BD038
lbl_804BCB84:
/* 804BCB84  80 1F 06 B0 */	lwz r0, 0x6b0(r31)
/* 804BCB88  28 00 00 00 */	cmplwi r0, 0
/* 804BCB8C  41 82 00 28 */	beq lbl_804BCBB4
/* 804BCB90  38 7F 06 B8 */	addi r3, r31, 0x6b8
/* 804BCB94  3C 80 80 4C */	lis r4, stringBase0@ha
/* 804BCB98  38 84 6A 60 */	addi r4, r4, stringBase0@l
/* 804BCB9C  38 84 00 F5 */	addi r4, r4, 0xf5
/* 804BCBA0  4B BE 73 F8 */	b initDemoBck__9daAlink_cFPP13mDoExt_bckAnmPCc
/* 804BCBA4  2C 03 00 00 */	cmpwi r3, 0
/* 804BCBA8  40 82 00 0C */	bne lbl_804BCBB4
/* 804BCBAC  38 60 00 00 */	li r3, 0
/* 804BCBB0  48 00 04 88 */	b lbl_804BD038
lbl_804BCBB4:
/* 804BCBB4  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha
/* 804BCBB8  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l
/* 804BCBBC  3C 80 80 4C */	lis r4, stringBase0@ha
/* 804BCBC0  38 84 6A 60 */	addi r4, r4, stringBase0@l
/* 804BCBC4  38 84 01 13 */	addi r4, r4, 0x113
/* 804BCBC8  7F C5 F3 78 */	mr r5, r30
/* 804BCBCC  38 C0 00 80 */	li r6, 0x80
/* 804BCBD0  4B B7 F7 AC */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 804BCBD4  7C 7C 1B 79 */	or. r28, r3, r3
/* 804BCBD8  41 82 00 4C */	beq lbl_804BCC24
/* 804BCBDC  38 80 00 00 */	li r4, 0
/* 804BCBE0  3C A0 11 02 */	lis r5, 0x1102 /* 0x11020284@ha */
/* 804BCBE4  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11020284@l */
/* 804BCBE8  4B B5 80 6C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804BCBEC  90 7F 06 88 */	stw r3, 0x688(r31)
/* 804BCBF0  80 1F 06 88 */	lwz r0, 0x688(r31)
/* 804BCBF4  28 00 00 00 */	cmplwi r0, 0
/* 804BCBF8  40 82 00 0C */	bne lbl_804BCC04
/* 804BCBFC  38 60 00 00 */	li r3, 0
/* 804BCC00  48 00 04 38 */	b lbl_804BD038
lbl_804BCC04:
/* 804BCC04  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 804BCC08  80 63 00 08 */	lwz r3, 8(r3)
/* 804BCC0C  80 1F 06 F0 */	lwz r0, 0x6f0(r31)
/* 804BCC10  90 03 00 3C */	stw r0, 0x3c(r3)
/* 804BCC14  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 804BCC18  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804BCC1C  80 1F 06 F4 */	lwz r0, 0x6f4(r31)
/* 804BCC20  90 03 00 3C */	stw r0, 0x3c(r3)
lbl_804BCC24:
/* 804BCC24  7F E3 FB 78 */	mr r3, r31
/* 804BCC28  38 9F 06 8C */	addi r4, r31, 0x68c
/* 804BCC2C  3C A0 80 4C */	lis r5, stringBase0@ha
/* 804BCC30  38 A5 6A 60 */	addi r5, r5, stringBase0@l
/* 804BCC34  38 A5 01 31 */	addi r5, r5, 0x131
/* 804BCC38  38 C0 00 00 */	li r6, 0
/* 804BCC3C  4B FF FB 99 */	bl initDemoModel__9daMidna_cFPP8J3DModelPCcUl
/* 804BCC40  2C 03 00 00 */	cmpwi r3, 0
/* 804BCC44  40 82 00 0C */	bne lbl_804BCC50
/* 804BCC48  38 60 00 00 */	li r3, 0
/* 804BCC4C  48 00 03 EC */	b lbl_804BD038
lbl_804BCC50:
/* 804BCC50  7F E3 FB 78 */	mr r3, r31
/* 804BCC54  38 9F 06 90 */	addi r4, r31, 0x690
/* 804BCC58  3C A0 80 4C */	lis r5, stringBase0@ha
/* 804BCC5C  38 A5 6A 60 */	addi r5, r5, stringBase0@l
/* 804BCC60  38 A5 01 50 */	addi r5, r5, 0x150
/* 804BCC64  38 C0 00 00 */	li r6, 0
/* 804BCC68  4B FF FB 6D */	bl initDemoModel__9daMidna_cFPP8J3DModelPCcUl
/* 804BCC6C  2C 03 00 00 */	cmpwi r3, 0
/* 804BCC70  40 82 00 0C */	bne lbl_804BCC7C
/* 804BCC74  38 60 00 00 */	li r3, 0
/* 804BCC78  48 00 03 C0 */	b lbl_804BD038
lbl_804BCC7C:
/* 804BCC7C  80 7F 06 90 */	lwz r3, 0x690(r31)
/* 804BCC80  28 03 00 00 */	cmplwi r3, 0
/* 804BCC84  41 82 00 3C */	beq lbl_804BCCC0
/* 804BCC88  80 83 00 04 */	lwz r4, 4(r3)
/* 804BCC8C  38 A0 00 00 */	li r5, 0
/* 804BCC90  48 00 00 24 */	b lbl_804BCCB4
lbl_804BCC94:
/* 804BCC94  80 64 00 60 */	lwz r3, 0x60(r4)
/* 804BCC98  54 A0 13 BA */	rlwinm r0, r5, 2, 0xe, 0x1d
/* 804BCC9C  7C 63 00 2E */	lwzx r3, r3, r0
/* 804BCCA0  80 63 00 08 */	lwz r3, 8(r3)
/* 804BCCA4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 804BCCA8  60 00 00 01 */	ori r0, r0, 1
/* 804BCCAC  90 03 00 0C */	stw r0, 0xc(r3)
/* 804BCCB0  38 A5 00 01 */	addi r5, r5, 1
lbl_804BCCB4:
/* 804BCCB4  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 804BCCB8  28 00 00 04 */	cmplwi r0, 4
/* 804BCCBC  41 80 FF D8 */	blt lbl_804BCC94
lbl_804BCCC0:
/* 804BCCC0  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha
/* 804BCCC4  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l
/* 804BCCC8  3C 80 80 4C */	lis r4, stringBase0@ha
/* 804BCCCC  38 84 6A 60 */	addi r4, r4, stringBase0@l
/* 804BCCD0  38 84 01 70 */	addi r4, r4, 0x170
/* 804BCCD4  7F C5 F3 78 */	mr r5, r30
/* 804BCCD8  38 C0 00 80 */	li r6, 0x80
/* 804BCCDC  4B B7 F6 A0 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 804BCCE0  28 03 00 00 */	cmplwi r3, 0
/* 804BCCE4  41 82 00 2C */	beq lbl_804BCD10
/* 804BCCE8  38 80 00 00 */	li r4, 0
/* 804BCCEC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 804BCCF0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 804BCCF4  4B B5 7F 60 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804BCCF8  90 7F 06 94 */	stw r3, 0x694(r31)
/* 804BCCFC  80 1F 06 94 */	lwz r0, 0x694(r31)
/* 804BCD00  28 00 00 00 */	cmplwi r0, 0
/* 804BCD04  40 82 00 0C */	bne lbl_804BCD10
/* 804BCD08  38 60 00 00 */	li r3, 0
/* 804BCD0C  48 00 03 2C */	b lbl_804BD038
lbl_804BCD10:
/* 804BCD10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804BCD14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804BCD18  80 63 5C AC */	lwz r3, 0x5cac(r3)
/* 804BCD1C  80 BF 05 EC */	lwz r5, 0x5ec(r31)
/* 804BCD20  80 9F 05 F0 */	lwz r4, 0x5f0(r31)
/* 804BCD24  38 C0 01 DC */	li r6, 0x1dc
/* 804BCD28  4B E1 91 A4 */	b readIdxResource__10JKRArchiveFPvUlUl
/* 804BCD2C  80 7F 05 F0 */	lwz r3, 0x5f0(r31)
/* 804BCD30  38 80 00 00 */	li r4, 0
/* 804BCD34  4B E7 AE 0C */	b load__20J3DAnmLoaderDataBaseFPCv24J3DAnmLoaderDataBaseFlag
/* 804BCD38  7C 7B 1B 78 */	mr r27, r3
/* 804BCD3C  3C 60 80 4C */	lis r3, l_arcName@ha
/* 804BCD40  38 63 64 D4 */	addi r3, r3, l_arcName@l
/* 804BCD44  38 80 00 0E */	li r4, 0xe
/* 804BCD48  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 804BCD4C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 804BCD50  3F C5 00 02 */	addis r30, r5, 2
/* 804BCD54  3B DE C2 F8 */	addi r30, r30, -15624
/* 804BCD58  7F C5 F3 78 */	mr r5, r30
/* 804BCD5C  38 C0 00 80 */	li r6, 0x80
/* 804BCD60  4B B7 F5 8C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804BCD64  7C 7C 1B 78 */	mr r28, r3
/* 804BCD68  38 60 00 58 */	li r3, 0x58
/* 804BCD6C  4B E1 1E E0 */	b __nw__FUl
/* 804BCD70  7C 60 1B 79 */	or. r0, r3, r3
/* 804BCD74  41 82 00 48 */	beq lbl_804BCDBC
/* 804BCD78  38 00 00 00 */	li r0, 0
/* 804BCD7C  90 01 00 08 */	stw r0, 8(r1)
/* 804BCD80  90 01 00 0C */	stw r0, 0xc(r1)
/* 804BCD84  3C 80 11 00 */	lis r4, 0x1100 /* 0x11000284@ha */
/* 804BCD88  38 04 02 84 */	addi r0, r4, 0x0284 /* 0x11000284@l */
/* 804BCD8C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804BCD90  7F 84 E3 78 */	mr r4, r28
/* 804BCD94  38 BF 05 7C */	addi r5, r31, 0x57c
/* 804BCD98  38 C0 00 00 */	li r6, 0
/* 804BCD9C  7F 67 DB 78 */	mr r7, r27
/* 804BCDA0  39 00 00 02 */	li r8, 2
/* 804BCDA4  3D 20 80 4C */	lis r9, lit_4303@ha
/* 804BCDA8  C0 29 65 84 */	lfs f1, lit_4303@l(r9)
/* 804BCDAC  39 20 00 00 */	li r9, 0
/* 804BCDB0  39 40 FF FF */	li r10, -1
/* 804BCDB4  4B B5 3A 1C */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 804BCDB8  7C 60 1B 78 */	mr r0, r3
lbl_804BCDBC:
/* 804BCDBC  90 1F 05 78 */	stw r0, 0x578(r31)
/* 804BCDC0  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804BCDC4  28 03 00 00 */	cmplwi r3, 0
/* 804BCDC8  41 82 00 10 */	beq lbl_804BCDD8
/* 804BCDCC  80 03 00 04 */	lwz r0, 4(r3)
/* 804BCDD0  28 00 00 00 */	cmplwi r0, 0
/* 804BCDD4  40 82 00 0C */	bne lbl_804BCDE0
lbl_804BCDD8:
/* 804BCDD8  38 60 00 00 */	li r3, 0
/* 804BCDDC  48 00 02 5C */	b lbl_804BD038
lbl_804BCDE0:
/* 804BCDE0  38 1F 09 64 */	addi r0, r31, 0x964
/* 804BCDE4  90 1F 05 80 */	stw r0, 0x580(r31)
/* 804BCDE8  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804BCDEC  80 83 00 04 */	lwz r4, 4(r3)
/* 804BCDF0  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 804BCDF4  38 A0 00 01 */	li r5, 1
/* 804BCDF8  4B B5 17 44 */	b create__21mDoExt_invisibleModelFP8J3DModelUc
/* 804BCDFC  2C 03 00 00 */	cmpwi r3, 0
/* 804BCE00  40 82 00 0C */	bne lbl_804BCE0C
/* 804BCE04  38 60 00 00 */	li r3, 0
/* 804BCE08  48 00 02 30 */	b lbl_804BD038
lbl_804BCE0C:
/* 804BCE0C  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804BCE10  80 83 00 08 */	lwz r4, 8(r3)
/* 804BCE14  38 7F 05 84 */	addi r3, r31, 0x584
/* 804BCE18  38 A0 00 01 */	li r5, 1
/* 804BCE1C  38 C0 00 02 */	li r6, 2
/* 804BCE20  3C E0 80 4C */	lis r7, lit_4303@ha
/* 804BCE24  C0 27 65 84 */	lfs f1, lit_4303@l(r7)
/* 804BCE28  38 E0 00 00 */	li r7, 0
/* 804BCE2C  39 00 FF FF */	li r8, -1
/* 804BCE30  39 20 00 00 */	li r9, 0
/* 804BCE34  4B B5 09 A8 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 804BCE38  2C 03 00 00 */	cmpwi r3, 0
/* 804BCE3C  40 82 00 0C */	bne lbl_804BCE48
/* 804BCE40  38 60 00 00 */	li r3, 0
/* 804BCE44  48 00 01 F4 */	b lbl_804BD038
lbl_804BCE48:
/* 804BCE48  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 804BCE4C  80 83 00 08 */	lwz r4, 8(r3)
/* 804BCE50  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 804BCE54  38 A0 00 01 */	li r5, 1
/* 804BCE58  38 C0 00 02 */	li r6, 2
/* 804BCE5C  3C E0 80 4C */	lis r7, lit_4303@ha
/* 804BCE60  C0 27 65 84 */	lfs f1, lit_4303@l(r7)
/* 804BCE64  38 E0 00 00 */	li r7, 0
/* 804BCE68  39 00 FF FF */	li r8, -1
/* 804BCE6C  39 20 00 00 */	li r9, 0
/* 804BCE70  4B B5 09 6C */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 804BCE74  2C 03 00 00 */	cmpwi r3, 0
/* 804BCE78  40 82 00 0C */	bne lbl_804BCE84
/* 804BCE7C  38 60 00 00 */	li r3, 0
/* 804BCE80  48 00 01 B8 */	b lbl_804BD038
lbl_804BCE84:
/* 804BCE84  38 7F 06 20 */	addi r3, r31, 0x620
/* 804BCE88  4B CA 1F 3C */	b mallocBuffer__14daPy_anmHeap_cFv
/* 804BCE8C  28 03 00 00 */	cmplwi r3, 0
/* 804BCE90  40 82 00 0C */	bne lbl_804BCE9C
/* 804BCE94  38 60 00 00 */	li r3, 0
/* 804BCE98  48 00 01 A0 */	b lbl_804BD038
lbl_804BCE9C:
/* 804BCE9C  38 7F 06 34 */	addi r3, r31, 0x634
/* 804BCEA0  4B CA 1F 24 */	b mallocBuffer__14daPy_anmHeap_cFv
/* 804BCEA4  28 03 00 00 */	cmplwi r3, 0
/* 804BCEA8  40 82 00 0C */	bne lbl_804BCEB4
/* 804BCEAC  38 60 00 00 */	li r3, 0
/* 804BCEB0  48 00 01 88 */	b lbl_804BD038
lbl_804BCEB4:
/* 804BCEB4  7F E3 FB 78 */	mr r3, r31
/* 804BCEB8  38 80 00 08 */	li r4, 8
/* 804BCEBC  38 BF 06 74 */	addi r5, r31, 0x674
/* 804BCEC0  38 DF 05 CC */	addi r6, r31, 0x5cc
/* 804BCEC4  3C E0 11 00 */	lis r7, 0x1100 /* 0x11000284@ha */
/* 804BCEC8  38 E7 02 84 */	addi r7, r7, 0x0284 /* 0x11000284@l */
/* 804BCECC  4B FF F8 75 */	bl initInvModel__9daMidna_cFUsPP8J3DModelP21mDoExt_invisibleModelUl
/* 804BCED0  2C 03 00 00 */	cmpwi r3, 0
/* 804BCED4  40 82 00 0C */	bne lbl_804BCEE0
/* 804BCED8  38 60 00 00 */	li r3, 0
/* 804BCEDC  48 00 01 5C */	b lbl_804BD038
lbl_804BCEE0:
/* 804BCEE0  7F E3 FB 78 */	mr r3, r31
/* 804BCEE4  38 80 00 07 */	li r4, 7
/* 804BCEE8  38 BF 06 7C */	addi r5, r31, 0x67c
/* 804BCEEC  38 DF 05 D4 */	addi r6, r31, 0x5d4
/* 804BCEF0  3C E0 11 00 */	lis r7, 0x1100 /* 0x11000284@ha */
/* 804BCEF4  38 E7 02 84 */	addi r7, r7, 0x0284 /* 0x11000284@l */
/* 804BCEF8  4B FF F8 49 */	bl initInvModel__9daMidna_cFUsPP8J3DModelP21mDoExt_invisibleModelUl
/* 804BCEFC  2C 03 00 00 */	cmpwi r3, 0
/* 804BCF00  40 82 00 0C */	bne lbl_804BCF0C
/* 804BCF04  38 60 00 00 */	li r3, 0
/* 804BCF08  48 00 01 30 */	b lbl_804BD038
lbl_804BCF0C:
/* 804BCF0C  7F E3 FB 78 */	mr r3, r31
/* 804BCF10  38 80 00 0F */	li r4, 0xf
/* 804BCF14  38 BF 06 84 */	addi r5, r31, 0x684
/* 804BCF18  38 DF 05 DC */	addi r6, r31, 0x5dc
/* 804BCF1C  3C E0 11 00 */	lis r7, 0x1100 /* 0x11000284@ha */
/* 804BCF20  38 E7 02 84 */	addi r7, r7, 0x0284 /* 0x11000284@l */
/* 804BCF24  4B FF F8 1D */	bl initInvModel__9daMidna_cFUsPP8J3DModelP21mDoExt_invisibleModelUl
/* 804BCF28  2C 03 00 00 */	cmpwi r3, 0
/* 804BCF2C  40 82 00 0C */	bne lbl_804BCF38
/* 804BCF30  38 60 00 00 */	li r3, 0
/* 804BCF34  48 00 01 04 */	b lbl_804BD038
lbl_804BCF38:
/* 804BCF38  3C 60 80 4C */	lis r3, l_arcName@ha
/* 804BCF3C  38 63 64 D4 */	addi r3, r3, l_arcName@l
/* 804BCF40  38 80 00 0B */	li r4, 0xb
/* 804BCF44  7F C5 F3 78 */	mr r5, r30
/* 804BCF48  38 C0 00 80 */	li r6, 0x80
/* 804BCF4C  4B B7 F3 A0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804BCF50  3C 80 00 08 */	lis r4, 8
/* 804BCF54  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 804BCF58  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 804BCF5C  4B B5 7C F8 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804BCF60  90 7F 06 98 */	stw r3, 0x698(r31)
/* 804BCF64  80 1F 06 98 */	lwz r0, 0x698(r31)
/* 804BCF68  28 00 00 00 */	cmplwi r0, 0
/* 804BCF6C  40 82 00 0C */	bne lbl_804BCF78
/* 804BCF70  38 60 00 00 */	li r3, 0
/* 804BCF74  48 00 00 C4 */	b lbl_804BD038
lbl_804BCF78:
/* 804BCF78  38 60 00 01 */	li r3, 1
/* 804BCF7C  4B E1 1C D0 */	b __nw__FUl
/* 804BCF80  90 7F 06 F8 */	stw r3, 0x6f8(r31)
/* 804BCF84  80 1F 06 F8 */	lwz r0, 0x6f8(r31)
/* 804BCF88  28 00 00 00 */	cmplwi r0, 0
/* 804BCF8C  40 82 00 0C */	bne lbl_804BCF98
/* 804BCF90  38 60 00 00 */	li r3, 0
/* 804BCF94  48 00 00 A4 */	b lbl_804BD038
lbl_804BCF98:
/* 804BCF98  80 1F 06 AC */	lwz r0, 0x6ac(r31)
/* 804BCF9C  28 00 00 00 */	cmplwi r0, 0
/* 804BCFA0  41 82 00 94 */	beq lbl_804BD034
/* 804BCFA4  38 60 00 18 */	li r3, 0x18
/* 804BCFA8  4B E1 1C A4 */	b __nw__FUl
/* 804BCFAC  7C 7C 1B 79 */	or. r28, r3, r3
/* 804BCFB0  41 82 00 20 */	beq lbl_804BCFD0
/* 804BCFB4  3C 80 80 4C */	lis r4, __vt__12J3DFrameCtrl@ha
/* 804BCFB8  38 04 6C A8 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 804BCFBC  90 1C 00 00 */	stw r0, 0(r28)
/* 804BCFC0  38 80 00 00 */	li r4, 0
/* 804BCFC4  4B E6 B4 38 */	b init__12J3DFrameCtrlFs
/* 804BCFC8  38 00 00 00 */	li r0, 0
/* 804BCFCC  90 1C 00 14 */	stw r0, 0x14(r28)
lbl_804BCFD0:
/* 804BCFD0  93 9F 06 C4 */	stw r28, 0x6c4(r31)
/* 804BCFD4  80 1F 06 C4 */	lwz r0, 0x6c4(r31)
/* 804BCFD8  28 00 00 00 */	cmplwi r0, 0
/* 804BCFDC  40 82 00 0C */	bne lbl_804BCFE8
/* 804BCFE0  38 60 00 00 */	li r3, 0
/* 804BCFE4  48 00 00 54 */	b lbl_804BD038
lbl_804BCFE8:
/* 804BCFE8  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha
/* 804BCFEC  38 63 61 94 */	addi r3, r3, mDemoArcName__20dStage_roomControl_c@l
/* 804BCFF0  3C 80 80 4C */	lis r4, stringBase0@ha
/* 804BCFF4  38 84 6A 60 */	addi r4, r4, stringBase0@l
/* 804BCFF8  38 84 01 93 */	addi r4, r4, 0x193
/* 804BCFFC  7F C5 F3 78 */	mr r5, r30
/* 804BD000  38 C0 00 80 */	li r6, 0x80
/* 804BD004  4B B7 F3 78 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 804BD008  90 7F 06 BC */	stw r3, 0x6bc(r31)
/* 804BD00C  80 9F 06 BC */	lwz r4, 0x6bc(r31)
/* 804BD010  28 04 00 00 */	cmplwi r4, 0
/* 804BD014  41 82 00 20 */	beq lbl_804BD034
/* 804BD018  80 7F 06 AC */	lwz r3, 0x6ac(r31)
/* 804BD01C  38 A0 00 01 */	li r5, 1
/* 804BD020  4B E6 AA 0C */	b setDeformData__8J3DModelFP13J3DDeformDataUl
/* 804BD024  2C 03 00 00 */	cmpwi r3, 0
/* 804BD028  41 82 00 0C */	beq lbl_804BD034
/* 804BD02C  38 60 00 00 */	li r3, 0
/* 804BD030  48 00 00 08 */	b lbl_804BD038
lbl_804BD034:
/* 804BD034  38 60 00 01 */	li r3, 1
lbl_804BD038:
/* 804BD038  39 61 00 30 */	addi r11, r1, 0x30
/* 804BD03C  4B EA 51 E4 */	b _restgpr_27
/* 804BD040  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804BD044  7C 08 03 A6 */	mtlr r0
/* 804BD048  38 21 00 30 */	addi r1, r1, 0x30
/* 804BD04C  4E 80 00 20 */	blr 
