lbl_80482DE8:
/* 80482DE8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80482DEC  7C 08 02 A6 */	mflr r0
/* 80482DF0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80482DF4  39 61 00 30 */	addi r11, r1, 0x30
/* 80482DF8  4B ED F3 D0 */	b _savegpr_24
/* 80482DFC  7C 7D 1B 78 */	mr r29, r3
/* 80482E00  3B C0 00 00 */	li r30, 0
/* 80482E04  88 83 05 F4 */	lbz r4, 0x5f4(r3)
/* 80482E08  54 80 10 3A */	slwi r0, r4, 2
/* 80482E0C  3C 60 80 48 */	lis r3, M_arcname__Q211daObjSwpush5Act_c@ha
/* 80482E10  38 63 4E A4 */	addi r3, r3, M_arcname__Q211daObjSwpush5Act_c@l
/* 80482E14  7C 63 00 2E */	lwzx r3, r3, r0
/* 80482E18  54 80 08 3C */	slwi r0, r4, 1
/* 80482E1C  3C 80 80 48 */	lis r4, M_bmd__Q211daObjSwpush5Act_c@ha
/* 80482E20  38 84 4D 10 */	addi r4, r4, M_bmd__Q211daObjSwpush5Act_c@l
/* 80482E24  7C 84 02 AE */	lhax r4, r4, r0
/* 80482E28  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80482E2C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80482E30  3F E5 00 02 */	addis r31, r5, 2
/* 80482E34  3B FF C2 F8 */	addi r31, r31, -15624
/* 80482E38  7F E5 FB 78 */	mr r5, r31
/* 80482E3C  38 C0 00 80 */	li r6, 0x80
/* 80482E40  4B BB 94 AC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80482E44  7C 7B 1B 78 */	mr r27, r3
/* 80482E48  3C 80 00 08 */	lis r4, 8
/* 80482E4C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80482E50  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80482E54  4B B9 1E 00 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80482E58  90 7D 05 A8 */	stw r3, 0x5a8(r29)
/* 80482E5C  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80482E60  28 03 00 00 */	cmplwi r3, 0
/* 80482E64  41 82 00 AC */	beq lbl_80482F10
/* 80482E68  80 63 00 04 */	lwz r3, 4(r3)
/* 80482E6C  83 43 00 54 */	lwz r26, 0x54(r3)
/* 80482E70  3B 20 00 00 */	li r25, 0
/* 80482E74  3C 60 80 48 */	lis r3, struct_80484E4C+0x0@ha
/* 80482E78  3B 83 4E 4C */	addi r28, r3, struct_80484E4C+0x0@l
/* 80482E7C  48 00 00 7C */	b lbl_80482EF8
lbl_80482E80:
/* 80482E80  3B 00 00 00 */	li r24, 0
/* 80482E84  7F 43 D3 78 */	mr r3, r26
/* 80482E88  7F 24 CB 78 */	mr r4, r25
/* 80482E8C  4B E5 BC 6C */	b getName__10JUTNameTabCFUs
/* 80482E90  38 9C 00 1D */	addi r4, r28, 0x1d
/* 80482E94  4B EE 5B 00 */	b strcmp
/* 80482E98  2C 03 00 00 */	cmpwi r3, 0
/* 80482E9C  41 82 00 28 */	beq lbl_80482EC4
/* 80482EA0  7F 43 D3 78 */	mr r3, r26
/* 80482EA4  7F 24 CB 78 */	mr r4, r25
/* 80482EA8  4B E5 BC 50 */	b getName__10JUTNameTabCFUs
/* 80482EAC  3C 80 80 48 */	lis r4, struct_80484E4C+0x0@ha
/* 80482EB0  38 84 4E 4C */	addi r4, r4, struct_80484E4C+0x0@l
/* 80482EB4  38 84 00 24 */	addi r4, r4, 0x24
/* 80482EB8  4B EE 5A DC */	b strcmp
/* 80482EBC  2C 03 00 00 */	cmpwi r3, 0
/* 80482EC0  40 82 00 08 */	bne lbl_80482EC8
lbl_80482EC4:
/* 80482EC4  3B 00 00 01 */	li r24, 1
lbl_80482EC8:
/* 80482EC8  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 80482ECC  41 82 00 28 */	beq lbl_80482EF4
/* 80482ED0  80 7B 00 28 */	lwz r3, 0x28(r27)
/* 80482ED4  57 20 13 BA */	rlwinm r0, r25, 2, 0xe, 0x1d
/* 80482ED8  7C 83 00 2E */	lwzx r4, r3, r0
/* 80482EDC  3C 60 80 48 */	lis r3, jnodeCB__Q211daObjSwpush5Act_cFP8J3DJointi@ha
/* 80482EE0  38 03 39 B4 */	addi r0, r3, jnodeCB__Q211daObjSwpush5Act_cFP8J3DJointi@l
/* 80482EE4  90 04 00 04 */	stw r0, 4(r4)
/* 80482EE8  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80482EEC  93 A3 00 14 */	stw r29, 0x14(r3)
/* 80482EF0  48 00 00 20 */	b lbl_80482F10
lbl_80482EF4:
/* 80482EF4  3B 39 00 01 */	addi r25, r25, 1
lbl_80482EF8:
/* 80482EF8  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80482EFC  80 63 00 04 */	lwz r3, 4(r3)
/* 80482F00  A0 63 00 2C */	lhz r3, 0x2c(r3)
/* 80482F04  57 20 04 3E */	clrlwi r0, r25, 0x10
/* 80482F08  7C 00 18 40 */	cmplw r0, r3
/* 80482F0C  41 80 FF 74 */	blt lbl_80482E80
lbl_80482F10:
/* 80482F10  88 9D 05 F4 */	lbz r4, 0x5f4(r29)
/* 80482F14  54 80 10 3A */	slwi r0, r4, 2
/* 80482F18  3C 60 80 48 */	lis r3, M_arcname__Q211daObjSwpush5Act_c@ha
/* 80482F1C  38 63 4E A4 */	addi r3, r3, M_arcname__Q211daObjSwpush5Act_c@l
/* 80482F20  7C 63 00 2E */	lwzx r3, r3, r0
/* 80482F24  54 80 08 3C */	slwi r0, r4, 1
/* 80482F28  3C 80 80 48 */	lis r4, M_dzb__Q211daObjSwpush5Act_c@ha
/* 80482F2C  38 84 4D 18 */	addi r4, r4, M_dzb__Q211daObjSwpush5Act_c@l
/* 80482F30  7C 84 02 AE */	lhax r4, r4, r0
/* 80482F34  7F E5 FB 78 */	mr r5, r31
/* 80482F38  38 C0 00 80 */	li r6, 0x80
/* 80482F3C  4B BB 93 B0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80482F40  7C 78 1B 78 */	mr r24, r3
/* 80482F44  3B 20 00 00 */	li r25, 0
/* 80482F48  38 60 00 C8 */	li r3, 0xc8
/* 80482F4C  4B E4 BD 00 */	b __nw__FUl
/* 80482F50  7C 7F 1B 79 */	or. r31, r3, r3
/* 80482F54  41 82 00 1C */	beq lbl_80482F70
/* 80482F58  4B BF 8A 18 */	b __ct__4dBgWFv
/* 80482F5C  3C 60 80 3B */	lis r3, __vt__6dBgWSv@ha
/* 80482F60  38 03 BE B8 */	addi r0, r3, __vt__6dBgWSv@l
/* 80482F64  90 1F 00 04 */	stw r0, 4(r31)
/* 80482F68  38 00 00 00 */	li r0, 0
/* 80482F6C  90 1F 00 C0 */	stw r0, 0xc0(r31)
lbl_80482F70:
/* 80482F70  93 FD 05 70 */	stw r31, 0x570(r29)
/* 80482F74  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 80482F78  28 03 00 00 */	cmplwi r3, 0
/* 80482F7C  41 82 00 1C */	beq lbl_80482F98
/* 80482F80  7F 04 C3 78 */	mr r4, r24
/* 80482F84  38 A0 00 00 */	li r5, 0
/* 80482F88  4B C0 00 10 */	b Set__6dBgWSvFP6cBgD_tUl
/* 80482F8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80482F90  40 82 00 08 */	bne lbl_80482F98
/* 80482F94  3B 20 00 01 */	li r25, 1
lbl_80482F98:
/* 80482F98  80 1D 05 A8 */	lwz r0, 0x5a8(r29)
/* 80482F9C  28 00 00 00 */	cmplwi r0, 0
/* 80482FA0  41 82 00 1C */	beq lbl_80482FBC
/* 80482FA4  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80482FA8  28 00 00 00 */	cmplwi r0, 0
/* 80482FAC  41 82 00 10 */	beq lbl_80482FBC
/* 80482FB0  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 80482FB4  41 82 00 08 */	beq lbl_80482FBC
/* 80482FB8  3B C0 00 01 */	li r30, 1
lbl_80482FBC:
/* 80482FBC  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80482FC0  40 82 00 0C */	bne lbl_80482FCC
/* 80482FC4  38 00 00 00 */	li r0, 0
/* 80482FC8  90 1D 05 70 */	stw r0, 0x570(r29)
lbl_80482FCC:
/* 80482FCC  7F C3 F3 78 */	mr r3, r30
/* 80482FD0  39 61 00 30 */	addi r11, r1, 0x30
/* 80482FD4  4B ED F2 40 */	b _restgpr_24
/* 80482FD8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80482FDC  7C 08 03 A6 */	mtlr r0
/* 80482FE0  38 21 00 30 */	addi r1, r1, 0x30
/* 80482FE4  4E 80 00 20 */	blr 
