lbl_80CDF990:
/* 80CDF990  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CDF994  7C 08 02 A6 */	mflr r0
/* 80CDF998  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CDF99C  39 61 00 30 */	addi r11, r1, 0x30
/* 80CDF9A0  4B 68 28 2C */	b _savegpr_25
/* 80CDF9A4  7C 79 1B 78 */	mr r25, r3
/* 80CDF9A8  3B 40 00 00 */	li r26, 0
/* 80CDF9AC  3B E0 00 00 */	li r31, 0
/* 80CDF9B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CDF9B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CDF9B8  3F 63 00 02 */	addis r27, r3, 2
/* 80CDF9BC  3C 60 80 CE */	lis r3, l_arcName@ha
/* 80CDF9C0  3B 83 02 80 */	addi r28, r3, l_arcName@l
/* 80CDF9C4  3C 60 80 CE */	lis r3, BMD_IDX@ha
/* 80CDF9C8  3B A3 02 48 */	addi r29, r3, BMD_IDX@l
/* 80CDF9CC  3F C0 11 00 */	lis r30, 0x1100
/* 80CDF9D0  3B 7B C2 F8 */	addi r27, r27, -15624
lbl_80CDF9D4:
/* 80CDF9D4  80 7C 00 00 */	lwz r3, 0(r28)
/* 80CDF9D8  7C 9D F8 2E */	lwzx r4, r29, r31
/* 80CDF9DC  7F 65 DB 78 */	mr r5, r27
/* 80CDF9E0  38 C0 00 80 */	li r6, 0x80
/* 80CDF9E4  4B 35 C9 08 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CDF9E8  3C 80 00 08 */	lis r4, 8
/* 80CDF9EC  38 BE 00 84 */	addi r5, r30, 0x84
/* 80CDF9F0  4B 33 52 64 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CDF9F4  38 1F 05 B4 */	addi r0, r31, 0x5b4
/* 80CDF9F8  7C 79 01 2E */	stwx r3, r25, r0
/* 80CDF9FC  7C 19 00 2E */	lwzx r0, r25, r0
/* 80CDFA00  28 00 00 00 */	cmplwi r0, 0
/* 80CDFA04  40 82 00 0C */	bne lbl_80CDFA10
/* 80CDFA08  38 60 00 00 */	li r3, 0
/* 80CDFA0C  48 00 00 18 */	b lbl_80CDFA24
lbl_80CDFA10:
/* 80CDFA10  3B 5A 00 01 */	addi r26, r26, 1
/* 80CDFA14  2C 1A 00 03 */	cmpwi r26, 3
/* 80CDFA18  3B FF 00 04 */	addi r31, r31, 4
/* 80CDFA1C  41 80 FF B8 */	blt lbl_80CDF9D4
/* 80CDFA20  38 60 00 01 */	li r3, 1
lbl_80CDFA24:
/* 80CDFA24  39 61 00 30 */	addi r11, r1, 0x30
/* 80CDFA28  4B 68 27 F0 */	b _restgpr_25
/* 80CDFA2C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CDFA30  7C 08 03 A6 */	mtlr r0
/* 80CDFA34  38 21 00 30 */	addi r1, r1, 0x30
/* 80CDFA38  4E 80 00 20 */	blr 
