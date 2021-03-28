lbl_80128844:
/* 80128844  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 80128848  7C 08 02 A6 */	mflr r0
/* 8012884C  90 01 01 04 */	stw r0, 0x104(r1)
/* 80128850  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 80128854  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, 0 /* qr0 */
/* 80128858  DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 8012885C  F3 C1 00 E8 */	psq_st f30, 232(r1), 0, 0 /* qr0 */
/* 80128860  DB A1 00 D0 */	stfd f29, 0xd0(r1)
/* 80128864  F3 A1 00 D8 */	psq_st f29, 216(r1), 0, 0 /* qr0 */
/* 80128868  DB 81 00 C0 */	stfd f28, 0xc0(r1)
/* 8012886C  F3 81 00 C8 */	psq_st f28, 200(r1), 0, 0 /* qr0 */
/* 80128870  DB 61 00 B0 */	stfd f27, 0xb0(r1)
/* 80128874  F3 61 00 B8 */	psq_st f27, 184(r1), 0, 0 /* qr0 */
/* 80128878  DB 41 00 A0 */	stfd f26, 0xa0(r1)
/* 8012887C  F3 41 00 A8 */	psq_st f26, 168(r1), 0, 0 /* qr0 */
/* 80128880  DB 21 00 90 */	stfd f25, 0x90(r1)
/* 80128884  F3 21 00 98 */	psq_st f25, 152(r1), 0, 0 /* qr0 */
/* 80128888  DB 01 00 80 */	stfd f24, 0x80(r1)
/* 8012888C  F3 01 00 88 */	psq_st f24, 136(r1), 0, 0 /* qr0 */
/* 80128890  DA E1 00 70 */	stfd f23, 0x70(r1)
/* 80128894  F2 E1 00 78 */	psq_st f23, 120(r1), 0, 0 /* qr0 */
/* 80128898  DA C1 00 60 */	stfd f22, 0x60(r1)
/* 8012889C  F2 C1 00 68 */	psq_st f22, 104(r1), 0, 0 /* qr0 */
/* 801288A0  DA A1 00 50 */	stfd f21, 0x50(r1)
/* 801288A4  F2 A1 00 58 */	psq_st f21, 88(r1), 0, 0 /* qr0 */
/* 801288A8  DA 81 00 40 */	stfd f20, 0x40(r1)
/* 801288AC  F2 81 00 48 */	psq_st f20, 72(r1), 0, 0 /* qr0 */
/* 801288B0  39 61 00 40 */	addi r11, r1, 0x40
/* 801288B4  48 23 99 1D */	bl _savegpr_26
/* 801288B8  7C 7D 1B 78 */	mr r29, r3
/* 801288BC  FF 80 08 90 */	fmr f28, f1
/* 801288C0  3C 60 80 39 */	lis r3, lit_3757@ha
/* 801288C4  3B E3 D6 58 */	addi r31, r3, lit_3757@l
/* 801288C8  80 1D 31 74 */	lwz r0, 0x3174(r29)
/* 801288CC  2C 00 00 08 */	cmpwi r0, 8
/* 801288D0  40 82 00 0C */	bne lbl_801288DC
/* 801288D4  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 801288D8  48 00 00 1C */	b lbl_801288F4
lbl_801288DC:
/* 801288DC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 801288E0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 801288E4  A8 1D 2F F0 */	lha r0, 0x2ff0(r29)
/* 801288E8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 801288EC  7C 63 02 14 */	add r3, r3, r0
/* 801288F0  C0 23 00 04 */	lfs f1, 4(r3)
lbl_801288F4:
/* 801288F4  C0 1D 33 98 */	lfs f0, 0x3398(r29)
/* 801288F8  EC 00 00 72 */	fmuls f0, f0, f1
/* 801288FC  FC 00 02 10 */	fabs f0, f0
/* 80128900  FC 20 00 18 */	frsp f1, f0
/* 80128904  C0 1D 05 94 */	lfs f0, 0x594(r29)
/* 80128908  EF 61 00 24 */	fdivs f27, f1, f0
/* 8012890C  3B DD 1F E8 */	addi r30, r29, 0x1fe8
/* 80128910  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 80128914  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 80128918  41 82 00 38 */	beq lbl_80128950
/* 8012891C  38 9F 17 D0 */	addi r4, r31, 0x17d0
/* 80128920  C3 04 00 88 */	lfs f24, 0x88(r4)
/* 80128924  C2 A4 00 98 */	lfs f21, 0x98(r4)
/* 80128928  C2 E4 00 84 */	lfs f23, 0x84(r4)
/* 8012892C  C2 C4 00 8C */	lfs f22, 0x8c(r4)
/* 80128930  C3 E4 00 70 */	lfs f31, 0x70(r4)
/* 80128934  C3 C4 00 74 */	lfs f30, 0x74(r4)
/* 80128938  C3 44 00 78 */	lfs f26, 0x78(r4)
/* 8012893C  C3 A4 00 7C */	lfs f29, 0x7c(r4)
/* 80128940  38 7F 1D 98 */	addi r3, r31, 0x1d98
/* 80128944  C3 23 00 64 */	lfs f25, 0x64(r3)
/* 80128948  C2 84 00 9C */	lfs f20, 0x9c(r4)
/* 8012894C  48 00 00 34 */	b lbl_80128980
lbl_80128950:
/* 80128950  38 9F 18 D0 */	addi r4, r31, 0x18d0
/* 80128954  C3 04 00 28 */	lfs f24, 0x28(r4)
/* 80128958  C2 A4 00 30 */	lfs f21, 0x30(r4)
/* 8012895C  C2 E4 00 24 */	lfs f23, 0x24(r4)
/* 80128960  C2 C4 00 2C */	lfs f22, 0x2c(r4)
/* 80128964  C3 E4 00 14 */	lfs f31, 0x14(r4)
/* 80128968  C3 C4 00 18 */	lfs f30, 0x18(r4)
/* 8012896C  C3 44 00 1C */	lfs f26, 0x1c(r4)
/* 80128970  C3 A4 00 20 */	lfs f29, 0x20(r4)
/* 80128974  38 7F 1D 98 */	addi r3, r31, 0x1d98
/* 80128978  C3 23 00 6C */	lfs f25, 0x6c(r3)
/* 8012897C  C2 84 00 34 */	lfs f20, 0x34(r4)
lbl_80128980:
/* 80128980  FC 1B C0 40 */	fcmpo cr0, f27, f24
/* 80128984  41 80 00 3C */	blt lbl_801289C0
/* 80128988  7F A3 EB 78 */	mr r3, r29
/* 8012898C  4B F8 AB 75 */	bl checkAttentionState__9daAlink_cFv
/* 80128990  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80128994  40 82 00 2C */	bne lbl_801289C0
/* 80128998  7F A3 EB 78 */	mr r3, r29
/* 8012899C  38 80 00 01 */	li r4, 1
/* 801289A0  38 A0 00 01 */	li r5, 1
/* 801289A4  4B F9 2B 15 */	bl checkHeavyStateOn__9daAlink_cFii
/* 801289A8  2C 03 00 00 */	cmpwi r3, 0
/* 801289AC  40 82 00 14 */	bne lbl_801289C0
/* 801289B0  7F A3 EB 78 */	mr r3, r29
/* 801289B4  4B F8 98 39 */	bl checkSlope__9daAlink_cCFv
/* 801289B8  2C 03 00 00 */	cmpwi r3, 0
/* 801289BC  41 82 02 B4 */	beq lbl_80128C70
lbl_801289C0:
/* 801289C0  38 00 00 00 */	li r0, 0
/* 801289C4  98 1D 2F C1 */	stb r0, 0x2fc1(r29)
/* 801289C8  FC 1B C0 40 */	fcmpo cr0, f27, f24
/* 801289CC  41 80 00 2C */	blt lbl_801289F8
/* 801289D0  7F A3 EB 78 */	mr r3, r29
/* 801289D4  4B F8 AB 2D */	bl checkAttentionState__9daAlink_cFv
/* 801289D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801289DC  40 82 00 1C */	bne lbl_801289F8
/* 801289E0  7F A3 EB 78 */	mr r3, r29
/* 801289E4  38 80 00 01 */	li r4, 1
/* 801289E8  38 A0 00 01 */	li r5, 1
/* 801289EC  4B F9 2A CD */	bl checkHeavyStateOn__9daAlink_cFii
/* 801289F0  2C 03 00 00 */	cmpwi r3, 0
/* 801289F4  41 82 00 24 */	beq lbl_80128A18
lbl_801289F8:
/* 801289F8  A8 1D 30 D0 */	lha r0, 0x30d0(r29)
/* 801289FC  2C 00 00 00 */	cmpwi r0, 0
/* 80128A00  41 82 00 18 */	beq lbl_80128A18
/* 80128A04  38 00 00 00 */	li r0, 0
/* 80128A08  B0 1D 30 D0 */	sth r0, 0x30d0(r29)
/* 80128A0C  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 80128A10  54 00 02 90 */	rlwinm r0, r0, 0, 0xa, 8
/* 80128A14  90 1D 05 74 */	stw r0, 0x574(r29)
lbl_80128A18:
/* 80128A18  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 80128A1C  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 80128A20  41 82 00 14 */	beq lbl_80128A34
/* 80128A24  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 80128A28  54 00 02 4E */	rlwinm r0, r0, 0, 9, 7
/* 80128A2C  90 1D 05 74 */	stw r0, 0x574(r29)
/* 80128A30  FF 80 A8 90 */	fmr f28, f21
lbl_80128A34:
/* 80128A34  3B 60 00 01 */	li r27, 1
/* 80128A38  3B 40 00 00 */	li r26, 0
/* 80128A3C  7F A3 EB 78 */	mr r3, r29
/* 80128A40  38 80 00 01 */	li r4, 1
/* 80128A44  38 A0 00 01 */	li r5, 1
/* 80128A48  4B F9 2A 71 */	bl checkHeavyStateOn__9daAlink_cFii
/* 80128A4C  2C 03 00 00 */	cmpwi r3, 0
/* 80128A50  41 82 00 18 */	beq lbl_80128A68
/* 80128A54  3B C0 00 45 */	li r30, 0x45
/* 80128A58  3B 80 00 45 */	li r28, 0x45
/* 80128A5C  C3 C2 94 DC */	lfs f30, lit_19240(r2)
/* 80128A60  FF 40 F0 90 */	fmr f26, f30
/* 80128A64  48 00 00 0C */	b lbl_80128A70
lbl_80128A68:
/* 80128A68  3B 80 00 02 */	li r28, 2
/* 80128A6C  3B C0 00 01 */	li r30, 1
lbl_80128A70:
/* 80128A70  FC 1B B8 40 */	fcmpo cr0, f27, f23
/* 80128A74  40 80 01 64 */	bge lbl_80128BD8
/* 80128A78  80 1D 31 A0 */	lwz r0, 0x31a0(r29)
/* 80128A7C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80128A80  41 82 01 0C */	beq lbl_80128B8C
/* 80128A84  3B 60 00 02 */	li r27, 2
/* 80128A88  A8 7D 2F E6 */	lha r3, 0x2fe6(r29)
/* 80128A8C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80128A90  7C 03 00 50 */	subf r0, r3, r0
/* 80128A94  7C 03 07 34 */	extsh r3, r0
/* 80128A98  7C 7C 1B 78 */	mr r28, r3
/* 80128A9C  48 23 C6 35 */	bl abs
/* 80128AA0  2C 03 00 00 */	cmpwi r3, 0
/* 80128AA4  40 81 00 84 */	ble lbl_80128B28
/* 80128AA8  7F A3 EB 78 */	mr r3, r29
/* 80128AAC  4B F8 AA 55 */	bl checkAttentionState__9daAlink_cFv
/* 80128AB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80128AB4  40 82 00 74 */	bne lbl_80128B28
/* 80128AB8  7F 83 E3 78 */	mr r3, r28
/* 80128ABC  48 23 C6 15 */	bl abs
/* 80128AC0  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 80128AC4  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80128AC8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80128ACC  3C 00 43 30 */	lis r0, 0x4330
/* 80128AD0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80128AD4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80128AD8  EC 20 08 28 */	fsubs f1, f0, f1
/* 80128ADC  C0 02 93 E4 */	lfs f0, lit_12328(r2)
/* 80128AE0  EC 20 00 72 */	fmuls f1, f0, f1
/* 80128AE4  C0 02 97 00 */	lfs f0, lit_41718(r2)
/* 80128AE8  EC 20 08 2A */	fadds f1, f0, f1
/* 80128AEC  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80128AF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80128AF4  40 81 00 08 */	ble lbl_80128AFC
/* 80128AF8  FC 20 00 90 */	fmr f1, f0
lbl_80128AFC:
/* 80128AFC  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80128B00  EC 20 08 28 */	fsubs f1, f0, f1
/* 80128B04  7F A3 EB 78 */	mr r3, r29
/* 80128B08  FC 40 F0 90 */	fmr f2, f30
/* 80128B0C  FC 60 F8 90 */	fmr f3, f31
/* 80128B10  7F C4 F3 78 */	mr r4, r30
/* 80128B14  38 A0 00 00 */	li r5, 0
/* 80128B18  38 C0 00 02 */	li r6, 2
/* 80128B1C  FC 80 E0 90 */	fmr f4, f28
/* 80128B20  48 00 09 6D */	bl setDoubleAnimeWolf__9daAlink_cFfffQ29daAlink_c12daAlink_WANMQ29daAlink_c12daAlink_WANMif
/* 80128B24  48 00 03 70 */	b lbl_80128E94
lbl_80128B28:
/* 80128B28  7F A3 EB 78 */	mr r3, r29
/* 80128B2C  4B F8 A9 D5 */	bl checkAttentionState__9daAlink_cFv
/* 80128B30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80128B34  41 82 00 14 */	beq lbl_80128B48
/* 80128B38  3B 40 00 1C */	li r26, 0x1c
/* 80128B3C  38 7F 17 D0 */	addi r3, r31, 0x17d0
/* 80128B40  C3 E3 00 B8 */	lfs f31, 0xb8(r3)
/* 80128B44  48 00 00 48 */	b lbl_80128B8C
lbl_80128B48:
/* 80128B48  C0 3D 35 C0 */	lfs f1, 0x35c0(r29)
/* 80128B4C  C0 1D 35 B8 */	lfs f0, 0x35b8(r29)
/* 80128B50  D0 01 00 08 */	stfs f0, 8(r1)
/* 80128B54  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80128B58  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80128B5C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80128B60  38 61 00 08 */	addi r3, r1, 8
/* 80128B64  48 21 E5 D5 */	bl PSVECSquareMag
/* 80128B68  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80128B6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80128B70  40 81 00 1C */	ble lbl_80128B8C
/* 80128B74  7F A3 EB 78 */	mr r3, r29
/* 80128B78  4B FE D0 A9 */	bl checkEventRun__9daAlink_cCFv
/* 80128B7C  2C 03 00 00 */	cmpwi r3, 0
/* 80128B80  40 82 00 0C */	bne lbl_80128B8C
/* 80128B84  3B 40 00 71 */	li r26, 0x71
/* 80128B88  C3 E2 92 B8 */	lfs f31, lit_6040(r2)
lbl_80128B8C:
/* 80128B8C  7F A3 EB 78 */	mr r3, r29
/* 80128B90  4B F8 96 5D */	bl checkSlope__9daAlink_cCFv
/* 80128B94  2C 03 00 00 */	cmpwi r3, 0
/* 80128B98  41 82 00 18 */	beq lbl_80128BB0
/* 80128B9C  3B C0 00 1D */	li r30, 0x1d
/* 80128BA0  3B 40 00 00 */	li r26, 0
/* 80128BA4  FF C0 C8 90 */	fmr f30, f25
/* 80128BA8  38 00 00 02 */	li r0, 2
/* 80128BAC  98 1D 2F C1 */	stb r0, 0x2fc1(r29)
lbl_80128BB0:
/* 80128BB0  EC 3B B8 24 */	fdivs f1, f27, f23
/* 80128BB4  7F A3 EB 78 */	mr r3, r29
/* 80128BB8  FC 40 F8 90 */	fmr f2, f31
/* 80128BBC  FC 60 F0 90 */	fmr f3, f30
/* 80128BC0  7F 44 D3 78 */	mr r4, r26
/* 80128BC4  7F C5 F3 78 */	mr r5, r30
/* 80128BC8  7F 66 DB 78 */	mr r6, r27
/* 80128BCC  FC 80 E0 90 */	fmr f4, f28
/* 80128BD0  48 00 08 BD */	bl setDoubleAnimeWolf__9daAlink_cFfffQ29daAlink_c12daAlink_WANMQ29daAlink_c12daAlink_WANMif
/* 80128BD4  48 00 00 88 */	b lbl_80128C5C
lbl_80128BD8:
/* 80128BD8  7F A3 EB 78 */	mr r3, r29
/* 80128BDC  4B F8 96 11 */	bl checkSlope__9daAlink_cCFv
/* 80128BE0  2C 03 00 00 */	cmpwi r3, 0
/* 80128BE4  41 82 00 3C */	beq lbl_80128C20
/* 80128BE8  38 00 00 02 */	li r0, 2
/* 80128BEC  98 1D 2F C1 */	stb r0, 0x2fc1(r29)
/* 80128BF0  7F A3 EB 78 */	mr r3, r29
/* 80128BF4  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 80128BF8  FC 40 C8 90 */	fmr f2, f25
/* 80128BFC  FC 60 C8 90 */	fmr f3, f25
/* 80128C00  38 80 00 1D */	li r4, 0x1d
/* 80128C04  38 A0 00 1D */	li r5, 0x1d
/* 80128C08  38 C0 00 01 */	li r6, 1
/* 80128C0C  FC 80 E0 90 */	fmr f4, f28
/* 80128C10  48 00 08 7D */	bl setDoubleAnimeWolf__9daAlink_cFfffQ29daAlink_c12daAlink_WANMQ29daAlink_c12daAlink_WANMif
/* 80128C14  38 00 00 02 */	li r0, 2
/* 80128C18  98 1D 2F C1 */	stb r0, 0x2fc1(r29)
/* 80128C1C  48 00 00 40 */	b lbl_80128C5C
lbl_80128C20:
/* 80128C20  EC 3B B8 28 */	fsubs f1, f27, f23
/* 80128C24  EC 18 B8 28 */	fsubs f0, f24, f23
/* 80128C28  EC 21 00 24 */	fdivs f1, f1, f0
/* 80128C2C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80128C30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80128C34  40 81 00 08 */	ble lbl_80128C3C
/* 80128C38  FC 20 00 90 */	fmr f1, f0
lbl_80128C3C:
/* 80128C3C  7F A3 EB 78 */	mr r3, r29
/* 80128C40  FC 40 F0 90 */	fmr f2, f30
/* 80128C44  FC 60 D0 90 */	fmr f3, f26
/* 80128C48  7F C4 F3 78 */	mr r4, r30
/* 80128C4C  7F 85 E3 78 */	mr r5, r28
/* 80128C50  38 C0 00 01 */	li r6, 1
/* 80128C54  FC 80 E0 90 */	fmr f4, f28
/* 80128C58  48 00 08 35 */	bl setDoubleAnimeWolf__9daAlink_cFfffQ29daAlink_c12daAlink_WANMQ29daAlink_c12daAlink_WANMif
lbl_80128C5C:
/* 80128C5C  2C 1B 00 01 */	cmpwi r27, 1
/* 80128C60  41 82 02 34 */	beq lbl_80128E94
/* 80128C64  7F A3 EB 78 */	mr r3, r29
/* 80128C68  4B F8 A8 99 */	bl checkAttentionState__9daAlink_cFv
/* 80128C6C  48 00 02 28 */	b lbl_80128E94
lbl_80128C70:
/* 80128C70  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 80128C74  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 80128C78  40 82 00 14 */	bne lbl_80128C8C
/* 80128C7C  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 80128C80  64 00 00 80 */	oris r0, r0, 0x80
/* 80128C84  90 1D 05 74 */	stw r0, 0x574(r29)
/* 80128C88  FF 80 A8 90 */	fmr f28, f21
lbl_80128C8C:
/* 80128C8C  38 00 00 01 */	li r0, 1
/* 80128C90  98 1D 2F C1 */	stb r0, 0x2fc1(r29)
/* 80128C94  FC 1B B0 40 */	fcmpo cr0, f27, f22
/* 80128C98  40 80 00 44 */	bge lbl_80128CDC
/* 80128C9C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80128CA0  EC 20 A0 28 */	fsubs f1, f0, f20
/* 80128CA4  EC 1B C0 28 */	fsubs f0, f27, f24
/* 80128CA8  EC 21 00 32 */	fmuls f1, f1, f0
/* 80128CAC  EC 16 C0 28 */	fsubs f0, f22, f24
/* 80128CB0  EC 01 00 24 */	fdivs f0, f1, f0
/* 80128CB4  EC 34 00 2A */	fadds f1, f20, f0
/* 80128CB8  7F A3 EB 78 */	mr r3, r29
/* 80128CBC  FC 40 F8 90 */	fmr f2, f31
/* 80128CC0  FC 60 E8 90 */	fmr f3, f29
/* 80128CC4  38 80 00 00 */	li r4, 0
/* 80128CC8  38 A0 00 03 */	li r5, 3
/* 80128CCC  38 C0 00 01 */	li r6, 1
/* 80128CD0  FC 80 E0 90 */	fmr f4, f28
/* 80128CD4  48 00 07 B9 */	bl setDoubleAnimeWolf__9daAlink_cFfffQ29daAlink_c12daAlink_WANMQ29daAlink_c12daAlink_WANMif
/* 80128CD8  48 00 01 8C */	b lbl_80128E64
lbl_80128CDC:
/* 80128CDC  80 1D 05 74 */	lwz r0, 0x574(r29)
/* 80128CE0  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 80128CE4  40 82 00 2C */	bne lbl_80128D10
/* 80128CE8  7F A3 EB 78 */	mr r3, r29
/* 80128CEC  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 80128CF0  FC 40 E8 90 */	fmr f2, f29
/* 80128CF4  FC 60 E8 90 */	fmr f3, f29
/* 80128CF8  38 80 00 03 */	li r4, 3
/* 80128CFC  38 A0 00 03 */	li r5, 3
/* 80128D00  38 C0 00 01 */	li r6, 1
/* 80128D04  FC 80 E0 90 */	fmr f4, f28
/* 80128D08  48 00 07 85 */	bl setDoubleAnimeWolf__9daAlink_cFfffQ29daAlink_c12daAlink_WANMQ29daAlink_c12daAlink_WANMif
/* 80128D0C  48 00 00 98 */	b lbl_80128DA4
lbl_80128D10:
/* 80128D10  EC 3B B0 28 */	fsubs f1, f27, f22
/* 80128D14  38 7F 17 D0 */	addi r3, r31, 0x17d0
/* 80128D18  C0 03 00 90 */	lfs f0, 0x90(r3)
/* 80128D1C  EC 00 B0 28 */	fsubs f0, f0, f22
/* 80128D20  EF C1 00 24 */	fdivs f30, f1, f0
/* 80128D24  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80128D28  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80128D2C  40 81 00 08 */	ble lbl_80128D34
/* 80128D30  FF C0 00 90 */	fmr f30, f0
lbl_80128D34:
/* 80128D34  28 00 00 00 */	cmplwi r0, 0
/* 80128D38  41 82 00 44 */	beq lbl_80128D7C
/* 80128D3C  7F A3 EB 78 */	mr r3, r29
/* 80128D40  4B FF F1 E1 */	bl checkWolfSlowDash__9daAlink_cFv
/* 80128D44  2C 03 00 00 */	cmpwi r3, 0
/* 80128D48  41 82 00 10 */	beq lbl_80128D58
/* 80128D4C  38 7F 17 D0 */	addi r3, r31, 0x17d0
/* 80128D50  C0 63 00 E8 */	lfs f3, 0xe8(r3)
/* 80128D54  48 00 00 30 */	b lbl_80128D84
lbl_80128D58:
/* 80128D58  88 1D 2F C7 */	lbz r0, 0x2fc7(r29)
/* 80128D5C  28 00 00 02 */	cmplwi r0, 2
/* 80128D60  40 82 00 10 */	bne lbl_80128D70
/* 80128D64  38 7F 17 D0 */	addi r3, r31, 0x17d0
/* 80128D68  C0 63 00 F8 */	lfs f3, 0xf8(r3)
/* 80128D6C  48 00 00 18 */	b lbl_80128D84
lbl_80128D70:
/* 80128D70  38 7F 17 D0 */	addi r3, r31, 0x17d0
/* 80128D74  C0 63 00 CC */	lfs f3, 0xcc(r3)
/* 80128D78  48 00 00 0C */	b lbl_80128D84
lbl_80128D7C:
/* 80128D7C  38 7F 17 D0 */	addi r3, r31, 0x17d0
/* 80128D80  C0 63 00 80 */	lfs f3, 0x80(r3)
lbl_80128D84:
/* 80128D84  7F A3 EB 78 */	mr r3, r29
/* 80128D88  FC 20 F0 90 */	fmr f1, f30
/* 80128D8C  FC 40 E8 90 */	fmr f2, f29
/* 80128D90  38 80 00 03 */	li r4, 3
/* 80128D94  38 A0 00 27 */	li r5, 0x27
/* 80128D98  38 C0 00 01 */	li r6, 1
/* 80128D9C  FC 80 E0 90 */	fmr f4, f28
/* 80128DA0  48 00 06 ED */	bl setDoubleAnimeWolf__9daAlink_cFfffQ29daAlink_c12daAlink_WANMQ29daAlink_c12daAlink_WANMif
lbl_80128DA4:
/* 80128DA4  7F C3 F3 78 */	mr r3, r30
/* 80128DA8  38 9F 25 04 */	addi r4, r31, 0x2504
/* 80128DAC  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 80128DB0  48 1F F6 7D */	bl checkPass__12J3DFrameCtrlFf
/* 80128DB4  2C 03 00 00 */	cmpwi r3, 0
/* 80128DB8  41 82 00 10 */	beq lbl_80128DC8
/* 80128DBC  38 00 00 08 */	li r0, 8
/* 80128DC0  98 1D 2F 9D */	stb r0, 0x2f9d(r29)
/* 80128DC4  48 00 00 6C */	b lbl_80128E30
lbl_80128DC8:
/* 80128DC8  7F C3 F3 78 */	mr r3, r30
/* 80128DCC  38 9F 25 04 */	addi r4, r31, 0x2504
/* 80128DD0  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 80128DD4  48 1F F6 59 */	bl checkPass__12J3DFrameCtrlFf
/* 80128DD8  2C 03 00 00 */	cmpwi r3, 0
/* 80128DDC  41 82 00 10 */	beq lbl_80128DEC
/* 80128DE0  38 00 00 10 */	li r0, 0x10
/* 80128DE4  98 1D 2F 9D */	stb r0, 0x2f9d(r29)
/* 80128DE8  48 00 00 48 */	b lbl_80128E30
lbl_80128DEC:
/* 80128DEC  7F C3 F3 78 */	mr r3, r30
/* 80128DF0  38 9F 25 04 */	addi r4, r31, 0x2504
/* 80128DF4  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 80128DF8  48 1F F6 35 */	bl checkPass__12J3DFrameCtrlFf
/* 80128DFC  2C 03 00 00 */	cmpwi r3, 0
/* 80128E00  41 82 00 10 */	beq lbl_80128E10
/* 80128E04  38 00 00 20 */	li r0, 0x20
/* 80128E08  98 1D 2F 9D */	stb r0, 0x2f9d(r29)
/* 80128E0C  48 00 00 24 */	b lbl_80128E30
lbl_80128E10:
/* 80128E10  7F C3 F3 78 */	mr r3, r30
/* 80128E14  38 9F 25 04 */	addi r4, r31, 0x2504
/* 80128E18  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80128E1C  48 1F F6 11 */	bl checkPass__12J3DFrameCtrlFf
/* 80128E20  2C 03 00 00 */	cmpwi r3, 0
/* 80128E24  41 82 00 0C */	beq lbl_80128E30
/* 80128E28  38 00 00 40 */	li r0, 0x40
/* 80128E2C  98 1D 2F 9D */	stb r0, 0x2f9d(r29)
lbl_80128E30:
/* 80128E30  7F A3 EB 78 */	mr r3, r29
/* 80128E34  4B F7 EB 1D */	bl checkWindSpeedOnAngle__9daAlink_cCFv
/* 80128E38  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80128E3C  41 82 00 28 */	beq lbl_80128E64
/* 80128E40  80 1D 05 88 */	lwz r0, 0x588(r29)
/* 80128E44  60 00 20 00 */	ori r0, r0, 0x2000
/* 80128E48  90 1D 05 88 */	stw r0, 0x588(r29)
/* 80128E4C  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 80128E50  28 00 FF FF */	cmplwi r0, 0xffff
/* 80128E54  40 82 00 10 */	bne lbl_80128E64
/* 80128E58  7F A3 EB 78 */	mr r3, r29
/* 80128E5C  38 80 02 B7 */	li r4, 0x2b7
/* 80128E60  4B F8 44 E1 */	bl setUpperAnimeBase__9daAlink_cFUs
lbl_80128E64:
/* 80128E64  7F C3 F3 78 */	mr r3, r30
/* 80128E68  C0 22 94 B4 */	lfs f1, lit_17382(r2)
/* 80128E6C  48 1F F5 C1 */	bl checkPass__12J3DFrameCtrlFf
/* 80128E70  2C 03 00 00 */	cmpwi r3, 0
/* 80128E74  41 82 00 20 */	beq lbl_80128E94
/* 80128E78  7F A3 EB 78 */	mr r3, r29
/* 80128E7C  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010032@ha */
/* 80128E80  38 84 00 32 */	addi r4, r4, 0x0032 /* 0x00010032@l */
/* 80128E84  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80128E88  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 80128E8C  7D 89 03 A6 */	mtctr r12
/* 80128E90  4E 80 04 21 */	bctrl 
lbl_80128E94:
/* 80128E94  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, 0 /* qr0 */
/* 80128E98  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 80128E9C  E3 C1 00 E8 */	psq_l f30, 232(r1), 0, 0 /* qr0 */
/* 80128EA0  CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 80128EA4  E3 A1 00 D8 */	psq_l f29, 216(r1), 0, 0 /* qr0 */
/* 80128EA8  CB A1 00 D0 */	lfd f29, 0xd0(r1)
/* 80128EAC  E3 81 00 C8 */	psq_l f28, 200(r1), 0, 0 /* qr0 */
/* 80128EB0  CB 81 00 C0 */	lfd f28, 0xc0(r1)
/* 80128EB4  E3 61 00 B8 */	psq_l f27, 184(r1), 0, 0 /* qr0 */
/* 80128EB8  CB 61 00 B0 */	lfd f27, 0xb0(r1)
/* 80128EBC  E3 41 00 A8 */	psq_l f26, 168(r1), 0, 0 /* qr0 */
/* 80128EC0  CB 41 00 A0 */	lfd f26, 0xa0(r1)
/* 80128EC4  E3 21 00 98 */	psq_l f25, 152(r1), 0, 0 /* qr0 */
/* 80128EC8  CB 21 00 90 */	lfd f25, 0x90(r1)
/* 80128ECC  E3 01 00 88 */	psq_l f24, 136(r1), 0, 0 /* qr0 */
/* 80128ED0  CB 01 00 80 */	lfd f24, 0x80(r1)
/* 80128ED4  E2 E1 00 78 */	psq_l f23, 120(r1), 0, 0 /* qr0 */
/* 80128ED8  CA E1 00 70 */	lfd f23, 0x70(r1)
/* 80128EDC  E2 C1 00 68 */	psq_l f22, 104(r1), 0, 0 /* qr0 */
/* 80128EE0  CA C1 00 60 */	lfd f22, 0x60(r1)
/* 80128EE4  E2 A1 00 58 */	psq_l f21, 88(r1), 0, 0 /* qr0 */
/* 80128EE8  CA A1 00 50 */	lfd f21, 0x50(r1)
/* 80128EEC  E2 81 00 48 */	psq_l f20, 72(r1), 0, 0 /* qr0 */
/* 80128EF0  CA 81 00 40 */	lfd f20, 0x40(r1)
/* 80128EF4  39 61 00 40 */	addi r11, r1, 0x40
/* 80128EF8  48 23 93 25 */	bl _restgpr_26
/* 80128EFC  80 01 01 04 */	lwz r0, 0x104(r1)
/* 80128F00  7C 08 03 A6 */	mtlr r0
/* 80128F04  38 21 01 00 */	addi r1, r1, 0x100
/* 80128F08  4E 80 00 20 */	blr 
