lbl_80D0AF48:
/* 80D0AF48  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 80D0AF4C  7C 08 02 A6 */	mflr r0
/* 80D0AF50  90 01 01 44 */	stw r0, 0x144(r1)
/* 80D0AF54  39 61 01 40 */	addi r11, r1, 0x140
/* 80D0AF58  4B 65 72 71 */	bl _savegpr_24
/* 80D0AF5C  7C 7A 1B 78 */	mr r26, r3
/* 80D0AF60  3C 80 80 D1 */	lis r4, lit_3775@ha /* 0x80D0B8F0@ha */
/* 80D0AF64  3B E4 B8 F0 */	addi r31, r4, lit_3775@l /* 0x80D0B8F0@l */
/* 80D0AF68  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D0AF6C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D0AF70  40 82 00 FC */	bne lbl_80D0B06C
/* 80D0AF74  7F 40 D3 79 */	or. r0, r26, r26
/* 80D0AF78  41 82 00 E8 */	beq lbl_80D0B060
/* 80D0AF7C  7C 1B 03 78 */	mr r27, r0
/* 80D0AF80  4B 45 30 91 */	bl __ct__9dInsect_cFv
/* 80D0AF84  3C 60 80 D1 */	lis r3, __vt__10daObjTEN_c@ha /* 0x80D0BA80@ha */
/* 80D0AF88  38 03 BA 80 */	addi r0, r3, __vt__10daObjTEN_c@l /* 0x80D0BA80@l */
/* 80D0AF8C  90 1B 05 68 */	stw r0, 0x568(r27)
/* 80D0AF90  38 7B 05 90 */	addi r3, r27, 0x590
/* 80D0AF94  4B 36 C5 E9 */	bl __ct__11dBgS_GndChkFv
/* 80D0AF98  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80D0AF9C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80D0AFA0  90 1B 06 40 */	stw r0, 0x640(r27)
/* 80D0AFA4  38 7B 06 44 */	addi r3, r27, 0x644
/* 80D0AFA8  4B 37 87 B9 */	bl __ct__10dCcD_GSttsFv
/* 80D0AFAC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80D0AFB0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80D0AFB4  90 7B 06 40 */	stw r3, 0x640(r27)
/* 80D0AFB8  38 03 00 20 */	addi r0, r3, 0x20
/* 80D0AFBC  90 1B 06 44 */	stw r0, 0x644(r27)
/* 80D0AFC0  3B 1B 06 64 */	addi r24, r27, 0x664
/* 80D0AFC4  7F 03 C3 78 */	mr r3, r24
/* 80D0AFC8  4B 37 8A 61 */	bl __ct__12dCcD_GObjInfFv
/* 80D0AFCC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80D0AFD0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80D0AFD4  90 18 01 20 */	stw r0, 0x120(r24)
/* 80D0AFD8  3C 60 80 D1 */	lis r3, __vt__8cM3dGAab@ha /* 0x80D0BA74@ha */
/* 80D0AFDC  38 03 BA 74 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80D0BA74@l */
/* 80D0AFE0  90 18 01 1C */	stw r0, 0x11c(r24)
/* 80D0AFE4  3C 60 80 D1 */	lis r3, __vt__8cM3dGSph@ha /* 0x80D0BA68@ha */
/* 80D0AFE8  38 03 BA 68 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80D0BA68@l */
/* 80D0AFEC  90 18 01 34 */	stw r0, 0x134(r24)
/* 80D0AFF0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80D0AFF4  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80D0AFF8  90 78 01 20 */	stw r3, 0x120(r24)
/* 80D0AFFC  38 03 00 58 */	addi r0, r3, 0x58
/* 80D0B000  90 18 01 34 */	stw r0, 0x134(r24)
/* 80D0B004  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80D0B008  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80D0B00C  90 78 00 3C */	stw r3, 0x3c(r24)
/* 80D0B010  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D0B014  90 18 01 20 */	stw r0, 0x120(r24)
/* 80D0B018  38 03 00 84 */	addi r0, r3, 0x84
/* 80D0B01C  90 18 01 34 */	stw r0, 0x134(r24)
/* 80D0B020  3B 1B 07 AC */	addi r24, r27, 0x7ac
/* 80D0B024  7F 03 C3 78 */	mr r3, r24
/* 80D0B028  4B 36 B0 79 */	bl __ct__9dBgS_AcchFv
/* 80D0B02C  3C 60 80 D1 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80D0BA44@ha */
/* 80D0B030  38 63 BA 44 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80D0BA44@l */
/* 80D0B034  90 78 00 10 */	stw r3, 0x10(r24)
/* 80D0B038  38 03 00 0C */	addi r0, r3, 0xc
/* 80D0B03C  90 18 00 14 */	stw r0, 0x14(r24)
/* 80D0B040  38 03 00 18 */	addi r0, r3, 0x18
/* 80D0B044  90 18 00 24 */	stw r0, 0x24(r24)
/* 80D0B048  38 78 00 14 */	addi r3, r24, 0x14
/* 80D0B04C  4B 36 DE 1D */	bl SetObj__16dBgS_PolyPassChkFv
/* 80D0B050  38 7B 09 84 */	addi r3, r27, 0x984
/* 80D0B054  4B 36 AE 59 */	bl __ct__12dBgS_AcchCirFv
/* 80D0B058  38 7B 09 C4 */	addi r3, r27, 0x9c4
/* 80D0B05C  4B 5B 53 6D */	bl __ct__10Z2CreatureFv
lbl_80D0B060:
/* 80D0B060  80 1A 04 A0 */	lwz r0, 0x4a0(r26)
/* 80D0B064  60 00 00 08 */	ori r0, r0, 8
/* 80D0B068  90 1A 04 A0 */	stw r0, 0x4a0(r26)
lbl_80D0B06C:
/* 80D0B06C  38 7A 0A 5C */	addi r3, r26, 0xa5c
/* 80D0B070  3C 80 80 D1 */	lis r4, d_a_obj_ten__stringBase0@ha /* 0x80D0B9E4@ha */
/* 80D0B074  38 84 B9 E4 */	addi r4, r4, d_a_obj_ten__stringBase0@l /* 0x80D0B9E4@l */
/* 80D0B078  4B 32 1E 45 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D0B07C  7C 7C 1B 78 */	mr r28, r3
/* 80D0B080  2C 1C 00 04 */	cmpwi r28, 4
/* 80D0B084  40 82 06 A0 */	bne lbl_80D0B724
/* 80D0B088  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80D0B08C  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80D0B090  98 1A 06 24 */	stb r0, 0x624(r26)
/* 80D0B094  88 1A 06 24 */	lbz r0, 0x624(r26)
/* 80D0B098  28 00 00 02 */	cmplwi r0, 2
/* 80D0B09C  40 82 00 28 */	bne lbl_80D0B0C4
/* 80D0B0A0  38 00 00 00 */	li r0, 0
/* 80D0B0A4  98 1A 05 6C */	stb r0, 0x56c(r26)
/* 80D0B0A8  A8 7A 04 E4 */	lha r3, 0x4e4(r26)
/* 80D0B0AC  38 03 E0 00 */	addi r0, r3, -8192
/* 80D0B0B0  B0 1A 04 E4 */	sth r0, 0x4e4(r26)
/* 80D0B0B4  80 1A 04 9C */	lwz r0, 0x49c(r26)
/* 80D0B0B8  60 00 40 00 */	ori r0, r0, 0x4000
/* 80D0B0BC  90 1A 04 9C */	stw r0, 0x49c(r26)
/* 80D0B0C0  48 00 00 0C */	b lbl_80D0B0CC
lbl_80D0B0C4:
/* 80D0B0C4  38 00 00 01 */	li r0, 1
/* 80D0B0C8  98 1A 05 6D */	stb r0, 0x56d(r26)
lbl_80D0B0CC:
/* 80D0B0CC  38 00 00 5D */	li r0, 0x5d
/* 80D0B0D0  98 1A 05 48 */	stb r0, 0x548(r26)
/* 80D0B0D4  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 80D0B0D8  54 00 E7 FE */	rlwinm r0, r0, 0x1c, 0x1f, 0x1f
/* 80D0B0DC  98 1A 05 81 */	stb r0, 0x581(r26)
/* 80D0B0E0  88 1A 05 81 */	lbz r0, 0x581(r26)
/* 80D0B0E4  38 7F 00 04 */	addi r3, r31, 4
/* 80D0B0E8  7C 03 00 AE */	lbzx r0, r3, r0
/* 80D0B0EC  98 1A 05 80 */	stb r0, 0x580(r26)
/* 80D0B0F0  88 1A 05 81 */	lbz r0, 0x581(r26)
/* 80D0B0F4  54 00 08 3C */	slwi r0, r0, 1
/* 80D0B0F8  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 80D0B0FC  7C 03 02 2E */	lhzx r0, r3, r0
/* 80D0B100  B0 1A 05 82 */	sth r0, 0x582(r26)
/* 80D0B104  88 1A 05 81 */	lbz r0, 0x581(r26)
/* 80D0B108  28 00 00 01 */	cmplwi r0, 1
/* 80D0B10C  40 82 00 20 */	bne lbl_80D0B12C
/* 80D0B110  3C 60 80 D1 */	lis r3, l_HIO@ha /* 0x80D0BAC8@ha */
/* 80D0B114  38 63 BA C8 */	addi r3, r3, l_HIO@l /* 0x80D0BAC8@l */
/* 80D0B118  C0 03 00 08 */	lfs f0, 8(r3)
/* 80D0B11C  D0 1A 04 EC */	stfs f0, 0x4ec(r26)
/* 80D0B120  D0 1A 04 F0 */	stfs f0, 0x4f0(r26)
/* 80D0B124  D0 1A 04 F4 */	stfs f0, 0x4f4(r26)
/* 80D0B128  48 00 00 24 */	b lbl_80D0B14C
lbl_80D0B12C:
/* 80D0B12C  28 00 00 00 */	cmplwi r0, 0
/* 80D0B130  40 82 00 1C */	bne lbl_80D0B14C
/* 80D0B134  3C 60 80 D1 */	lis r3, l_HIO@ha /* 0x80D0BAC8@ha */
/* 80D0B138  38 63 BA C8 */	addi r3, r3, l_HIO@l /* 0x80D0BAC8@l */
/* 80D0B13C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80D0B140  D0 1A 04 EC */	stfs f0, 0x4ec(r26)
/* 80D0B144  D0 1A 04 F0 */	stfs f0, 0x4f0(r26)
/* 80D0B148  D0 1A 04 F4 */	stfs f0, 0x4f4(r26)
lbl_80D0B14C:
/* 80D0B14C  7F 43 D3 78 */	mr r3, r26
/* 80D0B150  4B FF FC 4D */	bl CreateChk__10daObjTEN_cFv
/* 80D0B154  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D0B158  40 82 00 0C */	bne lbl_80D0B164
/* 80D0B15C  38 60 00 05 */	li r3, 5
/* 80D0B160  48 00 05 C8 */	b lbl_80D0B728
lbl_80D0B164:
/* 80D0B164  7F 43 D3 78 */	mr r3, r26
/* 80D0B168  3C 80 80 D1 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x80D088B8@ha */
/* 80D0B16C  38 84 88 B8 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x80D088B8@l */
/* 80D0B170  38 A0 0B C0 */	li r5, 0xbc0
/* 80D0B174  4B 30 F3 3D */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D0B178  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D0B17C  40 82 00 0C */	bne lbl_80D0B188
/* 80D0B180  38 60 00 05 */	li r3, 5
/* 80D0B184  48 00 05 A4 */	b lbl_80D0B728
lbl_80D0B188:
/* 80D0B188  3C 60 80 D1 */	lis r3, data_80D0BAB8@ha /* 0x80D0BAB8@ha */
/* 80D0B18C  8C 03 BA B8 */	lbzu r0, data_80D0BAB8@l(r3)  /* 0x80D0BAB8@l */
/* 80D0B190  28 00 00 00 */	cmplwi r0, 0
/* 80D0B194  40 82 00 20 */	bne lbl_80D0B1B4
/* 80D0B198  38 00 00 01 */	li r0, 1
/* 80D0B19C  98 03 00 00 */	stb r0, 0(r3)
/* 80D0B1A0  98 1A 0A 64 */	stb r0, 0xa64(r26)
/* 80D0B1A4  38 00 FF FF */	li r0, -1
/* 80D0B1A8  3C 60 80 D1 */	lis r3, l_HIO@ha /* 0x80D0BAC8@ha */
/* 80D0B1AC  38 63 BA C8 */	addi r3, r3, l_HIO@l /* 0x80D0BAC8@l */
/* 80D0B1B0  98 03 00 04 */	stb r0, 4(r3)
lbl_80D0B1B4:
/* 80D0B1B4  C0 5A 04 D8 */	lfs f2, 0x4d8(r26)
/* 80D0B1B8  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80D0B1BC  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80D0B1C0  EC 21 00 2A */	fadds f1, f1, f0
/* 80D0B1C4  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80D0B1C8  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80D0B1CC  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 80D0B1D0  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 80D0B1D4  38 61 00 78 */	addi r3, r1, 0x78
/* 80D0B1D8  4B 31 2A E5 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80D0B1DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D0B1E0  41 82 00 10 */	beq lbl_80D0B1F0
/* 80D0B1E4  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 80D0B1E8  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 80D0B1EC  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
lbl_80D0B1F0:
/* 80D0B1F0  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80D0B1F4  D0 1A 05 30 */	stfs f0, 0x530(r26)
/* 80D0B1F8  38 00 00 00 */	li r0, 0
/* 80D0B1FC  90 01 00 08 */	stw r0, 8(r1)
/* 80D0B200  38 7A 07 AC */	addi r3, r26, 0x7ac
/* 80D0B204  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80D0B208  38 BA 04 BC */	addi r5, r26, 0x4bc
/* 80D0B20C  7F 46 D3 78 */	mr r6, r26
/* 80D0B210  38 E0 00 01 */	li r7, 1
/* 80D0B214  39 1A 09 84 */	addi r8, r26, 0x984
/* 80D0B218  39 3A 04 F8 */	addi r9, r26, 0x4f8
/* 80D0B21C  39 40 00 00 */	li r10, 0
/* 80D0B220  4B 36 B0 29 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80D0B224  3B 60 00 00 */	li r27, 0
/* 80D0B228  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80D0B22C  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80D0B230  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 80D0B234  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80D0B238  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80D0B23C  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80D0B240  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80D0B244  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80D0B248  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80D0B24C  38 61 00 AC */	addi r3, r1, 0xac
/* 80D0B250  4B 36 CA 19 */	bl __ct__11dBgS_LinChkFv
/* 80D0B254  3B C1 01 04 */	addi r30, r1, 0x104
/* 80D0B258  7F C3 F3 78 */	mr r3, r30
/* 80D0B25C  4B 36 DC 0D */	bl SetObj__16dBgS_PolyPassChkFv
/* 80D0B260  3B 00 00 00 */	li r24, 0
/* 80D0B264  3B 20 00 00 */	li r25, 0
/* 80D0B268  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D0B26C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D0B270  3B A3 0F 38 */	addi r29, r3, 0xf38
lbl_80D0B274:
/* 80D0B274  38 61 00 54 */	addi r3, r1, 0x54
/* 80D0B278  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80D0B27C  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 80D0B280  7C 00 CA 14 */	add r0, r0, r25
/* 80D0B284  7C 05 07 34 */	extsh r5, r0
/* 80D0B288  38 C1 00 6C */	addi r6, r1, 0x6c
/* 80D0B28C  4B 56 5B 35 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80D0B290  38 61 00 48 */	addi r3, r1, 0x48
/* 80D0B294  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80D0B298  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 80D0B29C  7C 00 CA 14 */	add r0, r0, r25
/* 80D0B2A0  7C 05 07 34 */	extsh r5, r0
/* 80D0B2A4  38 C1 00 60 */	addi r6, r1, 0x60
/* 80D0B2A8  4B 56 5B 19 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80D0B2AC  38 61 00 AC */	addi r3, r1, 0xac
/* 80D0B2B0  38 81 00 48 */	addi r4, r1, 0x48
/* 80D0B2B4  38 A1 00 54 */	addi r5, r1, 0x54
/* 80D0B2B8  38 C0 00 00 */	li r6, 0
/* 80D0B2BC  4B 36 CA A9 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80D0B2C0  7F C3 F3 78 */	mr r3, r30
/* 80D0B2C4  4B 36 DB A5 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80D0B2C8  7F A3 EB 78 */	mr r3, r29
/* 80D0B2CC  38 81 00 AC */	addi r4, r1, 0xac
/* 80D0B2D0  4B 36 90 E5 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80D0B2D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D0B2D8  41 82 01 98 */	beq lbl_80D0B470
/* 80D0B2DC  3C 60 80 D1 */	lis r3, __vt__8cM3dGPla@ha /* 0x80D0BA8C@ha */
/* 80D0B2E0  38 03 BA 8C */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80D0BA8C@l */
/* 80D0B2E4  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 80D0B2E8  7F A3 EB 78 */	mr r3, r29
/* 80D0B2EC  38 81 00 C0 */	addi r4, r1, 0xc0
/* 80D0B2F0  38 A1 00 98 */	addi r5, r1, 0x98
/* 80D0B2F4  4B 36 94 51 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80D0B2F8  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 80D0B2FC  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80D0B300  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 80D0B304  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80D0B308  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 80D0B30C  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80D0B310  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80D0B314  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80D0B318  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80D0B31C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80D0B320  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D0B324  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 80D0B328  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D0B32C  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 80D0B330  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80D0B334  38 61 00 3C */	addi r3, r1, 0x3c
/* 80D0B338  38 81 00 30 */	addi r4, r1, 0x30
/* 80D0B33C  4B 63 C0 61 */	bl PSVECSquareDistance
/* 80D0B340  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80D0B344  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D0B348  40 81 00 58 */	ble lbl_80D0B3A0
/* 80D0B34C  FC 00 08 34 */	frsqrte f0, f1
/* 80D0B350  C8 9F 00 68 */	lfd f4, 0x68(r31)
/* 80D0B354  FC 44 00 32 */	fmul f2, f4, f0
/* 80D0B358  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 80D0B35C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D0B360  FC 01 00 32 */	fmul f0, f1, f0
/* 80D0B364  FC 03 00 28 */	fsub f0, f3, f0
/* 80D0B368  FC 02 00 32 */	fmul f0, f2, f0
/* 80D0B36C  FC 44 00 32 */	fmul f2, f4, f0
/* 80D0B370  FC 00 00 32 */	fmul f0, f0, f0
/* 80D0B374  FC 01 00 32 */	fmul f0, f1, f0
/* 80D0B378  FC 03 00 28 */	fsub f0, f3, f0
/* 80D0B37C  FC 02 00 32 */	fmul f0, f2, f0
/* 80D0B380  FC 44 00 32 */	fmul f2, f4, f0
/* 80D0B384  FC 00 00 32 */	fmul f0, f0, f0
/* 80D0B388  FC 01 00 32 */	fmul f0, f1, f0
/* 80D0B38C  FC 03 00 28 */	fsub f0, f3, f0
/* 80D0B390  FC 02 00 32 */	fmul f0, f2, f0
/* 80D0B394  FC 41 00 32 */	fmul f2, f1, f0
/* 80D0B398  FC 40 10 18 */	frsp f2, f2
/* 80D0B39C  48 00 00 90 */	b lbl_80D0B42C
lbl_80D0B3A0:
/* 80D0B3A0  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 80D0B3A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D0B3A8  40 80 00 10 */	bge lbl_80D0B3B8
/* 80D0B3AC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D0B3B0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D0B3B4  48 00 00 78 */	b lbl_80D0B42C
lbl_80D0B3B8:
/* 80D0B3B8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80D0B3BC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80D0B3C0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D0B3C4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D0B3C8  7C 03 00 00 */	cmpw r3, r0
/* 80D0B3CC  41 82 00 14 */	beq lbl_80D0B3E0
/* 80D0B3D0  40 80 00 40 */	bge lbl_80D0B410
/* 80D0B3D4  2C 03 00 00 */	cmpwi r3, 0
/* 80D0B3D8  41 82 00 20 */	beq lbl_80D0B3F8
/* 80D0B3DC  48 00 00 34 */	b lbl_80D0B410
lbl_80D0B3E0:
/* 80D0B3E0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D0B3E4  41 82 00 0C */	beq lbl_80D0B3F0
/* 80D0B3E8  38 00 00 01 */	li r0, 1
/* 80D0B3EC  48 00 00 28 */	b lbl_80D0B414
lbl_80D0B3F0:
/* 80D0B3F0  38 00 00 02 */	li r0, 2
/* 80D0B3F4  48 00 00 20 */	b lbl_80D0B414
lbl_80D0B3F8:
/* 80D0B3F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D0B3FC  41 82 00 0C */	beq lbl_80D0B408
/* 80D0B400  38 00 00 05 */	li r0, 5
/* 80D0B404  48 00 00 10 */	b lbl_80D0B414
lbl_80D0B408:
/* 80D0B408  38 00 00 03 */	li r0, 3
/* 80D0B40C  48 00 00 08 */	b lbl_80D0B414
lbl_80D0B410:
/* 80D0B410  38 00 00 04 */	li r0, 4
lbl_80D0B414:
/* 80D0B414  2C 00 00 01 */	cmpwi r0, 1
/* 80D0B418  40 82 00 10 */	bne lbl_80D0B428
/* 80D0B41C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D0B420  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D0B424  48 00 00 08 */	b lbl_80D0B42C
lbl_80D0B428:
/* 80D0B428  FC 40 08 90 */	fmr f2, f1
lbl_80D0B42C:
/* 80D0B42C  C0 21 00 98 */	lfs f1, 0x98(r1)
/* 80D0B430  4B 55 C2 45 */	bl cM_atan2s__Fff
/* 80D0B434  7C 03 00 D0 */	neg r0, r3
/* 80D0B438  B0 1A 06 06 */	sth r0, 0x606(r26)
/* 80D0B43C  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 80D0B440  C0 41 00 9C */	lfs f2, 0x9c(r1)
/* 80D0B444  4B 55 C2 31 */	bl cM_atan2s__Fff
/* 80D0B448  B0 7A 06 02 */	sth r3, 0x602(r26)
/* 80D0B44C  C0 21 00 98 */	lfs f1, 0x98(r1)
/* 80D0B450  C0 41 00 A0 */	lfs f2, 0xa0(r1)
/* 80D0B454  4B 55 C2 21 */	bl cM_atan2s__Fff
/* 80D0B458  B0 7A 06 0A */	sth r3, 0x60a(r26)
/* 80D0B45C  3B 60 00 01 */	li r27, 1
/* 80D0B460  3C 60 80 D1 */	lis r3, __vt__8cM3dGPla@ha /* 0x80D0BA8C@ha */
/* 80D0B464  38 03 BA 8C */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80D0BA8C@l */
/* 80D0B468  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 80D0B46C  48 00 00 14 */	b lbl_80D0B480
lbl_80D0B470:
/* 80D0B470  3B 18 00 01 */	addi r24, r24, 1
/* 80D0B474  2C 18 00 04 */	cmpwi r24, 4
/* 80D0B478  3B 39 40 00 */	addi r25, r25, 0x4000
/* 80D0B47C  41 80 FD F8 */	blt lbl_80D0B274
lbl_80D0B480:
/* 80D0B480  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80D0B484  40 82 01 E4 */	bne lbl_80D0B668
/* 80D0B488  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80D0B48C  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 80D0B490  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80D0B494  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80D0B498  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 80D0B49C  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80D0B4A0  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80D0B4A4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80D0B4A8  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80D0B4AC  38 61 00 AC */	addi r3, r1, 0xac
/* 80D0B4B0  38 81 00 6C */	addi r4, r1, 0x6c
/* 80D0B4B4  38 A1 00 54 */	addi r5, r1, 0x54
/* 80D0B4B8  38 C0 00 00 */	li r6, 0
/* 80D0B4BC  4B 36 C8 A9 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80D0B4C0  7F C3 F3 78 */	mr r3, r30
/* 80D0B4C4  4B 36 D9 A5 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80D0B4C8  7F A3 EB 78 */	mr r3, r29
/* 80D0B4CC  38 81 00 AC */	addi r4, r1, 0xac
/* 80D0B4D0  4B 36 8E E5 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80D0B4D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D0B4D8  41 82 01 90 */	beq lbl_80D0B668
/* 80D0B4DC  3C 60 80 D1 */	lis r3, __vt__8cM3dGPla@ha /* 0x80D0BA8C@ha */
/* 80D0B4E0  38 03 BA 8C */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80D0BA8C@l */
/* 80D0B4E4  90 01 00 94 */	stw r0, 0x94(r1)
/* 80D0B4E8  7F A3 EB 78 */	mr r3, r29
/* 80D0B4EC  38 81 00 C0 */	addi r4, r1, 0xc0
/* 80D0B4F0  38 A1 00 84 */	addi r5, r1, 0x84
/* 80D0B4F4  4B 36 92 51 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80D0B4F8  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 80D0B4FC  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80D0B500  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 80D0B504  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80D0B508  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 80D0B50C  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80D0B510  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80D0B514  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D0B518  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D0B51C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D0B520  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D0B524  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80D0B528  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D0B52C  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80D0B530  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D0B534  38 61 00 24 */	addi r3, r1, 0x24
/* 80D0B538  38 81 00 18 */	addi r4, r1, 0x18
/* 80D0B53C  4B 63 BE 61 */	bl PSVECSquareDistance
/* 80D0B540  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80D0B544  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D0B548  40 81 00 58 */	ble lbl_80D0B5A0
/* 80D0B54C  FC 00 08 34 */	frsqrte f0, f1
/* 80D0B550  C8 9F 00 68 */	lfd f4, 0x68(r31)
/* 80D0B554  FC 44 00 32 */	fmul f2, f4, f0
/* 80D0B558  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 80D0B55C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D0B560  FC 01 00 32 */	fmul f0, f1, f0
/* 80D0B564  FC 03 00 28 */	fsub f0, f3, f0
/* 80D0B568  FC 02 00 32 */	fmul f0, f2, f0
/* 80D0B56C  FC 44 00 32 */	fmul f2, f4, f0
/* 80D0B570  FC 00 00 32 */	fmul f0, f0, f0
/* 80D0B574  FC 01 00 32 */	fmul f0, f1, f0
/* 80D0B578  FC 03 00 28 */	fsub f0, f3, f0
/* 80D0B57C  FC 02 00 32 */	fmul f0, f2, f0
/* 80D0B580  FC 44 00 32 */	fmul f2, f4, f0
/* 80D0B584  FC 00 00 32 */	fmul f0, f0, f0
/* 80D0B588  FC 01 00 32 */	fmul f0, f1, f0
/* 80D0B58C  FC 03 00 28 */	fsub f0, f3, f0
/* 80D0B590  FC 02 00 32 */	fmul f0, f2, f0
/* 80D0B594  FC 41 00 32 */	fmul f2, f1, f0
/* 80D0B598  FC 40 10 18 */	frsp f2, f2
/* 80D0B59C  48 00 00 90 */	b lbl_80D0B62C
lbl_80D0B5A0:
/* 80D0B5A0  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 80D0B5A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D0B5A8  40 80 00 10 */	bge lbl_80D0B5B8
/* 80D0B5AC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D0B5B0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D0B5B4  48 00 00 78 */	b lbl_80D0B62C
lbl_80D0B5B8:
/* 80D0B5B8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80D0B5BC  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80D0B5C0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D0B5C4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D0B5C8  7C 03 00 00 */	cmpw r3, r0
/* 80D0B5CC  41 82 00 14 */	beq lbl_80D0B5E0
/* 80D0B5D0  40 80 00 40 */	bge lbl_80D0B610
/* 80D0B5D4  2C 03 00 00 */	cmpwi r3, 0
/* 80D0B5D8  41 82 00 20 */	beq lbl_80D0B5F8
/* 80D0B5DC  48 00 00 34 */	b lbl_80D0B610
lbl_80D0B5E0:
/* 80D0B5E0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D0B5E4  41 82 00 0C */	beq lbl_80D0B5F0
/* 80D0B5E8  38 00 00 01 */	li r0, 1
/* 80D0B5EC  48 00 00 28 */	b lbl_80D0B614
lbl_80D0B5F0:
/* 80D0B5F0  38 00 00 02 */	li r0, 2
/* 80D0B5F4  48 00 00 20 */	b lbl_80D0B614
lbl_80D0B5F8:
/* 80D0B5F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D0B5FC  41 82 00 0C */	beq lbl_80D0B608
/* 80D0B600  38 00 00 05 */	li r0, 5
/* 80D0B604  48 00 00 10 */	b lbl_80D0B614
lbl_80D0B608:
/* 80D0B608  38 00 00 03 */	li r0, 3
/* 80D0B60C  48 00 00 08 */	b lbl_80D0B614
lbl_80D0B610:
/* 80D0B610  38 00 00 04 */	li r0, 4
lbl_80D0B614:
/* 80D0B614  2C 00 00 01 */	cmpwi r0, 1
/* 80D0B618  40 82 00 10 */	bne lbl_80D0B628
/* 80D0B61C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D0B620  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D0B624  48 00 00 08 */	b lbl_80D0B62C
lbl_80D0B628:
/* 80D0B628  FC 40 08 90 */	fmr f2, f1
lbl_80D0B62C:
/* 80D0B62C  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 80D0B630  4B 55 C0 45 */	bl cM_atan2s__Fff
/* 80D0B634  7C 03 00 D0 */	neg r0, r3
/* 80D0B638  B0 1A 06 06 */	sth r0, 0x606(r26)
/* 80D0B63C  C0 21 00 8C */	lfs f1, 0x8c(r1)
/* 80D0B640  C0 41 00 88 */	lfs f2, 0x88(r1)
/* 80D0B644  4B 55 C0 31 */	bl cM_atan2s__Fff
/* 80D0B648  B0 7A 06 02 */	sth r3, 0x602(r26)
/* 80D0B64C  C0 21 00 84 */	lfs f1, 0x84(r1)
/* 80D0B650  C0 41 00 8C */	lfs f2, 0x8c(r1)
/* 80D0B654  4B 55 C0 21 */	bl cM_atan2s__Fff
/* 80D0B658  B0 7A 06 0A */	sth r3, 0x60a(r26)
/* 80D0B65C  3C 60 80 D1 */	lis r3, __vt__8cM3dGPla@ha /* 0x80D0BA8C@ha */
/* 80D0B660  38 03 BA 8C */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80D0BA8C@l */
/* 80D0B664  90 01 00 94 */	stw r0, 0x94(r1)
lbl_80D0B668:
/* 80D0B668  88 1A 06 24 */	lbz r0, 0x624(r26)
/* 80D0B66C  28 00 00 00 */	cmplwi r0, 0
/* 80D0B670  40 82 00 0C */	bne lbl_80D0B67C
/* 80D0B674  7F 43 D3 78 */	mr r3, r26
/* 80D0B678  4B FF D1 7D */	bl InitCcSph__10daObjTEN_cFv
lbl_80D0B67C:
/* 80D0B67C  88 1A 06 24 */	lbz r0, 0x624(r26)
/* 80D0B680  28 00 00 02 */	cmplwi r0, 2
/* 80D0B684  40 82 00 3C */	bne lbl_80D0B6C0
/* 80D0B688  3C 60 80 D1 */	lis r3, d_a_obj_ten__stringBase0@ha /* 0x80D0B9E4@ha */
/* 80D0B68C  38 63 B9 E4 */	addi r3, r3, d_a_obj_ten__stringBase0@l /* 0x80D0B9E4@l */
/* 80D0B690  38 63 00 06 */	addi r3, r3, 6
/* 80D0B694  38 9D 3E C8 */	addi r4, r29, 0x3ec8
/* 80D0B698  4B 65 D2 FD */	bl strcmp
/* 80D0B69C  2C 03 00 00 */	cmpwi r3, 0
/* 80D0B6A0  40 82 00 20 */	bne lbl_80D0B6C0
/* 80D0B6A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D0B6A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D0B6AC  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80D0B6B0  2C 00 00 03 */	cmpwi r0, 3
/* 80D0B6B4  40 82 00 0C */	bne lbl_80D0B6C0
/* 80D0B6B8  38 00 00 03 */	li r0, 3
/* 80D0B6BC  98 1A 06 24 */	stb r0, 0x624(r26)
lbl_80D0B6C0:
/* 80D0B6C0  80 7A 0A 58 */	lwz r3, 0xa58(r26)
/* 80D0B6C4  80 63 00 04 */	lwz r3, 4(r3)
/* 80D0B6C8  38 03 00 24 */	addi r0, r3, 0x24
/* 80D0B6CC  90 1A 05 04 */	stw r0, 0x504(r26)
/* 80D0B6D0  7F 43 D3 78 */	mr r3, r26
/* 80D0B6D4  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 80D0B6D8  FC 40 08 90 */	fmr f2, f1
/* 80D0B6DC  FC 60 08 90 */	fmr f3, f1
/* 80D0B6E0  4B 30 EE 49 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80D0B6E4  7F 43 D3 78 */	mr r3, r26
/* 80D0B6E8  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80D0B6EC  FC 40 08 90 */	fmr f2, f1
/* 80D0B6F0  FC 60 08 90 */	fmr f3, f1
/* 80D0B6F4  4B 30 EE 45 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80D0B6F8  38 7A 09 C4 */	addi r3, r26, 0x9c4
/* 80D0B6FC  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80D0B700  38 BA 05 38 */	addi r5, r26, 0x538
/* 80D0B704  38 C0 00 03 */	li r6, 3
/* 80D0B708  38 E0 00 01 */	li r7, 1
/* 80D0B70C  4B 5B 4E 25 */	bl init__10Z2CreatureFP3VecP3VecUcUc
/* 80D0B710  7F 43 D3 78 */	mr r3, r26
/* 80D0B714  4B FF F6 69 */	bl daObjTEN_Execute__FP10daObjTEN_c
/* 80D0B718  38 61 00 AC */	addi r3, r1, 0xac
/* 80D0B71C  38 80 FF FF */	li r4, -1
/* 80D0B720  4B 36 C5 BD */	bl __dt__11dBgS_LinChkFv
lbl_80D0B724:
/* 80D0B724  7F 83 E3 78 */	mr r3, r28
lbl_80D0B728:
/* 80D0B728  39 61 01 40 */	addi r11, r1, 0x140
/* 80D0B72C  4B 65 6A E9 */	bl _restgpr_24
/* 80D0B730  80 01 01 44 */	lwz r0, 0x144(r1)
/* 80D0B734  7C 08 03 A6 */	mtlr r0
/* 80D0B738  38 21 01 40 */	addi r1, r1, 0x140
/* 80D0B73C  4E 80 00 20 */	blr 
