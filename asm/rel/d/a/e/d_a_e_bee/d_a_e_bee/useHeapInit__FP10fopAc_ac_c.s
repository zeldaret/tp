lbl_80684C70:
/* 80684C70  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80684C74  7C 08 02 A6 */	mflr r0
/* 80684C78  90 01 00 34 */	stw r0, 0x34(r1)
/* 80684C7C  39 61 00 30 */	addi r11, r1, 0x30
/* 80684C80  4B CD D5 44 */	b _savegpr_23
/* 80684C84  7C 7F 1B 78 */	mr r31, r3
/* 80684C88  3C 60 80 68 */	lis r3, stringBase0@ha
/* 80684C8C  38 63 55 24 */	addi r3, r3, stringBase0@l
/* 80684C90  38 80 00 03 */	li r4, 3
/* 80684C94  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80684C98  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80684C9C  3F 25 00 02 */	addis r25, r5, 2
/* 80684CA0  3B 39 C2 F8 */	addi r25, r25, -15624
/* 80684CA4  7F 25 CB 78 */	mr r5, r25
/* 80684CA8  38 C0 00 80 */	li r6, 0x80
/* 80684CAC  4B 9B 76 40 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80684CB0  7C 7C 1B 78 */	mr r28, r3
/* 80684CB4  3C 60 80 68 */	lis r3, stringBase0@ha
/* 80684CB8  38 63 55 24 */	addi r3, r3, stringBase0@l
/* 80684CBC  38 80 00 04 */	li r4, 4
/* 80684CC0  7F 25 CB 78 */	mr r5, r25
/* 80684CC4  38 C0 00 80 */	li r6, 0x80
/* 80684CC8  4B 9B 76 24 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80684CCC  7C 7B 1B 78 */	mr r27, r3
/* 80684CD0  3C 60 80 68 */	lis r3, stringBase0@ha
/* 80684CD4  38 63 55 24 */	addi r3, r3, stringBase0@l
/* 80684CD8  38 80 00 05 */	li r4, 5
/* 80684CDC  7F 25 CB 78 */	mr r5, r25
/* 80684CE0  38 C0 00 80 */	li r6, 0x80
/* 80684CE4  4B 9B 76 08 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80684CE8  7C 7A 1B 78 */	mr r26, r3
/* 80684CEC  3C 60 80 68 */	lis r3, stringBase0@ha
/* 80684CF0  38 63 55 24 */	addi r3, r3, stringBase0@l
/* 80684CF4  38 80 00 06 */	li r4, 6
/* 80684CF8  7F 25 CB 78 */	mr r5, r25
/* 80684CFC  38 C0 00 80 */	li r6, 0x80
/* 80684D00  4B 9B 75 EC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80684D04  7C 79 1B 78 */	mr r25, r3
/* 80684D08  38 7F 05 74 */	addi r3, r31, 0x574
/* 80684D0C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80684D10  38 A0 00 02 */	li r5, 2
/* 80684D14  81 9F 05 84 */	lwz r12, 0x584(r31)
/* 80684D18  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80684D1C  7D 89 03 A6 */	mtctr r12
/* 80684D20  4E 80 04 21 */	bctrl 
/* 80684D24  3A E0 00 00 */	li r23, 0
/* 80684D28  3B C0 00 00 */	li r30, 0
/* 80684D2C  3F A0 11 00 */	lis r29, 0x1100
/* 80684D30  48 00 00 CC */	b lbl_80684DFC
lbl_80684D34:
/* 80684D34  7F 83 E3 78 */	mr r3, r28
/* 80684D38  3C 80 00 02 */	lis r4, 2
/* 80684D3C  38 BD 00 84 */	addi r5, r29, 0x84
/* 80684D40  4B 98 FF 14 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80684D44  7F 1F F2 14 */	add r24, r31, r30
/* 80684D48  90 78 05 A0 */	stw r3, 0x5a0(r24)
/* 80684D4C  80 18 05 A0 */	lwz r0, 0x5a0(r24)
/* 80684D50  28 00 00 00 */	cmplwi r0, 0
/* 80684D54  40 82 00 0C */	bne lbl_80684D60
/* 80684D58  38 60 00 00 */	li r3, 0
/* 80684D5C  48 00 00 B0 */	b lbl_80684E0C
lbl_80684D60:
/* 80684D60  7F 63 DB 78 */	mr r3, r27
/* 80684D64  3C 80 00 02 */	lis r4, 2
/* 80684D68  38 BD 00 84 */	addi r5, r29, 0x84
/* 80684D6C  4B 98 FE E8 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80684D70  90 78 05 A4 */	stw r3, 0x5a4(r24)
/* 80684D74  80 18 05 A4 */	lwz r0, 0x5a4(r24)
/* 80684D78  28 00 00 00 */	cmplwi r0, 0
/* 80684D7C  40 82 00 0C */	bne lbl_80684D88
/* 80684D80  38 60 00 00 */	li r3, 0
/* 80684D84  48 00 00 88 */	b lbl_80684E0C
lbl_80684D88:
/* 80684D88  7F 43 D3 78 */	mr r3, r26
/* 80684D8C  3C 80 00 02 */	lis r4, 2
/* 80684D90  38 BD 00 84 */	addi r5, r29, 0x84
/* 80684D94  4B 98 FE C0 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80684D98  90 78 05 A8 */	stw r3, 0x5a8(r24)
/* 80684D9C  80 18 05 A8 */	lwz r0, 0x5a8(r24)
/* 80684DA0  28 00 00 00 */	cmplwi r0, 0
/* 80684DA4  40 82 00 0C */	bne lbl_80684DB0
/* 80684DA8  38 60 00 00 */	li r3, 0
/* 80684DAC  48 00 00 60 */	b lbl_80684E0C
lbl_80684DB0:
/* 80684DB0  7F 23 CB 78 */	mr r3, r25
/* 80684DB4  3C 80 00 02 */	lis r4, 2
/* 80684DB8  38 BD 00 84 */	addi r5, r29, 0x84
/* 80684DBC  4B 98 FE 98 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80684DC0  90 78 05 AC */	stw r3, 0x5ac(r24)
/* 80684DC4  80 18 05 AC */	lwz r0, 0x5ac(r24)
/* 80684DC8  28 00 00 00 */	cmplwi r0, 0
/* 80684DCC  40 82 00 0C */	bne lbl_80684DD8
/* 80684DD0  38 60 00 00 */	li r3, 0
/* 80684DD4  48 00 00 38 */	b lbl_80684E0C
lbl_80684DD8:
/* 80684DD8  38 78 05 F4 */	addi r3, r24, 0x5f4
/* 80684DDC  38 98 05 B0 */	addi r4, r24, 0x5b0
/* 80684DE0  38 A0 00 01 */	li r5, 1
/* 80684DE4  81 98 06 04 */	lwz r12, 0x604(r24)
/* 80684DE8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80684DEC  7D 89 03 A6 */	mtctr r12
/* 80684DF0  4E 80 04 21 */	bctrl 
/* 80684DF4  3A F7 00 01 */	addi r23, r23, 1
/* 80684DF8  3B DE 00 74 */	addi r30, r30, 0x74
lbl_80684DFC:
/* 80684DFC  80 1F 22 A0 */	lwz r0, 0x22a0(r31)
/* 80684E00  7C 17 00 00 */	cmpw r23, r0
/* 80684E04  41 80 FF 30 */	blt lbl_80684D34
/* 80684E08  38 60 00 01 */	li r3, 1
lbl_80684E0C:
/* 80684E0C  39 61 00 30 */	addi r11, r1, 0x30
/* 80684E10  4B CD D4 00 */	b _restgpr_23
/* 80684E14  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80684E18  7C 08 03 A6 */	mtlr r0
/* 80684E1C  38 21 00 30 */	addi r1, r1, 0x30
/* 80684E20  4E 80 00 20 */	blr 
