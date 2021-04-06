lbl_80D27300:
/* 80D27300  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D27304  7C 08 02 A6 */	mflr r0
/* 80D27308  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D2730C  39 61 00 20 */	addi r11, r1, 0x20
/* 80D27310  4B 63 AE C1 */	bl _savegpr_26
/* 80D27314  7C 7C 1B 78 */	mr r28, r3
/* 80D27318  3C 60 80 D3 */	lis r3, l_bmd_idx@ha /* 0x80D295B4@ha */
/* 80D2731C  3B C3 95 B4 */	addi r30, r3, l_bmd_idx@l /* 0x80D295B4@l */
/* 80D27320  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80D27324  54 00 1F 7A */	rlwinm r0, r0, 3, 0x1d, 0x1d
/* 80D27328  3C 60 80 D3 */	lis r3, l_arcName@ha /* 0x80D29730@ha */
/* 80D2732C  38 63 97 30 */	addi r3, r3, l_arcName@l /* 0x80D29730@l */
/* 80D27330  7C 63 00 2E */	lwzx r3, r3, r0
/* 80D27334  38 9E 00 00 */	addi r4, r30, 0
/* 80D27338  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D2733C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D27340  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D27344  3F A5 00 02 */	addis r29, r5, 2
/* 80D27348  3B BD C2 F8 */	addi r29, r29, -15624
/* 80D2734C  7F A5 EB 78 */	mr r5, r29
/* 80D27350  38 C0 00 80 */	li r6, 0x80
/* 80D27354  4B 31 4F 99 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D27358  7C 7F 1B 78 */	mr r31, r3
/* 80D2735C  3C 80 00 08 */	lis r4, 8
/* 80D27360  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80D27364  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80D27368  4B 2E D8 ED */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D2736C  90 7C 05 B0 */	stw r3, 0x5b0(r28)
/* 80D27370  80 1C 05 B0 */	lwz r0, 0x5b0(r28)
/* 80D27374  28 00 00 00 */	cmplwi r0, 0
/* 80D27378  40 82 00 0C */	bne lbl_80D27384
/* 80D2737C  38 60 00 00 */	li r3, 0
/* 80D27380  48 00 02 D4 */	b lbl_80D27654
lbl_80D27384:
/* 80D27384  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80D27388  54 00 1F 7A */	rlwinm r0, r0, 3, 0x1d, 0x1d
/* 80D2738C  3C 60 80 D3 */	lis r3, l_arcName@ha /* 0x80D29730@ha */
/* 80D27390  38 63 97 30 */	addi r3, r3, l_arcName@l /* 0x80D29730@l */
/* 80D27394  7C 63 00 2E */	lwzx r3, r3, r0
/* 80D27398  38 9E 00 10 */	addi r4, r30, 0x10
/* 80D2739C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D273A0  7F A5 EB 78 */	mr r5, r29
/* 80D273A4  38 C0 00 80 */	li r6, 0x80
/* 80D273A8  4B 31 4F 45 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D273AC  7C 7A 1B 78 */	mr r26, r3
/* 80D273B0  38 60 00 18 */	li r3, 0x18
/* 80D273B4  4B 5A 78 99 */	bl __nw__FUl
/* 80D273B8  7C 7B 1B 79 */	or. r27, r3, r3
/* 80D273BC  41 82 00 20 */	beq lbl_80D273DC
/* 80D273C0  3C 80 80 D3 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80D298F4@ha */
/* 80D273C4  38 04 98 F4 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80D298F4@l */
/* 80D273C8  90 1B 00 00 */	stw r0, 0(r27)
/* 80D273CC  38 80 00 00 */	li r4, 0
/* 80D273D0  4B 60 10 2D */	bl init__12J3DFrameCtrlFs
/* 80D273D4  38 00 00 00 */	li r0, 0
/* 80D273D8  90 1B 00 14 */	stw r0, 0x14(r27)
lbl_80D273DC:
/* 80D273DC  93 7C 05 B4 */	stw r27, 0x5b4(r28)
/* 80D273E0  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 80D273E4  28 03 00 00 */	cmplwi r3, 0
/* 80D273E8  41 82 00 2C */	beq lbl_80D27414
/* 80D273EC  38 9F 00 58 */	addi r4, r31, 0x58
/* 80D273F0  7F 45 D3 78 */	mr r5, r26
/* 80D273F4  38 C0 00 01 */	li r6, 1
/* 80D273F8  38 E0 00 00 */	li r7, 0
/* 80D273FC  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80D27400  39 00 00 00 */	li r8, 0
/* 80D27404  39 20 FF FF */	li r9, -1
/* 80D27408  4B 2E 62 35 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80D2740C  2C 03 00 00 */	cmpwi r3, 0
/* 80D27410  40 82 00 0C */	bne lbl_80D2741C
lbl_80D27414:
/* 80D27414  38 60 00 00 */	li r3, 0
/* 80D27418  48 00 02 3C */	b lbl_80D27654
lbl_80D2741C:
/* 80D2741C  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 80D27420  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 80D27424  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80D27428  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80D2742C  54 00 1F 7A */	rlwinm r0, r0, 3, 0x1d, 0x1d
/* 80D27430  3C 60 80 D3 */	lis r3, l_arcName@ha /* 0x80D29730@ha */
/* 80D27434  38 63 97 30 */	addi r3, r3, l_arcName@l /* 0x80D29730@l */
/* 80D27438  7C 63 00 2E */	lwzx r3, r3, r0
/* 80D2743C  38 9E 00 18 */	addi r4, r30, 0x18
/* 80D27440  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D27444  7F A5 EB 78 */	mr r5, r29
/* 80D27448  38 C0 00 80 */	li r6, 0x80
/* 80D2744C  4B 31 4E A1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D27450  7C 7A 1B 78 */	mr r26, r3
/* 80D27454  38 60 00 1C */	li r3, 0x1c
/* 80D27458  4B 5A 77 F5 */	bl __nw__FUl
/* 80D2745C  7C 7B 1B 79 */	or. r27, r3, r3
/* 80D27460  41 82 00 20 */	beq lbl_80D27480
/* 80D27464  3C 80 80 D3 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80D298F4@ha */
/* 80D27468  38 04 98 F4 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80D298F4@l */
/* 80D2746C  90 1B 00 00 */	stw r0, 0(r27)
/* 80D27470  38 80 00 00 */	li r4, 0
/* 80D27474  4B 60 0F 89 */	bl init__12J3DFrameCtrlFs
/* 80D27478  38 00 00 00 */	li r0, 0
/* 80D2747C  90 1B 00 18 */	stw r0, 0x18(r27)
lbl_80D27480:
/* 80D27480  93 7C 05 B8 */	stw r27, 0x5b8(r28)
/* 80D27484  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 80D27488  28 03 00 00 */	cmplwi r3, 0
/* 80D2748C  41 82 00 2C */	beq lbl_80D274B8
/* 80D27490  7F 44 D3 78 */	mr r4, r26
/* 80D27494  38 A0 00 01 */	li r5, 1
/* 80D27498  38 C0 00 00 */	li r6, 0
/* 80D2749C  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80D274A0  38 E0 00 00 */	li r7, 0
/* 80D274A4  39 00 FF FF */	li r8, -1
/* 80D274A8  39 20 00 00 */	li r9, 0
/* 80D274AC  4B 2E 63 31 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80D274B0  2C 03 00 00 */	cmpwi r3, 0
/* 80D274B4  40 82 00 0C */	bne lbl_80D274C0
lbl_80D274B8:
/* 80D274B8  38 60 00 00 */	li r3, 0
/* 80D274BC  48 00 01 98 */	b lbl_80D27654
lbl_80D274C0:
/* 80D274C0  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80D274C4  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80D274C8  28 00 00 01 */	cmplwi r0, 1
/* 80D274CC  40 82 01 84 */	bne lbl_80D27650
/* 80D274D0  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80D274D4  3C 60 80 D3 */	lis r3, l_arcName@ha /* 0x80D29730@ha */
/* 80D274D8  38 63 97 30 */	addi r3, r3, l_arcName@l /* 0x80D29730@l */
/* 80D274DC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80D274E0  38 80 00 0A */	li r4, 0xa
/* 80D274E4  7F A5 EB 78 */	mr r5, r29
/* 80D274E8  38 C0 00 80 */	li r6, 0x80
/* 80D274EC  4B 31 4E 01 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D274F0  7C 7F 1B 78 */	mr r31, r3
/* 80D274F4  3C 80 00 08 */	lis r4, 8
/* 80D274F8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000284@ha */
/* 80D274FC  38 A5 02 84 */	addi r5, r5, 0x0284 /* 0x11000284@l */
/* 80D27500  4B 2E D7 55 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D27504  90 7C 05 BC */	stw r3, 0x5bc(r28)
/* 80D27508  80 1C 05 BC */	lwz r0, 0x5bc(r28)
/* 80D2750C  28 00 00 00 */	cmplwi r0, 0
/* 80D27510  40 82 00 0C */	bne lbl_80D2751C
/* 80D27514  38 60 00 00 */	li r3, 0
/* 80D27518  48 00 01 3C */	b lbl_80D27654
lbl_80D2751C:
/* 80D2751C  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80D27520  54 00 1F 7A */	rlwinm r0, r0, 3, 0x1d, 0x1d
/* 80D27524  3C 60 80 D3 */	lis r3, l_arcName@ha /* 0x80D29730@ha */
/* 80D27528  38 63 97 30 */	addi r3, r3, l_arcName@l /* 0x80D29730@l */
/* 80D2752C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80D27530  38 80 00 12 */	li r4, 0x12
/* 80D27534  7F A5 EB 78 */	mr r5, r29
/* 80D27538  38 C0 00 80 */	li r6, 0x80
/* 80D2753C  4B 31 4D B1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D27540  7C 7A 1B 78 */	mr r26, r3
/* 80D27544  38 60 00 18 */	li r3, 0x18
/* 80D27548  4B 5A 77 05 */	bl __nw__FUl
/* 80D2754C  7C 7B 1B 79 */	or. r27, r3, r3
/* 80D27550  41 82 00 20 */	beq lbl_80D27570
/* 80D27554  3C 80 80 D3 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80D298F4@ha */
/* 80D27558  38 04 98 F4 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80D298F4@l */
/* 80D2755C  90 1B 00 00 */	stw r0, 0(r27)
/* 80D27560  38 80 00 00 */	li r4, 0
/* 80D27564  4B 60 0E 99 */	bl init__12J3DFrameCtrlFs
/* 80D27568  38 00 00 00 */	li r0, 0
/* 80D2756C  90 1B 00 14 */	stw r0, 0x14(r27)
lbl_80D27570:
/* 80D27570  93 7C 05 C0 */	stw r27, 0x5c0(r28)
/* 80D27574  80 7C 05 C0 */	lwz r3, 0x5c0(r28)
/* 80D27578  28 03 00 00 */	cmplwi r3, 0
/* 80D2757C  41 82 00 2C */	beq lbl_80D275A8
/* 80D27580  38 9F 00 58 */	addi r4, r31, 0x58
/* 80D27584  7F 45 D3 78 */	mr r5, r26
/* 80D27588  38 C0 00 01 */	li r6, 1
/* 80D2758C  38 E0 00 02 */	li r7, 2
/* 80D27590  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80D27594  39 00 00 00 */	li r8, 0
/* 80D27598  39 20 FF FF */	li r9, -1
/* 80D2759C  4B 2E 60 A1 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80D275A0  2C 03 00 00 */	cmpwi r3, 0
/* 80D275A4  40 82 00 0C */	bne lbl_80D275B0
lbl_80D275A8:
/* 80D275A8  38 60 00 00 */	li r3, 0
/* 80D275AC  48 00 00 A8 */	b lbl_80D27654
lbl_80D275B0:
/* 80D275B0  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 80D275B4  80 7C 05 C0 */	lwz r3, 0x5c0(r28)
/* 80D275B8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80D275BC  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80D275C0  54 00 1F 7A */	rlwinm r0, r0, 3, 0x1d, 0x1d
/* 80D275C4  3C 60 80 D3 */	lis r3, l_arcName@ha /* 0x80D29730@ha */
/* 80D275C8  38 63 97 30 */	addi r3, r3, l_arcName@l /* 0x80D29730@l */
/* 80D275CC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80D275D0  38 80 00 0E */	li r4, 0xe
/* 80D275D4  7F A5 EB 78 */	mr r5, r29
/* 80D275D8  38 C0 00 80 */	li r6, 0x80
/* 80D275DC  4B 31 4D 11 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D275E0  7C 7A 1B 78 */	mr r26, r3
/* 80D275E4  38 60 00 18 */	li r3, 0x18
/* 80D275E8  4B 5A 76 65 */	bl __nw__FUl
/* 80D275EC  7C 7D 1B 79 */	or. r29, r3, r3
/* 80D275F0  41 82 00 20 */	beq lbl_80D27610
/* 80D275F4  3C 80 80 D3 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80D298F4@ha */
/* 80D275F8  38 04 98 F4 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80D298F4@l */
/* 80D275FC  90 1D 00 00 */	stw r0, 0(r29)
/* 80D27600  38 80 00 00 */	li r4, 0
/* 80D27604  4B 60 0D F9 */	bl init__12J3DFrameCtrlFs
/* 80D27608  38 00 00 00 */	li r0, 0
/* 80D2760C  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80D27610:
/* 80D27610  93 BC 05 C4 */	stw r29, 0x5c4(r28)
/* 80D27614  80 7C 05 C4 */	lwz r3, 0x5c4(r28)
/* 80D27618  28 03 00 00 */	cmplwi r3, 0
/* 80D2761C  41 82 00 2C */	beq lbl_80D27648
/* 80D27620  38 9F 00 58 */	addi r4, r31, 0x58
/* 80D27624  7F 45 D3 78 */	mr r5, r26
/* 80D27628  38 C0 00 01 */	li r6, 1
/* 80D2762C  38 E0 00 00 */	li r7, 0
/* 80D27630  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80D27634  39 00 00 00 */	li r8, 0
/* 80D27638  39 20 FF FF */	li r9, -1
/* 80D2763C  4B 2E 60 D1 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80D27640  2C 03 00 00 */	cmpwi r3, 0
/* 80D27644  40 82 00 0C */	bne lbl_80D27650
lbl_80D27648:
/* 80D27648  38 60 00 00 */	li r3, 0
/* 80D2764C  48 00 00 08 */	b lbl_80D27654
lbl_80D27650:
/* 80D27650  38 60 00 01 */	li r3, 1
lbl_80D27654:
/* 80D27654  39 61 00 20 */	addi r11, r1, 0x20
/* 80D27658  4B 63 AB C5 */	bl _restgpr_26
/* 80D2765C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D27660  7C 08 03 A6 */	mtlr r0
/* 80D27664  38 21 00 20 */	addi r1, r1, 0x20
/* 80D27668  4E 80 00 20 */	blr 
