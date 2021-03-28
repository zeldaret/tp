lbl_806D6AC8:
/* 806D6AC8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806D6ACC  7C 08 02 A6 */	mflr r0
/* 806D6AD0  90 01 00 34 */	stw r0, 0x34(r1)
/* 806D6AD4  39 61 00 30 */	addi r11, r1, 0x30
/* 806D6AD8  4B C8 B7 00 */	b _savegpr_28
/* 806D6ADC  7C 7F 1B 78 */	mr r31, r3
/* 806D6AE0  88 03 0A 6F */	lbz r0, 0xa6f(r3)
/* 806D6AE4  28 00 00 03 */	cmplwi r0, 3
/* 806D6AE8  40 82 00 B4 */	bne lbl_806D6B9C
/* 806D6AEC  3C 60 80 6D */	lis r3, stringBase0@ha
/* 806D6AF0  38 63 7A F0 */	addi r3, r3, stringBase0@l
/* 806D6AF4  38 63 00 05 */	addi r3, r3, 5
/* 806D6AF8  38 80 00 0D */	li r4, 0xd
/* 806D6AFC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806D6B00  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806D6B04  3F A5 00 02 */	addis r29, r5, 2
/* 806D6B08  3B BD C2 F8 */	addi r29, r29, -15624
/* 806D6B0C  7F A5 EB 78 */	mr r5, r29
/* 806D6B10  38 C0 00 80 */	li r6, 0x80
/* 806D6B14  4B 96 57 D8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806D6B18  7C 7C 1B 78 */	mr r28, r3
/* 806D6B1C  38 60 00 58 */	li r3, 0x58
/* 806D6B20  4B BF 81 2C */	b __nw__FUl
/* 806D6B24  7C 7E 1B 79 */	or. r30, r3, r3
/* 806D6B28  41 82 00 6C */	beq lbl_806D6B94
/* 806D6B2C  3C 60 80 6D */	lis r3, stringBase0@ha
/* 806D6B30  38 63 7A F0 */	addi r3, r3, stringBase0@l
/* 806D6B34  38 63 00 05 */	addi r3, r3, 5
/* 806D6B38  38 80 00 09 */	li r4, 9
/* 806D6B3C  7F A5 EB 78 */	mr r5, r29
/* 806D6B40  38 C0 00 80 */	li r6, 0x80
/* 806D6B44  4B 96 57 A8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806D6B48  7C 67 1B 78 */	mr r7, r3
/* 806D6B4C  38 1F 09 6C */	addi r0, r31, 0x96c
/* 806D6B50  90 01 00 08 */	stw r0, 8(r1)
/* 806D6B54  38 00 00 00 */	li r0, 0
/* 806D6B58  90 01 00 0C */	stw r0, 0xc(r1)
/* 806D6B5C  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 806D6B60  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 806D6B64  90 01 00 10 */	stw r0, 0x10(r1)
/* 806D6B68  7F C3 F3 78 */	mr r3, r30
/* 806D6B6C  7F 84 E3 78 */	mr r4, r28
/* 806D6B70  38 A0 00 00 */	li r5, 0
/* 806D6B74  38 C0 00 00 */	li r6, 0
/* 806D6B78  39 00 00 00 */	li r8, 0
/* 806D6B7C  3D 20 80 6D */	lis r9, lit_3908@ha
/* 806D6B80  C0 29 79 A8 */	lfs f1, lit_3908@l(r9)
/* 806D6B84  39 20 00 00 */	li r9, 0
/* 806D6B88  39 40 FF FF */	li r10, -1
/* 806D6B8C  4B 93 9C 44 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 806D6B90  7C 7E 1B 78 */	mr r30, r3
lbl_806D6B94:
/* 806D6B94  93 DF 09 64 */	stw r30, 0x964(r31)
/* 806D6B98  48 00 00 FC */	b lbl_806D6C94
lbl_806D6B9C:
/* 806D6B9C  28 00 00 02 */	cmplwi r0, 2
/* 806D6BA0  41 82 00 50 */	beq lbl_806D6BF0
/* 806D6BA4  3C 60 80 6D */	lis r3, stringBase0@ha
/* 806D6BA8  38 63 7A F0 */	addi r3, r3, stringBase0@l
/* 806D6BAC  38 80 00 0C */	li r4, 0xc
/* 806D6BB0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806D6BB4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806D6BB8  3C A5 00 02 */	addis r5, r5, 2
/* 806D6BBC  38 C0 00 80 */	li r6, 0x80
/* 806D6BC0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806D6BC4  4B 96 57 28 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806D6BC8  38 80 00 00 */	li r4, 0
/* 806D6BCC  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 806D6BD0  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 806D6BD4  4B 93 E0 80 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 806D6BD8  90 7F 09 68 */	stw r3, 0x968(r31)
/* 806D6BDC  80 1F 09 68 */	lwz r0, 0x968(r31)
/* 806D6BE0  28 00 00 00 */	cmplwi r0, 0
/* 806D6BE4  40 82 00 0C */	bne lbl_806D6BF0
/* 806D6BE8  38 60 00 00 */	li r3, 0
/* 806D6BEC  48 00 00 CC */	b lbl_806D6CB8
lbl_806D6BF0:
/* 806D6BF0  3C 60 80 6D */	lis r3, stringBase0@ha
/* 806D6BF4  38 63 7A F0 */	addi r3, r3, stringBase0@l
/* 806D6BF8  38 80 00 0F */	li r4, 0xf
/* 806D6BFC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806D6C00  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806D6C04  3F A5 00 02 */	addis r29, r5, 2
/* 806D6C08  3B BD C2 F8 */	addi r29, r29, -15624
/* 806D6C0C  7F A5 EB 78 */	mr r5, r29
/* 806D6C10  38 C0 00 80 */	li r6, 0x80
/* 806D6C14  4B 96 56 D8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806D6C18  7C 7C 1B 78 */	mr r28, r3
/* 806D6C1C  38 60 00 58 */	li r3, 0x58
/* 806D6C20  4B BF 80 2C */	b __nw__FUl
/* 806D6C24  7C 7E 1B 79 */	or. r30, r3, r3
/* 806D6C28  41 82 00 68 */	beq lbl_806D6C90
/* 806D6C2C  3C 60 80 6D */	lis r3, stringBase0@ha
/* 806D6C30  38 63 7A F0 */	addi r3, r3, stringBase0@l
/* 806D6C34  38 80 00 05 */	li r4, 5
/* 806D6C38  7F A5 EB 78 */	mr r5, r29
/* 806D6C3C  38 C0 00 80 */	li r6, 0x80
/* 806D6C40  4B 96 56 AC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806D6C44  7C 67 1B 78 */	mr r7, r3
/* 806D6C48  38 1F 09 6C */	addi r0, r31, 0x96c
/* 806D6C4C  90 01 00 08 */	stw r0, 8(r1)
/* 806D6C50  38 00 00 00 */	li r0, 0
/* 806D6C54  90 01 00 0C */	stw r0, 0xc(r1)
/* 806D6C58  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 806D6C5C  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 806D6C60  90 01 00 10 */	stw r0, 0x10(r1)
/* 806D6C64  7F C3 F3 78 */	mr r3, r30
/* 806D6C68  7F 84 E3 78 */	mr r4, r28
/* 806D6C6C  38 A0 00 00 */	li r5, 0
/* 806D6C70  38 C0 00 00 */	li r6, 0
/* 806D6C74  39 00 00 00 */	li r8, 0
/* 806D6C78  3D 20 80 6D */	lis r9, lit_3908@ha
/* 806D6C7C  C0 29 79 A8 */	lfs f1, lit_3908@l(r9)
/* 806D6C80  39 20 00 00 */	li r9, 0
/* 806D6C84  39 40 FF FF */	li r10, -1
/* 806D6C88  4B 93 9B 48 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 806D6C8C  7C 7E 1B 78 */	mr r30, r3
lbl_806D6C90:
/* 806D6C90  93 DF 09 64 */	stw r30, 0x964(r31)
lbl_806D6C94:
/* 806D6C94  80 7F 09 64 */	lwz r3, 0x964(r31)
/* 806D6C98  28 03 00 00 */	cmplwi r3, 0
/* 806D6C9C  41 82 00 10 */	beq lbl_806D6CAC
/* 806D6CA0  80 03 00 04 */	lwz r0, 4(r3)
/* 806D6CA4  28 00 00 00 */	cmplwi r0, 0
/* 806D6CA8  40 82 00 0C */	bne lbl_806D6CB4
lbl_806D6CAC:
/* 806D6CAC  38 60 00 00 */	li r3, 0
/* 806D6CB0  48 00 00 08 */	b lbl_806D6CB8
lbl_806D6CB4:
/* 806D6CB4  38 60 00 01 */	li r3, 1
lbl_806D6CB8:
/* 806D6CB8  39 61 00 30 */	addi r11, r1, 0x30
/* 806D6CBC  4B C8 B5 68 */	b _restgpr_28
/* 806D6CC0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806D6CC4  7C 08 03 A6 */	mtlr r0
/* 806D6CC8  38 21 00 30 */	addi r1, r1, 0x30
/* 806D6CCC  4E 80 00 20 */	blr 
