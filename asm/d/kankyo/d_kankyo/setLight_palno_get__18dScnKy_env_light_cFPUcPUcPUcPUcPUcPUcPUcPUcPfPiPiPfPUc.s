lbl_8019FBD4:
/* 8019FBD4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8019FBD8  7C 08 02 A6 */	mflr r0
/* 8019FBDC  90 01 00 54 */	stw r0, 0x54(r1)
/* 8019FBE0  39 61 00 50 */	addi r11, r1, 0x50
/* 8019FBE4  48 1C 25 C5 */	bl _savegpr_16
/* 8019FBE8  7C 95 23 78 */	mr r21, r4
/* 8019FBEC  7C B6 2B 78 */	mr r22, r5
/* 8019FBF0  7C D7 33 78 */	mr r23, r6
/* 8019FBF4  7C F8 3B 78 */	mr r24, r7
/* 8019FBF8  7D 19 43 78 */	mr r25, r8
/* 8019FBFC  7D 3A 4B 78 */	mr r26, r9
/* 8019FC00  7D 5B 53 78 */	mr r27, r10
/* 8019FC04  83 81 00 58 */	lwz r28, 0x58(r1)
/* 8019FC08  82 21 00 5C */	lwz r17, 0x5c(r1)
/* 8019FC0C  83 A1 00 60 */	lwz r29, 0x60(r1)
/* 8019FC10  83 C1 00 64 */	lwz r30, 0x64(r1)
/* 8019FC14  83 E1 00 68 */	lwz r31, 0x68(r1)
/* 8019FC18  80 A1 00 6C */	lwz r5, 0x6c(r1)
/* 8019FC1C  3A 00 00 00 */	li r16, 0
/* 8019FC20  88 85 00 00 */	lbz r4, 0(r5)
/* 8019FC24  28 04 00 00 */	cmplwi r4, 0
/* 8019FC28  41 82 00 6C */	beq lbl_8019FC94
/* 8019FC2C  38 04 00 01 */	addi r0, r4, 1
/* 8019FC30  98 05 00 00 */	stb r0, 0(r5)
/* 8019FC34  88 05 00 00 */	lbz r0, 0(r5)
/* 8019FC38  28 00 00 14 */	cmplwi r0, 0x14
/* 8019FC3C  40 81 00 0C */	ble lbl_8019FC48
/* 8019FC40  38 00 00 00 */	li r0, 0
/* 8019FC44  98 05 00 00 */	stb r0, 0(r5)
lbl_8019FC48:
/* 8019FC48  3C 80 80 43 */	lis r4, g_env_light@ha
/* 8019FC4C  38 84 CA 54 */	addi r4, r4, g_env_light@l
/* 8019FC50  88 04 12 CD */	lbz r0, 0x12cd(r4)
/* 8019FC54  28 00 00 00 */	cmplwi r0, 0
/* 8019FC58  40 82 00 3C */	bne lbl_8019FC94
/* 8019FC5C  88 04 12 CE */	lbz r0, 0x12ce(r4)
/* 8019FC60  28 00 00 00 */	cmplwi r0, 0
/* 8019FC64  40 82 00 30 */	bne lbl_8019FC94
/* 8019FC68  C0 04 11 DC */	lfs f0, 0x11dc(r4)
/* 8019FC6C  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8019FC70  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8019FC74  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 8019FC78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019FC7C  4C 41 13 82 */	cror 2, 1, 2
/* 8019FC80  40 82 00 14 */	bne lbl_8019FC94
/* 8019FC84  88 16 00 00 */	lbz r0, 0(r22)
/* 8019FC88  98 15 00 00 */	stb r0, 0(r21)
/* 8019FC8C  88 18 00 00 */	lbz r0, 0(r24)
/* 8019FC90  98 17 00 00 */	stb r0, 0(r23)
lbl_8019FC94:
/* 8019FC94  38 80 00 00 */	li r4, 0
/* 8019FC98  38 00 00 0B */	li r0, 0xb
/* 8019FC9C  7C 09 03 A6 */	mtctr r0
lbl_8019FCA0:
/* 8019FCA0  C0 23 12 44 */	lfs f1, 0x1244(r3)
/* 8019FCA4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8019FCA8  7C A0 22 14 */	add r5, r0, r4
/* 8019FCAC  C0 05 00 00 */	lfs f0, 0(r5)
/* 8019FCB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019FCB4  4C 41 13 82 */	cror 2, 1, 2
/* 8019FCB8  40 82 06 18 */	bne lbl_801A02D0
/* 8019FCBC  C0 05 00 04 */	lfs f0, 4(r5)
/* 8019FCC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019FCC4  4C 40 13 82 */	cror 2, 0, 2
/* 8019FCC8  40 82 06 08 */	bne lbl_801A02D0
/* 8019FCCC  88 05 00 08 */	lbz r0, 8(r5)
/* 8019FCD0  90 1D 00 00 */	stw r0, 0(r29)
/* 8019FCD4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8019FCD8  7C A0 22 14 */	add r5, r0, r4
/* 8019FCDC  88 05 00 09 */	lbz r0, 9(r5)
/* 8019FCE0  90 1E 00 00 */	stw r0, 0(r30)
/* 8019FCE4  80 C3 00 14 */	lwz r6, 0x14(r3)
/* 8019FCE8  7C A6 22 14 */	add r5, r6, r4
/* 8019FCEC  C0 25 00 04 */	lfs f1, 4(r5)
/* 8019FCF0  7C 46 24 2E */	lfsx f2, r6, r4
/* 8019FCF4  C0 63 12 44 */	lfs f3, 0x1244(r3)
/* 8019FCF8  4B FF DB 81 */	bl get_parcent__Ffff
/* 8019FCFC  D0 31 00 00 */	stfs f1, 0(r17)
/* 8019FD00  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8019FD04  3A 43 CA 54 */	addi r18, r3, g_env_light@l
/* 8019FD08  80 72 00 0C */	lwz r3, 0xc(r18)
/* 8019FD0C  88 15 00 00 */	lbz r0, 0(r21)
/* 8019FD10  1C 00 00 41 */	mulli r0, r0, 0x41
/* 8019FD14  7E 23 02 14 */	add r17, r3, r0
/* 8019FD18  88 97 00 00 */	lbz r4, 0(r23)
/* 8019FD1C  28 04 00 07 */	cmplwi r4, 7
/* 8019FD20  41 81 00 5C */	bgt lbl_8019FD7C
/* 8019FD24  3C 60 80 3C */	lis r3, lit_5841@ha
/* 8019FD28  38 63 BF F0 */	addi r3, r3, lit_5841@l
/* 8019FD2C  54 80 10 3A */	slwi r0, r4, 2
/* 8019FD30  7C 03 00 2E */	lwzx r0, r3, r0
/* 8019FD34  7C 09 03 A6 */	mtctr r0
/* 8019FD38  4E 80 04 20 */	bctr 
/* 8019FD3C  8A 11 00 00 */	lbz r16, 0(r17)
/* 8019FD40  48 00 00 50 */	b lbl_8019FD90
/* 8019FD44  8A 11 00 01 */	lbz r16, 1(r17)
/* 8019FD48  48 00 00 48 */	b lbl_8019FD90
/* 8019FD4C  8A 11 00 02 */	lbz r16, 2(r17)
/* 8019FD50  48 00 00 40 */	b lbl_8019FD90
/* 8019FD54  8A 11 00 03 */	lbz r16, 3(r17)
/* 8019FD58  48 00 00 38 */	b lbl_8019FD90
/* 8019FD5C  8A 11 00 04 */	lbz r16, 4(r17)
/* 8019FD60  48 00 00 30 */	b lbl_8019FD90
/* 8019FD64  8A 11 00 05 */	lbz r16, 5(r17)
/* 8019FD68  48 00 00 28 */	b lbl_8019FD90
/* 8019FD6C  8A 11 00 06 */	lbz r16, 6(r17)
/* 8019FD70  48 00 00 20 */	b lbl_8019FD90
/* 8019FD74  8A 11 00 07 */	lbz r16, 7(r17)
/* 8019FD78  48 00 00 18 */	b lbl_8019FD90
lbl_8019FD7C:
/* 8019FD7C  28 04 00 07 */	cmplwi r4, 7
/* 8019FD80  40 81 00 10 */	ble lbl_8019FD90
/* 8019FD84  28 04 00 40 */	cmplwi r4, 0x40
/* 8019FD88  40 80 00 08 */	bge lbl_8019FD90
/* 8019FD8C  7E 11 20 AE */	lbzx r16, r17, r4
lbl_8019FD90:
/* 8019FD90  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8019FD94  3A 63 CA 54 */	addi r19, r3, g_env_light@l
/* 8019FD98  88 13 12 D8 */	lbz r0, 0x12d8(r19)
/* 8019FD9C  28 00 00 00 */	cmplwi r0, 0
/* 8019FDA0  41 82 00 6C */	beq lbl_8019FE0C
/* 8019FDA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8019FDA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8019FDAC  3A 83 4E 00 */	addi r20, r3, 0x4e00
/* 8019FDB0  7E 83 A3 78 */	mr r3, r20
/* 8019FDB4  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019FDB8  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019FDBC  38 84 01 8A */	addi r4, r4, 0x18a
/* 8019FDC0  48 1C 8B D5 */	bl strcmp
/* 8019FDC4  2C 03 00 00 */	cmpwi r3, 0
/* 8019FDC8  41 82 00 44 */	beq lbl_8019FE0C
/* 8019FDCC  7E 83 A3 78 */	mr r3, r20
/* 8019FDD0  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019FDD4  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019FDD8  38 84 00 F8 */	addi r4, r4, 0xf8
/* 8019FDDC  48 1C 8B B9 */	bl strcmp
/* 8019FDE0  2C 03 00 00 */	cmpwi r3, 0
/* 8019FDE4  41 82 00 28 */	beq lbl_8019FE0C
/* 8019FDE8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8019FDEC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8019FDF0  88 03 12 C3 */	lbz r0, 0x12c3(r3)
/* 8019FDF4  28 00 00 00 */	cmplwi r0, 0
/* 8019FDF8  40 82 00 0C */	bne lbl_8019FE04
/* 8019FDFC  8A 11 00 08 */	lbz r16, 8(r17)
/* 8019FE00  48 00 00 58 */	b lbl_8019FE58
lbl_8019FE04:
/* 8019FE04  8A 11 00 09 */	lbz r16, 9(r17)
/* 8019FE08  48 00 00 50 */	b lbl_8019FE58
lbl_8019FE0C:
/* 8019FE0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8019FE10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8019FE14  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8019FE18  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019FE1C  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019FE20  38 84 01 5C */	addi r4, r4, 0x15c
/* 8019FE24  48 1C 8B 71 */	bl strcmp
/* 8019FE28  2C 03 00 00 */	cmpwi r3, 0
/* 8019FE2C  40 82 00 2C */	bne lbl_8019FE58
/* 8019FE30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8019FE34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8019FE38  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 8019FE3C  28 03 00 00 */	cmplwi r3, 0
/* 8019FE40  41 82 00 18 */	beq lbl_8019FE58
/* 8019FE44  C0 23 00 DC */	lfs f1, 0xdc(r3)
/* 8019FE48  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 8019FE4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019FE50  40 80 00 08 */	bge lbl_8019FE58
/* 8019FE54  8A 11 00 0A */	lbz r16, 0xa(r17)
lbl_8019FE58:
/* 8019FE58  56 00 06 3E */	clrlwi r0, r16, 0x18
/* 8019FE5C  28 00 00 FA */	cmplwi r0, 0xfa
/* 8019FE60  40 81 00 08 */	ble lbl_8019FE68
/* 8019FE64  3A 00 00 00 */	li r16, 0
lbl_8019FE68:
/* 8019FE68  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8019FE6C  3A 83 CA 54 */	addi r20, r3, g_env_light@l
/* 8019FE70  80 74 00 08 */	lwz r3, 8(r20)
/* 8019FE74  56 00 06 3E */	clrlwi r0, r16, 0x18
/* 8019FE78  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8019FE7C  7C 63 02 14 */	add r3, r3, r0
/* 8019FE80  80 1D 00 00 */	lwz r0, 0(r29)
/* 8019FE84  2C 00 00 03 */	cmpwi r0, 3
/* 8019FE88  41 82 00 54 */	beq lbl_8019FEDC
/* 8019FE8C  40 80 00 1C */	bge lbl_8019FEA8
/* 8019FE90  2C 00 00 01 */	cmpwi r0, 1
/* 8019FE94  41 82 00 30 */	beq lbl_8019FEC4
/* 8019FE98  40 80 00 38 */	bge lbl_8019FED0
/* 8019FE9C  2C 00 00 00 */	cmpwi r0, 0
/* 8019FEA0  40 80 00 18 */	bge lbl_8019FEB8
/* 8019FEA4  48 00 00 58 */	b lbl_8019FEFC
lbl_8019FEA8:
/* 8019FEA8  2C 00 00 05 */	cmpwi r0, 5
/* 8019FEAC  41 82 00 48 */	beq lbl_8019FEF4
/* 8019FEB0  40 80 00 4C */	bge lbl_8019FEFC
/* 8019FEB4  48 00 00 34 */	b lbl_8019FEE8
lbl_8019FEB8:
/* 8019FEB8  88 03 00 00 */	lbz r0, 0(r3)
/* 8019FEBC  98 19 00 00 */	stb r0, 0(r25)
/* 8019FEC0  48 00 00 3C */	b lbl_8019FEFC
lbl_8019FEC4:
/* 8019FEC4  88 03 00 01 */	lbz r0, 1(r3)
/* 8019FEC8  98 19 00 00 */	stb r0, 0(r25)
/* 8019FECC  48 00 00 30 */	b lbl_8019FEFC
lbl_8019FED0:
/* 8019FED0  88 03 00 02 */	lbz r0, 2(r3)
/* 8019FED4  98 19 00 00 */	stb r0, 0(r25)
/* 8019FED8  48 00 00 24 */	b lbl_8019FEFC
lbl_8019FEDC:
/* 8019FEDC  88 03 00 03 */	lbz r0, 3(r3)
/* 8019FEE0  98 19 00 00 */	stb r0, 0(r25)
/* 8019FEE4  48 00 00 18 */	b lbl_8019FEFC
lbl_8019FEE8:
/* 8019FEE8  88 03 00 04 */	lbz r0, 4(r3)
/* 8019FEEC  98 19 00 00 */	stb r0, 0(r25)
/* 8019FEF0  48 00 00 0C */	b lbl_8019FEFC
lbl_8019FEF4:
/* 8019FEF4  88 03 00 05 */	lbz r0, 5(r3)
/* 8019FEF8  98 19 00 00 */	stb r0, 0(r25)
lbl_8019FEFC:
/* 8019FEFC  80 1E 00 00 */	lwz r0, 0(r30)
/* 8019FF00  2C 00 00 03 */	cmpwi r0, 3
/* 8019FF04  41 82 00 54 */	beq lbl_8019FF58
/* 8019FF08  40 80 00 1C */	bge lbl_8019FF24
/* 8019FF0C  2C 00 00 01 */	cmpwi r0, 1
/* 8019FF10  41 82 00 30 */	beq lbl_8019FF40
/* 8019FF14  40 80 00 38 */	bge lbl_8019FF4C
/* 8019FF18  2C 00 00 00 */	cmpwi r0, 0
/* 8019FF1C  40 80 00 18 */	bge lbl_8019FF34
/* 8019FF20  48 00 00 58 */	b lbl_8019FF78
lbl_8019FF24:
/* 8019FF24  2C 00 00 05 */	cmpwi r0, 5
/* 8019FF28  41 82 00 48 */	beq lbl_8019FF70
/* 8019FF2C  40 80 00 4C */	bge lbl_8019FF78
/* 8019FF30  48 00 00 34 */	b lbl_8019FF64
lbl_8019FF34:
/* 8019FF34  88 03 00 00 */	lbz r0, 0(r3)
/* 8019FF38  98 1A 00 00 */	stb r0, 0(r26)
/* 8019FF3C  48 00 00 3C */	b lbl_8019FF78
lbl_8019FF40:
/* 8019FF40  88 03 00 01 */	lbz r0, 1(r3)
/* 8019FF44  98 1A 00 00 */	stb r0, 0(r26)
/* 8019FF48  48 00 00 30 */	b lbl_8019FF78
lbl_8019FF4C:
/* 8019FF4C  88 03 00 02 */	lbz r0, 2(r3)
/* 8019FF50  98 1A 00 00 */	stb r0, 0(r26)
/* 8019FF54  48 00 00 24 */	b lbl_8019FF78
lbl_8019FF58:
/* 8019FF58  88 03 00 03 */	lbz r0, 3(r3)
/* 8019FF5C  98 1A 00 00 */	stb r0, 0(r26)
/* 8019FF60  48 00 00 18 */	b lbl_8019FF78
lbl_8019FF64:
/* 8019FF64  88 03 00 04 */	lbz r0, 4(r3)
/* 8019FF68  98 1A 00 00 */	stb r0, 0(r26)
/* 8019FF6C  48 00 00 0C */	b lbl_8019FF78
lbl_8019FF70:
/* 8019FF70  88 03 00 05 */	lbz r0, 5(r3)
/* 8019FF74  98 1A 00 00 */	stb r0, 0(r26)
lbl_8019FF78:
/* 8019FF78  80 72 00 0C */	lwz r3, 0xc(r18)
/* 8019FF7C  88 B6 00 00 */	lbz r5, 0(r22)
/* 8019FF80  1C 05 00 41 */	mulli r0, r5, 0x41
/* 8019FF84  7E 43 02 14 */	add r18, r3, r0
/* 8019FF88  88 98 00 00 */	lbz r4, 0(r24)
/* 8019FF8C  28 04 00 07 */	cmplwi r4, 7
/* 8019FF90  41 81 00 5C */	bgt lbl_8019FFEC
/* 8019FF94  3C 60 80 3C */	lis r3, lit_5842@ha
/* 8019FF98  38 63 BF D0 */	addi r3, r3, lit_5842@l
/* 8019FF9C  54 80 10 3A */	slwi r0, r4, 2
/* 8019FFA0  7C 03 00 2E */	lwzx r0, r3, r0
/* 8019FFA4  7C 09 03 A6 */	mtctr r0
/* 8019FFA8  4E 80 04 20 */	bctr 
/* 8019FFAC  8A 12 00 00 */	lbz r16, 0(r18)
/* 8019FFB0  48 00 00 50 */	b lbl_801A0000
/* 8019FFB4  8A 12 00 01 */	lbz r16, 1(r18)
/* 8019FFB8  48 00 00 48 */	b lbl_801A0000
/* 8019FFBC  8A 12 00 02 */	lbz r16, 2(r18)
/* 8019FFC0  48 00 00 40 */	b lbl_801A0000
/* 8019FFC4  8A 12 00 03 */	lbz r16, 3(r18)
/* 8019FFC8  48 00 00 38 */	b lbl_801A0000
/* 8019FFCC  8A 12 00 04 */	lbz r16, 4(r18)
/* 8019FFD0  48 00 00 30 */	b lbl_801A0000
/* 8019FFD4  8A 12 00 05 */	lbz r16, 5(r18)
/* 8019FFD8  48 00 00 28 */	b lbl_801A0000
/* 8019FFDC  8A 12 00 06 */	lbz r16, 6(r18)
/* 8019FFE0  48 00 00 20 */	b lbl_801A0000
/* 8019FFE4  8A 12 00 07 */	lbz r16, 7(r18)
/* 8019FFE8  48 00 00 18 */	b lbl_801A0000
lbl_8019FFEC:
/* 8019FFEC  28 04 00 07 */	cmplwi r4, 7
/* 8019FFF0  40 81 00 10 */	ble lbl_801A0000
/* 8019FFF4  28 04 00 40 */	cmplwi r4, 0x40
/* 8019FFF8  40 80 00 08 */	bge lbl_801A0000
/* 8019FFFC  7E 12 20 AE */	lbzx r16, r18, r4
lbl_801A0000:
/* 801A0000  56 00 06 3E */	clrlwi r0, r16, 0x18
/* 801A0004  28 00 00 FA */	cmplwi r0, 0xfa
/* 801A0008  40 81 00 08 */	ble lbl_801A0010
/* 801A000C  3A 00 00 00 */	li r16, 0
lbl_801A0010:
/* 801A0010  80 74 00 08 */	lwz r3, 8(r20)
/* 801A0014  56 00 06 3E */	clrlwi r0, r16, 0x18
/* 801A0018  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801A001C  7E 23 02 14 */	add r17, r3, r0
/* 801A0020  88 15 00 00 */	lbz r0, 0(r21)
/* 801A0024  7C 00 28 40 */	cmplw r0, r5
/* 801A0028  40 82 00 10 */	bne lbl_801A0038
/* 801A002C  88 17 00 00 */	lbz r0, 0(r23)
/* 801A0030  7C 00 20 40 */	cmplw r0, r4
/* 801A0034  41 82 00 BC */	beq lbl_801A00F0
lbl_801A0038:
/* 801A0038  C0 31 00 08 */	lfs f1, 8(r17)
/* 801A003C  C0 02 A2 E0 */	lfs f0, lit_5839(r2)
/* 801A0040  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A0044  40 80 00 08 */	bge lbl_801A004C
/* 801A0048  D0 11 00 08 */	stfs f0, 8(r17)
lbl_801A004C:
/* 801A004C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A0050  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801A0054  88 03 12 CD */	lbz r0, 0x12cd(r3)
/* 801A0058  28 00 00 00 */	cmplwi r0, 0
/* 801A005C  40 82 00 94 */	bne lbl_801A00F0
/* 801A0060  C0 51 00 08 */	lfs f2, 8(r17)
/* 801A0064  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A0068  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801A006C  40 81 00 18 */	ble lbl_801A0084
/* 801A0070  C0 3F 00 00 */	lfs f1, 0(r31)
/* 801A0074  C0 02 A2 E0 */	lfs f0, lit_5839(r2)
/* 801A0078  EC 00 10 24 */	fdivs f0, f0, f2
/* 801A007C  EC 01 00 2A */	fadds f0, f1, f0
/* 801A0080  D0 1F 00 00 */	stfs f0, 0(r31)
lbl_801A0084:
/* 801A0084  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801A0088  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801A008C  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 801A0090  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 801A0094  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 801A0098  38 84 01 92 */	addi r4, r4, 0x192
/* 801A009C  48 1C 88 F9 */	bl strcmp
/* 801A00A0  2C 03 00 00 */	cmpwi r3, 0
/* 801A00A4  40 82 00 24 */	bne lbl_801A00C8
/* 801A00A8  88 77 00 00 */	lbz r3, 0(r23)
/* 801A00AC  88 18 00 00 */	lbz r0, 0(r24)
/* 801A00B0  7C 03 00 40 */	cmplw r3, r0
/* 801A00B4  40 82 00 14 */	bne lbl_801A00C8
/* 801A00B8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 801A00BC  C0 02 A2 E4 */	lfs f0, lit_5840(r2)
/* 801A00C0  EC 01 00 2A */	fadds f0, f1, f0
/* 801A00C4  D0 1F 00 00 */	stfs f0, 0(r31)
lbl_801A00C8:
/* 801A00C8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 801A00CC  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 801A00D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A00D4  4C 41 13 82 */	cror 2, 1, 2
/* 801A00D8  40 82 00 18 */	bne lbl_801A00F0
/* 801A00DC  88 16 00 00 */	lbz r0, 0(r22)
/* 801A00E0  98 15 00 00 */	stb r0, 0(r21)
/* 801A00E4  88 18 00 00 */	lbz r0, 0(r24)
/* 801A00E8  98 17 00 00 */	stb r0, 0(r23)
/* 801A00EC  D0 1F 00 00 */	stfs f0, 0(r31)
lbl_801A00F0:
/* 801A00F0  88 13 12 D8 */	lbz r0, 0x12d8(r19)
/* 801A00F4  28 00 00 00 */	cmplwi r0, 0
/* 801A00F8  41 82 00 84 */	beq lbl_801A017C
/* 801A00FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801A0100  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801A0104  3A 03 4E 00 */	addi r16, r3, 0x4e00
/* 801A0108  7E 03 83 78 */	mr r3, r16
/* 801A010C  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 801A0110  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 801A0114  38 84 01 8A */	addi r4, r4, 0x18a
/* 801A0118  48 1C 88 7D */	bl strcmp
/* 801A011C  2C 03 00 00 */	cmpwi r3, 0
/* 801A0120  41 82 00 5C */	beq lbl_801A017C
/* 801A0124  7E 03 83 78 */	mr r3, r16
/* 801A0128  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 801A012C  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 801A0130  38 84 00 F8 */	addi r4, r4, 0xf8
/* 801A0134  48 1C 88 61 */	bl strcmp
/* 801A0138  2C 03 00 00 */	cmpwi r3, 0
/* 801A013C  41 82 00 40 */	beq lbl_801A017C
/* 801A0140  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A0144  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801A0148  88 03 12 C3 */	lbz r0, 0x12c3(r3)
/* 801A014C  28 00 00 00 */	cmplwi r0, 0
/* 801A0150  40 82 00 18 */	bne lbl_801A0168
/* 801A0154  80 74 00 08 */	lwz r3, 8(r20)
/* 801A0158  88 12 00 08 */	lbz r0, 8(r18)
/* 801A015C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801A0160  7E 23 02 14 */	add r17, r3, r0
/* 801A0164  48 00 00 70 */	b lbl_801A01D4
lbl_801A0168:
/* 801A0168  80 74 00 08 */	lwz r3, 8(r20)
/* 801A016C  88 12 00 09 */	lbz r0, 9(r18)
/* 801A0170  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801A0174  7E 23 02 14 */	add r17, r3, r0
/* 801A0178  48 00 00 5C */	b lbl_801A01D4
lbl_801A017C:
/* 801A017C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801A0180  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801A0184  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 801A0188  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 801A018C  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 801A0190  38 84 01 5C */	addi r4, r4, 0x15c
/* 801A0194  48 1C 88 01 */	bl strcmp
/* 801A0198  2C 03 00 00 */	cmpwi r3, 0
/* 801A019C  40 82 00 38 */	bne lbl_801A01D4
/* 801A01A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801A01A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801A01A8  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 801A01AC  28 03 00 00 */	cmplwi r3, 0
/* 801A01B0  41 82 00 24 */	beq lbl_801A01D4
/* 801A01B4  C0 23 00 DC */	lfs f1, 0xdc(r3)
/* 801A01B8  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A01BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A01C0  40 80 00 14 */	bge lbl_801A01D4
/* 801A01C4  80 74 00 08 */	lwz r3, 8(r20)
/* 801A01C8  88 12 00 0A */	lbz r0, 0xa(r18)
/* 801A01CC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 801A01D0  7E 23 02 14 */	add r17, r3, r0
lbl_801A01D4:
/* 801A01D4  80 1D 00 00 */	lwz r0, 0(r29)
/* 801A01D8  2C 00 00 03 */	cmpwi r0, 3
/* 801A01DC  41 82 00 54 */	beq lbl_801A0230
/* 801A01E0  40 80 00 1C */	bge lbl_801A01FC
/* 801A01E4  2C 00 00 01 */	cmpwi r0, 1
/* 801A01E8  41 82 00 30 */	beq lbl_801A0218
/* 801A01EC  40 80 00 38 */	bge lbl_801A0224
/* 801A01F0  2C 00 00 00 */	cmpwi r0, 0
/* 801A01F4  40 80 00 18 */	bge lbl_801A020C
/* 801A01F8  48 00 00 58 */	b lbl_801A0250
lbl_801A01FC:
/* 801A01FC  2C 00 00 05 */	cmpwi r0, 5
/* 801A0200  41 82 00 48 */	beq lbl_801A0248
/* 801A0204  40 80 00 4C */	bge lbl_801A0250
/* 801A0208  48 00 00 34 */	b lbl_801A023C
lbl_801A020C:
/* 801A020C  88 11 00 00 */	lbz r0, 0(r17)
/* 801A0210  98 1B 00 00 */	stb r0, 0(r27)
/* 801A0214  48 00 00 3C */	b lbl_801A0250
lbl_801A0218:
/* 801A0218  88 11 00 01 */	lbz r0, 1(r17)
/* 801A021C  98 1B 00 00 */	stb r0, 0(r27)
/* 801A0220  48 00 00 30 */	b lbl_801A0250
lbl_801A0224:
/* 801A0224  88 11 00 02 */	lbz r0, 2(r17)
/* 801A0228  98 1B 00 00 */	stb r0, 0(r27)
/* 801A022C  48 00 00 24 */	b lbl_801A0250
lbl_801A0230:
/* 801A0230  88 11 00 03 */	lbz r0, 3(r17)
/* 801A0234  98 1B 00 00 */	stb r0, 0(r27)
/* 801A0238  48 00 00 18 */	b lbl_801A0250
lbl_801A023C:
/* 801A023C  88 11 00 04 */	lbz r0, 4(r17)
/* 801A0240  98 1B 00 00 */	stb r0, 0(r27)
/* 801A0244  48 00 00 0C */	b lbl_801A0250
lbl_801A0248:
/* 801A0248  88 11 00 05 */	lbz r0, 5(r17)
/* 801A024C  98 1B 00 00 */	stb r0, 0(r27)
lbl_801A0250:
/* 801A0250  80 1E 00 00 */	lwz r0, 0(r30)
/* 801A0254  2C 00 00 03 */	cmpwi r0, 3
/* 801A0258  41 82 00 54 */	beq lbl_801A02AC
/* 801A025C  40 80 00 1C */	bge lbl_801A0278
/* 801A0260  2C 00 00 01 */	cmpwi r0, 1
/* 801A0264  41 82 00 30 */	beq lbl_801A0294
/* 801A0268  40 80 00 38 */	bge lbl_801A02A0
/* 801A026C  2C 00 00 00 */	cmpwi r0, 0
/* 801A0270  40 80 00 18 */	bge lbl_801A0288
/* 801A0274  48 00 00 64 */	b lbl_801A02D8
lbl_801A0278:
/* 801A0278  2C 00 00 05 */	cmpwi r0, 5
/* 801A027C  41 82 00 48 */	beq lbl_801A02C4
/* 801A0280  40 80 00 58 */	bge lbl_801A02D8
/* 801A0284  48 00 00 34 */	b lbl_801A02B8
lbl_801A0288:
/* 801A0288  88 11 00 00 */	lbz r0, 0(r17)
/* 801A028C  98 1C 00 00 */	stb r0, 0(r28)
/* 801A0290  48 00 00 48 */	b lbl_801A02D8
lbl_801A0294:
/* 801A0294  88 11 00 01 */	lbz r0, 1(r17)
/* 801A0298  98 1C 00 00 */	stb r0, 0(r28)
/* 801A029C  48 00 00 3C */	b lbl_801A02D8
lbl_801A02A0:
/* 801A02A0  88 11 00 02 */	lbz r0, 2(r17)
/* 801A02A4  98 1C 00 00 */	stb r0, 0(r28)
/* 801A02A8  48 00 00 30 */	b lbl_801A02D8
lbl_801A02AC:
/* 801A02AC  88 11 00 03 */	lbz r0, 3(r17)
/* 801A02B0  98 1C 00 00 */	stb r0, 0(r28)
/* 801A02B4  48 00 00 24 */	b lbl_801A02D8
lbl_801A02B8:
/* 801A02B8  88 11 00 04 */	lbz r0, 4(r17)
/* 801A02BC  98 1C 00 00 */	stb r0, 0(r28)
/* 801A02C0  48 00 00 18 */	b lbl_801A02D8
lbl_801A02C4:
/* 801A02C4  88 11 00 05 */	lbz r0, 5(r17)
/* 801A02C8  98 1C 00 00 */	stb r0, 0(r28)
/* 801A02CC  48 00 00 0C */	b lbl_801A02D8
lbl_801A02D0:
/* 801A02D0  38 84 00 0C */	addi r4, r4, 0xc
/* 801A02D4  42 00 F9 CC */	bdnz lbl_8019FCA0
lbl_801A02D8:
/* 801A02D8  88 19 00 00 */	lbz r0, 0(r25)
/* 801A02DC  28 00 00 FA */	cmplwi r0, 0xfa
/* 801A02E0  40 81 00 0C */	ble lbl_801A02EC
/* 801A02E4  38 00 00 00 */	li r0, 0
/* 801A02E8  98 19 00 00 */	stb r0, 0(r25)
lbl_801A02EC:
/* 801A02EC  88 1B 00 00 */	lbz r0, 0(r27)
/* 801A02F0  28 00 00 FA */	cmplwi r0, 0xfa
/* 801A02F4  40 81 00 0C */	ble lbl_801A0300
/* 801A02F8  38 00 00 00 */	li r0, 0
/* 801A02FC  98 1B 00 00 */	stb r0, 0(r27)
lbl_801A0300:
/* 801A0300  88 1A 00 00 */	lbz r0, 0(r26)
/* 801A0304  28 00 00 FA */	cmplwi r0, 0xfa
/* 801A0308  40 81 00 0C */	ble lbl_801A0314
/* 801A030C  38 00 00 00 */	li r0, 0
/* 801A0310  98 1A 00 00 */	stb r0, 0(r26)
lbl_801A0314:
/* 801A0314  88 1C 00 00 */	lbz r0, 0(r28)
/* 801A0318  28 00 00 FA */	cmplwi r0, 0xfa
/* 801A031C  40 81 00 0C */	ble lbl_801A0328
/* 801A0320  38 00 00 00 */	li r0, 0
/* 801A0324  98 1C 00 00 */	stb r0, 0(r28)
lbl_801A0328:
/* 801A0328  39 61 00 50 */	addi r11, r1, 0x50
/* 801A032C  48 1C 1E C9 */	bl _restgpr_16
/* 801A0330  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801A0334  7C 08 03 A6 */	mtlr r0
/* 801A0338  38 21 00 50 */	addi r1, r1, 0x50
/* 801A033C  4E 80 00 20 */	blr 
