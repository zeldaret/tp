lbl_80516B04:
/* 80516B04  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80516B08  7C 08 02 A6 */	mflr r0
/* 80516B0C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80516B10  39 61 00 30 */	addi r11, r1, 0x30
/* 80516B14  4B E4 B6 C0 */	b _savegpr_27
/* 80516B18  7C 7F 1B 78 */	mr r31, r3
/* 80516B1C  88 03 12 9A */	lbz r0, 0x129a(r3)
/* 80516B20  7C 00 07 75 */	extsb. r0, r0
/* 80516B24  41 82 02 CC */	beq lbl_80516DF0
/* 80516B28  38 60 00 58 */	li r3, 0x58
/* 80516B2C  4B DB 81 20 */	b __nw__FUl
/* 80516B30  7C 7C 1B 79 */	or. r28, r3, r3
/* 80516B34  41 82 00 94 */	beq lbl_80516BC8
/* 80516B38  3C 60 80 52 */	lis r3, stringBase0@ha
/* 80516B3C  38 63 89 68 */	addi r3, r3, stringBase0@l
/* 80516B40  38 80 00 41 */	li r4, 0x41
/* 80516B44  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80516B48  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80516B4C  3F C5 00 02 */	addis r30, r5, 2
/* 80516B50  3B DE C2 F8 */	addi r30, r30, -15624
/* 80516B54  7F C5 F3 78 */	mr r5, r30
/* 80516B58  38 C0 00 80 */	li r6, 0x80
/* 80516B5C  4B B2 57 90 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80516B60  7C 7D 1B 78 */	mr r29, r3
/* 80516B64  3C 60 80 52 */	lis r3, stringBase0@ha
/* 80516B68  38 63 89 68 */	addi r3, r3, stringBase0@l
/* 80516B6C  38 80 00 53 */	li r4, 0x53
/* 80516B70  7F C5 F3 78 */	mr r5, r30
/* 80516B74  38 C0 00 80 */	li r6, 0x80
/* 80516B78  4B B2 57 74 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80516B7C  7C 64 1B 78 */	mr r4, r3
/* 80516B80  38 1F 05 D4 */	addi r0, r31, 0x5d4
/* 80516B84  90 01 00 08 */	stw r0, 8(r1)
/* 80516B88  3C 00 00 08 */	lis r0, 8
/* 80516B8C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80516B90  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80516B94  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80516B98  90 01 00 10 */	stw r0, 0x10(r1)
/* 80516B9C  7F 83 E3 78 */	mr r3, r28
/* 80516BA0  38 A0 00 00 */	li r5, 0
/* 80516BA4  38 C0 00 00 */	li r6, 0
/* 80516BA8  7F A7 EB 78 */	mr r7, r29
/* 80516BAC  39 00 00 02 */	li r8, 2
/* 80516BB0  3D 20 80 52 */	lis r9, lit_4210@ha
/* 80516BB4  C0 29 85 8C */	lfs f1, lit_4210@l(r9)
/* 80516BB8  39 20 00 00 */	li r9, 0
/* 80516BBC  39 40 FF FF */	li r10, -1
/* 80516BC0  4B AF 9C 10 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80516BC4  7C 7C 1B 78 */	mr r28, r3
lbl_80516BC8:
/* 80516BC8  93 9F 05 D0 */	stw r28, 0x5d0(r31)
/* 80516BCC  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80516BD0  28 03 00 00 */	cmplwi r3, 0
/* 80516BD4  41 82 00 10 */	beq lbl_80516BE4
/* 80516BD8  80 A3 00 04 */	lwz r5, 4(r3)
/* 80516BDC  28 05 00 00 */	cmplwi r5, 0
/* 80516BE0  40 82 00 0C */	bne lbl_80516BEC
lbl_80516BE4:
/* 80516BE4  38 60 00 00 */	li r3, 0
/* 80516BE8  48 00 05 FC */	b lbl_805171E4
lbl_80516BEC:
/* 80516BEC  93 E5 00 14 */	stw r31, 0x14(r5)
/* 80516BF0  38 E0 00 00 */	li r7, 0
/* 80516BF4  3C 60 80 50 */	lis r3, nodeCallBack_B__FP8J3DJointi@ha
/* 80516BF8  38 83 52 F4 */	addi r4, r3, nodeCallBack_B__FP8J3DJointi@l
/* 80516BFC  48 00 00 18 */	b lbl_80516C14
lbl_80516C00:
/* 80516C00  80 66 00 28 */	lwz r3, 0x28(r6)
/* 80516C04  54 E0 13 BA */	rlwinm r0, r7, 2, 0xe, 0x1d
/* 80516C08  7C 63 00 2E */	lwzx r3, r3, r0
/* 80516C0C  90 83 00 04 */	stw r4, 4(r3)
/* 80516C10  38 E7 00 01 */	addi r7, r7, 1
lbl_80516C14:
/* 80516C14  80 C5 00 04 */	lwz r6, 4(r5)
/* 80516C18  A0 66 00 2C */	lhz r3, 0x2c(r6)
/* 80516C1C  54 E0 04 3E */	clrlwi r0, r7, 0x10
/* 80516C20  7C 00 18 40 */	cmplw r0, r3
/* 80516C24  41 80 FF DC */	blt lbl_80516C00
/* 80516C28  88 1F 12 9A */	lbz r0, 0x129a(r31)
/* 80516C2C  2C 00 00 01 */	cmpwi r0, 1
/* 80516C30  40 82 00 B8 */	bne lbl_80516CE8
/* 80516C34  38 60 00 54 */	li r3, 0x54
/* 80516C38  4B DB 80 14 */	b __nw__FUl
/* 80516C3C  7C 7C 1B 79 */	or. r28, r3, r3
/* 80516C40  41 82 00 7C */	beq lbl_80516CBC
/* 80516C44  3C 60 80 52 */	lis r3, stringBase0@ha
/* 80516C48  38 63 89 68 */	addi r3, r3, stringBase0@l
/* 80516C4C  38 80 00 54 */	li r4, 0x54
/* 80516C50  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80516C54  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80516C58  3C A5 00 02 */	addis r5, r5, 2
/* 80516C5C  38 C0 00 80 */	li r6, 0x80
/* 80516C60  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80516C64  4B B2 56 88 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80516C68  7C 64 1B 78 */	mr r4, r3
/* 80516C6C  38 00 00 01 */	li r0, 1
/* 80516C70  90 01 00 08 */	stw r0, 8(r1)
/* 80516C74  38 00 00 00 */	li r0, 0
/* 80516C78  90 01 00 0C */	stw r0, 0xc(r1)
/* 80516C7C  3C 00 00 08 */	lis r0, 8
/* 80516C80  90 01 00 10 */	stw r0, 0x10(r1)
/* 80516C84  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80516C88  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80516C8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80516C90  7F 83 E3 78 */	mr r3, r28
/* 80516C94  38 A0 00 00 */	li r5, 0
/* 80516C98  38 C0 00 00 */	li r6, 0
/* 80516C9C  38 E0 00 00 */	li r7, 0
/* 80516CA0  39 00 00 02 */	li r8, 2
/* 80516CA4  3D 20 80 52 */	lis r9, lit_4210@ha
/* 80516CA8  C0 29 85 8C */	lfs f1, lit_4210@l(r9)
/* 80516CAC  39 20 00 00 */	li r9, 0
/* 80516CB0  39 40 FF FF */	li r10, -1
/* 80516CB4  4B AF 8F 98 */	b __ct__14mDoExt_McaMorfFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiiPvUlUl
/* 80516CB8  7C 7C 1B 78 */	mr r28, r3
lbl_80516CBC:
/* 80516CBC  93 9F 06 9C */	stw r28, 0x69c(r31)
/* 80516CC0  80 7F 06 9C */	lwz r3, 0x69c(r31)
/* 80516CC4  28 03 00 00 */	cmplwi r3, 0
/* 80516CC8  41 82 00 10 */	beq lbl_80516CD8
/* 80516CCC  80 03 00 04 */	lwz r0, 4(r3)
/* 80516CD0  28 00 00 00 */	cmplwi r0, 0
/* 80516CD4  40 82 00 0C */	bne lbl_80516CE0
lbl_80516CD8:
/* 80516CD8  38 60 00 00 */	li r3, 0
/* 80516CDC  48 00 05 08 */	b lbl_805171E4
lbl_80516CE0:
/* 80516CE0  38 00 00 01 */	li r0, 1
/* 80516CE4  98 1F 06 A0 */	stb r0, 0x6a0(r31)
lbl_80516CE8:
/* 80516CE8  3B A0 00 00 */	li r29, 0
/* 80516CEC  3B 80 00 00 */	li r28, 0
/* 80516CF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80516CF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80516CF8  3F C3 00 02 */	addis r30, r3, 2
/* 80516CFC  3B DE C2 F8 */	addi r30, r30, -15624
lbl_80516D00:
/* 80516D00  88 1F 12 9A */	lbz r0, 0x129a(r31)
/* 80516D04  7C 00 07 74 */	extsb r0, r0
/* 80516D08  2C 00 00 03 */	cmpwi r0, 3
/* 80516D0C  40 82 00 68 */	bne lbl_80516D74
/* 80516D10  2C 1D 00 02 */	cmpwi r29, 2
/* 80516D14  40 80 00 50 */	bge lbl_80516D64
/* 80516D18  3C 60 80 52 */	lis r3, stringBase0@ha
/* 80516D1C  38 63 89 68 */	addi r3, r3, stringBase0@l
/* 80516D20  3C 80 80 52 */	lis r4, ikki2_boss_part_bmd@ha
/* 80516D24  38 84 8F C0 */	addi r4, r4, ikki2_boss_part_bmd@l
/* 80516D28  7C 84 E0 2E */	lwzx r4, r4, r28
/* 80516D2C  7F C5 F3 78 */	mr r5, r30
/* 80516D30  38 C0 00 80 */	li r6, 0x80
/* 80516D34  4B B2 55 B8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80516D38  3C 80 00 08 */	lis r4, 8
/* 80516D3C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80516D40  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80516D44  4B AF DF 10 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80516D48  38 1C 06 D4 */	addi r0, r28, 0x6d4
/* 80516D4C  7C 7F 01 2E */	stwx r3, r31, r0
/* 80516D50  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80516D54  28 00 00 00 */	cmplwi r0, 0
/* 80516D58  40 82 00 84 */	bne lbl_80516DDC
/* 80516D5C  38 60 00 00 */	li r3, 0
/* 80516D60  48 00 04 84 */	b lbl_805171E4
lbl_80516D64:
/* 80516D64  38 60 00 01 */	li r3, 1
/* 80516D68  38 1D 07 0C */	addi r0, r29, 0x70c
/* 80516D6C  7C 7F 01 AE */	stbx r3, r31, r0
/* 80516D70  48 00 00 6C */	b lbl_80516DDC
lbl_80516D74:
/* 80516D74  2C 00 00 01 */	cmpwi r0, 1
/* 80516D78  41 82 00 0C */	beq lbl_80516D84
/* 80516D7C  2C 1D 00 0D */	cmpwi r29, 0xd
/* 80516D80  40 82 00 50 */	bne lbl_80516DD0
lbl_80516D84:
/* 80516D84  3C 60 80 52 */	lis r3, stringBase0@ha
/* 80516D88  38 63 89 68 */	addi r3, r3, stringBase0@l
/* 80516D8C  3C 80 80 52 */	lis r4, boss_part_bmd@ha
/* 80516D90  38 84 8F 88 */	addi r4, r4, boss_part_bmd@l
/* 80516D94  7C 84 E0 2E */	lwzx r4, r4, r28
/* 80516D98  7F C5 F3 78 */	mr r5, r30
/* 80516D9C  38 C0 00 80 */	li r6, 0x80
/* 80516DA0  4B B2 55 4C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80516DA4  3C 80 00 08 */	lis r4, 8
/* 80516DA8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80516DAC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80516DB0  4B AF DE A4 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80516DB4  38 1C 06 D4 */	addi r0, r28, 0x6d4
/* 80516DB8  7C 7F 01 2E */	stwx r3, r31, r0
/* 80516DBC  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80516DC0  28 00 00 00 */	cmplwi r0, 0
/* 80516DC4  40 82 00 18 */	bne lbl_80516DDC
/* 80516DC8  38 60 00 00 */	li r3, 0
/* 80516DCC  48 00 04 18 */	b lbl_805171E4
lbl_80516DD0:
/* 80516DD0  38 60 00 01 */	li r3, 1
/* 80516DD4  38 1D 07 0C */	addi r0, r29, 0x70c
/* 80516DD8  7C 7F 01 AE */	stbx r3, r31, r0
lbl_80516DDC:
/* 80516DDC  3B BD 00 01 */	addi r29, r29, 1
/* 80516DE0  2C 1D 00 0E */	cmpwi r29, 0xe
/* 80516DE4  3B 9C 00 04 */	addi r28, r28, 4
/* 80516DE8  41 80 FF 18 */	blt lbl_80516D00
/* 80516DEC  48 00 03 F4 */	b lbl_805171E0
lbl_80516DF0:
/* 80516DF0  38 60 00 58 */	li r3, 0x58
/* 80516DF4  4B DB 7E 58 */	b __nw__FUl
/* 80516DF8  7C 7C 1B 79 */	or. r28, r3, r3
/* 80516DFC  41 82 00 8C */	beq lbl_80516E88
/* 80516E00  80 7F 06 78 */	lwz r3, 0x678(r31)
/* 80516E04  38 80 00 40 */	li r4, 0x40
/* 80516E08  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80516E0C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80516E10  3F C5 00 02 */	addis r30, r5, 2
/* 80516E14  3B DE C2 F8 */	addi r30, r30, -15624
/* 80516E18  7F C5 F3 78 */	mr r5, r30
/* 80516E1C  38 C0 00 80 */	li r6, 0x80
/* 80516E20  4B B2 54 CC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80516E24  7C 7D 1B 78 */	mr r29, r3
/* 80516E28  80 7F 06 78 */	lwz r3, 0x678(r31)
/* 80516E2C  38 80 00 44 */	li r4, 0x44
/* 80516E30  7F C5 F3 78 */	mr r5, r30
/* 80516E34  38 C0 00 80 */	li r6, 0x80
/* 80516E38  4B B2 54 B4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80516E3C  7C 64 1B 78 */	mr r4, r3
/* 80516E40  38 1F 05 D4 */	addi r0, r31, 0x5d4
/* 80516E44  90 01 00 08 */	stw r0, 8(r1)
/* 80516E48  3C 00 00 08 */	lis r0, 8
/* 80516E4C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80516E50  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 80516E54  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80516E58  90 01 00 10 */	stw r0, 0x10(r1)
/* 80516E5C  7F 83 E3 78 */	mr r3, r28
/* 80516E60  38 A0 00 00 */	li r5, 0
/* 80516E64  38 C0 00 00 */	li r6, 0
/* 80516E68  7F A7 EB 78 */	mr r7, r29
/* 80516E6C  39 00 00 00 */	li r8, 0
/* 80516E70  3D 20 80 52 */	lis r9, lit_4210@ha
/* 80516E74  C0 29 85 8C */	lfs f1, lit_4210@l(r9)
/* 80516E78  39 20 00 00 */	li r9, 0
/* 80516E7C  39 40 FF FF */	li r10, -1
/* 80516E80  4B AF 99 50 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80516E84  7C 7C 1B 78 */	mr r28, r3
lbl_80516E88:
/* 80516E88  93 9F 05 D0 */	stw r28, 0x5d0(r31)
/* 80516E8C  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 80516E90  28 03 00 00 */	cmplwi r3, 0
/* 80516E94  41 82 00 10 */	beq lbl_80516EA4
/* 80516E98  83 83 00 04 */	lwz r28, 4(r3)
/* 80516E9C  28 1C 00 00 */	cmplwi r28, 0
/* 80516EA0  40 82 00 0C */	bne lbl_80516EAC
lbl_80516EA4:
/* 80516EA4  38 60 00 00 */	li r3, 0
/* 80516EA8  48 00 03 3C */	b lbl_805171E4
lbl_80516EAC:
/* 80516EAC  93 FC 00 14 */	stw r31, 0x14(r28)
/* 80516EB0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80516EB4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80516EB8  3C 80 80 52 */	lis r4, lit_4209@ha
/* 80516EBC  C0 24 85 88 */	lfs f1, lit_4209@l(r4)
/* 80516EC0  FC 40 08 90 */	fmr f2, f1
/* 80516EC4  FC 60 08 90 */	fmr f3, f1
/* 80516EC8  4B E2 FA A0 */	b PSMTXScale
/* 80516ECC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80516ED0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80516ED4  38 9C 00 24 */	addi r4, r28, 0x24
/* 80516ED8  4B E2 F5 D8 */	b PSMTXCopy
/* 80516EDC  38 C0 00 00 */	li r6, 0
/* 80516EE0  3C 60 80 50 */	lis r3, nodeCallBack__FP8J3DJointi@ha
/* 80516EE4  38 83 4D DC */	addi r4, r3, nodeCallBack__FP8J3DJointi@l
/* 80516EE8  48 00 00 18 */	b lbl_80516F00
lbl_80516EEC:
/* 80516EEC  80 65 00 28 */	lwz r3, 0x28(r5)
/* 80516EF0  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80516EF4  7C 63 00 2E */	lwzx r3, r3, r0
/* 80516EF8  90 83 00 04 */	stw r4, 4(r3)
/* 80516EFC  38 C6 00 01 */	addi r6, r6, 1
lbl_80516F00:
/* 80516F00  80 BC 00 04 */	lwz r5, 4(r28)
/* 80516F04  A0 65 00 2C */	lhz r3, 0x2c(r5)
/* 80516F08  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 80516F0C  7C 00 18 40 */	cmplw r0, r3
/* 80516F10  41 80 FF DC */	blt lbl_80516EEC
/* 80516F14  88 1F 05 BC */	lbz r0, 0x5bc(r31)
/* 80516F18  28 00 00 01 */	cmplwi r0, 1
/* 80516F1C  40 82 00 94 */	bne lbl_80516FB0
/* 80516F20  3C 60 80 52 */	lis r3, boss@ha
/* 80516F24  80 03 91 80 */	lwz r0, boss@l(r3)
/* 80516F28  28 00 00 00 */	cmplwi r0, 0
/* 80516F2C  41 82 00 28 */	beq lbl_80516F54
/* 80516F30  80 7F 06 78 */	lwz r3, 0x678(r31)
/* 80516F34  38 80 00 49 */	li r4, 0x49
/* 80516F38  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80516F3C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80516F40  3C A5 00 02 */	addis r5, r5, 2
/* 80516F44  38 C0 00 80 */	li r6, 0x80
/* 80516F48  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80516F4C  4B B2 53 A0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80516F50  48 00 00 24 */	b lbl_80516F74
lbl_80516F54:
/* 80516F54  80 7F 06 78 */	lwz r3, 0x678(r31)
/* 80516F58  38 80 00 48 */	li r4, 0x48
/* 80516F5C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80516F60  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80516F64  3C A5 00 02 */	addis r5, r5, 2
/* 80516F68  38 C0 00 80 */	li r6, 0x80
/* 80516F6C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80516F70  4B B2 53 7C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
lbl_80516F74:
/* 80516F74  3C 80 00 08 */	lis r4, 8
/* 80516F78  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80516F7C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80516F80  4B AF DC D4 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80516F84  90 7F 06 94 */	stw r3, 0x694(r31)
/* 80516F88  80 9F 06 94 */	lwz r4, 0x694(r31)
/* 80516F8C  28 04 00 00 */	cmplwi r4, 0
/* 80516F90  40 82 00 0C */	bne lbl_80516F9C
/* 80516F94  38 60 00 00 */	li r3, 0
/* 80516F98  48 00 02 4C */	b lbl_805171E4
lbl_80516F9C:
/* 80516F9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80516FA0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80516FA4  38 84 00 24 */	addi r4, r4, 0x24
/* 80516FA8  4B E2 F5 08 */	b PSMTXCopy
/* 80516FAC  48 00 01 B0 */	b lbl_8051715C
lbl_80516FB0:
/* 80516FB0  28 00 00 02 */	cmplwi r0, 2
/* 80516FB4  41 80 01 A8 */	blt lbl_8051715C
/* 80516FB8  38 60 00 58 */	li r3, 0x58
/* 80516FBC  4B DB 7C 90 */	b __nw__FUl
/* 80516FC0  7C 7C 1B 79 */	or. r28, r3, r3
/* 80516FC4  41 82 00 8C */	beq lbl_80517050
/* 80516FC8  80 7F 06 78 */	lwz r3, 0x678(r31)
/* 80516FCC  38 80 00 0A */	li r4, 0xa
/* 80516FD0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80516FD4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80516FD8  3F C5 00 02 */	addis r30, r5, 2
/* 80516FDC  3B DE C2 F8 */	addi r30, r30, -15624
/* 80516FE0  7F C5 F3 78 */	mr r5, r30
/* 80516FE4  38 C0 00 80 */	li r6, 0x80
/* 80516FE8  4B B2 53 04 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80516FEC  7C 7D 1B 78 */	mr r29, r3
/* 80516FF0  80 7F 06 78 */	lwz r3, 0x678(r31)
/* 80516FF4  38 80 00 47 */	li r4, 0x47
/* 80516FF8  7F C5 F3 78 */	mr r5, r30
/* 80516FFC  38 C0 00 80 */	li r6, 0x80
/* 80517000  4B B2 52 EC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80517004  7C 64 1B 78 */	mr r4, r3
/* 80517008  38 00 00 00 */	li r0, 0
/* 8051700C  90 01 00 08 */	stw r0, 8(r1)
/* 80517010  3C 00 00 08 */	lis r0, 8
/* 80517014  90 01 00 0C */	stw r0, 0xc(r1)
/* 80517018  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 8051701C  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 80517020  90 01 00 10 */	stw r0, 0x10(r1)
/* 80517024  7F 83 E3 78 */	mr r3, r28
/* 80517028  38 A0 00 00 */	li r5, 0
/* 8051702C  38 C0 00 00 */	li r6, 0
/* 80517030  7F A7 EB 78 */	mr r7, r29
/* 80517034  39 00 00 00 */	li r8, 0
/* 80517038  3D 20 80 52 */	lis r9, lit_4210@ha
/* 8051703C  C0 29 85 8C */	lfs f1, lit_4210@l(r9)
/* 80517040  39 20 00 00 */	li r9, 0
/* 80517044  39 40 FF FF */	li r10, -1
/* 80517048  4B AF 97 88 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8051704C  7C 7C 1B 78 */	mr r28, r3
lbl_80517050:
/* 80517050  93 9F 06 98 */	stw r28, 0x698(r31)
/* 80517054  80 7F 06 98 */	lwz r3, 0x698(r31)
/* 80517058  28 03 00 00 */	cmplwi r3, 0
/* 8051705C  41 82 00 10 */	beq lbl_8051706C
/* 80517060  83 83 00 04 */	lwz r28, 4(r3)
/* 80517064  28 1C 00 00 */	cmplwi r28, 0
/* 80517068  40 82 00 0C */	bne lbl_80517074
lbl_8051706C:
/* 8051706C  38 60 00 00 */	li r3, 0
/* 80517070  48 00 01 74 */	b lbl_805171E4
lbl_80517074:
/* 80517074  93 FC 00 14 */	stw r31, 0x14(r28)
/* 80517078  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8051707C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80517080  38 9C 00 24 */	addi r4, r28, 0x24
/* 80517084  4B E2 F4 2C */	b PSMTXCopy
/* 80517088  38 C0 00 00 */	li r6, 0
/* 8051708C  3C 60 80 50 */	lis r3, nodeCallBack_bow__FP8J3DJointi@ha
/* 80517090  38 83 54 04 */	addi r4, r3, nodeCallBack_bow__FP8J3DJointi@l
/* 80517094  48 00 00 2C */	b lbl_805170C0
lbl_80517098:
/* 80517098  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 8051709C  28 00 00 02 */	cmplwi r0, 2
/* 805170A0  41 82 00 0C */	beq lbl_805170AC
/* 805170A4  28 00 00 03 */	cmplwi r0, 3
/* 805170A8  40 82 00 14 */	bne lbl_805170BC
lbl_805170AC:
/* 805170AC  80 65 00 28 */	lwz r3, 0x28(r5)
/* 805170B0  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 805170B4  7C 63 00 2E */	lwzx r3, r3, r0
/* 805170B8  90 83 00 04 */	stw r4, 4(r3)
lbl_805170BC:
/* 805170BC  38 C6 00 01 */	addi r6, r6, 1
lbl_805170C0:
/* 805170C0  80 BC 00 04 */	lwz r5, 4(r28)
/* 805170C4  A0 65 00 2C */	lhz r3, 0x2c(r5)
/* 805170C8  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 805170CC  7C 00 18 40 */	cmplw r0, r3
/* 805170D0  41 80 FF C8 */	blt lbl_80517098
/* 805170D4  88 1F 05 BC */	lbz r0, 0x5bc(r31)
/* 805170D8  28 00 00 04 */	cmplwi r0, 4
/* 805170DC  40 82 00 28 */	bne lbl_80517104
/* 805170E0  80 7F 06 78 */	lwz r3, 0x678(r31)
/* 805170E4  38 80 00 46 */	li r4, 0x46
/* 805170E8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 805170EC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 805170F0  3C A5 00 02 */	addis r5, r5, 2
/* 805170F4  38 C0 00 80 */	li r6, 0x80
/* 805170F8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 805170FC  4B B2 51 F0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80517100  48 00 00 24 */	b lbl_80517124
lbl_80517104:
/* 80517104  80 7F 06 78 */	lwz r3, 0x678(r31)
/* 80517108  38 80 00 45 */	li r4, 0x45
/* 8051710C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80517110  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80517114  3C A5 00 02 */	addis r5, r5, 2
/* 80517118  38 C0 00 80 */	li r6, 0x80
/* 8051711C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80517120  4B B2 51 CC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
lbl_80517124:
/* 80517124  3C 80 00 08 */	lis r4, 8
/* 80517128  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 8051712C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80517130  4B AF DB 24 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80517134  90 7F 06 94 */	stw r3, 0x694(r31)
/* 80517138  80 9F 06 94 */	lwz r4, 0x694(r31)
/* 8051713C  28 04 00 00 */	cmplwi r4, 0
/* 80517140  40 82 00 0C */	bne lbl_8051714C
/* 80517144  38 60 00 00 */	li r3, 0
/* 80517148  48 00 00 9C */	b lbl_805171E4
lbl_8051714C:
/* 8051714C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80517150  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80517154  38 84 00 24 */	addi r4, r4, 0x24
/* 80517158  4B E2 F3 58 */	b PSMTXCopy
lbl_8051715C:
/* 8051715C  80 7F 06 78 */	lwz r3, 0x678(r31)
/* 80517160  38 80 00 4A */	li r4, 0x4a
/* 80517164  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80517168  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 8051716C  3C A5 00 02 */	addis r5, r5, 2
/* 80517170  38 C0 00 80 */	li r6, 0x80
/* 80517174  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80517178  4B B2 51 74 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8051717C  7C 7E 1B 78 */	mr r30, r3
/* 80517180  3B 60 00 00 */	li r27, 0
/* 80517184  3F A0 11 00 */	lis r29, 0x1100
/* 80517188  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8051718C  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l
/* 80517190  48 00 00 44 */	b lbl_805171D4
lbl_80517194:
/* 80517194  7F C3 F3 78 */	mr r3, r30
/* 80517198  3C 80 00 08 */	lis r4, 8
/* 8051719C  38 BD 00 84 */	addi r5, r29, 0x84
/* 805171A0  4B AF DA B4 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 805171A4  57 64 13 BA */	rlwinm r4, r27, 2, 0xe, 0x1d
/* 805171A8  38 04 06 C4 */	addi r0, r4, 0x6c4
/* 805171AC  7C 7F 01 2E */	stwx r3, r31, r0
/* 805171B0  7C 9F 00 2E */	lwzx r4, r31, r0
/* 805171B4  28 04 00 00 */	cmplwi r4, 0
/* 805171B8  40 82 00 0C */	bne lbl_805171C4
/* 805171BC  38 60 00 00 */	li r3, 0
/* 805171C0  48 00 00 24 */	b lbl_805171E4
lbl_805171C4:
/* 805171C4  7F 83 E3 78 */	mr r3, r28
/* 805171C8  38 84 00 24 */	addi r4, r4, 0x24
/* 805171CC  4B E2 F2 E4 */	b PSMTXCopy
/* 805171D0  3B 7B 00 01 */	addi r27, r27, 1
lbl_805171D4:
/* 805171D4  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 805171D8  28 00 00 02 */	cmplwi r0, 2
/* 805171DC  41 80 FF B8 */	blt lbl_80517194
lbl_805171E0:
/* 805171E0  38 60 00 01 */	li r3, 1
lbl_805171E4:
/* 805171E4  39 61 00 30 */	addi r11, r1, 0x30
/* 805171E8  4B E4 B0 38 */	b _restgpr_27
/* 805171EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805171F0  7C 08 03 A6 */	mtlr r0
/* 805171F4  38 21 00 30 */	addi r1, r1, 0x30
/* 805171F8  4E 80 00 20 */	blr 
