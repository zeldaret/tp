lbl_807FB978:
/* 807FB978  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807FB97C  7C 08 02 A6 */	mflr r0
/* 807FB980  90 01 00 34 */	stw r0, 0x34(r1)
/* 807FB984  39 61 00 30 */	addi r11, r1, 0x30
/* 807FB988  4B B6 68 50 */	b _savegpr_28
/* 807FB98C  7C 7F 1B 78 */	mr r31, r3
/* 807FB990  38 60 00 58 */	li r3, 0x58
/* 807FB994  4B AD 32 B8 */	b __nw__FUl
/* 807FB998  7C 7E 1B 79 */	or. r30, r3, r3
/* 807FB99C  41 82 00 94 */	beq lbl_807FBA30
/* 807FB9A0  3C 60 80 80 */	lis r3, stringBase0@ha
/* 807FB9A4  38 63 CD F0 */	addi r3, r3, stringBase0@l
/* 807FB9A8  38 80 00 0F */	li r4, 0xf
/* 807FB9AC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 807FB9B0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 807FB9B4  3F 85 00 02 */	addis r28, r5, 2
/* 807FB9B8  3B 9C C2 F8 */	addi r28, r28, -15624
/* 807FB9BC  7F 85 E3 78 */	mr r5, r28
/* 807FB9C0  38 C0 00 80 */	li r6, 0x80
/* 807FB9C4  4B 84 09 28 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807FB9C8  7C 7D 1B 78 */	mr r29, r3
/* 807FB9CC  3C 60 80 80 */	lis r3, stringBase0@ha
/* 807FB9D0  38 63 CD F0 */	addi r3, r3, stringBase0@l
/* 807FB9D4  38 80 00 13 */	li r4, 0x13
/* 807FB9D8  7F 85 E3 78 */	mr r5, r28
/* 807FB9DC  38 C0 00 80 */	li r6, 0x80
/* 807FB9E0  4B 84 09 0C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807FB9E4  7C 64 1B 78 */	mr r4, r3
/* 807FB9E8  38 1F 05 D8 */	addi r0, r31, 0x5d8
/* 807FB9EC  90 01 00 08 */	stw r0, 8(r1)
/* 807FB9F0  3C 00 00 08 */	lis r0, 8
/* 807FB9F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 807FB9F8  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 807FB9FC  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 807FBA00  90 01 00 10 */	stw r0, 0x10(r1)
/* 807FBA04  7F C3 F3 78 */	mr r3, r30
/* 807FBA08  38 A0 00 00 */	li r5, 0
/* 807FBA0C  38 C0 00 00 */	li r6, 0
/* 807FBA10  7F A7 EB 78 */	mr r7, r29
/* 807FBA14  39 00 00 02 */	li r8, 2
/* 807FBA18  3D 20 80 80 */	lis r9, lit_3803@ha
/* 807FBA1C  C0 29 CC BC */	lfs f1, lit_3803@l(r9)
/* 807FBA20  39 20 00 00 */	li r9, 0
/* 807FBA24  39 40 FF FF */	li r10, -1
/* 807FBA28  4B 81 4D A8 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 807FBA2C  7C 7E 1B 78 */	mr r30, r3
lbl_807FBA30:
/* 807FBA30  93 DF 05 CC */	stw r30, 0x5cc(r31)
/* 807FBA34  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807FBA38  28 03 00 00 */	cmplwi r3, 0
/* 807FBA3C  41 82 00 10 */	beq lbl_807FBA4C
/* 807FBA40  80 03 00 04 */	lwz r0, 4(r3)
/* 807FBA44  28 00 00 00 */	cmplwi r0, 0
/* 807FBA48  40 82 00 0C */	bne lbl_807FBA54
lbl_807FBA4C:
/* 807FBA4C  38 60 00 00 */	li r3, 0
/* 807FBA50  48 00 00 20 */	b lbl_807FBA70
lbl_807FBA54:
/* 807FBA54  38 7F 18 80 */	addi r3, r31, 0x1880
/* 807FBA58  38 80 00 0D */	li r4, 0xd
/* 807FBA5C  38 A0 00 0A */	li r5, 0xa
/* 807FBA60  38 C0 00 01 */	li r6, 1
/* 807FBA64  4B 81 6B 7C */	b init__19mDoExt_3DlineMat0_cFUsUsi
/* 807FBA68  30 03 FF FF */	addic r0, r3, -1
/* 807FBA6C  7C 60 19 10 */	subfe r3, r0, r3
lbl_807FBA70:
/* 807FBA70  39 61 00 30 */	addi r11, r1, 0x30
/* 807FBA74  4B B6 67 B0 */	b _restgpr_28
/* 807FBA78  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807FBA7C  7C 08 03 A6 */	mtlr r0
/* 807FBA80  38 21 00 30 */	addi r1, r1, 0x30
/* 807FBA84  4E 80 00 20 */	blr 
