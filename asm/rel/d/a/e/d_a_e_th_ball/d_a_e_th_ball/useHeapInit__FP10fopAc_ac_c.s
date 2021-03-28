lbl_807B77AC:
/* 807B77AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807B77B0  7C 08 02 A6 */	mflr r0
/* 807B77B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 807B77B8  39 61 00 20 */	addi r11, r1, 0x20
/* 807B77BC  4B BA AA 18 */	b _savegpr_27
/* 807B77C0  7C 7F 1B 78 */	mr r31, r3
/* 807B77C4  3C 60 80 7B */	lis r3, stringBase0@ha
/* 807B77C8  38 63 7F C0 */	addi r3, r3, stringBase0@l
/* 807B77CC  38 63 00 05 */	addi r3, r3, 5
/* 807B77D0  38 80 00 04 */	li r4, 4
/* 807B77D4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 807B77D8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 807B77DC  3F 85 00 02 */	addis r28, r5, 2
/* 807B77E0  3B 9C C2 F8 */	addi r28, r28, -15624
/* 807B77E4  7F 85 E3 78 */	mr r5, r28
/* 807B77E8  38 C0 00 80 */	li r6, 0x80
/* 807B77EC  4B 88 4B 00 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807B77F0  38 80 00 00 */	li r4, 0
/* 807B77F4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 807B77F8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 807B77FC  4B 85 D4 58 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 807B7800  90 7F 05 B8 */	stw r3, 0x5b8(r31)
/* 807B7804  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 807B7808  28 00 00 00 */	cmplwi r0, 0
/* 807B780C  40 82 00 0C */	bne lbl_807B7818
/* 807B7810  38 60 00 00 */	li r3, 0
/* 807B7814  48 00 01 00 */	b lbl_807B7914
lbl_807B7818:
/* 807B7818  3C 60 80 7B */	lis r3, stringBase0@ha
/* 807B781C  38 63 7F C0 */	addi r3, r3, stringBase0@l
/* 807B7820  38 63 00 05 */	addi r3, r3, 5
/* 807B7824  38 80 00 07 */	li r4, 7
/* 807B7828  7F 85 E3 78 */	mr r5, r28
/* 807B782C  38 C0 00 80 */	li r6, 0x80
/* 807B7830  4B 88 4A BC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807B7834  7C 7C 1B 78 */	mr r28, r3
/* 807B7838  3B 60 00 00 */	li r27, 0
/* 807B783C  3B C0 00 00 */	li r30, 0
/* 807B7840  3F A0 11 00 */	lis r29, 0x1100 /* 0x11000084@ha */
lbl_807B7844:
/* 807B7844  7F 83 E3 78 */	mr r3, r28
/* 807B7848  3C 80 00 08 */	lis r4, 8
/* 807B784C  38 BD 00 84 */	addi r5, r29, 0x0084 /* 0x11000084@l */
/* 807B7850  4B 85 D4 04 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 807B7854  38 1E 06 5C */	addi r0, r30, 0x65c
/* 807B7858  7C 7F 01 2E */	stwx r3, r31, r0
/* 807B785C  7C 1F 00 2E */	lwzx r0, r31, r0
/* 807B7860  28 00 00 00 */	cmplwi r0, 0
/* 807B7864  40 82 00 0C */	bne lbl_807B7870
/* 807B7868  38 60 00 00 */	li r3, 0
/* 807B786C  48 00 00 A8 */	b lbl_807B7914
lbl_807B7870:
/* 807B7870  3B 7B 00 01 */	addi r27, r27, 1
/* 807B7874  2C 1B 00 32 */	cmpwi r27, 0x32
/* 807B7878  3B DE 00 04 */	addi r30, r30, 4
/* 807B787C  41 80 FF C8 */	blt lbl_807B7844
/* 807B7880  3B 60 00 00 */	li r27, 0
/* 807B7884  3B C0 00 00 */	li r30, 0
/* 807B7888  3F A0 11 00 */	lis r29, 0x1100 /* 0x11000084@ha */
lbl_807B788C:
/* 807B788C  7F 83 E3 78 */	mr r3, r28
/* 807B7890  3C 80 00 08 */	lis r4, 8
/* 807B7894  38 BD 00 84 */	addi r5, r29, 0x0084 /* 0x11000084@l */
/* 807B7898  4B 85 D3 BC */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 807B789C  38 1E 0D EC */	addi r0, r30, 0xdec
/* 807B78A0  7C 7F 01 2E */	stwx r3, r31, r0
/* 807B78A4  7C 1F 00 2E */	lwzx r0, r31, r0
/* 807B78A8  28 00 00 00 */	cmplwi r0, 0
/* 807B78AC  40 82 00 0C */	bne lbl_807B78B8
/* 807B78B0  38 60 00 00 */	li r3, 0
/* 807B78B4  48 00 00 60 */	b lbl_807B7914
lbl_807B78B8:
/* 807B78B8  3B 7B 00 01 */	addi r27, r27, 1
/* 807B78BC  2C 1B 00 14 */	cmpwi r27, 0x14
/* 807B78C0  3B DE 00 04 */	addi r30, r30, 4
/* 807B78C4  41 80 FF C8 */	blt lbl_807B788C
/* 807B78C8  3B 60 00 00 */	li r27, 0
/* 807B78CC  3B C0 00 00 */	li r30, 0
/* 807B78D0  3F A0 11 00 */	lis r29, 0x1100 /* 0x11000084@ha */
lbl_807B78D4:
/* 807B78D4  7F 83 E3 78 */	mr r3, r28
/* 807B78D8  3C 80 00 08 */	lis r4, 8
/* 807B78DC  38 BD 00 84 */	addi r5, r29, 0x0084 /* 0x11000084@l */
/* 807B78E0  4B 85 D3 74 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 807B78E4  38 1E 11 D8 */	addi r0, r30, 0x11d8
/* 807B78E8  7C 7F 01 2E */	stwx r3, r31, r0
/* 807B78EC  7C 1F 00 2E */	lwzx r0, r31, r0
/* 807B78F0  28 00 00 00 */	cmplwi r0, 0
/* 807B78F4  40 82 00 0C */	bne lbl_807B7900
/* 807B78F8  38 60 00 00 */	li r3, 0
/* 807B78FC  48 00 00 18 */	b lbl_807B7914
lbl_807B7900:
/* 807B7900  3B 7B 00 01 */	addi r27, r27, 1
/* 807B7904  2C 1B 00 14 */	cmpwi r27, 0x14
/* 807B7908  3B DE 00 04 */	addi r30, r30, 4
/* 807B790C  41 80 FF C8 */	blt lbl_807B78D4
/* 807B7910  38 60 00 01 */	li r3, 1
lbl_807B7914:
/* 807B7914  39 61 00 20 */	addi r11, r1, 0x20
/* 807B7918  4B BA A9 08 */	b _restgpr_27
/* 807B791C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807B7920  7C 08 03 A6 */	mtlr r0
/* 807B7924  38 21 00 20 */	addi r1, r1, 0x20
/* 807B7928  4E 80 00 20 */	blr 
