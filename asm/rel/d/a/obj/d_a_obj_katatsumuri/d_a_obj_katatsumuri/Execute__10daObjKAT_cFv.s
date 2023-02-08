lbl_80C3AEC8:
/* 80C3AEC8  94 21 FE 90 */	stwu r1, -0x170(r1)
/* 80C3AECC  7C 08 02 A6 */	mflr r0
/* 80C3AED0  90 01 01 74 */	stw r0, 0x174(r1)
/* 80C3AED4  DB E1 01 60 */	stfd f31, 0x160(r1)
/* 80C3AED8  F3 E1 01 68 */	psq_st f31, 360(r1), 0, 0 /* qr0 */
/* 80C3AEDC  DB C1 01 50 */	stfd f30, 0x150(r1)
/* 80C3AEE0  F3 C1 01 58 */	psq_st f30, 344(r1), 0, 0 /* qr0 */
/* 80C3AEE4  39 61 01 50 */	addi r11, r1, 0x150
/* 80C3AEE8  4B 72 72 E9 */	bl _savegpr_26
/* 80C3AEEC  7C 7A 1B 78 */	mr r26, r3
/* 80C3AEF0  3C 80 80 C4 */	lis r4, lit_3775@ha /* 0x80C3C674@ha */
/* 80C3AEF4  3B C4 C6 74 */	addi r30, r4, lit_3775@l /* 0x80C3C674@l */
/* 80C3AEF8  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 80C3AEFC  2C 00 00 00 */	cmpwi r0, 0
/* 80C3AF00  40 81 00 70 */	ble lbl_80C3AF70
/* 80C3AF04  C0 5E 00 BC */	lfs f2, 0xbc(r30)
/* 80C3AF08  80 1A 08 04 */	lwz r0, 0x804(r26)
/* 80C3AF0C  C8 3E 00 A8 */	lfd f1, 0xa8(r30)
/* 80C3AF10  90 01 01 24 */	stw r0, 0x124(r1)
/* 80C3AF14  3C 00 43 30 */	lis r0, 0x4330
/* 80C3AF18  90 01 01 20 */	stw r0, 0x120(r1)
/* 80C3AF1C  C8 01 01 20 */	lfd f0, 0x120(r1)
/* 80C3AF20  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C3AF24  EC 02 00 2A */	fadds f0, f2, f0
/* 80C3AF28  D0 1A 08 00 */	stfs f0, 0x800(r26)
/* 80C3AF2C  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A3@ha */
/* 80C3AF30  38 03 00 A3 */	addi r0, r3, 0x00A3 /* 0x000600A3@l */
/* 80C3AF34  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80C3AF38  38 7A 09 94 */	addi r3, r26, 0x994
/* 80C3AF3C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80C3AF40  38 A0 00 00 */	li r5, 0
/* 80C3AF44  38 C0 FF FF */	li r6, -1
/* 80C3AF48  81 9A 09 94 */	lwz r12, 0x994(r26)
/* 80C3AF4C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80C3AF50  7D 89 03 A6 */	mtctr r12
/* 80C3AF54  4E 80 04 21 */	bctrl 
/* 80C3AF58  7F 43 D3 78 */	mr r3, r26
/* 80C3AF5C  4B 52 31 1D */	bl Insect_GetDemoMain__9dInsect_cFv
/* 80C3AF60  7F 43 D3 78 */	mr r3, r26
/* 80C3AF64  4B FF FA 2D */	bl ParticleSet__10daObjKAT_cFv
/* 80C3AF68  38 60 00 01 */	li r3, 1
/* 80C3AF6C  48 00 07 C0 */	b lbl_80C3B72C
lbl_80C3AF70:
/* 80C3AF70  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80C3AF74  D0 1A 05 50 */	stfs f0, 0x550(r26)
/* 80C3AF78  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80C3AF7C  D0 1A 05 54 */	stfs f0, 0x554(r26)
/* 80C3AF80  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80C3AF84  D0 1A 05 58 */	stfs f0, 0x558(r26)
/* 80C3AF88  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80C3AF8C  D0 1A 05 38 */	stfs f0, 0x538(r26)
/* 80C3AF90  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80C3AF94  D0 1A 05 3C */	stfs f0, 0x53c(r26)
/* 80C3AF98  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80C3AF9C  D0 1A 05 40 */	stfs f0, 0x540(r26)
/* 80C3AFA0  C0 3A 05 3C */	lfs f1, 0x53c(r26)
/* 80C3AFA4  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80C3AFA8  EC 01 00 2A */	fadds f0, f1, f0
/* 80C3AFAC  D0 1A 05 3C */	stfs f0, 0x53c(r26)
/* 80C3AFB0  88 1A 08 08 */	lbz r0, 0x808(r26)
/* 80C3AFB4  2C 00 00 02 */	cmpwi r0, 2
/* 80C3AFB8  41 82 06 F0 */	beq lbl_80C3B6A8
/* 80C3AFBC  40 80 00 14 */	bge lbl_80C3AFD0
/* 80C3AFC0  2C 00 00 00 */	cmpwi r0, 0
/* 80C3AFC4  41 82 00 18 */	beq lbl_80C3AFDC
/* 80C3AFC8  40 80 01 D4 */	bge lbl_80C3B19C
/* 80C3AFCC  48 00 06 DC */	b lbl_80C3B6A8
lbl_80C3AFD0:
/* 80C3AFD0  2C 00 00 04 */	cmpwi r0, 4
/* 80C3AFD4  40 80 06 D4 */	bge lbl_80C3B6A8
/* 80C3AFD8  48 00 00 F8 */	b lbl_80C3B0D0
lbl_80C3AFDC:
/* 80C3AFDC  80 1A 04 9C */	lwz r0, 0x49c(r26)
/* 80C3AFE0  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80C3AFE4  40 82 00 0C */	bne lbl_80C3AFF0
/* 80C3AFE8  4B FF F6 41 */	bl Action__10daObjKAT_cFv
/* 80C3AFEC  48 00 00 1C */	b lbl_80C3B008
lbl_80C3AFF0:
/* 80C3AFF0  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80C3AFF4  D0 1A 04 A8 */	stfs f0, 0x4a8(r26)
/* 80C3AFF8  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80C3AFFC  D0 1A 04 AC */	stfs f0, 0x4ac(r26)
/* 80C3B000  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80C3B004  D0 1A 04 B0 */	stfs f0, 0x4b0(r26)
lbl_80C3B008:
/* 80C3B008  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C3B00C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C3B010  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80C3B014  38 00 00 FF */	li r0, 0xff
/* 80C3B018  90 01 00 08 */	stw r0, 8(r1)
/* 80C3B01C  38 80 00 00 */	li r4, 0
/* 80C3B020  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C3B024  38 00 FF FF */	li r0, -1
/* 80C3B028  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C3B02C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C3B030  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C3B034  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C3B038  80 9A 05 74 */	lwz r4, 0x574(r26)
/* 80C3B03C  38 A0 00 00 */	li r5, 0
/* 80C3B040  38 C0 0A 1C */	li r6, 0xa1c
/* 80C3B044  38 FA 04 D0 */	addi r7, r26, 0x4d0
/* 80C3B048  39 1A 01 0C */	addi r8, r26, 0x10c
/* 80C3B04C  39 3A 04 E4 */	addi r9, r26, 0x4e4
/* 80C3B050  39 40 00 00 */	li r10, 0
/* 80C3B054  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80C3B058  4B 41 24 75 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C3B05C  90 7A 05 74 */	stw r3, 0x574(r26)
/* 80C3B060  7F 43 D3 78 */	mr r3, r26
/* 80C3B064  4B FF E9 9D */	bl SetCcSph__10daObjKAT_cFv
/* 80C3B068  7F 43 D3 78 */	mr r3, r26
/* 80C3B06C  4B FF FD 5D */	bl ObjHit__10daObjKAT_cFv
/* 80C3B070  7F 43 D3 78 */	mr r3, r26
/* 80C3B074  4B FF FA 41 */	bl BoomChk__10daObjKAT_cFv
/* 80C3B078  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80C3B07C  D0 1A 05 38 */	stfs f0, 0x538(r26)
/* 80C3B080  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80C3B084  D0 1A 05 3C */	stfs f0, 0x53c(r26)
/* 80C3B088  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80C3B08C  D0 1A 05 40 */	stfs f0, 0x540(r26)
/* 80C3B090  C0 1A 05 3C */	lfs f0, 0x53c(r26)
/* 80C3B094  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80C3B098  EC 00 08 2A */	fadds f0, f0, f1
/* 80C3B09C  D0 1A 05 3C */	stfs f0, 0x53c(r26)
/* 80C3B0A0  C0 1A 05 38 */	lfs f0, 0x538(r26)
/* 80C3B0A4  D0 1A 05 50 */	stfs f0, 0x550(r26)
/* 80C3B0A8  C0 1A 05 3C */	lfs f0, 0x53c(r26)
/* 80C3B0AC  D0 1A 05 54 */	stfs f0, 0x554(r26)
/* 80C3B0B0  C0 1A 05 40 */	lfs f0, 0x540(r26)
/* 80C3B0B4  D0 1A 05 58 */	stfs f0, 0x558(r26)
/* 80C3B0B8  C0 1A 05 54 */	lfs f0, 0x554(r26)
/* 80C3B0BC  EC 00 08 2A */	fadds f0, f0, f1
/* 80C3B0C0  D0 1A 05 54 */	stfs f0, 0x554(r26)
/* 80C3B0C4  7F 43 D3 78 */	mr r3, r26
/* 80C3B0C8  4B FF F8 C9 */	bl ParticleSet__10daObjKAT_cFv
/* 80C3B0CC  48 00 05 DC */	b lbl_80C3B6A8
lbl_80C3B0D0:
/* 80C3B0D0  4B FF F8 8D */	bl FallAction__10daObjKAT_cFv
/* 80C3B0D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C3B0D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C3B0DC  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80C3B0E0  38 00 00 FF */	li r0, 0xff
/* 80C3B0E4  90 01 00 08 */	stw r0, 8(r1)
/* 80C3B0E8  38 80 00 00 */	li r4, 0
/* 80C3B0EC  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C3B0F0  38 00 FF FF */	li r0, -1
/* 80C3B0F4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C3B0F8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C3B0FC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C3B100  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C3B104  80 9A 05 74 */	lwz r4, 0x574(r26)
/* 80C3B108  38 A0 00 00 */	li r5, 0
/* 80C3B10C  38 C0 0A 1C */	li r6, 0xa1c
/* 80C3B110  38 FA 04 D0 */	addi r7, r26, 0x4d0
/* 80C3B114  39 1A 01 0C */	addi r8, r26, 0x10c
/* 80C3B118  39 3A 04 E4 */	addi r9, r26, 0x4e4
/* 80C3B11C  39 40 00 00 */	li r10, 0
/* 80C3B120  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80C3B124  4B 41 23 A9 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C3B128  90 7A 05 74 */	stw r3, 0x574(r26)
/* 80C3B12C  7F 43 D3 78 */	mr r3, r26
/* 80C3B130  4B FF E8 D1 */	bl SetCcSph__10daObjKAT_cFv
/* 80C3B134  7F 43 D3 78 */	mr r3, r26
/* 80C3B138  4B FF FC 91 */	bl ObjHit__10daObjKAT_cFv
/* 80C3B13C  7F 43 D3 78 */	mr r3, r26
/* 80C3B140  4B FF F9 75 */	bl BoomChk__10daObjKAT_cFv
/* 80C3B144  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80C3B148  D0 1A 05 38 */	stfs f0, 0x538(r26)
/* 80C3B14C  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80C3B150  D0 1A 05 3C */	stfs f0, 0x53c(r26)
/* 80C3B154  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80C3B158  D0 1A 05 40 */	stfs f0, 0x540(r26)
/* 80C3B15C  C0 1A 05 3C */	lfs f0, 0x53c(r26)
/* 80C3B160  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 80C3B164  EC 00 08 2A */	fadds f0, f0, f1
/* 80C3B168  D0 1A 05 3C */	stfs f0, 0x53c(r26)
/* 80C3B16C  C0 1A 05 38 */	lfs f0, 0x538(r26)
/* 80C3B170  D0 1A 05 50 */	stfs f0, 0x550(r26)
/* 80C3B174  C0 1A 05 3C */	lfs f0, 0x53c(r26)
/* 80C3B178  D0 1A 05 54 */	stfs f0, 0x554(r26)
/* 80C3B17C  C0 1A 05 40 */	lfs f0, 0x540(r26)
/* 80C3B180  D0 1A 05 58 */	stfs f0, 0x558(r26)
/* 80C3B184  C0 1A 05 54 */	lfs f0, 0x554(r26)
/* 80C3B188  EC 00 08 2A */	fadds f0, f0, f1
/* 80C3B18C  D0 1A 05 54 */	stfs f0, 0x554(r26)
/* 80C3B190  7F 43 D3 78 */	mr r3, r26
/* 80C3B194  4B FF F7 FD */	bl ParticleSet__10daObjKAT_cFv
/* 80C3B198  48 00 05 10 */	b lbl_80C3B6A8
lbl_80C3B19C:
/* 80C3B19C  A8 7A 07 D4 */	lha r3, 0x7d4(r26)
/* 80C3B1A0  38 03 FF FF */	addi r0, r3, -1
/* 80C3B1A4  B0 1A 07 D4 */	sth r0, 0x7d4(r26)
/* 80C3B1A8  A8 1A 07 D4 */	lha r0, 0x7d4(r26)
/* 80C3B1AC  2C 00 00 00 */	cmpwi r0, 0
/* 80C3B1B0  41 81 00 0C */	bgt lbl_80C3B1BC
/* 80C3B1B4  38 00 00 00 */	li r0, 0
/* 80C3B1B8  B0 1A 07 D4 */	sth r0, 0x7d4(r26)
lbl_80C3B1BC:
/* 80C3B1BC  7F 43 D3 78 */	mr r3, r26
/* 80C3B1C0  4B FF F3 19 */	bl MoveAction__10daObjKAT_cFv
/* 80C3B1C4  88 1A 07 E8 */	lbz r0, 0x7e8(r26)
/* 80C3B1C8  28 00 00 00 */	cmplwi r0, 0
/* 80C3B1CC  40 82 04 DC */	bne lbl_80C3B6A8
/* 80C3B1D0  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80C3B1D4  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 80C3B1D8  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 80C3B1DC  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80C3B1E0  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80C3B1E4  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80C3B1E8  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 80C3B1EC  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80C3B1F0  38 61 00 AC */	addi r3, r1, 0xac
/* 80C3B1F4  4B 43 CA 75 */	bl __ct__11dBgS_LinChkFv
/* 80C3B1F8  38 61 01 04 */	addi r3, r1, 0x104
/* 80C3B1FC  4B 43 DC 6D */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C3B200  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80C3B204  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80C3B208  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 80C3B20C  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80C3B210  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80C3B214  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80C3B218  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80C3B21C  EC 01 00 2A */	fadds f0, f1, f0
/* 80C3B220  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80C3B224  C0 5A 04 D8 */	lfs f2, 0x4d8(r26)
/* 80C3B228  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 80C3B22C  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 80C3B230  EC 21 00 28 */	fsubs f1, f1, f0
/* 80C3B234  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80C3B238  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80C3B23C  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 80C3B240  D0 41 00 74 */	stfs f2, 0x74(r1)
/* 80C3B244  38 61 00 AC */	addi r3, r1, 0xac
/* 80C3B248  38 81 00 60 */	addi r4, r1, 0x60
/* 80C3B24C  38 A1 00 6C */	addi r5, r1, 0x6c
/* 80C3B250  38 C0 00 00 */	li r6, 0
/* 80C3B254  4B 43 CB 11 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C3B258  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C3B25C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C3B260  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 80C3B264  7F 83 E3 78 */	mr r3, r28
/* 80C3B268  38 81 00 AC */	addi r4, r1, 0xac
/* 80C3B26C  4B 43 91 49 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80C3B270  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C3B274  41 82 01 D0 */	beq lbl_80C3B444
/* 80C3B278  3C 60 80 C4 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C3C808@ha */
/* 80C3B27C  38 03 C8 08 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C3C808@l */
/* 80C3B280  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 80C3B284  7F 83 E3 78 */	mr r3, r28
/* 80C3B288  38 81 00 C0 */	addi r4, r1, 0xc0
/* 80C3B28C  38 A1 00 98 */	addi r5, r1, 0x98
/* 80C3B290  4B 43 94 B5 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C3B294  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 80C3B298  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80C3B29C  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 80C3B2A0  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80C3B2A4  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 80C3B2A8  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80C3B2AC  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80C3B2B0  D0 1A 07 C8 */	stfs f0, 0x7c8(r26)
/* 80C3B2B4  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80C3B2B8  D0 1A 07 CC */	stfs f0, 0x7cc(r26)
/* 80C3B2BC  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80C3B2C0  D0 1A 07 D0 */	stfs f0, 0x7d0(r26)
/* 80C3B2C4  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80C3B2C8  D0 1A 04 BC */	stfs f0, 0x4bc(r26)
/* 80C3B2CC  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80C3B2D0  D0 1A 04 C0 */	stfs f0, 0x4c0(r26)
/* 80C3B2D4  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80C3B2D8  D0 1A 04 C4 */	stfs f0, 0x4c4(r26)
/* 80C3B2DC  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80C3B2E0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80C3B2E4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80C3B2E8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80C3B2EC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80C3B2F0  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 80C3B2F4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80C3B2F8  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 80C3B2FC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80C3B300  38 61 00 54 */	addi r3, r1, 0x54
/* 80C3B304  38 81 00 48 */	addi r4, r1, 0x48
/* 80C3B308  4B 70 C0 95 */	bl PSVECSquareDistance
/* 80C3B30C  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80C3B310  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3B314  40 81 00 58 */	ble lbl_80C3B36C
/* 80C3B318  FC 00 08 34 */	frsqrte f0, f1
/* 80C3B31C  C8 9E 00 78 */	lfd f4, 0x78(r30)
/* 80C3B320  FC 44 00 32 */	fmul f2, f4, f0
/* 80C3B324  C8 7E 00 80 */	lfd f3, 0x80(r30)
/* 80C3B328  FC 00 00 32 */	fmul f0, f0, f0
/* 80C3B32C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C3B330  FC 03 00 28 */	fsub f0, f3, f0
/* 80C3B334  FC 02 00 32 */	fmul f0, f2, f0
/* 80C3B338  FC 44 00 32 */	fmul f2, f4, f0
/* 80C3B33C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C3B340  FC 01 00 32 */	fmul f0, f1, f0
/* 80C3B344  FC 03 00 28 */	fsub f0, f3, f0
/* 80C3B348  FC 02 00 32 */	fmul f0, f2, f0
/* 80C3B34C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C3B350  FC 00 00 32 */	fmul f0, f0, f0
/* 80C3B354  FC 01 00 32 */	fmul f0, f1, f0
/* 80C3B358  FC 03 00 28 */	fsub f0, f3, f0
/* 80C3B35C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C3B360  FC 41 00 32 */	fmul f2, f1, f0
/* 80C3B364  FC 40 10 18 */	frsp f2, f2
/* 80C3B368  48 00 00 90 */	b lbl_80C3B3F8
lbl_80C3B36C:
/* 80C3B36C  C8 1E 00 88 */	lfd f0, 0x88(r30)
/* 80C3B370  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3B374  40 80 00 10 */	bge lbl_80C3B384
/* 80C3B378  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C3B37C  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C3B380  48 00 00 78 */	b lbl_80C3B3F8
lbl_80C3B384:
/* 80C3B384  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80C3B388  80 81 00 24 */	lwz r4, 0x24(r1)
/* 80C3B38C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C3B390  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C3B394  7C 03 00 00 */	cmpw r3, r0
/* 80C3B398  41 82 00 14 */	beq lbl_80C3B3AC
/* 80C3B39C  40 80 00 40 */	bge lbl_80C3B3DC
/* 80C3B3A0  2C 03 00 00 */	cmpwi r3, 0
/* 80C3B3A4  41 82 00 20 */	beq lbl_80C3B3C4
/* 80C3B3A8  48 00 00 34 */	b lbl_80C3B3DC
lbl_80C3B3AC:
/* 80C3B3AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C3B3B0  41 82 00 0C */	beq lbl_80C3B3BC
/* 80C3B3B4  38 00 00 01 */	li r0, 1
/* 80C3B3B8  48 00 00 28 */	b lbl_80C3B3E0
lbl_80C3B3BC:
/* 80C3B3BC  38 00 00 02 */	li r0, 2
/* 80C3B3C0  48 00 00 20 */	b lbl_80C3B3E0
lbl_80C3B3C4:
/* 80C3B3C4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C3B3C8  41 82 00 0C */	beq lbl_80C3B3D4
/* 80C3B3CC  38 00 00 05 */	li r0, 5
/* 80C3B3D0  48 00 00 10 */	b lbl_80C3B3E0
lbl_80C3B3D4:
/* 80C3B3D4  38 00 00 03 */	li r0, 3
/* 80C3B3D8  48 00 00 08 */	b lbl_80C3B3E0
lbl_80C3B3DC:
/* 80C3B3DC  38 00 00 04 */	li r0, 4
lbl_80C3B3E0:
/* 80C3B3E0  2C 00 00 01 */	cmpwi r0, 1
/* 80C3B3E4  40 82 00 10 */	bne lbl_80C3B3F4
/* 80C3B3E8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C3B3EC  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C3B3F0  48 00 00 08 */	b lbl_80C3B3F8
lbl_80C3B3F4:
/* 80C3B3F4  FC 40 08 90 */	fmr f2, f1
lbl_80C3B3F8:
/* 80C3B3F8  C0 21 00 98 */	lfs f1, 0x98(r1)
/* 80C3B3FC  4B 62 C2 79 */	bl cM_atan2s__Fff
/* 80C3B400  7C 03 00 D0 */	neg r0, r3
/* 80C3B404  B0 1A 07 EE */	sth r0, 0x7ee(r26)
/* 80C3B408  B0 1A 07 C6 */	sth r0, 0x7c6(r26)
/* 80C3B40C  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 80C3B410  C0 41 00 9C */	lfs f2, 0x9c(r1)
/* 80C3B414  4B 62 C2 61 */	bl cM_atan2s__Fff
/* 80C3B418  B0 7A 07 EA */	sth r3, 0x7ea(r26)
/* 80C3B41C  B0 7A 07 C2 */	sth r3, 0x7c2(r26)
/* 80C3B420  C0 21 00 98 */	lfs f1, 0x98(r1)
/* 80C3B424  C0 41 00 A0 */	lfs f2, 0xa0(r1)
/* 80C3B428  4B 62 C2 4D */	bl cM_atan2s__Fff
/* 80C3B42C  B0 7A 07 F6 */	sth r3, 0x7f6(r26)
/* 80C3B430  38 00 00 01 */	li r0, 1
/* 80C3B434  98 1A 07 E8 */	stb r0, 0x7e8(r26)
/* 80C3B438  3C 60 80 C4 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C3C808@ha */
/* 80C3B43C  38 03 C8 08 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C3C808@l */
/* 80C3B440  90 01 00 A8 */	stw r0, 0xa8(r1)
lbl_80C3B444:
/* 80C3B444  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80C3B448  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80C3B44C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80C3B450  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80C3B454  3B 60 00 00 */	li r27, 0
/* 80C3B458  3B A1 00 C0 */	addi r29, r1, 0xc0
/* 80C3B45C  C3 DE 00 C8 */	lfs f30, 0xc8(r30)
/* 80C3B460  CB FE 00 50 */	lfd f31, 0x50(r30)
/* 80C3B464  3F E0 43 30 */	lis r31, 0x4330
lbl_80C3B468:
/* 80C3B468  38 61 00 6C */	addi r3, r1, 0x6c
/* 80C3B46C  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80C3B470  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 80C3B474  90 01 01 24 */	stw r0, 0x124(r1)
/* 80C3B478  93 E1 01 20 */	stw r31, 0x120(r1)
/* 80C3B47C  C8 01 01 20 */	lfd f0, 0x120(r1)
/* 80C3B480  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80C3B484  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80C3B488  FC 00 00 1E */	fctiwz f0, f0
/* 80C3B48C  D8 01 01 28 */	stfd f0, 0x128(r1)
/* 80C3B490  80 A1 01 2C */	lwz r5, 0x12c(r1)
/* 80C3B494  38 C1 00 78 */	addi r6, r1, 0x78
/* 80C3B498  4B 63 59 29 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80C3B49C  38 61 00 AC */	addi r3, r1, 0xac
/* 80C3B4A0  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80C3B4A4  38 A1 00 6C */	addi r5, r1, 0x6c
/* 80C3B4A8  38 C0 00 00 */	li r6, 0
/* 80C3B4AC  4B 43 C8 B9 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C3B4B0  7F 83 E3 78 */	mr r3, r28
/* 80C3B4B4  38 81 00 AC */	addi r4, r1, 0xac
/* 80C3B4B8  4B 43 8E FD */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80C3B4BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C3B4C0  41 82 01 D0 */	beq lbl_80C3B690
/* 80C3B4C4  3C 60 80 C4 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C3C808@ha */
/* 80C3B4C8  38 03 C8 08 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C3C808@l */
/* 80C3B4CC  90 01 00 94 */	stw r0, 0x94(r1)
/* 80C3B4D0  7F 83 E3 78 */	mr r3, r28
/* 80C3B4D4  7F A4 EB 78 */	mr r4, r29
/* 80C3B4D8  38 A1 00 84 */	addi r5, r1, 0x84
/* 80C3B4DC  4B 43 92 69 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C3B4E0  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 80C3B4E4  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80C3B4E8  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 80C3B4EC  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80C3B4F0  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 80C3B4F4  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80C3B4F8  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80C3B4FC  D0 1A 07 C8 */	stfs f0, 0x7c8(r26)
/* 80C3B500  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80C3B504  D0 1A 07 CC */	stfs f0, 0x7cc(r26)
/* 80C3B508  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80C3B50C  D0 1A 07 D0 */	stfs f0, 0x7d0(r26)
/* 80C3B510  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80C3B514  D0 1A 04 BC */	stfs f0, 0x4bc(r26)
/* 80C3B518  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80C3B51C  D0 1A 04 C0 */	stfs f0, 0x4c0(r26)
/* 80C3B520  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80C3B524  D0 1A 04 C4 */	stfs f0, 0x4c4(r26)
/* 80C3B528  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80C3B52C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C3B530  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80C3B534  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80C3B538  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C3B53C  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80C3B540  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C3B544  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80C3B548  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C3B54C  38 61 00 3C */	addi r3, r1, 0x3c
/* 80C3B550  38 81 00 30 */	addi r4, r1, 0x30
/* 80C3B554  4B 70 BE 49 */	bl PSVECSquareDistance
/* 80C3B558  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80C3B55C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3B560  40 81 00 58 */	ble lbl_80C3B5B8
/* 80C3B564  FC 00 08 34 */	frsqrte f0, f1
/* 80C3B568  C8 9E 00 78 */	lfd f4, 0x78(r30)
/* 80C3B56C  FC 44 00 32 */	fmul f2, f4, f0
/* 80C3B570  C8 7E 00 80 */	lfd f3, 0x80(r30)
/* 80C3B574  FC 00 00 32 */	fmul f0, f0, f0
/* 80C3B578  FC 01 00 32 */	fmul f0, f1, f0
/* 80C3B57C  FC 03 00 28 */	fsub f0, f3, f0
/* 80C3B580  FC 02 00 32 */	fmul f0, f2, f0
/* 80C3B584  FC 44 00 32 */	fmul f2, f4, f0
/* 80C3B588  FC 00 00 32 */	fmul f0, f0, f0
/* 80C3B58C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C3B590  FC 03 00 28 */	fsub f0, f3, f0
/* 80C3B594  FC 02 00 32 */	fmul f0, f2, f0
/* 80C3B598  FC 44 00 32 */	fmul f2, f4, f0
/* 80C3B59C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C3B5A0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C3B5A4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C3B5A8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C3B5AC  FC 41 00 32 */	fmul f2, f1, f0
/* 80C3B5B0  FC 40 10 18 */	frsp f2, f2
/* 80C3B5B4  48 00 00 90 */	b lbl_80C3B644
lbl_80C3B5B8:
/* 80C3B5B8  C8 1E 00 88 */	lfd f0, 0x88(r30)
/* 80C3B5BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3B5C0  40 80 00 10 */	bge lbl_80C3B5D0
/* 80C3B5C4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C3B5C8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C3B5CC  48 00 00 78 */	b lbl_80C3B644
lbl_80C3B5D0:
/* 80C3B5D0  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80C3B5D4  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80C3B5D8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C3B5DC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C3B5E0  7C 03 00 00 */	cmpw r3, r0
/* 80C3B5E4  41 82 00 14 */	beq lbl_80C3B5F8
/* 80C3B5E8  40 80 00 40 */	bge lbl_80C3B628
/* 80C3B5EC  2C 03 00 00 */	cmpwi r3, 0
/* 80C3B5F0  41 82 00 20 */	beq lbl_80C3B610
/* 80C3B5F4  48 00 00 34 */	b lbl_80C3B628
lbl_80C3B5F8:
/* 80C3B5F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C3B5FC  41 82 00 0C */	beq lbl_80C3B608
/* 80C3B600  38 00 00 01 */	li r0, 1
/* 80C3B604  48 00 00 28 */	b lbl_80C3B62C
lbl_80C3B608:
/* 80C3B608  38 00 00 02 */	li r0, 2
/* 80C3B60C  48 00 00 20 */	b lbl_80C3B62C
lbl_80C3B610:
/* 80C3B610  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C3B614  41 82 00 0C */	beq lbl_80C3B620
/* 80C3B618  38 00 00 05 */	li r0, 5
/* 80C3B61C  48 00 00 10 */	b lbl_80C3B62C
lbl_80C3B620:
/* 80C3B620  38 00 00 03 */	li r0, 3
/* 80C3B624  48 00 00 08 */	b lbl_80C3B62C
lbl_80C3B628:
/* 80C3B628  38 00 00 04 */	li r0, 4
lbl_80C3B62C:
/* 80C3B62C  2C 00 00 01 */	cmpwi r0, 1
/* 80C3B630  40 82 00 10 */	bne lbl_80C3B640
/* 80C3B634  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C3B638  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C3B63C  48 00 00 08 */	b lbl_80C3B644
lbl_80C3B640:
/* 80C3B640  FC 40 08 90 */	fmr f2, f1
lbl_80C3B644:
/* 80C3B644  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 80C3B648  4B 62 C0 2D */	bl cM_atan2s__Fff
/* 80C3B64C  7C 03 00 D0 */	neg r0, r3
/* 80C3B650  B0 1A 07 EE */	sth r0, 0x7ee(r26)
/* 80C3B654  B0 1A 07 C6 */	sth r0, 0x7c6(r26)
/* 80C3B658  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 80C3B65C  C0 41 00 88 */	lfs f2, 0x88(r1)
/* 80C3B660  4B 62 C0 15 */	bl cM_atan2s__Fff
/* 80C3B664  B0 7A 07 EA */	sth r3, 0x7ea(r26)
/* 80C3B668  B0 7A 07 C2 */	sth r3, 0x7c2(r26)
/* 80C3B66C  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 80C3B670  C0 41 00 8C */	lfs f2, 0x8c(r1)
/* 80C3B674  4B 62 C0 01 */	bl cM_atan2s__Fff
/* 80C3B678  B0 7A 07 F6 */	sth r3, 0x7f6(r26)
/* 80C3B67C  38 00 00 01 */	li r0, 1
/* 80C3B680  98 1A 07 E8 */	stb r0, 0x7e8(r26)
/* 80C3B684  3C 60 80 C4 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C3C808@ha */
/* 80C3B688  38 03 C8 08 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C3C808@l */
/* 80C3B68C  90 01 00 94 */	stw r0, 0x94(r1)
lbl_80C3B690:
/* 80C3B690  3B 7B 00 01 */	addi r27, r27, 1
/* 80C3B694  2C 1B 00 04 */	cmpwi r27, 4
/* 80C3B698  41 80 FD D0 */	blt lbl_80C3B468
/* 80C3B69C  38 61 00 AC */	addi r3, r1, 0xac
/* 80C3B6A0  38 80 FF FF */	li r4, -1
/* 80C3B6A4  4B 43 C6 39 */	bl __dt__11dBgS_LinChkFv
lbl_80C3B6A8:
/* 80C3B6A8  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A3@ha */
/* 80C3B6AC  38 03 00 A3 */	addi r0, r3, 0x00A3 /* 0x000600A3@l */
/* 80C3B6B0  90 01 00 28 */	stw r0, 0x28(r1)
/* 80C3B6B4  38 7A 09 94 */	addi r3, r26, 0x994
/* 80C3B6B8  38 81 00 28 */	addi r4, r1, 0x28
/* 80C3B6BC  38 A0 00 00 */	li r5, 0
/* 80C3B6C0  38 C0 FF FF */	li r6, -1
/* 80C3B6C4  81 9A 09 94 */	lwz r12, 0x994(r26)
/* 80C3B6C8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80C3B6CC  7D 89 03 A6 */	mtctr r12
/* 80C3B6D0  4E 80 04 21 */	bctrl 
/* 80C3B6D4  88 1A 09 90 */	lbz r0, 0x990(r26)
/* 80C3B6D8  28 00 00 00 */	cmplwi r0, 0
/* 80C3B6DC  41 82 00 18 */	beq lbl_80C3B6F4
/* 80C3B6E0  38 7A 05 90 */	addi r3, r26, 0x590
/* 80C3B6E4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C3B6E8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C3B6EC  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80C3B6F0  4B 43 B3 BD */	bl CrrPos__9dBgS_AcchFR4dBgS
lbl_80C3B6F4:
/* 80C3B6F4  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 80C3B6F8  7C 03 07 74 */	extsb r3, r0
/* 80C3B6FC  4B 3F 19 71 */	bl dComIfGp_getReverb__Fi
/* 80C3B700  7C 65 1B 78 */	mr r5, r3
/* 80C3B704  80 7A 0A 64 */	lwz r3, 0xa64(r26)
/* 80C3B708  38 80 00 00 */	li r4, 0
/* 80C3B70C  4B 3D 59 A5 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80C3B710  80 7A 07 F8 */	lwz r3, 0x7f8(r26)
/* 80C3B714  4B 3D 1D 15 */	bl play__14mDoExt_baseAnmFv
/* 80C3B718  80 7A 07 FC */	lwz r3, 0x7fc(r26)
/* 80C3B71C  4B 3D 1D 0D */	bl play__14mDoExt_baseAnmFv
/* 80C3B720  7F 43 D3 78 */	mr r3, r26
/* 80C3B724  48 00 02 15 */	bl setBaseMtx__10daObjKAT_cFv
/* 80C3B728  38 60 00 01 */	li r3, 1
lbl_80C3B72C:
/* 80C3B72C  E3 E1 01 68 */	psq_l f31, 360(r1), 0, 0 /* qr0 */
/* 80C3B730  CB E1 01 60 */	lfd f31, 0x160(r1)
/* 80C3B734  E3 C1 01 58 */	psq_l f30, 344(r1), 0, 0 /* qr0 */
/* 80C3B738  CB C1 01 50 */	lfd f30, 0x150(r1)
/* 80C3B73C  39 61 01 50 */	addi r11, r1, 0x150
/* 80C3B740  4B 72 6A DD */	bl _restgpr_26
/* 80C3B744  80 01 01 74 */	lwz r0, 0x174(r1)
/* 80C3B748  7C 08 03 A6 */	mtlr r0
/* 80C3B74C  38 21 01 70 */	addi r1, r1, 0x170
/* 80C3B750  4E 80 00 20 */	blr 
