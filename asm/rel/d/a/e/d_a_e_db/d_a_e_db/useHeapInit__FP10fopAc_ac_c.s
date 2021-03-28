lbl_806A0960:
/* 806A0960  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806A0964  7C 08 02 A6 */	mflr r0
/* 806A0968  90 01 00 34 */	stw r0, 0x34(r1)
/* 806A096C  39 61 00 30 */	addi r11, r1, 0x30
/* 806A0970  4B CC 18 64 */	b _savegpr_27
/* 806A0974  7C 7F 1B 78 */	mr r31, r3
/* 806A0978  38 60 00 58 */	li r3, 0x58
/* 806A097C  4B C2 E2 D0 */	b __nw__FUl
/* 806A0980  7C 7E 1B 79 */	or. r30, r3, r3
/* 806A0984  41 82 00 94 */	beq lbl_806A0A18
/* 806A0988  3C 60 80 6A */	lis r3, stringBase0@ha
/* 806A098C  38 63 1A 6C */	addi r3, r3, stringBase0@l
/* 806A0990  38 80 00 12 */	li r4, 0x12
/* 806A0994  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806A0998  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806A099C  3F 85 00 02 */	addis r28, r5, 2
/* 806A09A0  3B 9C C2 F8 */	addi r28, r28, -15624
/* 806A09A4  7F 85 E3 78 */	mr r5, r28
/* 806A09A8  38 C0 00 80 */	li r6, 0x80
/* 806A09AC  4B 99 B9 40 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806A09B0  7C 7D 1B 78 */	mr r29, r3
/* 806A09B4  3C 60 80 6A */	lis r3, stringBase0@ha
/* 806A09B8  38 63 1A 6C */	addi r3, r3, stringBase0@l
/* 806A09BC  38 80 00 17 */	li r4, 0x17
/* 806A09C0  7F 85 E3 78 */	mr r5, r28
/* 806A09C4  38 C0 00 80 */	li r6, 0x80
/* 806A09C8  4B 99 B9 24 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806A09CC  7C 64 1B 78 */	mr r4, r3
/* 806A09D0  38 1F 05 BC */	addi r0, r31, 0x5bc
/* 806A09D4  90 01 00 08 */	stw r0, 8(r1)
/* 806A09D8  3C 00 00 08 */	lis r0, 8
/* 806A09DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 806A09E0  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 806A09E4  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 806A09E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 806A09EC  7F C3 F3 78 */	mr r3, r30
/* 806A09F0  38 A0 00 00 */	li r5, 0
/* 806A09F4  38 C0 00 00 */	li r6, 0
/* 806A09F8  7F A7 EB 78 */	mr r7, r29
/* 806A09FC  39 00 00 02 */	li r8, 2
/* 806A0A00  3D 20 80 6A */	lis r9, lit_3904@ha
/* 806A0A04  C0 29 19 14 */	lfs f1, lit_3904@l(r9)
/* 806A0A08  39 20 00 00 */	li r9, 0
/* 806A0A0C  39 40 FF FF */	li r10, -1
/* 806A0A10  4B 96 FD C0 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 806A0A14  7C 7E 1B 78 */	mr r30, r3
lbl_806A0A18:
/* 806A0A18  93 DF 05 B8 */	stw r30, 0x5b8(r31)
/* 806A0A1C  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 806A0A20  28 03 00 00 */	cmplwi r3, 0
/* 806A0A24  41 82 00 10 */	beq lbl_806A0A34
/* 806A0A28  80 03 00 04 */	lwz r0, 4(r3)
/* 806A0A2C  28 00 00 00 */	cmplwi r0, 0
/* 806A0A30  40 82 00 0C */	bne lbl_806A0A3C
lbl_806A0A34:
/* 806A0A34  38 60 00 00 */	li r3, 0
/* 806A0A38  48 00 01 04 */	b lbl_806A0B3C
lbl_806A0A3C:
/* 806A0A3C  3C 60 80 6A */	lis r3, stringBase0@ha
/* 806A0A40  38 63 1A 6C */	addi r3, r3, stringBase0@l
/* 806A0A44  38 80 00 1C */	li r4, 0x1c
/* 806A0A48  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806A0A4C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806A0A50  3F 85 00 02 */	addis r28, r5, 2
/* 806A0A54  3B 9C C2 F8 */	addi r28, r28, -15624
/* 806A0A58  7F 85 E3 78 */	mr r5, r28
/* 806A0A5C  38 C0 00 80 */	li r6, 0x80
/* 806A0A60  4B 99 B8 8C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806A0A64  7C 66 1B 78 */	mr r6, r3
/* 806A0A68  38 7F 08 04 */	addi r3, r31, 0x804
/* 806A0A6C  38 80 00 01 */	li r4, 1
/* 806A0A70  38 A0 00 0C */	li r5, 0xc
/* 806A0A74  38 E0 00 01 */	li r7, 1
/* 806A0A78  4B 97 28 E8 */	b init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi
/* 806A0A7C  2C 03 00 00 */	cmpwi r3, 0
/* 806A0A80  40 82 00 0C */	bne lbl_806A0A8C
/* 806A0A84  38 60 00 00 */	li r3, 0
/* 806A0A88  48 00 00 B4 */	b lbl_806A0B3C
lbl_806A0A8C:
/* 806A0A8C  80 7F 08 3C */	lwz r3, 0x83c(r31)
/* 806A0A90  80 83 00 04 */	lwz r4, 4(r3)
/* 806A0A94  3C 60 80 6A */	lis r3, lit_4122@ha
/* 806A0A98  C0 03 19 5C */	lfs f0, lit_4122@l(r3)
/* 806A0A9C  38 00 00 0C */	li r0, 0xc
/* 806A0AA0  7C 09 03 A6 */	mtctr r0
lbl_806A0AA4:
/* 806A0AA4  D0 04 00 00 */	stfs f0, 0(r4)
/* 806A0AA8  38 84 00 04 */	addi r4, r4, 4
/* 806A0AAC  42 00 FF F8 */	bdnz lbl_806A0AA4
/* 806A0AB0  3C 60 80 6A */	lis r3, stringBase0@ha
/* 806A0AB4  38 63 1A 6C */	addi r3, r3, stringBase0@l
/* 806A0AB8  38 80 00 19 */	li r4, 0x19
/* 806A0ABC  7F 85 E3 78 */	mr r5, r28
/* 806A0AC0  38 C0 00 80 */	li r6, 0x80
/* 806A0AC4  4B 99 B8 28 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806A0AC8  7C 7D 1B 78 */	mr r29, r3
/* 806A0ACC  3B 60 00 01 */	li r27, 1
/* 806A0AD0  3B C0 00 04 */	li r30, 4
lbl_806A0AD4:
/* 806A0AD4  57 60 07 FF */	clrlwi. r0, r27, 0x1f
/* 806A0AD8  41 82 00 50 */	beq lbl_806A0B28
/* 806A0ADC  7F A3 EB 78 */	mr r3, r29
/* 806A0AE0  3C 80 00 08 */	lis r4, 8
/* 806A0AE4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 806A0AE8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 806A0AEC  4B 97 41 68 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 806A0AF0  7F 9F F2 14 */	add r28, r31, r30
/* 806A0AF4  90 7C 07 74 */	stw r3, 0x774(r28)
/* 806A0AF8  80 1C 07 74 */	lwz r0, 0x774(r28)
/* 806A0AFC  28 00 00 00 */	cmplwi r0, 0
/* 806A0B00  40 82 00 0C */	bne lbl_806A0B0C
/* 806A0B04  38 60 00 00 */	li r3, 0
/* 806A0B08  48 00 00 34 */	b lbl_806A0B3C
lbl_806A0B0C:
/* 806A0B0C  3C 60 80 6A */	lis r3, lit_3904@ha
/* 806A0B10  C0 23 19 14 */	lfs f1, lit_3904@l(r3)
/* 806A0B14  4B BC 6E 40 */	b cM_rndF__Ff
/* 806A0B18  3C 60 80 6A */	lis r3, lit_3904@ha
/* 806A0B1C  C0 03 19 14 */	lfs f0, lit_3904@l(r3)
/* 806A0B20  EC 00 08 2A */	fadds f0, f0, f1
/* 806A0B24  D0 1C 07 D4 */	stfs f0, 0x7d4(r28)
lbl_806A0B28:
/* 806A0B28  3B 7B 00 01 */	addi r27, r27, 1
/* 806A0B2C  2C 1B 00 0B */	cmpwi r27, 0xb
/* 806A0B30  3B DE 00 04 */	addi r30, r30, 4
/* 806A0B34  41 80 FF A0 */	blt lbl_806A0AD4
/* 806A0B38  38 60 00 01 */	li r3, 1
lbl_806A0B3C:
/* 806A0B3C  39 61 00 30 */	addi r11, r1, 0x30
/* 806A0B40  4B CC 16 E0 */	b _restgpr_27
/* 806A0B44  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806A0B48  7C 08 03 A6 */	mtlr r0
/* 806A0B4C  38 21 00 30 */	addi r1, r1, 0x30
/* 806A0B50  4E 80 00 20 */	blr 
