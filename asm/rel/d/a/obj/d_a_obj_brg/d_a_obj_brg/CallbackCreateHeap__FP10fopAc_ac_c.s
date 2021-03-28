lbl_80BC0A40:
/* 80BC0A40  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80BC0A44  7C 08 02 A6 */	mflr r0
/* 80BC0A48  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BC0A4C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80BC0A50  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80BC0A54  39 61 00 40 */	addi r11, r1, 0x40
/* 80BC0A58  4B 7A 17 60 */	b _savegpr_20
/* 80BC0A5C  7C 7D 1B 78 */	mr r29, r3
/* 80BC0A60  3C 60 80 BC */	lis r3, lit_3896@ha
/* 80BC0A64  3B 63 21 48 */	addi r27, r3, lit_3896@l
/* 80BC0A68  3C 7D 00 01 */	addis r3, r29, 1
/* 80BC0A6C  88 03 B1 E8 */	lbz r0, -0x4e18(r3)
/* 80BC0A70  54 04 07 FE */	clrlwi r4, r0, 0x1f
/* 80BC0A74  28 00 00 04 */	cmplwi r0, 4
/* 80BC0A78  40 82 00 0C */	bne lbl_80BC0A84
/* 80BC0A7C  38 80 00 01 */	li r4, 1
/* 80BC0A80  48 00 00 10 */	b lbl_80BC0A90
lbl_80BC0A84:
/* 80BC0A84  28 00 00 08 */	cmplwi r0, 8
/* 80BC0A88  40 82 00 08 */	bne lbl_80BC0A90
/* 80BC0A8C  38 80 00 02 */	li r4, 2
lbl_80BC0A90:
/* 80BC0A90  3C 60 80 BC */	lis r3, stringBase0@ha
/* 80BC0A94  38 63 23 8C */	addi r3, r3, stringBase0@l
/* 80BC0A98  54 80 10 3A */	slwi r0, r4, 2
/* 80BC0A9C  38 9B 01 60 */	addi r4, r27, 0x160
/* 80BC0AA0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80BC0AA4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BC0AA8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BC0AAC  3F 85 00 02 */	addis r28, r5, 2
/* 80BC0AB0  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80BC0AB4  7F 85 E3 78 */	mr r5, r28
/* 80BC0AB8  38 C0 00 80 */	li r6, 0x80
/* 80BC0ABC  4B 47 B8 30 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BC0AC0  7C 78 1B 78 */	mr r24, r3
/* 80BC0AC4  3C 7D 00 01 */	addis r3, r29, 1
/* 80BC0AC8  88 03 B1 E8 */	lbz r0, -0x4e18(r3)
/* 80BC0ACC  28 00 00 08 */	cmplwi r0, 8
/* 80BC0AD0  40 82 00 20 */	bne lbl_80BC0AF0
/* 80BC0AD4  3C 60 80 BC */	lis r3, stringBase0@ha
/* 80BC0AD8  38 63 23 8C */	addi r3, r3, stringBase0@l
/* 80BC0ADC  38 80 00 08 */	li r4, 8
/* 80BC0AE0  7F 85 E3 78 */	mr r5, r28
/* 80BC0AE4  38 C0 00 80 */	li r6, 0x80
/* 80BC0AE8  4B 47 B8 04 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BC0AEC  7C 79 1B 78 */	mr r25, r3
lbl_80BC0AF0:
/* 80BC0AF0  3B FD 05 70 */	addi r31, r29, 0x570
/* 80BC0AF4  3B C0 00 00 */	li r30, 0
/* 80BC0AF8  3E E0 11 00 */	lis r23, 0x1100
/* 80BC0AFC  3F 5D 00 01 */	addis r26, r29, 1
/* 80BC0B00  C3 FB 00 58 */	lfs f31, 0x58(r27)
/* 80BC0B04  48 00 03 DC */	b lbl_80BC0EE0
lbl_80BC0B08:
/* 80BC0B08  7F 03 C3 78 */	mr r3, r24
/* 80BC0B0C  3C 80 00 08 */	lis r4, 8
/* 80BC0B10  38 B7 00 84 */	addi r5, r23, 0x84
/* 80BC0B14  4B 45 41 40 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BC0B18  90 7F 00 00 */	stw r3, 0(r31)
/* 80BC0B1C  80 1F 00 00 */	lwz r0, 0(r31)
/* 80BC0B20  28 00 00 00 */	cmplwi r0, 0
/* 80BC0B24  40 82 00 0C */	bne lbl_80BC0B30
/* 80BC0B28  38 60 00 00 */	li r3, 0
/* 80BC0B2C  48 00 05 04 */	b lbl_80BC1030
lbl_80BC0B30:
/* 80BC0B30  88 1A B1 E8 */	lbz r0, -0x4e18(r26)
/* 80BC0B34  28 00 00 08 */	cmplwi r0, 8
/* 80BC0B38  40 82 00 4C */	bne lbl_80BC0B84
/* 80BC0B3C  3A 80 00 00 */	li r20, 0
/* 80BC0B40  3A C0 00 00 */	li r22, 0
/* 80BC0B44  3E A0 11 00 */	lis r21, 0x1100 /* 0x11000084@ha */
lbl_80BC0B48:
/* 80BC0B48  7F 23 CB 78 */	mr r3, r25
/* 80BC0B4C  3C 80 00 08 */	lis r4, 8
/* 80BC0B50  38 B5 00 84 */	addi r5, r21, 0x0084 /* 0x11000084@l */
/* 80BC0B54  4B 45 41 00 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BC0B58  38 16 00 04 */	addi r0, r22, 4
/* 80BC0B5C  7C 7F 01 2E */	stwx r3, r31, r0
/* 80BC0B60  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80BC0B64  28 00 00 00 */	cmplwi r0, 0
/* 80BC0B68  40 82 00 0C */	bne lbl_80BC0B74
/* 80BC0B6C  38 60 00 00 */	li r3, 0
/* 80BC0B70  48 00 04 C0 */	b lbl_80BC1030
lbl_80BC0B74:
/* 80BC0B74  3A 94 00 01 */	addi r20, r20, 1
/* 80BC0B78  2C 14 00 02 */	cmpwi r20, 2
/* 80BC0B7C  3A D6 00 04 */	addi r22, r22, 4
/* 80BC0B80  41 80 FF C8 */	blt lbl_80BC0B48
lbl_80BC0B84:
/* 80BC0B84  88 1A B1 E8 */	lbz r0, -0x4e18(r26)
/* 80BC0B88  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80BC0B8C  40 82 02 84 */	bne lbl_80BC0E10
/* 80BC0B90  38 00 00 07 */	li r0, 7
/* 80BC0B94  98 1F 07 08 */	stb r0, 0x708(r31)
/* 80BC0B98  88 1A B1 ED */	lbz r0, -0x4e13(r26)
/* 80BC0B9C  2C 00 00 01 */	cmpwi r0, 1
/* 80BC0BA0  40 82 00 98 */	bne lbl_80BC0C38
/* 80BC0BA4  88 1F 07 08 */	lbz r0, 0x708(r31)
/* 80BC0BA8  60 00 00 10 */	ori r0, r0, 0x10
/* 80BC0BAC  98 1F 07 08 */	stb r0, 0x708(r31)
/* 80BC0BB0  38 1E FF FD */	addi r0, r30, -3
/* 80BC0BB4  28 00 00 01 */	cmplwi r0, 1
/* 80BC0BB8  40 81 00 34 */	ble lbl_80BC0BEC
/* 80BC0BBC  2C 1E 00 07 */	cmpwi r30, 7
/* 80BC0BC0  41 82 00 2C */	beq lbl_80BC0BEC
/* 80BC0BC4  2C 1E 00 0B */	cmpwi r30, 0xb
/* 80BC0BC8  41 82 00 24 */	beq lbl_80BC0BEC
/* 80BC0BCC  2C 1E 00 0D */	cmpwi r30, 0xd
/* 80BC0BD0  41 82 00 1C */	beq lbl_80BC0BEC
/* 80BC0BD4  2C 1E 00 0F */	cmpwi r30, 0xf
/* 80BC0BD8  41 82 00 14 */	beq lbl_80BC0BEC
/* 80BC0BDC  2C 1E 00 12 */	cmpwi r30, 0x12
/* 80BC0BE0  41 82 00 0C */	beq lbl_80BC0BEC
/* 80BC0BE4  2C 1E 00 13 */	cmpwi r30, 0x13
/* 80BC0BE8  40 82 00 10 */	bne lbl_80BC0BF8
lbl_80BC0BEC:
/* 80BC0BEC  38 00 00 16 */	li r0, 0x16
/* 80BC0BF0  98 1F 07 08 */	stb r0, 0x708(r31)
/* 80BC0BF4  48 00 00 44 */	b lbl_80BC0C38
lbl_80BC0BF8:
/* 80BC0BF8  38 1E FF FF */	addi r0, r30, -1
/* 80BC0BFC  28 00 00 01 */	cmplwi r0, 1
/* 80BC0C00  40 81 00 30 */	ble lbl_80BC0C30
/* 80BC0C04  38 1E FF FB */	addi r0, r30, -5
/* 80BC0C08  28 00 00 01 */	cmplwi r0, 1
/* 80BC0C0C  40 81 00 24 */	ble lbl_80BC0C30
/* 80BC0C10  2C 1E 00 09 */	cmpwi r30, 9
/* 80BC0C14  41 82 00 1C */	beq lbl_80BC0C30
/* 80BC0C18  2C 1E 00 0C */	cmpwi r30, 0xc
/* 80BC0C1C  41 82 00 14 */	beq lbl_80BC0C30
/* 80BC0C20  2C 1E 00 10 */	cmpwi r30, 0x10
/* 80BC0C24  41 82 00 0C */	beq lbl_80BC0C30
/* 80BC0C28  2C 1E 00 11 */	cmpwi r30, 0x11
/* 80BC0C2C  40 82 00 0C */	bne lbl_80BC0C38
lbl_80BC0C30:
/* 80BC0C30  38 00 00 15 */	li r0, 0x15
/* 80BC0C34  98 1F 07 08 */	stb r0, 0x708(r31)
lbl_80BC0C38:
/* 80BC0C38  3C 7D 00 01 */	addis r3, r29, 1
/* 80BC0C3C  88 03 B1 E8 */	lbz r0, -0x4e18(r3)
/* 80BC0C40  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80BC0C44  2C 00 00 01 */	cmpwi r0, 1
/* 80BC0C48  41 82 00 8C */	beq lbl_80BC0CD4
/* 80BC0C4C  38 00 FF FF */	li r0, -1
/* 80BC0C50  B0 1F 00 F8 */	sth r0, 0xf8(r31)
/* 80BC0C54  88 03 B1 E8 */	lbz r0, -0x4e18(r3)
/* 80BC0C58  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BC0C5C  41 82 00 38 */	beq lbl_80BC0C94
/* 80BC0C60  3C 60 80 BC */	lis r3, stringBase0@ha
/* 80BC0C64  38 63 23 8C */	addi r3, r3, stringBase0@l
/* 80BC0C68  38 80 00 10 */	li r4, 0x10
/* 80BC0C6C  7F 85 E3 78 */	mr r5, r28
/* 80BC0C70  38 C0 00 80 */	li r6, 0x80
/* 80BC0C74  4B 47 B6 78 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BC0C78  7C 66 1B 78 */	mr r6, r3
/* 80BC0C7C  38 7F 00 14 */	addi r3, r31, 0x14
/* 80BC0C80  38 80 00 04 */	li r4, 4
/* 80BC0C84  38 A0 00 05 */	li r5, 5
/* 80BC0C88  38 E0 00 01 */	li r7, 1
/* 80BC0C8C  4B 45 26 D4 */	b init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi
/* 80BC0C90  48 00 00 34 */	b lbl_80BC0CC4
lbl_80BC0C94:
/* 80BC0C94  3C 60 80 BC */	lis r3, stringBase0@ha
/* 80BC0C98  38 63 23 8C */	addi r3, r3, stringBase0@l
/* 80BC0C9C  38 80 00 0F */	li r4, 0xf
/* 80BC0CA0  7F 85 E3 78 */	mr r5, r28
/* 80BC0CA4  38 C0 00 80 */	li r6, 0x80
/* 80BC0CA8  4B 47 B6 44 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BC0CAC  7C 66 1B 78 */	mr r6, r3
/* 80BC0CB0  38 7F 00 14 */	addi r3, r31, 0x14
/* 80BC0CB4  38 80 00 04 */	li r4, 4
/* 80BC0CB8  38 A0 00 05 */	li r5, 5
/* 80BC0CBC  38 E0 00 01 */	li r7, 1
/* 80BC0CC0  4B 45 26 A0 */	b init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi
lbl_80BC0CC4:
/* 80BC0CC4  2C 03 00 00 */	cmpwi r3, 0
/* 80BC0CC8  40 82 00 0C */	bne lbl_80BC0CD4
/* 80BC0CCC  38 60 00 00 */	li r3, 0
/* 80BC0CD0  48 00 03 60 */	b lbl_80BC1030
lbl_80BC0CD4:
/* 80BC0CD4  2C 1E 00 00 */	cmpwi r30, 0
/* 80BC0CD8  40 82 01 38 */	bne lbl_80BC0E10
/* 80BC0CDC  3C 7D 00 01 */	addis r3, r29, 1
/* 80BC0CE0  88 03 B1 E8 */	lbz r0, -0x4e18(r3)
/* 80BC0CE4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BC0CE8  41 82 00 48 */	beq lbl_80BC0D30
/* 80BC0CEC  3C 60 80 BC */	lis r3, stringBase0@ha
/* 80BC0CF0  38 63 23 8C */	addi r3, r3, stringBase0@l
/* 80BC0CF4  38 80 00 10 */	li r4, 0x10
/* 80BC0CF8  7F 85 E3 78 */	mr r5, r28
/* 80BC0CFC  38 C0 00 80 */	li r6, 0x80
/* 80BC0D00  4B 47 B5 EC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BC0D04  7C 66 1B 78 */	mr r6, r3
/* 80BC0D08  3C 7D 00 01 */	addis r3, r29, 1
/* 80BC0D0C  38 80 00 02 */	li r4, 2
/* 80BC0D10  88 03 B1 EA */	lbz r0, -0x4e16(r3)
/* 80BC0D14  7C 05 07 74 */	extsb r5, r0
/* 80BC0D18  38 05 00 02 */	addi r0, r5, 2
/* 80BC0D1C  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 80BC0D20  38 E0 00 00 */	li r7, 0
/* 80BC0D24  38 63 AE 90 */	addi r3, r3, -20848
/* 80BC0D28  4B 45 26 38 */	b init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi
/* 80BC0D2C  48 00 00 44 */	b lbl_80BC0D70
lbl_80BC0D30:
/* 80BC0D30  3C 60 80 BC */	lis r3, stringBase0@ha
/* 80BC0D34  38 63 23 8C */	addi r3, r3, stringBase0@l
/* 80BC0D38  38 80 00 0F */	li r4, 0xf
/* 80BC0D3C  7F 85 E3 78 */	mr r5, r28
/* 80BC0D40  38 C0 00 80 */	li r6, 0x80
/* 80BC0D44  4B 47 B5 A8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BC0D48  7C 66 1B 78 */	mr r6, r3
/* 80BC0D4C  3C 7D 00 01 */	addis r3, r29, 1
/* 80BC0D50  38 80 00 02 */	li r4, 2
/* 80BC0D54  88 03 B1 EA */	lbz r0, -0x4e16(r3)
/* 80BC0D58  7C 05 07 74 */	extsb r5, r0
/* 80BC0D5C  38 05 00 02 */	addi r0, r5, 2
/* 80BC0D60  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 80BC0D64  38 E0 00 00 */	li r7, 0
/* 80BC0D68  38 63 AE 90 */	addi r3, r3, -20848
/* 80BC0D6C  4B 45 25 F4 */	b init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi
lbl_80BC0D70:
/* 80BC0D70  2C 03 00 00 */	cmpwi r3, 0
/* 80BC0D74  40 82 00 0C */	bne lbl_80BC0D80
/* 80BC0D78  38 60 00 00 */	li r3, 0
/* 80BC0D7C  48 00 02 B4 */	b lbl_80BC1030
lbl_80BC0D80:
/* 80BC0D80  3C 9D 00 01 */	addis r4, r29, 1
/* 80BC0D84  80 64 AE C8 */	lwz r3, -0x5138(r4)
/* 80BC0D88  80 A3 00 00 */	lwz r5, 0(r3)
/* 80BC0D8C  38 C0 00 00 */	li r6, 0
/* 80BC0D90  48 00 00 24 */	b lbl_80BC0DB4
lbl_80BC0D94:
/* 80BC0D94  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80BC0D98  D0 05 00 00 */	stfs f0, 0(r5)
/* 80BC0D9C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80BC0DA0  D0 05 00 04 */	stfs f0, 4(r5)
/* 80BC0DA4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80BC0DA8  D0 05 00 08 */	stfs f0, 8(r5)
/* 80BC0DAC  38 C6 00 01 */	addi r6, r6, 1
/* 80BC0DB0  38 A5 00 0C */	addi r5, r5, 0xc
lbl_80BC0DB4:
/* 80BC0DB4  88 04 B1 EA */	lbz r0, -0x4e16(r4)
/* 80BC0DB8  7C 03 07 74 */	extsb r3, r0
/* 80BC0DBC  38 03 00 02 */	addi r0, r3, 2
/* 80BC0DC0  7C 06 00 00 */	cmpw r6, r0
/* 80BC0DC4  41 80 FF D0 */	blt lbl_80BC0D94
/* 80BC0DC8  80 64 AE C8 */	lwz r3, -0x5138(r4)
/* 80BC0DCC  80 A3 00 20 */	lwz r5, 0x20(r3)
/* 80BC0DD0  38 C0 00 00 */	li r6, 0
/* 80BC0DD4  3C 9D 00 01 */	addis r4, r29, 1
/* 80BC0DD8  48 00 00 24 */	b lbl_80BC0DFC
lbl_80BC0DDC:
/* 80BC0DDC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80BC0DE0  D0 05 00 00 */	stfs f0, 0(r5)
/* 80BC0DE4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80BC0DE8  D0 05 00 04 */	stfs f0, 4(r5)
/* 80BC0DEC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80BC0DF0  D0 05 00 08 */	stfs f0, 8(r5)
/* 80BC0DF4  38 C6 00 01 */	addi r6, r6, 1
/* 80BC0DF8  38 A5 00 0C */	addi r5, r5, 0xc
lbl_80BC0DFC:
/* 80BC0DFC  88 04 B1 EA */	lbz r0, -0x4e16(r4)
/* 80BC0E00  7C 03 07 74 */	extsb r3, r0
/* 80BC0E04  38 03 00 02 */	addi r0, r3, 2
/* 80BC0E08  7C 06 00 00 */	cmpw r6, r0
/* 80BC0E0C  41 80 FF D0 */	blt lbl_80BC0DDC
lbl_80BC0E10:
/* 80BC0E10  88 1A B1 E8 */	lbz r0, -0x4e18(r26)
/* 80BC0E14  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80BC0E18  40 82 00 24 */	bne lbl_80BC0E3C
/* 80BC0E1C  C0 1B 00 14 */	lfs f0, 0x14(r27)
/* 80BC0E20  D0 1F 00 CC */	stfs f0, 0xcc(r31)
/* 80BC0E24  C0 3B 00 B8 */	lfs f1, 0xb8(r27)
/* 80BC0E28  4B 6A 6B 2C */	b cM_rndF__Ff
/* 80BC0E2C  C0 1B 00 14 */	lfs f0, 0x14(r27)
/* 80BC0E30  EC 00 08 2A */	fadds f0, f0, f1
/* 80BC0E34  D0 1F 00 C8 */	stfs f0, 0xc8(r31)
/* 80BC0E38  48 00 00 10 */	b lbl_80BC0E48
lbl_80BC0E3C:
/* 80BC0E3C  C0 1B 00 14 */	lfs f0, 0x14(r27)
/* 80BC0E40  D0 1F 00 CC */	stfs f0, 0xcc(r31)
/* 80BC0E44  D0 1F 00 C8 */	stfs f0, 0xc8(r31)
lbl_80BC0E48:
/* 80BC0E48  88 1A B1 ED */	lbz r0, -0x4e13(r26)
/* 80BC0E4C  7C 00 07 74 */	extsb r0, r0
/* 80BC0E50  2C 00 00 01 */	cmpwi r0, 1
/* 80BC0E54  40 82 00 24 */	bne lbl_80BC0E78
/* 80BC0E58  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80BC0E5C  C0 3B 01 6C */	lfs f1, 0x16c(r27)
/* 80BC0E60  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BC0E64  D0 1F 00 C8 */	stfs f0, 0xc8(r31)
/* 80BC0E68  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80BC0E6C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BC0E70  D0 1F 00 CC */	stfs f0, 0xcc(r31)
/* 80BC0E74  48 00 00 28 */	b lbl_80BC0E9C
lbl_80BC0E78:
/* 80BC0E78  2C 00 00 02 */	cmpwi r0, 2
/* 80BC0E7C  40 82 00 20 */	bne lbl_80BC0E9C
/* 80BC0E80  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80BC0E84  C0 3B 01 70 */	lfs f1, 0x170(r27)
/* 80BC0E88  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BC0E8C  D0 1F 00 C8 */	stfs f0, 0xc8(r31)
/* 80BC0E90  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80BC0E94  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BC0E98  D0 1F 00 CC */	stfs f0, 0xcc(r31)
lbl_80BC0E9C:
/* 80BC0E9C  C0 1A AE DC */	lfs f0, -0x5124(r26)
/* 80BC0EA0  D0 1F 00 D0 */	stfs f0, 0xd0(r31)
/* 80BC0EA4  80 7F 00 00 */	lwz r3, 0(r31)
/* 80BC0EA8  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80BC0EAC  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80BC0EB0  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80BC0EB4  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80BC0EB8  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80BC0EBC  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80BC0EC0  C0 3B 00 14 */	lfs f1, 0x14(r27)
/* 80BC0EC4  4B 6A 6A 90 */	b cM_rndF__Ff
/* 80BC0EC8  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80BC0ECC  40 80 00 0C */	bge lbl_80BC0ED8
/* 80BC0ED0  38 00 80 00 */	li r0, -32768
/* 80BC0ED4  B0 1F 00 F0 */	sth r0, 0xf0(r31)
lbl_80BC0ED8:
/* 80BC0ED8  3B DE 00 01 */	addi r30, r30, 1
/* 80BC0EDC  3B FF 07 0C */	addi r31, r31, 0x70c
lbl_80BC0EE0:
/* 80BC0EE0  88 1A B1 EA */	lbz r0, -0x4e16(r26)
/* 80BC0EE4  7C 00 07 74 */	extsb r0, r0
/* 80BC0EE8  7C 1E 00 00 */	cmpw r30, r0
/* 80BC0EEC  41 80 FC 1C */	blt lbl_80BC0B08
/* 80BC0EF0  38 60 00 C8 */	li r3, 0xc8
/* 80BC0EF4  4B 70 DD 58 */	b __nw__FUl
/* 80BC0EF8  7C 76 1B 79 */	or. r22, r3, r3
/* 80BC0EFC  41 82 00 1C */	beq lbl_80BC0F18
/* 80BC0F00  4B 4B AA 70 */	b __ct__4dBgWFv
/* 80BC0F04  3C 60 80 3B */	lis r3, __vt__6dBgWSv@ha
/* 80BC0F08  38 03 BE B8 */	addi r0, r3, __vt__6dBgWSv@l
/* 80BC0F0C  90 16 00 04 */	stw r0, 4(r22)
/* 80BC0F10  38 00 00 00 */	li r0, 0
/* 80BC0F14  90 16 00 C0 */	stw r0, 0xc0(r22)
lbl_80BC0F18:
/* 80BC0F18  3C 7D 00 01 */	addis r3, r29, 1
/* 80BC0F1C  92 C3 AE CC */	stw r22, -0x5134(r3)
/* 80BC0F20  80 03 AE CC */	lwz r0, -0x5134(r3)
/* 80BC0F24  28 00 00 00 */	cmplwi r0, 0
/* 80BC0F28  40 82 00 0C */	bne lbl_80BC0F34
/* 80BC0F2C  38 60 00 00 */	li r3, 0
/* 80BC0F30  48 00 01 00 */	b lbl_80BC1030
lbl_80BC0F34:
/* 80BC0F34  88 03 B1 E8 */	lbz r0, -0x4e18(r3)
/* 80BC0F38  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80BC0F3C  2C 00 00 01 */	cmpwi r0, 1
/* 80BC0F40  40 82 00 40 */	bne lbl_80BC0F80
/* 80BC0F44  3C 60 80 BC */	lis r3, stringBase0@ha
/* 80BC0F48  38 63 23 8C */	addi r3, r3, stringBase0@l
/* 80BC0F4C  38 80 00 0C */	li r4, 0xc
/* 80BC0F50  7F 85 E3 78 */	mr r5, r28
/* 80BC0F54  38 C0 00 80 */	li r6, 0x80
/* 80BC0F58  4B 47 B3 94 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BC0F5C  7C 64 1B 78 */	mr r4, r3
/* 80BC0F60  3C 7D 00 01 */	addis r3, r29, 1
/* 80BC0F64  80 63 AE CC */	lwz r3, -0x5134(r3)
/* 80BC0F68  38 A0 00 00 */	li r5, 0
/* 80BC0F6C  4B 4C 20 2C */	b Set__6dBgWSvFP6cBgD_tUl
/* 80BC0F70  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BC0F74  41 82 00 48 */	beq lbl_80BC0FBC
/* 80BC0F78  38 60 00 00 */	li r3, 0
/* 80BC0F7C  48 00 00 B4 */	b lbl_80BC1030
lbl_80BC0F80:
/* 80BC0F80  3C 60 80 BC */	lis r3, stringBase0@ha
/* 80BC0F84  38 63 23 8C */	addi r3, r3, stringBase0@l
/* 80BC0F88  38 80 00 0B */	li r4, 0xb
/* 80BC0F8C  7F 85 E3 78 */	mr r5, r28
/* 80BC0F90  38 C0 00 80 */	li r6, 0x80
/* 80BC0F94  4B 47 B3 58 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BC0F98  7C 64 1B 78 */	mr r4, r3
/* 80BC0F9C  3C 7D 00 01 */	addis r3, r29, 1
/* 80BC0FA0  80 63 AE CC */	lwz r3, -0x5134(r3)
/* 80BC0FA4  38 A0 00 00 */	li r5, 0
/* 80BC0FA8  4B 4C 1F F0 */	b Set__6dBgWSvFP6cBgD_tUl
/* 80BC0FAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BC0FB0  41 82 00 0C */	beq lbl_80BC0FBC
/* 80BC0FB4  38 60 00 00 */	li r3, 0
/* 80BC0FB8  48 00 00 78 */	b lbl_80BC1030
lbl_80BC0FBC:
/* 80BC0FBC  3C 60 80 BC */	lis r3, ride_call_back__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha
/* 80BC0FC0  38 03 C9 0C */	addi r0, r3, ride_call_back__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l
/* 80BC0FC4  3C 9D 00 01 */	addis r4, r29, 1
/* 80BC0FC8  80 64 AE CC */	lwz r3, -0x5134(r4)
/* 80BC0FCC  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 80BC0FD0  80 64 AE CC */	lwz r3, -0x5134(r4)
/* 80BC0FD4  4B 4C 20 4C */	b CopyBackVtx__6dBgWSvFv
/* 80BC0FD8  3C DD 00 01 */	addis r6, r29, 1
/* 80BC0FDC  80 66 AE CC */	lwz r3, -0x5134(r6)
/* 80BC0FE0  80 03 00 9C */	lwz r0, 0x9c(r3)
/* 80BC0FE4  38 E0 00 00 */	li r7, 0
/* 80BC0FE8  38 80 00 00 */	li r4, 0
/* 80BC0FEC  48 00 00 28 */	b lbl_80BC1014
lbl_80BC0FF0:
/* 80BC0FF0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80BC0FF4  7C 60 22 14 */	add r3, r0, r4
/* 80BC0FF8  D0 03 00 00 */	stfs f0, 0(r3)
/* 80BC0FFC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80BC1000  D0 03 00 04 */	stfs f0, 4(r3)
/* 80BC1004  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80BC1008  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BC100C  38 E7 00 01 */	addi r7, r7, 1
/* 80BC1010  38 84 00 0C */	addi r4, r4, 0xc
lbl_80BC1014:
/* 80BC1014  80 66 AE CC */	lwz r3, -0x5134(r6)
/* 80BC1018  80 A3 00 A0 */	lwz r5, 0xa0(r3)
/* 80BC101C  80 A5 00 00 */	lwz r5, 0(r5)
/* 80BC1020  7C 07 28 00 */	cmpw r7, r5
/* 80BC1024  41 80 FF CC */	blt lbl_80BC0FF0
/* 80BC1028  4B 4B A9 98 */	b Move__4dBgWFv
/* 80BC102C  38 60 00 01 */	li r3, 1
lbl_80BC1030:
/* 80BC1030  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80BC1034  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80BC1038  39 61 00 40 */	addi r11, r1, 0x40
/* 80BC103C  4B 7A 11 C8 */	b _restgpr_20
/* 80BC1040  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80BC1044  7C 08 03 A6 */	mtlr r0
/* 80BC1048  38 21 00 50 */	addi r1, r1, 0x50
/* 80BC104C  4E 80 00 20 */	blr 
