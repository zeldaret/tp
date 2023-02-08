lbl_800DA82C:
/* 800DA82C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800DA830  7C 08 02 A6 */	mflr r0
/* 800DA834  90 01 00 64 */	stw r0, 0x64(r1)
/* 800DA838  39 61 00 60 */	addi r11, r1, 0x60
/* 800DA83C  48 28 79 8D */	bl _savegpr_24
/* 800DA840  7C 78 1B 78 */	mr r24, r3
/* 800DA844  7C 99 23 78 */	mr r25, r4
/* 800DA848  7C BA 2B 78 */	mr r26, r5
/* 800DA84C  7C DB 33 78 */	mr r27, r6
/* 800DA850  7C FC 3B 78 */	mr r28, r7
/* 800DA854  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800DA858  28 00 01 5A */	cmplwi r0, 0x15a
/* 800DA85C  40 82 00 0C */	bne lbl_800DA868
/* 800DA860  38 60 00 00 */	li r3, 0
/* 800DA864  48 00 03 AC */	b lbl_800DAC10
lbl_800DA868:
/* 800DA868  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800DA86C  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800DA870  90 01 00 34 */	stw r0, 0x34(r1)
/* 800DA874  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800DA878  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800DA87C  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 800DA880  7F C3 F3 78 */	mr r3, r30
/* 800DA884  38 98 1B 5C */	addi r4, r24, 0x1b5c
/* 800DA888  38 A1 00 24 */	addi r5, r1, 0x24
/* 800DA88C  4B F9 9E B9 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800DA890  38 61 00 24 */	addi r3, r1, 0x24
/* 800DA894  48 18 C8 95 */	bl atan2sX_Z__4cXyzCFv
/* 800DA898  7C 7D 1B 78 */	mr r29, r3
/* 800DA89C  2C 19 00 00 */	cmpwi r25, 0
/* 800DA8A0  41 80 00 30 */	blt lbl_800DA8D0
/* 800DA8A4  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 800DA8A8  48 18 D9 69 */	bl cBgW_CheckBWall__Ff
/* 800DA8AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DA8B0  41 82 00 20 */	beq lbl_800DA8D0
/* 800DA8B4  7F A3 EB 78 */	mr r3, r29
/* 800DA8B8  A8 98 04 DE */	lha r4, 0x4de(r24)
/* 800DA8BC  38 04 80 00 */	addi r0, r4, -32768
/* 800DA8C0  7C 04 07 34 */	extsh r4, r0
/* 800DA8C4  48 19 65 61 */	bl cLib_distanceAngleS__Fss
/* 800DA8C8  2C 03 15 55 */	cmpwi r3, 0x1555
/* 800DA8CC  40 81 00 18 */	ble lbl_800DA8E4
lbl_800DA8D0:
/* 800DA8D0  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800DA8D4  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800DA8D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 800DA8DC  38 60 00 00 */	li r3, 0
/* 800DA8E0  48 00 03 30 */	b lbl_800DAC10
lbl_800DA8E4:
/* 800DA8E4  7F 03 C3 78 */	mr r3, r24
/* 800DA8E8  38 80 01 5A */	li r4, 0x15a
/* 800DA8EC  4B FE 76 81 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800DA8F0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800DA8F4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800DA8F8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800DA8FC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800DA900  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800DA904  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800DA908  38 61 00 0C */	addi r3, r1, 0xc
/* 800DA90C  48 26 C8 2D */	bl PSVECSquareMag
/* 800DA910  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800DA914  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800DA918  40 81 00 58 */	ble lbl_800DA970
/* 800DA91C  FC 00 08 34 */	frsqrte f0, f1
/* 800DA920  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800DA924  FC 44 00 32 */	fmul f2, f4, f0
/* 800DA928  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800DA92C  FC 00 00 32 */	fmul f0, f0, f0
/* 800DA930  FC 01 00 32 */	fmul f0, f1, f0
/* 800DA934  FC 03 00 28 */	fsub f0, f3, f0
/* 800DA938  FC 02 00 32 */	fmul f0, f2, f0
/* 800DA93C  FC 44 00 32 */	fmul f2, f4, f0
/* 800DA940  FC 00 00 32 */	fmul f0, f0, f0
/* 800DA944  FC 01 00 32 */	fmul f0, f1, f0
/* 800DA948  FC 03 00 28 */	fsub f0, f3, f0
/* 800DA94C  FC 02 00 32 */	fmul f0, f2, f0
/* 800DA950  FC 44 00 32 */	fmul f2, f4, f0
/* 800DA954  FC 00 00 32 */	fmul f0, f0, f0
/* 800DA958  FC 01 00 32 */	fmul f0, f1, f0
/* 800DA95C  FC 03 00 28 */	fsub f0, f3, f0
/* 800DA960  FC 02 00 32 */	fmul f0, f2, f0
/* 800DA964  FC 41 00 32 */	fmul f2, f1, f0
/* 800DA968  FC 40 10 18 */	frsp f2, f2
/* 800DA96C  48 00 00 90 */	b lbl_800DA9FC
lbl_800DA970:
/* 800DA970  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800DA974  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800DA978  40 80 00 10 */	bge lbl_800DA988
/* 800DA97C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800DA980  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800DA984  48 00 00 78 */	b lbl_800DA9FC
lbl_800DA988:
/* 800DA988  D0 21 00 08 */	stfs f1, 8(r1)
/* 800DA98C  80 81 00 08 */	lwz r4, 8(r1)
/* 800DA990  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800DA994  3C 00 7F 80 */	lis r0, 0x7f80
/* 800DA998  7C 03 00 00 */	cmpw r3, r0
/* 800DA99C  41 82 00 14 */	beq lbl_800DA9B0
/* 800DA9A0  40 80 00 40 */	bge lbl_800DA9E0
/* 800DA9A4  2C 03 00 00 */	cmpwi r3, 0
/* 800DA9A8  41 82 00 20 */	beq lbl_800DA9C8
/* 800DA9AC  48 00 00 34 */	b lbl_800DA9E0
lbl_800DA9B0:
/* 800DA9B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800DA9B4  41 82 00 0C */	beq lbl_800DA9C0
/* 800DA9B8  38 00 00 01 */	li r0, 1
/* 800DA9BC  48 00 00 28 */	b lbl_800DA9E4
lbl_800DA9C0:
/* 800DA9C0  38 00 00 02 */	li r0, 2
/* 800DA9C4  48 00 00 20 */	b lbl_800DA9E4
lbl_800DA9C8:
/* 800DA9C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800DA9CC  41 82 00 0C */	beq lbl_800DA9D8
/* 800DA9D0  38 00 00 05 */	li r0, 5
/* 800DA9D4  48 00 00 10 */	b lbl_800DA9E4
lbl_800DA9D8:
/* 800DA9D8  38 00 00 03 */	li r0, 3
/* 800DA9DC  48 00 00 08 */	b lbl_800DA9E4
lbl_800DA9E0:
/* 800DA9E0  38 00 00 04 */	li r0, 4
lbl_800DA9E4:
/* 800DA9E4  2C 00 00 01 */	cmpwi r0, 1
/* 800DA9E8  40 82 00 10 */	bne lbl_800DA9F8
/* 800DA9EC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 800DA9F0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 800DA9F4  48 00 00 08 */	b lbl_800DA9FC
lbl_800DA9F8:
/* 800DA9F8  FC 40 08 90 */	fmr f2, f1
lbl_800DA9FC:
/* 800DA9FC  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 800DAA00  48 18 CC 75 */	bl cM_atan2s__Fff
/* 800DAA04  7C 7F 1B 78 */	mr r31, r3
/* 800DAA08  B3 B8 04 DE */	sth r29, 0x4de(r24)
/* 800DAA0C  C0 18 1B 78 */	lfs f0, 0x1b78(r24)
/* 800DAA10  D0 18 04 D0 */	stfs f0, 0x4d0(r24)
/* 800DAA14  C0 18 1B 80 */	lfs f0, 0x1b80(r24)
/* 800DAA18  D0 18 04 D8 */	stfs f0, 0x4d8(r24)
/* 800DAA1C  7F 03 C3 78 */	mr r3, r24
/* 800DAA20  7F 64 DB 78 */	mr r4, r27
/* 800DAA24  38 A0 00 00 */	li r5, 0
/* 800DAA28  7F 86 E3 78 */	mr r6, r28
/* 800DAA2C  4B FD 31 4D */	bl setOldRootQuaternion__9daAlink_cFsss
/* 800DAA30  80 18 05 74 */	lwz r0, 0x574(r24)
/* 800DAA34  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800DAA38  41 82 00 C4 */	beq lbl_800DAAFC
/* 800DAA3C  2C 19 00 29 */	cmpwi r25, 0x29
/* 800DAA40  40 82 00 20 */	bne lbl_800DAA60
/* 800DAA44  38 00 00 2D */	li r0, 0x2d
/* 800DAA48  90 18 31 98 */	stw r0, 0x3198(r24)
/* 800DAA4C  7F 03 C3 78 */	mr r3, r24
/* 800DAA50  38 80 00 28 */	li r4, 0x28
/* 800DAA54  48 04 EC 25 */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 800DAA58  B3 F8 30 80 */	sth r31, 0x3080(r24)
/* 800DAA5C  48 00 00 90 */	b lbl_800DAAEC
lbl_800DAA60:
/* 800DAA60  2C 19 00 2A */	cmpwi r25, 0x2a
/* 800DAA64  40 82 00 34 */	bne lbl_800DAA98
/* 800DAA68  38 00 00 2E */	li r0, 0x2e
/* 800DAA6C  90 18 31 98 */	stw r0, 0x3198(r24)
/* 800DAA70  7F 03 C3 78 */	mr r3, r24
/* 800DAA74  38 80 00 2E */	li r4, 0x2e
/* 800DAA78  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800DAA7C  C0 42 93 14 */	lfs f2, lit_7307(r2)
/* 800DAA80  38 A0 00 03 */	li r5, 3
/* 800DAA84  C0 62 92 C4 */	lfs f3, lit_6109(r2)
/* 800DAA88  48 04 EC 7D */	bl setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf
/* 800DAA8C  38 1F C0 00 */	addi r0, r31, -16384
/* 800DAA90  B0 18 30 82 */	sth r0, 0x3082(r24)
/* 800DAA94  48 00 00 58 */	b lbl_800DAAEC
lbl_800DAA98:
/* 800DAA98  2C 19 00 2B */	cmpwi r25, 0x2b
/* 800DAA9C  40 82 00 34 */	bne lbl_800DAAD0
/* 800DAAA0  38 00 00 2F */	li r0, 0x2f
/* 800DAAA4  90 18 31 98 */	stw r0, 0x3198(r24)
/* 800DAAA8  7F 03 C3 78 */	mr r3, r24
/* 800DAAAC  38 80 00 2F */	li r4, 0x2f
/* 800DAAB0  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800DAAB4  C0 42 93 14 */	lfs f2, lit_7307(r2)
/* 800DAAB8  38 A0 00 03 */	li r5, 3
/* 800DAABC  C0 62 92 C4 */	lfs f3, lit_6109(r2)
/* 800DAAC0  48 04 EC 45 */	bl setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf
/* 800DAAC4  20 1F 40 00 */	subfic r0, r31, 0x4000
/* 800DAAC8  B0 18 30 82 */	sth r0, 0x3082(r24)
/* 800DAACC  48 00 00 20 */	b lbl_800DAAEC
lbl_800DAAD0:
/* 800DAAD0  38 00 00 2C */	li r0, 0x2c
/* 800DAAD4  90 18 31 98 */	stw r0, 0x3198(r24)
/* 800DAAD8  7F 03 C3 78 */	mr r3, r24
/* 800DAADC  38 80 00 29 */	li r4, 0x29
/* 800DAAE0  48 04 EB 99 */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 800DAAE4  7C 1F 00 D0 */	neg r0, r31
/* 800DAAE8  B0 18 30 80 */	sth r0, 0x3080(r24)
lbl_800DAAEC:
/* 800DAAEC  7F 03 C3 78 */	mr r3, r24
/* 800DAAF0  38 80 00 91 */	li r4, 0x91
/* 800DAAF4  4B FD 4D AD */	bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 800DAAF8  48 00 00 C0 */	b lbl_800DABB8
lbl_800DAAFC:
/* 800DAAFC  2C 1A 00 00 */	cmpwi r26, 0
/* 800DAB00  3C 60 80 39 */	lis r3, m__21daAlinkHIO_damHuge_c0@ha /* 0x8038E36C@ha */
/* 800DAB04  38 A3 E3 6C */	addi r5, r3, m__21daAlinkHIO_damHuge_c0@l /* 0x8038E36C@l */
/* 800DAB08  41 82 00 0C */	beq lbl_800DAB14
/* 800DAB0C  3C 60 80 39 */	lis r3, m__22daAlinkHIO_damLarge_c0@ha /* 0x8038E2B0@ha */
/* 800DAB10  38 A3 E2 B0 */	addi r5, r3, m__22daAlinkHIO_damLarge_c0@l /* 0x8038E2B0@l */
lbl_800DAB14:
/* 800DAB14  2C 19 00 84 */	cmpwi r25, 0x84
/* 800DAB18  40 82 00 28 */	bne lbl_800DAB40
/* 800DAB1C  38 00 00 88 */	li r0, 0x88
/* 800DAB20  90 18 31 98 */	stw r0, 0x3198(r24)
/* 800DAB24  7F 03 C3 78 */	mr r3, r24
/* 800DAB28  38 80 00 88 */	li r4, 0x88
/* 800DAB2C  38 A5 00 64 */	addi r5, r5, 0x64
/* 800DAB30  4B FD 25 C5 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800DAB34  38 1F C0 00 */	addi r0, r31, -16384
/* 800DAB38  B0 18 30 80 */	sth r0, 0x3080(r24)
/* 800DAB3C  48 00 00 7C */	b lbl_800DABB8
lbl_800DAB40:
/* 800DAB40  2C 19 00 85 */	cmpwi r25, 0x85
/* 800DAB44  40 82 00 28 */	bne lbl_800DAB6C
/* 800DAB48  38 00 00 89 */	li r0, 0x89
/* 800DAB4C  90 18 31 98 */	stw r0, 0x3198(r24)
/* 800DAB50  7F 03 C3 78 */	mr r3, r24
/* 800DAB54  38 80 00 89 */	li r4, 0x89
/* 800DAB58  38 A5 00 78 */	addi r5, r5, 0x78
/* 800DAB5C  4B FD 25 99 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800DAB60  38 1F C0 00 */	addi r0, r31, -16384
/* 800DAB64  B0 18 30 82 */	sth r0, 0x3082(r24)
/* 800DAB68  48 00 00 50 */	b lbl_800DABB8
lbl_800DAB6C:
/* 800DAB6C  2C 19 00 86 */	cmpwi r25, 0x86
/* 800DAB70  40 82 00 28 */	bne lbl_800DAB98
/* 800DAB74  38 00 00 8A */	li r0, 0x8a
/* 800DAB78  90 18 31 98 */	stw r0, 0x3198(r24)
/* 800DAB7C  7F 03 C3 78 */	mr r3, r24
/* 800DAB80  38 80 00 8A */	li r4, 0x8a
/* 800DAB84  38 A5 00 8C */	addi r5, r5, 0x8c
/* 800DAB88  4B FD 25 6D */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800DAB8C  20 1F 40 00 */	subfic r0, r31, 0x4000
/* 800DAB90  B0 18 30 82 */	sth r0, 0x3082(r24)
/* 800DAB94  48 00 00 24 */	b lbl_800DABB8
lbl_800DAB98:
/* 800DAB98  38 00 00 87 */	li r0, 0x87
/* 800DAB9C  90 18 31 98 */	stw r0, 0x3198(r24)
/* 800DABA0  7F 03 C3 78 */	mr r3, r24
/* 800DABA4  38 80 00 87 */	li r4, 0x87
/* 800DABA8  38 A5 00 50 */	addi r5, r5, 0x50
/* 800DABAC  4B FD 25 49 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800DABB0  20 1F 40 00 */	subfic r0, r31, 0x4000
/* 800DABB4  B0 18 30 80 */	sth r0, 0x3080(r24)
lbl_800DABB8:
/* 800DABB8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800DABBC  D0 38 33 98 */	stfs f1, 0x3398(r24)
/* 800DABC0  D0 38 04 FC */	stfs f1, 0x4fc(r24)
/* 800DABC4  7F 03 C3 78 */	mr r3, r24
/* 800DABC8  C0 58 05 34 */	lfs f2, 0x534(r24)
/* 800DABCC  38 80 00 00 */	li r4, 0
/* 800DABD0  4B FE 0B A1 */	bl setSpecialGravity__9daAlink_cFffi
/* 800DABD4  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800DABD8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 800DABDC  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800DABE0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800DABE4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 800DABE8  38 7E 4C 9C */	addi r3, r30, 0x4c9c
/* 800DABEC  38 80 00 06 */	li r4, 6
/* 800DABF0  38 A0 00 0F */	li r5, 0xf
/* 800DABF4  38 C1 00 18 */	addi r6, r1, 0x18
/* 800DABF8  4B F9 4E 2D */	bl StartShock__12dVibration_cFii4cXyz
/* 800DABFC  B3 58 30 08 */	sth r26, 0x3008(r24)
/* 800DAC00  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800DAC04  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800DAC08  90 01 00 34 */	stw r0, 0x34(r1)
/* 800DAC0C  38 60 00 01 */	li r3, 1
lbl_800DAC10:
/* 800DAC10  39 61 00 60 */	addi r11, r1, 0x60
/* 800DAC14  48 28 76 01 */	bl _restgpr_24
/* 800DAC18  80 01 00 64 */	lwz r0, 0x64(r1)
/* 800DAC1C  7C 08 03 A6 */	mtlr r0
/* 800DAC20  38 21 00 60 */	addi r1, r1, 0x60
/* 800DAC24  4E 80 00 20 */	blr 
