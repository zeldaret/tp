lbl_80CD90A4:
/* 80CD90A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CD90A8  7C 08 02 A6 */	mflr r0
/* 80CD90AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CD90B0  39 61 00 20 */	addi r11, r1, 0x20
/* 80CD90B4  4B 68 91 28 */	b _savegpr_29
/* 80CD90B8  7C 7E 1B 78 */	mr r30, r3
/* 80CD90BC  88 03 05 B9 */	lbz r0, 0x5b9(r3)
/* 80CD90C0  28 00 00 00 */	cmplwi r0, 0
/* 80CD90C4  40 82 00 64 */	bne lbl_80CD9128
/* 80CD90C8  3C 60 80 CE */	lis r3, l_arcName@ha
/* 80CD90CC  38 63 96 8C */	addi r3, r3, l_arcName@l
/* 80CD90D0  80 63 00 00 */	lwz r3, 0(r3)
/* 80CD90D4  3C 80 80 CE */	lis r4, stringBase0@ha
/* 80CD90D8  38 84 95 E4 */	addi r4, r4, stringBase0@l
/* 80CD90DC  38 84 00 37 */	addi r4, r4, 0x37
/* 80CD90E0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80CD90E4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80CD90E8  3F A5 00 02 */	addis r29, r5, 2
/* 80CD90EC  3B BD C2 F8 */	addi r29, r29, -15624
/* 80CD90F0  7F A5 EB 78 */	mr r5, r29
/* 80CD90F4  38 C0 00 80 */	li r6, 0x80
/* 80CD90F8  4B 36 32 84 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80CD90FC  7C 7F 1B 78 */	mr r31, r3
/* 80CD9100  3C 60 80 CE */	lis r3, l_arcName@ha
/* 80CD9104  38 63 96 8C */	addi r3, r3, l_arcName@l
/* 80CD9108  80 63 00 00 */	lwz r3, 0(r3)
/* 80CD910C  3C 80 80 CE */	lis r4, stringBase0@ha
/* 80CD9110  38 84 95 E4 */	addi r4, r4, stringBase0@l
/* 80CD9114  38 84 00 46 */	addi r4, r4, 0x46
/* 80CD9118  7F A5 EB 78 */	mr r5, r29
/* 80CD911C  38 C0 00 80 */	li r6, 0x80
/* 80CD9120  4B 36 32 5C */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80CD9124  48 00 00 D0 */	b lbl_80CD91F4
lbl_80CD9128:
/* 80CD9128  28 00 00 01 */	cmplwi r0, 1
/* 80CD912C  40 82 00 64 */	bne lbl_80CD9190
/* 80CD9130  3C 60 80 CE */	lis r3, l_arcName@ha
/* 80CD9134  38 63 96 8C */	addi r3, r3, l_arcName@l
/* 80CD9138  80 63 00 00 */	lwz r3, 0(r3)
/* 80CD913C  3C 80 80 CE */	lis r4, stringBase0@ha
/* 80CD9140  38 84 95 E4 */	addi r4, r4, stringBase0@l
/* 80CD9144  38 84 00 5B */	addi r4, r4, 0x5b
/* 80CD9148  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80CD914C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80CD9150  3F A5 00 02 */	addis r29, r5, 2
/* 80CD9154  3B BD C2 F8 */	addi r29, r29, -15624
/* 80CD9158  7F A5 EB 78 */	mr r5, r29
/* 80CD915C  38 C0 00 80 */	li r6, 0x80
/* 80CD9160  4B 36 32 1C */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80CD9164  7C 7F 1B 78 */	mr r31, r3
/* 80CD9168  3C 60 80 CE */	lis r3, l_arcName@ha
/* 80CD916C  38 63 96 8C */	addi r3, r3, l_arcName@l
/* 80CD9170  80 63 00 00 */	lwz r3, 0(r3)
/* 80CD9174  3C 80 80 CE */	lis r4, stringBase0@ha
/* 80CD9178  38 84 95 E4 */	addi r4, r4, stringBase0@l
/* 80CD917C  38 84 00 6B */	addi r4, r4, 0x6b
/* 80CD9180  7F A5 EB 78 */	mr r5, r29
/* 80CD9184  38 C0 00 80 */	li r6, 0x80
/* 80CD9188  4B 36 31 F4 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80CD918C  48 00 00 68 */	b lbl_80CD91F4
lbl_80CD9190:
/* 80CD9190  28 00 00 02 */	cmplwi r0, 2
/* 80CD9194  40 82 00 60 */	bne lbl_80CD91F4
/* 80CD9198  3C 60 80 CE */	lis r3, l_arcName@ha
/* 80CD919C  38 63 96 8C */	addi r3, r3, l_arcName@l
/* 80CD91A0  80 63 00 00 */	lwz r3, 0(r3)
/* 80CD91A4  3C 80 80 CE */	lis r4, stringBase0@ha
/* 80CD91A8  38 84 95 E4 */	addi r4, r4, stringBase0@l
/* 80CD91AC  38 84 00 81 */	addi r4, r4, 0x81
/* 80CD91B0  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80CD91B4  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80CD91B8  3F A5 00 02 */	addis r29, r5, 2
/* 80CD91BC  3B BD C2 F8 */	addi r29, r29, -15624
/* 80CD91C0  7F A5 EB 78 */	mr r5, r29
/* 80CD91C4  38 C0 00 80 */	li r6, 0x80
/* 80CD91C8  4B 36 31 B4 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80CD91CC  7C 7F 1B 78 */	mr r31, r3
/* 80CD91D0  3C 60 80 CE */	lis r3, l_arcName@ha
/* 80CD91D4  38 63 96 8C */	addi r3, r3, l_arcName@l
/* 80CD91D8  80 63 00 00 */	lwz r3, 0(r3)
/* 80CD91DC  3C 80 80 CE */	lis r4, stringBase0@ha
/* 80CD91E0  38 84 95 E4 */	addi r4, r4, stringBase0@l
/* 80CD91E4  38 84 00 91 */	addi r4, r4, 0x91
/* 80CD91E8  7F A5 EB 78 */	mr r5, r29
/* 80CD91EC  38 C0 00 80 */	li r6, 0x80
/* 80CD91F0  4B 36 31 8C */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
lbl_80CD91F4:
/* 80CD91F4  3C 80 00 08 */	lis r4, 8
/* 80CD91F8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CD91FC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CD9200  4B 33 BA 54 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CD9204  90 7E 05 D0 */	stw r3, 0x5d0(r30)
/* 80CD9208  80 1E 05 D0 */	lwz r0, 0x5d0(r30)
/* 80CD920C  28 00 00 00 */	cmplwi r0, 0
/* 80CD9210  40 82 00 0C */	bne lbl_80CD921C
/* 80CD9214  38 60 00 00 */	li r3, 0
/* 80CD9218  48 00 00 28 */	b lbl_80CD9240
lbl_80CD921C:
/* 80CD921C  7F E3 FB 78 */	mr r3, r31
/* 80CD9220  3C 80 00 08 */	lis r4, 8
/* 80CD9224  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CD9228  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CD922C  4B 33 BA 28 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CD9230  90 7E 05 CC */	stw r3, 0x5cc(r30)
/* 80CD9234  80 7E 05 CC */	lwz r3, 0x5cc(r30)
/* 80CD9238  30 03 FF FF */	addic r0, r3, -1
/* 80CD923C  7C 60 19 10 */	subfe r3, r0, r3
lbl_80CD9240:
/* 80CD9240  39 61 00 20 */	addi r11, r1, 0x20
/* 80CD9244  4B 68 8F E4 */	b _restgpr_29
/* 80CD9248  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CD924C  7C 08 03 A6 */	mtlr r0
/* 80CD9250  38 21 00 20 */	addi r1, r1, 0x20
/* 80CD9254  4E 80 00 20 */	blr 
