lbl_80D149DC:
/* 80D149DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D149E0  7C 08 02 A6 */	mflr r0
/* 80D149E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D149E8  39 61 00 30 */	addi r11, r1, 0x30
/* 80D149EC  4B 64 D7 D9 */	bl _savegpr_23
/* 80D149F0  7C 7B 1B 78 */	mr r27, r3
/* 80D149F4  88 03 05 77 */	lbz r0, 0x577(r3)
/* 80D149F8  28 00 00 00 */	cmplwi r0, 0
/* 80D149FC  40 82 01 34 */	bne lbl_80D14B30
/* 80D14A00  80 7B 05 70 */	lwz r3, 0x570(r27)
/* 80D14A04  38 80 00 04 */	li r4, 4
/* 80D14A08  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D14A0C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D14A10  3F C5 00 02 */	addis r30, r5, 2
/* 80D14A14  3B DE C2 F8 */	addi r30, r30, -15624
/* 80D14A18  7F C5 F3 78 */	mr r5, r30
/* 80D14A1C  38 C0 00 80 */	li r6, 0x80
/* 80D14A20  4B 32 78 CD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D14A24  7C 7F 1B 78 */	mr r31, r3
/* 80D14A28  80 7B 05 70 */	lwz r3, 0x570(r27)
/* 80D14A2C  38 80 00 05 */	li r4, 5
/* 80D14A30  7F C5 F3 78 */	mr r5, r30
/* 80D14A34  38 C0 00 80 */	li r6, 0x80
/* 80D14A38  4B 32 78 B5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D14A3C  7C 78 1B 78 */	mr r24, r3
/* 80D14A40  3B BB 05 8C */	addi r29, r27, 0x58c
/* 80D14A44  3B 80 00 00 */	li r28, 0
/* 80D14A48  3B 40 00 00 */	li r26, 0
/* 80D14A4C  3F 20 11 00 */	lis r25, 0x1100
/* 80D14A50  48 00 00 D0 */	b lbl_80D14B20
lbl_80D14A54:
/* 80D14A54  7F E3 FB 78 */	mr r3, r31
/* 80D14A58  3C 80 00 02 */	lis r4, 2
/* 80D14A5C  38 B9 00 84 */	addi r5, r25, 0x84
/* 80D14A60  4B 30 01 F5 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D14A64  7E FB D2 14 */	add r23, r27, r26
/* 80D14A68  90 77 05 8C */	stw r3, 0x58c(r23)
/* 80D14A6C  80 17 05 8C */	lwz r0, 0x58c(r23)
/* 80D14A70  28 00 00 00 */	cmplwi r0, 0
/* 80D14A74  40 82 00 0C */	bne lbl_80D14A80
/* 80D14A78  38 60 00 00 */	li r3, 0
/* 80D14A7C  48 00 01 40 */	b lbl_80D14BBC
lbl_80D14A80:
/* 80D14A80  7F 03 C3 78 */	mr r3, r24
/* 80D14A84  3C 80 00 02 */	lis r4, 2
/* 80D14A88  38 B9 00 84 */	addi r5, r25, 0x84
/* 80D14A8C  4B 30 01 C9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D14A90  90 77 05 90 */	stw r3, 0x590(r23)
/* 80D14A94  80 17 05 90 */	lwz r0, 0x590(r23)
/* 80D14A98  28 00 00 00 */	cmplwi r0, 0
/* 80D14A9C  40 82 00 0C */	bne lbl_80D14AA8
/* 80D14AA0  38 60 00 00 */	li r3, 0
/* 80D14AA4  48 00 01 18 */	b lbl_80D14BBC
lbl_80D14AA8:
/* 80D14AA8  38 60 00 C0 */	li r3, 0xc0
/* 80D14AAC  4B 5B A1 A1 */	bl __nw__FUl
/* 80D14AB0  7C 60 1B 79 */	or. r0, r3, r3
/* 80D14AB4  41 82 00 0C */	beq lbl_80D14AC0
/* 80D14AB8  4B 36 6E B9 */	bl __ct__4dBgWFv
/* 80D14ABC  7C 60 1B 78 */	mr r0, r3
lbl_80D14AC0:
/* 80D14AC0  90 1D 00 70 */	stw r0, 0x70(r29)
/* 80D14AC4  80 1D 00 70 */	lwz r0, 0x70(r29)
/* 80D14AC8  28 00 00 00 */	cmplwi r0, 0
/* 80D14ACC  40 82 00 0C */	bne lbl_80D14AD8
/* 80D14AD0  38 60 00 00 */	li r3, 0
/* 80D14AD4  48 00 00 E8 */	b lbl_80D14BBC
lbl_80D14AD8:
/* 80D14AD8  80 7B 05 70 */	lwz r3, 0x570(r27)
/* 80D14ADC  38 80 00 09 */	li r4, 9
/* 80D14AE0  7F C5 F3 78 */	mr r5, r30
/* 80D14AE4  38 C0 00 80 */	li r6, 0x80
/* 80D14AE8  4B 32 78 05 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D14AEC  7C 64 1B 78 */	mr r4, r3
/* 80D14AF0  80 7D 00 70 */	lwz r3, 0x70(r29)
/* 80D14AF4  38 A0 00 01 */	li r5, 1
/* 80D14AF8  38 DD 00 40 */	addi r6, r29, 0x40
/* 80D14AFC  4B 36 54 3D */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80D14B00  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80D14B04  28 00 00 01 */	cmplwi r0, 1
/* 80D14B08  40 82 00 0C */	bne lbl_80D14B14
/* 80D14B0C  38 60 00 00 */	li r3, 0
/* 80D14B10  48 00 00 AC */	b lbl_80D14BBC
lbl_80D14B14:
/* 80D14B14  3B 9C 00 01 */	addi r28, r28, 1
/* 80D14B18  3B 5A 00 78 */	addi r26, r26, 0x78
/* 80D14B1C  3B BD 00 78 */	addi r29, r29, 0x78
lbl_80D14B20:
/* 80D14B20  80 1B 63 4C */	lwz r0, 0x634c(r27)
/* 80D14B24  7C 1C 00 00 */	cmpw r28, r0
/* 80D14B28  41 80 FF 2C */	blt lbl_80D14A54
/* 80D14B2C  48 00 00 8C */	b lbl_80D14BB8
lbl_80D14B30:
/* 80D14B30  28 00 00 01 */	cmplwi r0, 1
/* 80D14B34  40 82 00 84 */	bne lbl_80D14BB8
/* 80D14B38  38 00 00 01 */	li r0, 1
/* 80D14B3C  98 1B 05 67 */	stb r0, 0x567(r27)
/* 80D14B40  80 7B 05 70 */	lwz r3, 0x570(r27)
/* 80D14B44  38 80 00 06 */	li r4, 6
/* 80D14B48  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D14B4C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D14B50  3C A5 00 02 */	addis r5, r5, 2
/* 80D14B54  38 C0 00 80 */	li r6, 0x80
/* 80D14B58  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D14B5C  4B 32 77 91 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D14B60  7C 78 1B 78 */	mr r24, r3
/* 80D14B64  3A E0 00 00 */	li r23, 0
/* 80D14B68  3B 80 00 00 */	li r28, 0
/* 80D14B6C  3F 40 11 00 */	lis r26, 0x1100
/* 80D14B70  48 00 00 3C */	b lbl_80D14BAC
lbl_80D14B74:
/* 80D14B74  7F 03 C3 78 */	mr r3, r24
/* 80D14B78  3C 80 00 02 */	lis r4, 2
/* 80D14B7C  38 BA 00 84 */	addi r5, r26, 0x84
/* 80D14B80  4B 30 00 D5 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D14B84  7C 9B E2 14 */	add r4, r27, r28
/* 80D14B88  90 64 05 8C */	stw r3, 0x58c(r4)
/* 80D14B8C  80 04 05 8C */	lwz r0, 0x58c(r4)
/* 80D14B90  28 00 00 00 */	cmplwi r0, 0
/* 80D14B94  40 82 00 0C */	bne lbl_80D14BA0
/* 80D14B98  38 60 00 00 */	li r3, 0
/* 80D14B9C  48 00 00 20 */	b lbl_80D14BBC
lbl_80D14BA0:
/* 80D14BA0  90 04 05 90 */	stw r0, 0x590(r4)
/* 80D14BA4  3A F7 00 01 */	addi r23, r23, 1
/* 80D14BA8  3B 9C 00 78 */	addi r28, r28, 0x78
lbl_80D14BAC:
/* 80D14BAC  80 1B 63 4C */	lwz r0, 0x634c(r27)
/* 80D14BB0  7C 17 00 00 */	cmpw r23, r0
/* 80D14BB4  41 80 FF C0 */	blt lbl_80D14B74
lbl_80D14BB8:
/* 80D14BB8  38 60 00 01 */	li r3, 1
lbl_80D14BBC:
/* 80D14BBC  39 61 00 30 */	addi r11, r1, 0x30
/* 80D14BC0  4B 64 D6 51 */	bl _restgpr_23
/* 80D14BC4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D14BC8  7C 08 03 A6 */	mtlr r0
/* 80D14BCC  38 21 00 30 */	addi r1, r1, 0x30
/* 80D14BD0  4E 80 00 20 */	blr 
