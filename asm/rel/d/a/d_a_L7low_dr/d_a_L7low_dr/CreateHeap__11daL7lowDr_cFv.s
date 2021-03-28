lbl_805AAC5C:
/* 805AAC5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805AAC60  7C 08 02 A6 */	mflr r0
/* 805AAC64  90 01 00 34 */	stw r0, 0x34(r1)
/* 805AAC68  39 61 00 30 */	addi r11, r1, 0x30
/* 805AAC6C  4B DB 75 6C */	b _savegpr_28
/* 805AAC70  7C 7F 1B 78 */	mr r31, r3
/* 805AAC74  3C 60 80 5B */	lis r3, stringBase0@ha
/* 805AAC78  38 63 AF B0 */	addi r3, r3, stringBase0@l
/* 805AAC7C  38 80 00 0A */	li r4, 0xa
/* 805AAC80  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 805AAC84  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 805AAC88  3F A5 00 02 */	addis r29, r5, 2
/* 805AAC8C  3B BD C2 F8 */	addi r29, r29, -15624
/* 805AAC90  7F A5 EB 78 */	mr r5, r29
/* 805AAC94  38 C0 00 80 */	li r6, 0x80
/* 805AAC98  4B A9 16 54 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805AAC9C  7C 7C 1B 78 */	mr r28, r3
/* 805AACA0  38 60 00 58 */	li r3, 0x58
/* 805AACA4  4B D2 3F A8 */	b __nw__FUl
/* 805AACA8  7C 7E 1B 79 */	or. r30, r3, r3
/* 805AACAC  41 82 00 68 */	beq lbl_805AAD14
/* 805AACB0  3C 60 80 5B */	lis r3, stringBase0@ha
/* 805AACB4  38 63 AF B0 */	addi r3, r3, stringBase0@l
/* 805AACB8  38 80 00 04 */	li r4, 4
/* 805AACBC  7F A5 EB 78 */	mr r5, r29
/* 805AACC0  38 C0 00 80 */	li r6, 0x80
/* 805AACC4  4B A9 16 28 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805AACC8  7C 67 1B 78 */	mr r7, r3
/* 805AACCC  38 1F 05 74 */	addi r0, r31, 0x574
/* 805AACD0  90 01 00 08 */	stw r0, 8(r1)
/* 805AACD4  3C 00 00 08 */	lis r0, 8
/* 805AACD8  90 01 00 0C */	stw r0, 0xc(r1)
/* 805AACDC  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 805AACE0  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 805AACE4  90 01 00 10 */	stw r0, 0x10(r1)
/* 805AACE8  7F C3 F3 78 */	mr r3, r30
/* 805AACEC  7F 84 E3 78 */	mr r4, r28
/* 805AACF0  38 A0 00 00 */	li r5, 0
/* 805AACF4  38 C0 00 00 */	li r6, 0
/* 805AACF8  39 00 00 00 */	li r8, 0
/* 805AACFC  3D 20 80 5B */	lis r9, lit_3773@ha
/* 805AAD00  C0 29 AF 84 */	lfs f1, lit_3773@l(r9)
/* 805AAD04  39 20 00 00 */	li r9, 0
/* 805AAD08  39 40 FF FF */	li r10, -1
/* 805AAD0C  4B A6 5A C4 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 805AAD10  7C 7E 1B 78 */	mr r30, r3
lbl_805AAD14:
/* 805AAD14  93 DF 05 70 */	stw r30, 0x570(r31)
/* 805AAD18  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 805AAD1C  28 03 00 00 */	cmplwi r3, 0
/* 805AAD20  41 82 00 10 */	beq lbl_805AAD30
/* 805AAD24  80 63 00 04 */	lwz r3, 4(r3)
/* 805AAD28  28 03 00 00 */	cmplwi r3, 0
/* 805AAD2C  40 82 00 0C */	bne lbl_805AAD38
lbl_805AAD30:
/* 805AAD30  38 60 00 00 */	li r3, 0
/* 805AAD34  48 00 00 0C */	b lbl_805AAD40
lbl_805AAD38:
/* 805AAD38  93 E3 00 14 */	stw r31, 0x14(r3)
/* 805AAD3C  38 60 00 01 */	li r3, 1
lbl_805AAD40:
/* 805AAD40  39 61 00 30 */	addi r11, r1, 0x30
/* 805AAD44  4B DB 74 E0 */	b _restgpr_28
/* 805AAD48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805AAD4C  7C 08 03 A6 */	mtlr r0
/* 805AAD50  38 21 00 30 */	addi r1, r1, 0x30
/* 805AAD54  4E 80 00 20 */	blr 
