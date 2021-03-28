lbl_80578330:
/* 80578330  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80578334  7C 08 02 A6 */	mflr r0
/* 80578338  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057833C  39 61 00 20 */	addi r11, r1, 0x20
/* 80578340  4B DE 9E 90 */	b _savegpr_26
/* 80578344  7C 7F 1B 78 */	mr r31, r3
/* 80578348  3C 60 80 58 */	lis r3, l_arcName@ha
/* 8057834C  38 63 8B F0 */	addi r3, r3, l_arcName@l
/* 80578350  80 63 00 00 */	lwz r3, 0(r3)
/* 80578354  3C 80 80 58 */	lis r4, stringBase0@ha
/* 80578358  38 84 8B A8 */	addi r4, r4, stringBase0@l
/* 8057835C  38 84 00 08 */	addi r4, r4, 8
/* 80578360  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80578364  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80578368  3F A5 00 02 */	addis r29, r5, 2
/* 8057836C  3B BD C2 F8 */	addi r29, r29, -15624
/* 80578370  7F A5 EB 78 */	mr r5, r29
/* 80578374  38 C0 00 80 */	li r6, 0x80
/* 80578378  4B AC 40 04 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8057837C  7C 7C 1B 78 */	mr r28, r3
/* 80578380  3C 60 80 58 */	lis r3, l_arcName@ha
/* 80578384  38 63 8B F0 */	addi r3, r3, l_arcName@l
/* 80578388  80 63 00 00 */	lwz r3, 0(r3)
/* 8057838C  3C 80 80 58 */	lis r4, stringBase0@ha
/* 80578390  38 84 8B A8 */	addi r4, r4, stringBase0@l
/* 80578394  38 84 00 1B */	addi r4, r4, 0x1b
/* 80578398  7F A5 EB 78 */	mr r5, r29
/* 8057839C  38 C0 00 80 */	li r6, 0x80
/* 805783A0  4B AC 3F DC */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 805783A4  7C 7B 1B 78 */	mr r27, r3
/* 805783A8  3B 40 00 00 */	li r26, 0
/* 805783AC  3B C0 00 00 */	li r30, 0
/* 805783B0  3F A0 11 00 */	lis r29, 0x1100 /* 0x11000084@ha */
lbl_805783B4:
/* 805783B4  7F 63 DB 78 */	mr r3, r27
/* 805783B8  3C 80 00 02 */	lis r4, 2
/* 805783BC  38 BD 00 84 */	addi r5, r29, 0x0084 /* 0x11000084@l */
/* 805783C0  4B A9 C8 94 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 805783C4  38 1E 11 F0 */	addi r0, r30, 0x11f0
/* 805783C8  7C 7F 01 2E */	stwx r3, r31, r0
/* 805783CC  7C 1F 00 2E */	lwzx r0, r31, r0
/* 805783D0  28 00 00 00 */	cmplwi r0, 0
/* 805783D4  40 82 00 0C */	bne lbl_805783E0
/* 805783D8  38 60 00 00 */	li r3, 0
/* 805783DC  48 00 00 38 */	b lbl_80578414
lbl_805783E0:
/* 805783E0  3B 5A 00 01 */	addi r26, r26, 1
/* 805783E4  2C 1A 00 3C */	cmpwi r26, 0x3c
/* 805783E8  3B DE 00 04 */	addi r30, r30, 4
/* 805783EC  41 80 FF C8 */	blt lbl_805783B4
/* 805783F0  7F 83 E3 78 */	mr r3, r28
/* 805783F4  3C 80 00 08 */	lis r4, 8
/* 805783F8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 805783FC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80578400  4B A9 C8 54 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80578404  90 7F 11 EC */	stw r3, 0x11ec(r31)
/* 80578408  80 7F 11 EC */	lwz r3, 0x11ec(r31)
/* 8057840C  30 03 FF FF */	addic r0, r3, -1
/* 80578410  7C 60 19 10 */	subfe r3, r0, r3
lbl_80578414:
/* 80578414  39 61 00 20 */	addi r11, r1, 0x20
/* 80578418  4B DE 9E 04 */	b _restgpr_26
/* 8057841C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80578420  7C 08 03 A6 */	mtlr r0
/* 80578424  38 21 00 20 */	addi r1, r1, 0x20
/* 80578428  4E 80 00 20 */	blr 
