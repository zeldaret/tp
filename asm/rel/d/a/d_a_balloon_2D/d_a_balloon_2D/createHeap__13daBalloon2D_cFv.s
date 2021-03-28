lbl_80653538:
/* 80653538  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8065353C  7C 08 02 A6 */	mflr r0
/* 80653540  90 01 00 44 */	stw r0, 0x44(r1)
/* 80653544  39 61 00 40 */	addi r11, r1, 0x40
/* 80653548  4B D0 EC 7C */	b _savegpr_23
/* 8065354C  7C 7F 1B 78 */	mr r31, r3
/* 80653550  38 60 01 18 */	li r3, 0x118
/* 80653554  4B C7 B6 F8 */	b __nw__FUl
/* 80653558  7C 60 1B 79 */	or. r0, r3, r3
/* 8065355C  41 82 00 0C */	beq lbl_80653568
/* 80653560  4B CA 4F 38 */	b __ct__9J2DScreenFv
/* 80653564  7C 60 1B 78 */	mr r0, r3
lbl_80653568:
/* 80653568  90 1F 05 74 */	stw r0, 0x574(r31)
/* 8065356C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80653570  28 00 00 00 */	cmplwi r0, 0
/* 80653574  40 82 00 0C */	bne lbl_80653580
/* 80653578  38 60 00 00 */	li r3, 0
/* 8065357C  48 00 07 90 */	b lbl_80653D0C
lbl_80653580:
/* 80653580  3C 60 80 65 */	lis r3, l_arcName@ha
/* 80653584  38 63 56 D4 */	addi r3, r3, l_arcName@l
/* 80653588  80 63 00 00 */	lwz r3, 0(r3)
/* 8065358C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80653590  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80653594  3C 84 00 02 */	addis r4, r4, 2
/* 80653598  38 A0 00 80 */	li r5, 0x80
/* 8065359C  38 84 C2 F8 */	addi r4, r4, -15624
/* 806535A0  4B 9E 8C 44 */	b getResInfo__14dRes_control_cFPCcP11dRes_info_ci
/* 806535A4  80 C3 00 14 */	lwz r6, 0x14(r3)
/* 806535A8  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 806535AC  3C 80 80 65 */	lis r4, stringBase0@ha
/* 806535B0  38 84 55 EC */	addi r4, r4, stringBase0@l
/* 806535B4  38 84 00 0A */	addi r4, r4, 0xa
/* 806535B8  3C A0 00 02 */	lis r5, 2
/* 806535BC  4B CA 50 8C */	b setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 806535C0  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 806535C4  4B C0 1B 24 */	b dPaneClass_showNullPane__FP9J2DScreen
/* 806535C8  38 60 00 6C */	li r3, 0x6c
/* 806535CC  4B C7 B6 80 */	b __nw__FUl
/* 806535D0  7C 60 1B 79 */	or. r0, r3, r3
/* 806535D4  41 82 00 24 */	beq lbl_806535F8
/* 806535D8  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 806535DC  3C A0 5F 61 */	lis r5, 0x5F61 /* 0x5F616C6C@ha */
/* 806535E0  38 C5 6C 6C */	addi r6, r5, 0x6C6C /* 0x5F616C6C@l */
/* 806535E4  38 A0 00 6E */	li r5, 0x6e
/* 806535E8  38 E0 00 02 */	li r7, 2
/* 806535EC  39 00 00 00 */	li r8, 0
/* 806535F0  4B C0 03 94 */	b __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 806535F4  7C 60 1B 78 */	mr r0, r3
lbl_806535F8:
/* 806535F8  90 1F 05 78 */	stw r0, 0x578(r31)
/* 806535FC  38 60 00 6C */	li r3, 0x6c
/* 80653600  4B C7 B6 4C */	b __nw__FUl
/* 80653604  7C 60 1B 79 */	or. r0, r3, r3
/* 80653608  41 82 00 28 */	beq lbl_80653630
/* 8065360C  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80653610  3C A0 65 5F */	lis r5, 0x655F /* 0x655F746E@ha */
/* 80653614  38 C5 74 6E */	addi r6, r5, 0x746E /* 0x655F746E@l */
/* 80653618  3C A0 73 63 */	lis r5, 0x7363 /* 0x73636F72@ha */
/* 8065361C  38 A5 6F 72 */	addi r5, r5, 0x6F72 /* 0x73636F72@l */
/* 80653620  38 E0 00 00 */	li r7, 0
/* 80653624  39 00 00 00 */	li r8, 0
/* 80653628  4B C0 03 5C */	b __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8065362C  7C 60 1B 78 */	mr r0, r3
lbl_80653630:
/* 80653630  90 1F 05 7C */	stw r0, 0x57c(r31)
/* 80653634  38 60 00 6C */	li r3, 0x6c
/* 80653638  4B C7 B6 14 */	b __nw__FUl
/* 8065363C  7C 60 1B 79 */	or. r0, r3, r3
/* 80653640  41 82 00 24 */	beq lbl_80653664
/* 80653644  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80653648  3C A0 6A 69 */	lis r5, 0x6A69 /* 0x6A695F6E@ha */
/* 8065364C  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x6A695F6E@l */
/* 80653650  38 A0 73 75 */	li r5, 0x7375
/* 80653654  38 E0 00 02 */	li r7, 2
/* 80653658  39 00 00 00 */	li r8, 0
/* 8065365C  4B C0 03 28 */	b __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80653660  7C 60 1B 78 */	mr r0, r3
lbl_80653664:
/* 80653664  90 1F 05 80 */	stw r0, 0x580(r31)
/* 80653668  38 60 00 6C */	li r3, 0x6c
/* 8065366C  4B C7 B5 E0 */	b __nw__FUl
/* 80653670  7C 60 1B 79 */	or. r0, r3, r3
/* 80653674  41 82 00 28 */	beq lbl_8065369C
/* 80653678  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 8065367C  3C A0 65 74 */	lis r5, 0x6574 /* 0x65745F6E@ha */
/* 80653680  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x65745F6E@l */
/* 80653684  3C A0 00 73 */	lis r5, 0x0073 /* 0x00735F73@ha */
/* 80653688  38 A5 5F 73 */	addi r5, r5, 0x5F73 /* 0x00735F73@l */
/* 8065368C  38 E0 00 00 */	li r7, 0
/* 80653690  39 00 00 00 */	li r8, 0
/* 80653694  4B C0 02 F0 */	b __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80653698  7C 60 1B 78 */	mr r0, r3
lbl_8065369C:
/* 8065369C  90 1F 05 84 */	stw r0, 0x584(r31)
/* 806536A0  38 60 00 6C */	li r3, 0x6c
/* 806536A4  4B C7 B5 A8 */	b __nw__FUl
/* 806536A8  7C 60 1B 79 */	or. r0, r3, r3
/* 806536AC  41 82 00 24 */	beq lbl_806536D0
/* 806536B0  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 806536B4  3C A0 61 73 */	lis r5, 0x6173 /* 0x61735F6E@ha */
/* 806536B8  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x61735F6E@l */
/* 806536BC  38 A0 00 74 */	li r5, 0x74
/* 806536C0  38 E0 00 00 */	li r7, 0
/* 806536C4  39 00 00 00 */	li r8, 0
/* 806536C8  4B C0 02 BC */	b __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 806536CC  7C 60 1B 78 */	mr r0, r3
lbl_806536D0:
/* 806536D0  90 1F 05 88 */	stw r0, 0x588(r31)
/* 806536D4  38 60 00 6C */	li r3, 0x6c
/* 806536D8  4B C7 B5 74 */	b __nw__FUl
/* 806536DC  7C 60 1B 79 */	or. r0, r3, r3
/* 806536E0  41 82 00 28 */	beq lbl_80653708
/* 806536E4  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 806536E8  3C A0 6F 5F */	lis r5, 0x6F5F /* 0x6F5F746E@ha */
/* 806536EC  38 C5 74 6E */	addi r6, r5, 0x746E /* 0x6F5F746E@l */
/* 806536F0  3C A0 63 6F */	lis r5, 0x636F /* 0x636F6D62@ha */
/* 806536F4  38 A5 6D 62 */	addi r5, r5, 0x6D62 /* 0x636F6D62@l */
/* 806536F8  38 E0 00 00 */	li r7, 0
/* 806536FC  39 00 00 00 */	li r8, 0
/* 80653700  4B C0 02 84 */	b __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80653704  7C 60 1B 78 */	mr r0, r3
lbl_80653708:
/* 80653708  90 1F 05 8C */	stw r0, 0x58c(r31)
/* 8065370C  38 60 00 6C */	li r3, 0x6c
/* 80653710  4B C7 B5 3C */	b __nw__FUl
/* 80653714  7C 60 1B 79 */	or. r0, r3, r3
/* 80653718  41 82 00 24 */	beq lbl_8065373C
/* 8065371C  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80653720  3C A0 75 6D */	lis r5, 0x756D /* 0x756D5F6E@ha */
/* 80653724  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x756D5F6E@l */
/* 80653728  38 A0 00 6E */	li r5, 0x6e
/* 8065372C  38 E0 00 00 */	li r7, 0
/* 80653730  39 00 00 00 */	li r8, 0
/* 80653734  4B C0 02 50 */	b __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80653738  7C 60 1B 78 */	mr r0, r3
lbl_8065373C:
/* 8065373C  90 1F 05 90 */	stw r0, 0x590(r31)
/* 80653740  38 60 00 6C */	li r3, 0x6c
/* 80653744  4B C7 B5 08 */	b __nw__FUl
/* 80653748  7C 60 1B 79 */	or. r0, r3, r3
/* 8065374C  41 82 00 28 */	beq lbl_80653774
/* 80653750  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80653754  3C A0 65 74 */	lis r5, 0x6574 /* 0x65745F6E@ha */
/* 80653758  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x65745F6E@l */
/* 8065375C  3C A0 63 6F */	lis r5, 0x636F /* 0x636F5F73@ha */
/* 80653760  38 A5 5F 73 */	addi r5, r5, 0x5F73 /* 0x636F5F73@l */
/* 80653764  38 E0 00 02 */	li r7, 2
/* 80653768  39 00 00 00 */	li r8, 0
/* 8065376C  4B C0 02 18 */	b __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80653770  7C 60 1B 78 */	mr r0, r3
lbl_80653774:
/* 80653774  90 1F 05 94 */	stw r0, 0x594(r31)
/* 80653778  38 60 00 6C */	li r3, 0x6c
/* 8065377C  4B C7 B4 D0 */	b __nw__FUl
/* 80653780  7C 60 1B 79 */	or. r0, r3, r3
/* 80653784  41 82 00 28 */	beq lbl_806537AC
/* 80653788  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 8065378C  3C A0 5F 33 */	lis r5, 0x5F33 /* 0x5F335F6E@ha */
/* 80653790  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x5F335F6E@l */
/* 80653794  3C A0 00 62 */	lis r5, 0x0062 /* 0x0062616C@ha */
/* 80653798  38 A5 61 6C */	addi r5, r5, 0x616C /* 0x0062616C@l */
/* 8065379C  38 E0 00 02 */	li r7, 2
/* 806537A0  39 00 00 00 */	li r8, 0
/* 806537A4  4B C0 01 E0 */	b __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 806537A8  7C 60 1B 78 */	mr r0, r3
lbl_806537AC:
/* 806537AC  90 1F 05 98 */	stw r0, 0x598(r31)
/* 806537B0  38 60 00 6C */	li r3, 0x6c
/* 806537B4  4B C7 B4 98 */	b __nw__FUl
/* 806537B8  7C 60 1B 79 */	or. r0, r3, r3
/* 806537BC  41 82 00 28 */	beq lbl_806537E4
/* 806537C0  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 806537C4  3C A0 5F 32 */	lis r5, 0x5F32 /* 0x5F325F6E@ha */
/* 806537C8  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x5F325F6E@l */
/* 806537CC  3C A0 00 62 */	lis r5, 0x0062 /* 0x0062616C@ha */
/* 806537D0  38 A5 61 6C */	addi r5, r5, 0x616C /* 0x0062616C@l */
/* 806537D4  38 E0 00 02 */	li r7, 2
/* 806537D8  39 00 00 00 */	li r8, 0
/* 806537DC  4B C0 01 A8 */	b __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 806537E0  7C 60 1B 78 */	mr r0, r3
lbl_806537E4:
/* 806537E4  90 1F 05 9C */	stw r0, 0x59c(r31)
/* 806537E8  38 60 00 6C */	li r3, 0x6c
/* 806537EC  4B C7 B4 60 */	b __nw__FUl
/* 806537F0  7C 60 1B 79 */	or. r0, r3, r3
/* 806537F4  41 82 00 28 */	beq lbl_8065381C
/* 806537F8  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 806537FC  3C A0 5F 31 */	lis r5, 0x5F31 /* 0x5F315F6E@ha */
/* 80653800  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x5F315F6E@l */
/* 80653804  3C A0 00 62 */	lis r5, 0x0062 /* 0x0062616C@ha */
/* 80653808  38 A5 61 6C */	addi r5, r5, 0x616C /* 0x0062616C@l */
/* 8065380C  38 E0 00 02 */	li r7, 2
/* 80653810  39 00 00 00 */	li r8, 0
/* 80653814  4B C0 01 70 */	b __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80653818  7C 60 1B 78 */	mr r0, r3
lbl_8065381C:
/* 8065381C  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 80653820  38 60 00 6C */	li r3, 0x6c
/* 80653824  4B C7 B4 28 */	b __nw__FUl
/* 80653828  7C 60 1B 79 */	or. r0, r3, r3
/* 8065382C  41 82 00 28 */	beq lbl_80653854
/* 80653830  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80653834  3C A0 6F 6D */	lis r5, 0x6F6D /* 0x6F6D5F6E@ha */
/* 80653838  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x6F6D5F6E@l */
/* 8065383C  3C A0 62 61 */	lis r5, 0x6261 /* 0x62615F63@ha */
/* 80653840  38 A5 5F 63 */	addi r5, r5, 0x5F63 /* 0x62615F63@l */
/* 80653844  38 E0 00 02 */	li r7, 2
/* 80653848  39 00 00 00 */	li r8, 0
/* 8065384C  4B C0 01 38 */	b __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 80653850  7C 60 1B 78 */	mr r0, r3
lbl_80653854:
/* 80653854  90 1F 05 A4 */	stw r0, 0x5a4(r31)
/* 80653858  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 8065385C  3C 80 80 65 */	lis r4, lit_3896@ha
/* 80653860  C0 24 55 AC */	lfs f1, lit_3896@l(r4)
/* 80653864  4B C0 1F 6C */	b setAlphaRate__13CPaneMgrAlphaFf
/* 80653868  80 7F 05 A4 */	lwz r3, 0x5a4(r31)
/* 8065386C  3C 80 80 65 */	lis r4, lit_3896@ha
/* 80653870  C0 24 55 AC */	lfs f1, lit_3896@l(r4)
/* 80653874  4B C0 1F 5C */	b setAlphaRate__13CPaneMgrAlphaFf
/* 80653878  3A E0 00 00 */	li r23, 0
/* 8065387C  3B A0 00 00 */	li r29, 0
/* 80653880  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80653884  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 80653888  3F 20 54 49 */	lis r25, 0x5449
lbl_8065388C:
/* 8065388C  83 7A 5D 30 */	lwz r27, 0x5d30(r26)
/* 80653890  7E E3 BB 78 */	mr r3, r23
/* 80653894  4B BC AA 34 */	b dMeter2Info_getNumberTextureName__Fi
/* 80653898  7C 65 1B 78 */	mr r5, r3
/* 8065389C  7F 63 DB 78 */	mr r3, r27
/* 806538A0  38 99 4D 47 */	addi r4, r25, 0x4d47
/* 806538A4  81 9B 00 00 */	lwz r12, 0(r27)
/* 806538A8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806538AC  7D 89 03 A6 */	mtctr r12
/* 806538B0  4E 80 04 21 */	bctrl 
/* 806538B4  7C 78 1B 78 */	mr r24, r3
/* 806538B8  38 60 01 50 */	li r3, 0x150
/* 806538BC  4B C7 B3 90 */	b __nw__FUl
/* 806538C0  7C 64 1B 79 */	or. r4, r3, r3
/* 806538C4  41 82 00 10 */	beq lbl_806538D4
/* 806538C8  7F 04 C3 78 */	mr r4, r24
/* 806538CC  4B CA 8E 3C */	b __ct__10J2DPictureFPC7ResTIMG
/* 806538D0  7C 64 1B 78 */	mr r4, r3
lbl_806538D4:
/* 806538D4  38 1D 05 C4 */	addi r0, r29, 0x5c4
/* 806538D8  7C 9F 01 2E */	stwx r4, r31, r0
/* 806538DC  3A F7 00 01 */	addi r23, r23, 1
/* 806538E0  2C 17 00 0A */	cmpwi r23, 0xa
/* 806538E4  3B BD 00 04 */	addi r29, r29, 4
/* 806538E8  41 80 FF A4 */	blt lbl_8065388C
/* 806538EC  83 3A 5D 30 */	lwz r25, 0x5d30(r26)
/* 806538F0  4B BC A9 EC */	b dMeter2Info_getPlusTextureName__Fv
/* 806538F4  7C 65 1B 78 */	mr r5, r3
/* 806538F8  7F 23 CB 78 */	mr r3, r25
/* 806538FC  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 80653900  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 80653904  81 99 00 00 */	lwz r12, 0(r25)
/* 80653908  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8065390C  7D 89 03 A6 */	mtctr r12
/* 80653910  4E 80 04 21 */	bctrl 
/* 80653914  7C 77 1B 78 */	mr r23, r3
/* 80653918  38 60 01 50 */	li r3, 0x150
/* 8065391C  4B C7 B3 30 */	b __nw__FUl
/* 80653920  7C 60 1B 79 */	or. r0, r3, r3
/* 80653924  41 82 00 10 */	beq lbl_80653934
/* 80653928  7E E4 BB 78 */	mr r4, r23
/* 8065392C  4B CA 8D DC */	b __ct__10J2DPictureFPC7ResTIMG
/* 80653930  7C 60 1B 78 */	mr r0, r3
lbl_80653934:
/* 80653934  90 1F 05 EC */	stw r0, 0x5ec(r31)
/* 80653938  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 8065393C  28 00 00 00 */	cmplwi r0, 0
/* 80653940  41 82 01 0C */	beq lbl_80653A4C
/* 80653944  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 80653948  28 00 00 00 */	cmplwi r0, 0
/* 8065394C  41 82 01 00 */	beq lbl_80653A4C
/* 80653950  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 80653954  28 00 00 00 */	cmplwi r0, 0
/* 80653958  41 82 00 F4 */	beq lbl_80653A4C
/* 8065395C  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 80653960  28 00 00 00 */	cmplwi r0, 0
/* 80653964  41 82 00 E8 */	beq lbl_80653A4C
/* 80653968  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 8065396C  28 00 00 00 */	cmplwi r0, 0
/* 80653970  41 82 00 DC */	beq lbl_80653A4C
/* 80653974  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 80653978  28 00 00 00 */	cmplwi r0, 0
/* 8065397C  41 82 00 D0 */	beq lbl_80653A4C
/* 80653980  80 1F 05 90 */	lwz r0, 0x590(r31)
/* 80653984  28 00 00 00 */	cmplwi r0, 0
/* 80653988  41 82 00 C4 */	beq lbl_80653A4C
/* 8065398C  80 1F 05 94 */	lwz r0, 0x594(r31)
/* 80653990  28 00 00 00 */	cmplwi r0, 0
/* 80653994  41 82 00 B8 */	beq lbl_80653A4C
/* 80653998  80 1F 05 98 */	lwz r0, 0x598(r31)
/* 8065399C  28 00 00 00 */	cmplwi r0, 0
/* 806539A0  41 82 00 AC */	beq lbl_80653A4C
/* 806539A4  80 1F 05 9C */	lwz r0, 0x59c(r31)
/* 806539A8  28 00 00 00 */	cmplwi r0, 0
/* 806539AC  41 82 00 A0 */	beq lbl_80653A4C
/* 806539B0  80 1F 05 A0 */	lwz r0, 0x5a0(r31)
/* 806539B4  28 00 00 00 */	cmplwi r0, 0
/* 806539B8  41 82 00 94 */	beq lbl_80653A4C
/* 806539BC  80 1F 05 A4 */	lwz r0, 0x5a4(r31)
/* 806539C0  28 00 00 00 */	cmplwi r0, 0
/* 806539C4  41 82 00 88 */	beq lbl_80653A4C
/* 806539C8  80 1F 05 C4 */	lwz r0, 0x5c4(r31)
/* 806539CC  28 00 00 00 */	cmplwi r0, 0
/* 806539D0  41 82 00 7C */	beq lbl_80653A4C
/* 806539D4  80 1F 05 C8 */	lwz r0, 0x5c8(r31)
/* 806539D8  28 00 00 00 */	cmplwi r0, 0
/* 806539DC  41 82 00 70 */	beq lbl_80653A4C
/* 806539E0  80 1F 05 CC */	lwz r0, 0x5cc(r31)
/* 806539E4  28 00 00 00 */	cmplwi r0, 0
/* 806539E8  41 82 00 64 */	beq lbl_80653A4C
/* 806539EC  80 1F 05 D0 */	lwz r0, 0x5d0(r31)
/* 806539F0  28 00 00 00 */	cmplwi r0, 0
/* 806539F4  41 82 00 58 */	beq lbl_80653A4C
/* 806539F8  80 1F 05 D4 */	lwz r0, 0x5d4(r31)
/* 806539FC  28 00 00 00 */	cmplwi r0, 0
/* 80653A00  41 82 00 4C */	beq lbl_80653A4C
/* 80653A04  80 1F 05 D8 */	lwz r0, 0x5d8(r31)
/* 80653A08  28 00 00 00 */	cmplwi r0, 0
/* 80653A0C  41 82 00 40 */	beq lbl_80653A4C
/* 80653A10  80 1F 05 DC */	lwz r0, 0x5dc(r31)
/* 80653A14  28 00 00 00 */	cmplwi r0, 0
/* 80653A18  41 82 00 34 */	beq lbl_80653A4C
/* 80653A1C  80 1F 05 E0 */	lwz r0, 0x5e0(r31)
/* 80653A20  28 00 00 00 */	cmplwi r0, 0
/* 80653A24  41 82 00 28 */	beq lbl_80653A4C
/* 80653A28  80 1F 05 E4 */	lwz r0, 0x5e4(r31)
/* 80653A2C  28 00 00 00 */	cmplwi r0, 0
/* 80653A30  41 82 00 1C */	beq lbl_80653A4C
/* 80653A34  80 1F 05 E8 */	lwz r0, 0x5e8(r31)
/* 80653A38  28 00 00 00 */	cmplwi r0, 0
/* 80653A3C  41 82 00 10 */	beq lbl_80653A4C
/* 80653A40  80 1F 05 EC */	lwz r0, 0x5ec(r31)
/* 80653A44  28 00 00 00 */	cmplwi r0, 0
/* 80653A48  40 82 00 0C */	bne lbl_80653A54
lbl_80653A4C:
/* 80653A4C  38 60 00 00 */	li r3, 0
/* 80653A50  48 00 02 BC */	b lbl_80653D0C
lbl_80653A54:
/* 80653A54  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80653A58  3C 80 6F 5F */	lis r4, 0x6F5F /* 0x6F5F7473@ha */
/* 80653A5C  38 C4 74 73 */	addi r6, r4, 0x7473 /* 0x6F5F7473@l */
/* 80653A60  3C 80 63 6F */	lis r4, 0x636F /* 0x636F6D62@ha */
/* 80653A64  38 A4 6D 62 */	addi r5, r4, 0x6D62 /* 0x636F6D62@l */
/* 80653A68  81 83 00 00 */	lwz r12, 0(r3)
/* 80653A6C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80653A70  7D 89 03 A6 */	mtctr r12
/* 80653A74  4E 80 04 21 */	bctrl 
/* 80653A78  90 61 00 10 */	stw r3, 0x10(r1)
/* 80653A7C  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80653A80  3C 80 62 6F */	lis r4, 0x626F /* 0x626F5F74@ha */
/* 80653A84  38 C4 5F 74 */	addi r6, r4, 0x5F74 /* 0x626F5F74@l */
/* 80653A88  3C 80 00 63 */	lis r4, 0x0063 /* 0x00636F6D@ha */
/* 80653A8C  38 A4 6F 6D */	addi r5, r4, 0x6F6D /* 0x00636F6D@l */
/* 80653A90  81 83 00 00 */	lwz r12, 0(r3)
/* 80653A94  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80653A98  7D 89 03 A6 */	mtctr r12
/* 80653A9C  4E 80 04 21 */	bctrl 
/* 80653AA0  90 61 00 14 */	stw r3, 0x14(r1)
/* 80653AA4  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80653AA8  3C 80 65 5F */	lis r4, 0x655F /* 0x655F7473@ha */
/* 80653AAC  38 C4 74 73 */	addi r6, r4, 0x7473 /* 0x655F7473@l */
/* 80653AB0  3C 80 73 63 */	lis r4, 0x7363 /* 0x73636F72@ha */
/* 80653AB4  38 A4 6F 72 */	addi r5, r4, 0x6F72 /* 0x73636F72@l */
/* 80653AB8  81 83 00 00 */	lwz r12, 0(r3)
/* 80653ABC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80653AC0  7D 89 03 A6 */	mtctr r12
/* 80653AC4  4E 80 04 21 */	bctrl 
/* 80653AC8  90 61 00 08 */	stw r3, 8(r1)
/* 80653ACC  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80653AD0  3C 80 72 65 */	lis r4, 0x7265 /* 0x72655F74@ha */
/* 80653AD4  38 C4 5F 74 */	addi r6, r4, 0x5F74 /* 0x72655F74@l */
/* 80653AD8  3C 80 00 73 */	lis r4, 0x0073 /* 0x0073636F@ha */
/* 80653ADC  38 A4 63 6F */	addi r5, r4, 0x636F /* 0x0073636F@l */
/* 80653AE0  81 83 00 00 */	lwz r12, 0(r3)
/* 80653AE4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80653AE8  7D 89 03 A6 */	mtctr r12
/* 80653AEC  4E 80 04 21 */	bctrl 
/* 80653AF0  90 61 00 0C */	stw r3, 0xc(r1)
/* 80653AF4  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80653AF8  3C 80 6A 69 */	lis r4, 0x6A69 /* 0x6A695F34@ha */
/* 80653AFC  38 C4 5F 34 */	addi r6, r4, 0x5F34 /* 0x6A695F34@l */
/* 80653B00  38 A0 73 75 */	li r5, 0x7375
/* 80653B04  81 83 00 00 */	lwz r12, 0(r3)
/* 80653B08  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80653B0C  7D 89 03 A6 */	mtctr r12
/* 80653B10  4E 80 04 21 */	bctrl 
/* 80653B14  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80653B18  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80653B1C  3C 80 6A 69 */	lis r4, 0x6A69 /* 0x6A695F33@ha */
/* 80653B20  38 C4 5F 33 */	addi r6, r4, 0x5F33 /* 0x6A695F33@l */
/* 80653B24  38 A0 73 75 */	li r5, 0x7375
/* 80653B28  81 83 00 00 */	lwz r12, 0(r3)
/* 80653B2C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80653B30  7D 89 03 A6 */	mtctr r12
/* 80653B34  4E 80 04 21 */	bctrl 
/* 80653B38  90 7F 05 AC */	stw r3, 0x5ac(r31)
/* 80653B3C  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80653B40  3C 80 6A 69 */	lis r4, 0x6A69 /* 0x6A695F32@ha */
/* 80653B44  38 C4 5F 32 */	addi r6, r4, 0x5F32 /* 0x6A695F32@l */
/* 80653B48  38 A0 73 75 */	li r5, 0x7375
/* 80653B4C  81 83 00 00 */	lwz r12, 0(r3)
/* 80653B50  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80653B54  7D 89 03 A6 */	mtctr r12
/* 80653B58  4E 80 04 21 */	bctrl 
/* 80653B5C  90 7F 05 B0 */	stw r3, 0x5b0(r31)
/* 80653B60  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80653B64  3C 80 6A 69 */	lis r4, 0x6A69 /* 0x6A695F31@ha */
/* 80653B68  38 C4 5F 31 */	addi r6, r4, 0x5F31 /* 0x6A695F31@l */
/* 80653B6C  38 A0 73 75 */	li r5, 0x7375
/* 80653B70  81 83 00 00 */	lwz r12, 0(r3)
/* 80653B74  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80653B78  7D 89 03 A6 */	mtctr r12
/* 80653B7C  4E 80 04 21 */	bctrl 
/* 80653B80  90 7F 05 B4 */	stw r3, 0x5b4(r31)
/* 80653B84  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80653B88  3C 80 6A 69 */	lis r4, 0x6A69 /* 0x6A695F30@ha */
/* 80653B8C  38 C4 5F 30 */	addi r6, r4, 0x5F30 /* 0x6A695F30@l */
/* 80653B90  38 A0 73 75 */	li r5, 0x7375
/* 80653B94  81 83 00 00 */	lwz r12, 0(r3)
/* 80653B98  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80653B9C  7D 89 03 A6 */	mtctr r12
/* 80653BA0  4E 80 04 21 */	bctrl 
/* 80653BA4  90 7F 05 B8 */	stw r3, 0x5b8(r31)
/* 80653BA8  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80653BAC  3C 80 75 6D */	lis r4, 0x756D /* 0x756D5F31@ha */
/* 80653BB0  38 C4 5F 31 */	addi r6, r4, 0x5F31 /* 0x756D5F31@l */
/* 80653BB4  38 A0 00 6E */	li r5, 0x6e
/* 80653BB8  81 83 00 00 */	lwz r12, 0(r3)
/* 80653BBC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80653BC0  7D 89 03 A6 */	mtctr r12
/* 80653BC4  4E 80 04 21 */	bctrl 
/* 80653BC8  90 7F 05 BC */	stw r3, 0x5bc(r31)
/* 80653BCC  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80653BD0  3C 80 75 6D */	lis r4, 0x756D /* 0x756D5F30@ha */
/* 80653BD4  38 C4 5F 30 */	addi r6, r4, 0x5F30 /* 0x756D5F30@l */
/* 80653BD8  38 A0 00 6E */	li r5, 0x6e
/* 80653BDC  81 83 00 00 */	lwz r12, 0(r3)
/* 80653BE0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80653BE4  7D 89 03 A6 */	mtctr r12
/* 80653BE8  4E 80 04 21 */	bctrl 
/* 80653BEC  90 7F 05 C0 */	stw r3, 0x5c0(r31)
/* 80653BF0  3B C0 00 00 */	li r30, 0
/* 80653BF4  3B A0 00 00 */	li r29, 0
/* 80653BF8  3B 21 00 10 */	addi r25, r1, 0x10
/* 80653BFC  3C 60 80 65 */	lis r3, stringBase0@ha
/* 80653C00  3B 43 55 EC */	addi r26, r3, stringBase0@l
/* 80653C04  3B 61 00 08 */	addi r27, r1, 8
/* 80653C08  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80653C0C  3B 83 01 88 */	addi r28, r3, g_meter2_info@l
lbl_80653C10:
/* 80653C10  7F 19 E8 2E */	lwzx r24, r25, r29
/* 80653C14  7F 03 C3 78 */	mr r3, r24
/* 80653C18  38 80 00 20 */	li r4, 0x20
/* 80653C1C  38 BA 00 21 */	addi r5, r26, 0x21
/* 80653C20  4C C6 31 82 */	crclr 6
/* 80653C24  4B CA CB 28 */	b setString__10J2DTextBoxFsPCce
/* 80653C28  7E FB E8 2E */	lwzx r23, r27, r29
/* 80653C2C  7E E3 BB 78 */	mr r3, r23
/* 80653C30  38 80 00 20 */	li r4, 0x20
/* 80653C34  38 BA 00 21 */	addi r5, r26, 0x21
/* 80653C38  4C C6 31 82 */	crclr 6
/* 80653C3C  4B CA CB 10 */	b setString__10J2DTextBoxFsPCce
/* 80653C40  7F 03 C3 78 */	mr r3, r24
/* 80653C44  4B CA CA 14 */	b getStringPtr__10J2DTextBoxCFv
/* 80653C48  7C 65 1B 78 */	mr r5, r3
/* 80653C4C  7F 83 E3 78 */	mr r3, r28
/* 80653C50  38 80 05 3F */	li r4, 0x53f
/* 80653C54  38 C0 00 00 */	li r6, 0
/* 80653C58  4B BC 88 EC */	b getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 80653C5C  7E E3 BB 78 */	mr r3, r23
/* 80653C60  4B CA C9 F8 */	b getStringPtr__10J2DTextBoxCFv
/* 80653C64  7C 65 1B 78 */	mr r5, r3
/* 80653C68  7F 83 E3 78 */	mr r3, r28
/* 80653C6C  38 80 05 3E */	li r4, 0x53e
/* 80653C70  38 C0 00 00 */	li r6, 0
/* 80653C74  4B BC 88 D0 */	b getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 80653C78  4B 9C 0D 78 */	b mDoExt_getMesgFont__Fv
/* 80653C7C  7C 64 1B 78 */	mr r4, r3
/* 80653C80  7F 03 C3 78 */	mr r3, r24
/* 80653C84  81 98 00 00 */	lwz r12, 0(r24)
/* 80653C88  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80653C8C  7D 89 03 A6 */	mtctr r12
/* 80653C90  4E 80 04 21 */	bctrl 
/* 80653C94  4B 9C 0D 5C */	b mDoExt_getMesgFont__Fv
/* 80653C98  7C 64 1B 78 */	mr r4, r3
/* 80653C9C  7E E3 BB 78 */	mr r3, r23
/* 80653CA0  81 97 00 00 */	lwz r12, 0(r23)
/* 80653CA4  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 80653CA8  7D 89 03 A6 */	mtctr r12
/* 80653CAC  4E 80 04 21 */	bctrl 
/* 80653CB0  3B DE 00 01 */	addi r30, r30, 1
/* 80653CB4  2C 1E 00 02 */	cmpwi r30, 2
/* 80653CB8  3B BD 00 04 */	addi r29, r29, 4
/* 80653CBC  41 80 FF 54 */	blt lbl_80653C10
/* 80653CC0  7F E3 FB 78 */	mr r3, r31
/* 80653CC4  38 80 00 00 */	li r4, 0
/* 80653CC8  48 00 03 F5 */	bl setComboNum__13daBalloon2D_cFUc
/* 80653CCC  7F E3 FB 78 */	mr r3, r31
/* 80653CD0  38 80 00 00 */	li r4, 0
/* 80653CD4  48 00 04 E1 */	bl setBalloonSize__13daBalloon2D_cFUc
/* 80653CD8  7F E3 FB 78 */	mr r3, r31
/* 80653CDC  38 80 00 00 */	li r4, 0
/* 80653CE0  48 00 05 79 */	bl setScoreNum__13daBalloon2D_cFi
/* 80653CE4  93 FF 05 F4 */	stw r31, 0x5f4(r31)
/* 80653CE8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80653CEC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80653CF0  41 82 00 10 */	beq lbl_80653D00
/* 80653CF4  38 00 00 01 */	li r0, 1
/* 80653CF8  98 1F 07 46 */	stb r0, 0x746(r31)
/* 80653CFC  48 00 00 0C */	b lbl_80653D08
lbl_80653D00:
/* 80653D00  38 00 00 00 */	li r0, 0
/* 80653D04  98 1F 07 46 */	stb r0, 0x746(r31)
lbl_80653D08:
/* 80653D08  38 60 00 01 */	li r3, 1
lbl_80653D0C:
/* 80653D0C  39 61 00 40 */	addi r11, r1, 0x40
/* 80653D10  4B D0 E5 00 */	b _restgpr_23
/* 80653D14  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80653D18  7C 08 03 A6 */	mtlr r0
/* 80653D1C  38 21 00 40 */	addi r1, r1, 0x40
/* 80653D20  4E 80 00 20 */	blr 
