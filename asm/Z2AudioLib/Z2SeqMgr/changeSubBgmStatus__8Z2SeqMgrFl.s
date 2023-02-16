lbl_802B1DF4:
/* 802B1DF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802B1DF8  7C 08 02 A6 */	mflr r0
/* 802B1DFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802B1E00  39 61 00 20 */	addi r11, r1, 0x20
/* 802B1E04  48 0B 03 D5 */	bl _savegpr_28
/* 802B1E08  7C 7C 1B 78 */	mr r28, r3
/* 802B1E0C  7C 9D 23 78 */	mr r29, r4
/* 802B1E10  80 63 00 04 */	lwz r3, 4(r3)
/* 802B1E14  28 03 00 00 */	cmplwi r3, 0
/* 802B1E18  41 82 0B 6C */	beq lbl_802B2984
/* 802B1E1C  3B E0 00 00 */	li r31, 0
/* 802B1E20  3B C0 00 01 */	li r30, 1
/* 802B1E24  41 82 00 10 */	beq lbl_802B1E34
/* 802B1E28  80 83 00 18 */	lwz r4, 0x18(r3)
/* 802B1E2C  90 81 00 08 */	stw r4, 8(r1)
/* 802B1E30  48 00 00 08 */	b lbl_802B1E38
lbl_802B1E34:
/* 802B1E34  38 80 FF FF */	li r4, -1
lbl_802B1E38:
/* 802B1E38  3C 60 01 00 */	lis r3, 0x0100 /* 0x01000027@ha */
/* 802B1E3C  38 03 00 27 */	addi r0, r3, 0x0027 /* 0x01000027@l */
/* 802B1E40  7C 04 00 00 */	cmpw r4, r0
/* 802B1E44  41 82 00 68 */	beq lbl_802B1EAC
/* 802B1E48  40 80 00 34 */	bge lbl_802B1E7C
/* 802B1E4C  38 03 00 0F */	addi r0, r3, 0xf
/* 802B1E50  7C 04 00 00 */	cmpw r4, r0
/* 802B1E54  41 82 0B 30 */	beq lbl_802B2984
/* 802B1E58  40 80 00 14 */	bge lbl_802B1E6C
/* 802B1E5C  38 03 00 04 */	addi r0, r3, 4
/* 802B1E60  7C 04 00 00 */	cmpw r4, r0
/* 802B1E64  41 82 00 AC */	beq lbl_802B1F10
/* 802B1E68  48 00 0A F8 */	b lbl_802B2960
lbl_802B1E6C:
/* 802B1E6C  38 03 00 1B */	addi r0, r3, 0x1b
/* 802B1E70  7C 04 00 00 */	cmpw r4, r0
/* 802B1E74  41 82 06 90 */	beq lbl_802B2504
/* 802B1E78  48 00 0A E8 */	b lbl_802B2960
lbl_802B1E7C:
/* 802B1E7C  38 03 00 39 */	addi r0, r3, 0x39
/* 802B1E80  7C 04 00 00 */	cmpw r4, r0
/* 802B1E84  41 82 05 28 */	beq lbl_802B23AC
/* 802B1E88  40 80 00 14 */	bge lbl_802B1E9C
/* 802B1E8C  38 03 00 29 */	addi r0, r3, 0x29
/* 802B1E90  7C 04 00 00 */	cmpw r4, r0
/* 802B1E94  41 82 03 5C */	beq lbl_802B21F0
/* 802B1E98  48 00 0A C8 */	b lbl_802B2960
lbl_802B1E9C:
/* 802B1E9C  38 03 00 96 */	addi r0, r3, 0x96
/* 802B1EA0  7C 04 00 00 */	cmpw r4, r0
/* 802B1EA4  41 82 01 E0 */	beq lbl_802B2084
/* 802B1EA8  48 00 0A B8 */	b lbl_802B2960
lbl_802B1EAC:
/* 802B1EAC  2C 1D 00 01 */	cmpwi r29, 1
/* 802B1EB0  40 82 00 34 */	bne lbl_802B1EE4
/* 802B1EB4  88 1C 00 BD */	lbz r0, 0xbd(r28)
/* 802B1EB8  28 00 00 02 */	cmplwi r0, 2
/* 802B1EBC  40 82 00 28 */	bne lbl_802B1EE4
/* 802B1EC0  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B1EC4  D0 1C 00 24 */	stfs f0, 0x24(r28)
/* 802B1EC8  D0 1C 00 28 */	stfs f0, 0x28(r28)
/* 802B1ECC  38 00 00 00 */	li r0, 0
/* 802B1ED0  90 1C 00 30 */	stw r0, 0x30(r28)
/* 802B1ED4  D0 1C 00 2C */	stfs f0, 0x2c(r28)
/* 802B1ED8  38 00 00 64 */	li r0, 0x64
/* 802B1EDC  98 1C 00 BB */	stb r0, 0xbb(r28)
/* 802B1EE0  48 00 0A 80 */	b lbl_802B2960
lbl_802B1EE4:
/* 802B1EE4  2C 1D 00 03 */	cmpwi r29, 3
/* 802B1EE8  40 82 0A 78 */	bne lbl_802B2960
/* 802B1EEC  C0 02 BF 9C */	lfs f0, lit_3373(r2)
/* 802B1EF0  D0 1C 00 24 */	stfs f0, 0x24(r28)
/* 802B1EF4  D0 1C 00 28 */	stfs f0, 0x28(r28)
/* 802B1EF8  38 00 00 00 */	li r0, 0
/* 802B1EFC  90 1C 00 30 */	stw r0, 0x30(r28)
/* 802B1F00  D0 1C 00 2C */	stfs f0, 0x2c(r28)
/* 802B1F04  38 00 00 1E */	li r0, 0x1e
/* 802B1F08  98 1C 00 BB */	stb r0, 0xbb(r28)
/* 802B1F0C  48 00 0A 54 */	b lbl_802B2960
lbl_802B1F10:
/* 802B1F10  88 1C 00 BD */	lbz r0, 0xbd(r28)
/* 802B1F14  7C 1D 00 00 */	cmpw r29, r0
/* 802B1F18  41 82 0A 6C */	beq lbl_802B2984
/* 802B1F1C  2C 1D 00 02 */	cmpwi r29, 2
/* 802B1F20  41 82 00 14 */	beq lbl_802B1F34
/* 802B1F24  3B C0 00 00 */	li r30, 0
/* 802B1F28  28 00 00 FF */	cmplwi r0, 0xff
/* 802B1F2C  41 82 00 08 */	beq lbl_802B1F34
/* 802B1F30  3B E0 00 28 */	li r31, 0x28
lbl_802B1F34:
/* 802B1F34  2C 1D 00 01 */	cmpwi r29, 1
/* 802B1F38  40 82 00 A8 */	bne lbl_802B1FE0
/* 802B1F3C  7F 83 E3 78 */	mr r3, r28
/* 802B1F40  38 9C 00 04 */	addi r4, r28, 4
/* 802B1F44  38 A0 00 00 */	li r5, 0
/* 802B1F48  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B1F4C  38 C0 00 3C */	li r6, 0x3c
/* 802B1F50  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1F54  FC 60 10 90 */	fmr f3, f2
/* 802B1F58  48 00 20 95 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1F5C  7F 83 E3 78 */	mr r3, r28
/* 802B1F60  38 9C 00 04 */	addi r4, r28, 4
/* 802B1F64  38 A0 00 01 */	li r5, 1
/* 802B1F68  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B1F6C  38 C0 00 3C */	li r6, 0x3c
/* 802B1F70  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1F74  FC 60 10 90 */	fmr f3, f2
/* 802B1F78  48 00 20 75 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1F7C  7F 83 E3 78 */	mr r3, r28
/* 802B1F80  38 9C 00 04 */	addi r4, r28, 4
/* 802B1F84  38 A0 00 0B */	li r5, 0xb
/* 802B1F88  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B1F8C  38 C0 00 3C */	li r6, 0x3c
/* 802B1F90  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1F94  FC 60 10 90 */	fmr f3, f2
/* 802B1F98  48 00 20 55 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1F9C  7F 83 E3 78 */	mr r3, r28
/* 802B1FA0  38 9C 00 04 */	addi r4, r28, 4
/* 802B1FA4  38 A0 00 0C */	li r5, 0xc
/* 802B1FA8  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B1FAC  38 C0 00 3C */	li r6, 0x3c
/* 802B1FB0  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1FB4  FC 60 10 90 */	fmr f3, f2
/* 802B1FB8  48 00 20 35 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1FBC  7F 83 E3 78 */	mr r3, r28
/* 802B1FC0  38 9C 00 04 */	addi r4, r28, 4
/* 802B1FC4  38 A0 00 0D */	li r5, 0xd
/* 802B1FC8  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B1FCC  38 C0 00 3C */	li r6, 0x3c
/* 802B1FD0  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1FD4  FC 60 10 90 */	fmr f3, f2
/* 802B1FD8  48 00 20 15 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B1FDC  48 00 09 84 */	b lbl_802B2960
lbl_802B1FE0:
/* 802B1FE0  7F 83 E3 78 */	mr r3, r28
/* 802B1FE4  38 9C 00 04 */	addi r4, r28, 4
/* 802B1FE8  38 A0 00 00 */	li r5, 0
/* 802B1FEC  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B1FF0  7F E6 FB 78 */	mr r6, r31
/* 802B1FF4  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B1FF8  FC 60 10 90 */	fmr f3, f2
/* 802B1FFC  48 00 1F F1 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2000  7F 83 E3 78 */	mr r3, r28
/* 802B2004  38 9C 00 04 */	addi r4, r28, 4
/* 802B2008  38 A0 00 01 */	li r5, 1
/* 802B200C  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B2010  7F E6 FB 78 */	mr r6, r31
/* 802B2014  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2018  FC 60 10 90 */	fmr f3, f2
/* 802B201C  48 00 1F D1 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2020  7F 83 E3 78 */	mr r3, r28
/* 802B2024  38 9C 00 04 */	addi r4, r28, 4
/* 802B2028  38 A0 00 0B */	li r5, 0xb
/* 802B202C  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B2030  7F E6 FB 78 */	mr r6, r31
/* 802B2034  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2038  FC 60 10 90 */	fmr f3, f2
/* 802B203C  48 00 1F B1 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2040  7F 83 E3 78 */	mr r3, r28
/* 802B2044  38 9C 00 04 */	addi r4, r28, 4
/* 802B2048  38 A0 00 0C */	li r5, 0xc
/* 802B204C  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B2050  7F E6 FB 78 */	mr r6, r31
/* 802B2054  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2058  FC 60 10 90 */	fmr f3, f2
/* 802B205C  48 00 1F 91 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2060  7F 83 E3 78 */	mr r3, r28
/* 802B2064  38 9C 00 04 */	addi r4, r28, 4
/* 802B2068  38 A0 00 0D */	li r5, 0xd
/* 802B206C  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B2070  7F E6 FB 78 */	mr r6, r31
/* 802B2074  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2078  FC 60 10 90 */	fmr f3, f2
/* 802B207C  48 00 1F 71 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2080  48 00 08 E0 */	b lbl_802B2960
lbl_802B2084:
/* 802B2084  88 1C 00 BD */	lbz r0, 0xbd(r28)
/* 802B2088  7C 1D 00 00 */	cmpw r29, r0
/* 802B208C  41 82 08 F8 */	beq lbl_802B2984
/* 802B2090  3B C0 00 00 */	li r30, 0
/* 802B2094  28 00 00 FF */	cmplwi r0, 0xff
/* 802B2098  41 82 00 08 */	beq lbl_802B20A0
/* 802B209C  3B E0 00 1E */	li r31, 0x1e
lbl_802B20A0:
/* 802B20A0  2C 1D 00 01 */	cmpwi r29, 1
/* 802B20A4  40 82 00 A8 */	bne lbl_802B214C
/* 802B20A8  7F 83 E3 78 */	mr r3, r28
/* 802B20AC  38 9C 00 04 */	addi r4, r28, 4
/* 802B20B0  38 A0 00 00 */	li r5, 0
/* 802B20B4  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B20B8  38 C0 00 0A */	li r6, 0xa
/* 802B20BC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B20C0  FC 60 10 90 */	fmr f3, f2
/* 802B20C4  48 00 1F 29 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B20C8  7F 83 E3 78 */	mr r3, r28
/* 802B20CC  38 9C 00 04 */	addi r4, r28, 4
/* 802B20D0  38 A0 00 0A */	li r5, 0xa
/* 802B20D4  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B20D8  38 C0 00 0A */	li r6, 0xa
/* 802B20DC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B20E0  FC 60 10 90 */	fmr f3, f2
/* 802B20E4  48 00 1F 09 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B20E8  7F 83 E3 78 */	mr r3, r28
/* 802B20EC  38 9C 00 04 */	addi r4, r28, 4
/* 802B20F0  38 A0 00 0B */	li r5, 0xb
/* 802B20F4  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B20F8  38 C0 00 0A */	li r6, 0xa
/* 802B20FC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2100  FC 60 10 90 */	fmr f3, f2
/* 802B2104  48 00 1E E9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2108  7F 83 E3 78 */	mr r3, r28
/* 802B210C  38 9C 00 04 */	addi r4, r28, 4
/* 802B2110  38 A0 00 0C */	li r5, 0xc
/* 802B2114  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B2118  38 C0 00 0A */	li r6, 0xa
/* 802B211C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2120  FC 60 10 90 */	fmr f3, f2
/* 802B2124  48 00 1E C9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2128  7F 83 E3 78 */	mr r3, r28
/* 802B212C  38 9C 00 04 */	addi r4, r28, 4
/* 802B2130  38 A0 00 0D */	li r5, 0xd
/* 802B2134  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B2138  38 C0 00 0A */	li r6, 0xa
/* 802B213C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2140  FC 60 10 90 */	fmr f3, f2
/* 802B2144  48 00 1E A9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2148  48 00 08 18 */	b lbl_802B2960
lbl_802B214C:
/* 802B214C  7F 83 E3 78 */	mr r3, r28
/* 802B2150  38 9C 00 04 */	addi r4, r28, 4
/* 802B2154  38 A0 00 00 */	li r5, 0
/* 802B2158  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B215C  7F E6 FB 78 */	mr r6, r31
/* 802B2160  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2164  FC 60 10 90 */	fmr f3, f2
/* 802B2168  48 00 1E 85 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B216C  7F 83 E3 78 */	mr r3, r28
/* 802B2170  38 9C 00 04 */	addi r4, r28, 4
/* 802B2174  38 A0 00 0A */	li r5, 0xa
/* 802B2178  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B217C  7F E6 FB 78 */	mr r6, r31
/* 802B2180  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2184  FC 60 10 90 */	fmr f3, f2
/* 802B2188  48 00 1E 65 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B218C  7F 83 E3 78 */	mr r3, r28
/* 802B2190  38 9C 00 04 */	addi r4, r28, 4
/* 802B2194  38 A0 00 0B */	li r5, 0xb
/* 802B2198  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B219C  7F E6 FB 78 */	mr r6, r31
/* 802B21A0  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B21A4  FC 60 10 90 */	fmr f3, f2
/* 802B21A8  48 00 1E 45 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B21AC  7F 83 E3 78 */	mr r3, r28
/* 802B21B0  38 9C 00 04 */	addi r4, r28, 4
/* 802B21B4  38 A0 00 0C */	li r5, 0xc
/* 802B21B8  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B21BC  7F E6 FB 78 */	mr r6, r31
/* 802B21C0  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B21C4  FC 60 10 90 */	fmr f3, f2
/* 802B21C8  48 00 1E 25 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B21CC  7F 83 E3 78 */	mr r3, r28
/* 802B21D0  38 9C 00 04 */	addi r4, r28, 4
/* 802B21D4  38 A0 00 0D */	li r5, 0xd
/* 802B21D8  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B21DC  7F E6 FB 78 */	mr r6, r31
/* 802B21E0  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B21E4  FC 60 10 90 */	fmr f3, f2
/* 802B21E8  48 00 1E 05 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B21EC  48 00 07 74 */	b lbl_802B2960
lbl_802B21F0:
/* 802B21F0  88 1C 00 BD */	lbz r0, 0xbd(r28)
/* 802B21F4  7C 1D 00 00 */	cmpw r29, r0
/* 802B21F8  41 82 07 68 */	beq lbl_802B2960
/* 802B21FC  2C 1D 00 01 */	cmpwi r29, 1
/* 802B2200  40 82 00 D4 */	bne lbl_802B22D4
/* 802B2204  28 00 00 FF */	cmplwi r0, 0xff
/* 802B2208  41 82 00 08 */	beq lbl_802B2210
/* 802B220C  3B E0 00 3C */	li r31, 0x3c
lbl_802B2210:
/* 802B2210  7F 83 E3 78 */	mr r3, r28
/* 802B2214  38 9C 00 04 */	addi r4, r28, 4
/* 802B2218  38 A0 00 09 */	li r5, 9
/* 802B221C  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B2220  7F E6 FB 78 */	mr r6, r31
/* 802B2224  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2228  FC 60 10 90 */	fmr f3, f2
/* 802B222C  48 00 1D C1 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2230  7F 83 E3 78 */	mr r3, r28
/* 802B2234  38 9C 00 04 */	addi r4, r28, 4
/* 802B2238  38 A0 00 0A */	li r5, 0xa
/* 802B223C  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B2240  7F E6 FB 78 */	mr r6, r31
/* 802B2244  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2248  FC 60 10 90 */	fmr f3, f2
/* 802B224C  48 00 1D A1 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2250  7F 83 E3 78 */	mr r3, r28
/* 802B2254  38 9C 00 04 */	addi r4, r28, 4
/* 802B2258  38 A0 00 0B */	li r5, 0xb
/* 802B225C  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B2260  7F E6 FB 78 */	mr r6, r31
/* 802B2264  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2268  FC 60 10 90 */	fmr f3, f2
/* 802B226C  48 00 1D 81 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2270  7F 83 E3 78 */	mr r3, r28
/* 802B2274  38 9C 00 04 */	addi r4, r28, 4
/* 802B2278  38 A0 00 0C */	li r5, 0xc
/* 802B227C  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B2280  7F E6 FB 78 */	mr r6, r31
/* 802B2284  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2288  FC 60 10 90 */	fmr f3, f2
/* 802B228C  48 00 1D 61 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2290  7F 83 E3 78 */	mr r3, r28
/* 802B2294  38 9C 00 04 */	addi r4, r28, 4
/* 802B2298  38 A0 00 0D */	li r5, 0xd
/* 802B229C  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B22A0  7F E6 FB 78 */	mr r6, r31
/* 802B22A4  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B22A8  FC 60 10 90 */	fmr f3, f2
/* 802B22AC  48 00 1D 41 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B22B0  7F 83 E3 78 */	mr r3, r28
/* 802B22B4  38 9C 00 04 */	addi r4, r28, 4
/* 802B22B8  38 A0 00 0E */	li r5, 0xe
/* 802B22BC  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B22C0  7F E6 FB 78 */	mr r6, r31
/* 802B22C4  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B22C8  FC 60 10 90 */	fmr f3, f2
/* 802B22CC  48 00 1D 21 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B22D0  48 00 06 90 */	b lbl_802B2960
lbl_802B22D4:
/* 802B22D4  2C 1D 00 02 */	cmpwi r29, 2
/* 802B22D8  40 82 06 88 */	bne lbl_802B2960
/* 802B22DC  28 00 00 FF */	cmplwi r0, 0xff
/* 802B22E0  41 82 00 08 */	beq lbl_802B22E8
/* 802B22E4  3B E0 00 14 */	li r31, 0x14
lbl_802B22E8:
/* 802B22E8  7F 83 E3 78 */	mr r3, r28
/* 802B22EC  38 9C 00 04 */	addi r4, r28, 4
/* 802B22F0  38 A0 00 09 */	li r5, 9
/* 802B22F4  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B22F8  7F E6 FB 78 */	mr r6, r31
/* 802B22FC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2300  FC 60 10 90 */	fmr f3, f2
/* 802B2304  48 00 1C E9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2308  7F 83 E3 78 */	mr r3, r28
/* 802B230C  38 9C 00 04 */	addi r4, r28, 4
/* 802B2310  38 A0 00 0A */	li r5, 0xa
/* 802B2314  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B2318  7F E6 FB 78 */	mr r6, r31
/* 802B231C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2320  FC 60 10 90 */	fmr f3, f2
/* 802B2324  48 00 1C C9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2328  7F 83 E3 78 */	mr r3, r28
/* 802B232C  38 9C 00 04 */	addi r4, r28, 4
/* 802B2330  38 A0 00 0B */	li r5, 0xb
/* 802B2334  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B2338  7F E6 FB 78 */	mr r6, r31
/* 802B233C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2340  FC 60 10 90 */	fmr f3, f2
/* 802B2344  48 00 1C A9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2348  7F 83 E3 78 */	mr r3, r28
/* 802B234C  38 9C 00 04 */	addi r4, r28, 4
/* 802B2350  38 A0 00 0C */	li r5, 0xc
/* 802B2354  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B2358  7F E6 FB 78 */	mr r6, r31
/* 802B235C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2360  FC 60 10 90 */	fmr f3, f2
/* 802B2364  48 00 1C 89 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2368  7F 83 E3 78 */	mr r3, r28
/* 802B236C  38 9C 00 04 */	addi r4, r28, 4
/* 802B2370  38 A0 00 0D */	li r5, 0xd
/* 802B2374  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B2378  7F E6 FB 78 */	mr r6, r31
/* 802B237C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2380  FC 60 10 90 */	fmr f3, f2
/* 802B2384  48 00 1C 69 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2388  7F 83 E3 78 */	mr r3, r28
/* 802B238C  38 9C 00 04 */	addi r4, r28, 4
/* 802B2390  38 A0 00 0E */	li r5, 0xe
/* 802B2394  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B2398  7F E6 FB 78 */	mr r6, r31
/* 802B239C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B23A0  FC 60 10 90 */	fmr f3, f2
/* 802B23A4  48 00 1C 49 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B23A8  48 00 05 B8 */	b lbl_802B2960
lbl_802B23AC:
/* 802B23AC  2C 1D 00 02 */	cmpwi r29, 2
/* 802B23B0  41 82 00 D0 */	beq lbl_802B2480
/* 802B23B4  40 80 05 AC */	bge lbl_802B2960
/* 802B23B8  2C 1D 00 01 */	cmpwi r29, 1
/* 802B23BC  40 80 00 08 */	bge lbl_802B23C4
/* 802B23C0  48 00 05 A0 */	b lbl_802B2960
lbl_802B23C4:
/* 802B23C4  88 1C 00 BD */	lbz r0, 0xbd(r28)
/* 802B23C8  2C 00 00 03 */	cmpwi r0, 3
/* 802B23CC  41 82 00 98 */	beq lbl_802B2464
/* 802B23D0  40 80 05 90 */	bge lbl_802B2960
/* 802B23D4  2C 00 00 02 */	cmpwi r0, 2
/* 802B23D8  40 80 00 08 */	bge lbl_802B23E0
/* 802B23DC  48 00 05 84 */	b lbl_802B2960
lbl_802B23E0:
/* 802B23E0  7F 83 E3 78 */	mr r3, r28
/* 802B23E4  38 9C 00 04 */	addi r4, r28, 4
/* 802B23E8  38 A0 00 00 */	li r5, 0
/* 802B23EC  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B23F0  38 C0 00 0F */	li r6, 0xf
/* 802B23F4  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B23F8  FC 60 10 90 */	fmr f3, f2
/* 802B23FC  48 00 1B F1 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2400  7F 83 E3 78 */	mr r3, r28
/* 802B2404  38 9C 00 04 */	addi r4, r28, 4
/* 802B2408  38 A0 00 08 */	li r5, 8
/* 802B240C  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B2410  38 C0 00 0F */	li r6, 0xf
/* 802B2414  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2418  FC 60 10 90 */	fmr f3, f2
/* 802B241C  48 00 1B D1 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2420  7F 83 E3 78 */	mr r3, r28
/* 802B2424  38 9C 00 04 */	addi r4, r28, 4
/* 802B2428  38 A0 00 09 */	li r5, 9
/* 802B242C  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B2430  38 C0 00 0F */	li r6, 0xf
/* 802B2434  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2438  FC 60 10 90 */	fmr f3, f2
/* 802B243C  48 00 1B B1 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2440  7F 83 E3 78 */	mr r3, r28
/* 802B2444  38 9C 00 04 */	addi r4, r28, 4
/* 802B2448  38 A0 00 0A */	li r5, 0xa
/* 802B244C  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B2450  38 C0 00 0F */	li r6, 0xf
/* 802B2454  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2458  FC 60 10 90 */	fmr f3, f2
/* 802B245C  48 00 1B 91 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2460  48 00 05 00 */	b lbl_802B2960
lbl_802B2464:
/* 802B2464  80 6D 85 F4 */	lwz r3, __OSReport_disable-0x24(r13)
/* 802B2468  38 9C 00 04 */	addi r4, r28, 4
/* 802B246C  38 A0 00 09 */	li r5, 9
/* 802B2470  38 C0 00 01 */	li r6, 1
/* 802B2474  38 E0 FF FF */	li r7, -1
/* 802B2478  4B FF 8A 65 */	bl setPortData__14Z2SoundStarterFP14JAISoundHandleUlUsSc
/* 802B247C  48 00 05 08 */	b lbl_802B2984
lbl_802B2480:
/* 802B2480  7F 83 E3 78 */	mr r3, r28
/* 802B2484  38 9C 00 04 */	addi r4, r28, 4
/* 802B2488  38 A0 00 00 */	li r5, 0
/* 802B248C  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B2490  38 C0 00 0A */	li r6, 0xa
/* 802B2494  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2498  FC 60 10 90 */	fmr f3, f2
/* 802B249C  48 00 1B 51 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B24A0  7F 83 E3 78 */	mr r3, r28
/* 802B24A4  38 9C 00 04 */	addi r4, r28, 4
/* 802B24A8  38 A0 00 08 */	li r5, 8
/* 802B24AC  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B24B0  38 C0 00 0A */	li r6, 0xa
/* 802B24B4  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B24B8  FC 60 10 90 */	fmr f3, f2
/* 802B24BC  48 00 1B 31 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B24C0  7F 83 E3 78 */	mr r3, r28
/* 802B24C4  38 9C 00 04 */	addi r4, r28, 4
/* 802B24C8  38 A0 00 09 */	li r5, 9
/* 802B24CC  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B24D0  38 C0 00 0A */	li r6, 0xa
/* 802B24D4  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B24D8  FC 60 10 90 */	fmr f3, f2
/* 802B24DC  48 00 1B 11 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B24E0  7F 83 E3 78 */	mr r3, r28
/* 802B24E4  38 9C 00 04 */	addi r4, r28, 4
/* 802B24E8  38 A0 00 0A */	li r5, 0xa
/* 802B24EC  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B24F0  38 C0 00 0A */	li r6, 0xa
/* 802B24F4  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B24F8  FC 60 10 90 */	fmr f3, f2
/* 802B24FC  48 00 1A F1 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2500  48 00 04 60 */	b lbl_802B2960
lbl_802B2504:
/* 802B2504  88 1C 00 BD */	lbz r0, 0xbd(r28)
/* 802B2508  7C 00 E8 00 */	cmpw r0, r29
/* 802B250C  41 82 04 78 */	beq lbl_802B2984
/* 802B2510  28 00 00 FF */	cmplwi r0, 0xff
/* 802B2514  41 82 00 08 */	beq lbl_802B251C
/* 802B2518  3B E0 00 19 */	li r31, 0x19
lbl_802B251C:
/* 802B251C  3B C0 00 00 */	li r30, 0
/* 802B2520  2C 1D 00 02 */	cmpwi r29, 2
/* 802B2524  40 82 01 68 */	bne lbl_802B268C
/* 802B2528  7F 83 E3 78 */	mr r3, r28
/* 802B252C  38 9C 00 04 */	addi r4, r28, 4
/* 802B2530  38 A0 00 02 */	li r5, 2
/* 802B2534  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B2538  7F E6 FB 78 */	mr r6, r31
/* 802B253C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2540  FC 60 10 90 */	fmr f3, f2
/* 802B2544  48 00 1A A9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2548  7F 83 E3 78 */	mr r3, r28
/* 802B254C  38 9C 00 04 */	addi r4, r28, 4
/* 802B2550  38 A0 00 03 */	li r5, 3
/* 802B2554  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B2558  7F E6 FB 78 */	mr r6, r31
/* 802B255C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2560  FC 60 10 90 */	fmr f3, f2
/* 802B2564  48 00 1A 89 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2568  7F 83 E3 78 */	mr r3, r28
/* 802B256C  38 9C 00 04 */	addi r4, r28, 4
/* 802B2570  38 A0 00 04 */	li r5, 4
/* 802B2574  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B2578  7F E6 FB 78 */	mr r6, r31
/* 802B257C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2580  FC 60 10 90 */	fmr f3, f2
/* 802B2584  48 00 1A 69 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2588  7F 83 E3 78 */	mr r3, r28
/* 802B258C  38 9C 00 04 */	addi r4, r28, 4
/* 802B2590  38 A0 00 05 */	li r5, 5
/* 802B2594  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B2598  7F E6 FB 78 */	mr r6, r31
/* 802B259C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B25A0  FC 60 10 90 */	fmr f3, f2
/* 802B25A4  48 00 1A 49 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B25A8  7F 83 E3 78 */	mr r3, r28
/* 802B25AC  38 9C 00 04 */	addi r4, r28, 4
/* 802B25B0  38 A0 00 06 */	li r5, 6
/* 802B25B4  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B25B8  7F E6 FB 78 */	mr r6, r31
/* 802B25BC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B25C0  FC 60 10 90 */	fmr f3, f2
/* 802B25C4  48 00 1A 29 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B25C8  7F 83 E3 78 */	mr r3, r28
/* 802B25CC  38 9C 00 04 */	addi r4, r28, 4
/* 802B25D0  38 A0 00 07 */	li r5, 7
/* 802B25D4  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B25D8  7F E6 FB 78 */	mr r6, r31
/* 802B25DC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B25E0  FC 60 10 90 */	fmr f3, f2
/* 802B25E4  48 00 1A 09 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B25E8  7F 83 E3 78 */	mr r3, r28
/* 802B25EC  38 9C 00 04 */	addi r4, r28, 4
/* 802B25F0  38 A0 00 08 */	li r5, 8
/* 802B25F4  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B25F8  7F E6 FB 78 */	mr r6, r31
/* 802B25FC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2600  FC 60 10 90 */	fmr f3, f2
/* 802B2604  48 00 19 E9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2608  7F 83 E3 78 */	mr r3, r28
/* 802B260C  38 9C 00 04 */	addi r4, r28, 4
/* 802B2610  38 A0 00 09 */	li r5, 9
/* 802B2614  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B2618  7F E6 FB 78 */	mr r6, r31
/* 802B261C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2620  FC 60 10 90 */	fmr f3, f2
/* 802B2624  48 00 19 C9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2628  7F 83 E3 78 */	mr r3, r28
/* 802B262C  38 9C 00 04 */	addi r4, r28, 4
/* 802B2630  38 A0 00 0A */	li r5, 0xa
/* 802B2634  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B2638  7F E6 FB 78 */	mr r6, r31
/* 802B263C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2640  FC 60 10 90 */	fmr f3, f2
/* 802B2644  48 00 19 A9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2648  7F 83 E3 78 */	mr r3, r28
/* 802B264C  38 9C 00 04 */	addi r4, r28, 4
/* 802B2650  38 A0 00 0B */	li r5, 0xb
/* 802B2654  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B2658  7F E6 FB 78 */	mr r6, r31
/* 802B265C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2660  FC 60 10 90 */	fmr f3, f2
/* 802B2664  48 00 19 89 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2668  7F 83 E3 78 */	mr r3, r28
/* 802B266C  38 9C 00 04 */	addi r4, r28, 4
/* 802B2670  38 A0 00 0C */	li r5, 0xc
/* 802B2674  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B2678  7F E6 FB 78 */	mr r6, r31
/* 802B267C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2680  FC 60 10 90 */	fmr f3, f2
/* 802B2684  48 00 19 69 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2688  48 00 02 D8 */	b lbl_802B2960
lbl_802B268C:
/* 802B268C  2C 1D 00 03 */	cmpwi r29, 3
/* 802B2690  40 82 01 68 */	bne lbl_802B27F8
/* 802B2694  7F 83 E3 78 */	mr r3, r28
/* 802B2698  38 9C 00 04 */	addi r4, r28, 4
/* 802B269C  38 A0 00 02 */	li r5, 2
/* 802B26A0  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B26A4  38 C0 00 00 */	li r6, 0
/* 802B26A8  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B26AC  FC 60 10 90 */	fmr f3, f2
/* 802B26B0  48 00 19 3D */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B26B4  7F 83 E3 78 */	mr r3, r28
/* 802B26B8  38 9C 00 04 */	addi r4, r28, 4
/* 802B26BC  38 A0 00 03 */	li r5, 3
/* 802B26C0  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B26C4  38 C0 00 00 */	li r6, 0
/* 802B26C8  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B26CC  FC 60 10 90 */	fmr f3, f2
/* 802B26D0  48 00 19 1D */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B26D4  7F 83 E3 78 */	mr r3, r28
/* 802B26D8  38 9C 00 04 */	addi r4, r28, 4
/* 802B26DC  38 A0 00 04 */	li r5, 4
/* 802B26E0  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B26E4  38 C0 00 00 */	li r6, 0
/* 802B26E8  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B26EC  FC 60 10 90 */	fmr f3, f2
/* 802B26F0  48 00 18 FD */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B26F4  7F 83 E3 78 */	mr r3, r28
/* 802B26F8  38 9C 00 04 */	addi r4, r28, 4
/* 802B26FC  38 A0 00 05 */	li r5, 5
/* 802B2700  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B2704  38 C0 00 00 */	li r6, 0
/* 802B2708  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B270C  FC 60 10 90 */	fmr f3, f2
/* 802B2710  48 00 18 DD */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2714  7F 83 E3 78 */	mr r3, r28
/* 802B2718  38 9C 00 04 */	addi r4, r28, 4
/* 802B271C  38 A0 00 06 */	li r5, 6
/* 802B2720  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B2724  38 C0 00 00 */	li r6, 0
/* 802B2728  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B272C  FC 60 10 90 */	fmr f3, f2
/* 802B2730  48 00 18 BD */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2734  7F 83 E3 78 */	mr r3, r28
/* 802B2738  38 9C 00 04 */	addi r4, r28, 4
/* 802B273C  38 A0 00 07 */	li r5, 7
/* 802B2740  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B2744  38 C0 00 00 */	li r6, 0
/* 802B2748  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B274C  FC 60 10 90 */	fmr f3, f2
/* 802B2750  48 00 18 9D */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2754  7F 83 E3 78 */	mr r3, r28
/* 802B2758  38 9C 00 04 */	addi r4, r28, 4
/* 802B275C  38 A0 00 08 */	li r5, 8
/* 802B2760  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B2764  38 C0 00 00 */	li r6, 0
/* 802B2768  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B276C  FC 60 10 90 */	fmr f3, f2
/* 802B2770  48 00 18 7D */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2774  7F 83 E3 78 */	mr r3, r28
/* 802B2778  38 9C 00 04 */	addi r4, r28, 4
/* 802B277C  38 A0 00 09 */	li r5, 9
/* 802B2780  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B2784  38 C0 00 00 */	li r6, 0
/* 802B2788  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B278C  FC 60 10 90 */	fmr f3, f2
/* 802B2790  48 00 18 5D */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2794  7F 83 E3 78 */	mr r3, r28
/* 802B2798  38 9C 00 04 */	addi r4, r28, 4
/* 802B279C  38 A0 00 0A */	li r5, 0xa
/* 802B27A0  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B27A4  38 C0 00 00 */	li r6, 0
/* 802B27A8  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B27AC  FC 60 10 90 */	fmr f3, f2
/* 802B27B0  48 00 18 3D */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B27B4  7F 83 E3 78 */	mr r3, r28
/* 802B27B8  38 9C 00 04 */	addi r4, r28, 4
/* 802B27BC  38 A0 00 0B */	li r5, 0xb
/* 802B27C0  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B27C4  38 C0 00 00 */	li r6, 0
/* 802B27C8  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B27CC  FC 60 10 90 */	fmr f3, f2
/* 802B27D0  48 00 18 1D */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B27D4  7F 83 E3 78 */	mr r3, r28
/* 802B27D8  38 9C 00 04 */	addi r4, r28, 4
/* 802B27DC  38 A0 00 0C */	li r5, 0xc
/* 802B27E0  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B27E4  38 C0 00 00 */	li r6, 0
/* 802B27E8  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B27EC  FC 60 10 90 */	fmr f3, f2
/* 802B27F0  48 00 17 FD */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B27F4  48 00 01 6C */	b lbl_802B2960
lbl_802B27F8:
/* 802B27F8  7F 83 E3 78 */	mr r3, r28
/* 802B27FC  38 9C 00 04 */	addi r4, r28, 4
/* 802B2800  38 A0 00 02 */	li r5, 2
/* 802B2804  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B2808  7F E6 FB 78 */	mr r6, r31
/* 802B280C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2810  FC 60 10 90 */	fmr f3, f2
/* 802B2814  48 00 17 D9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2818  7F 83 E3 78 */	mr r3, r28
/* 802B281C  38 9C 00 04 */	addi r4, r28, 4
/* 802B2820  38 A0 00 03 */	li r5, 3
/* 802B2824  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B2828  7F E6 FB 78 */	mr r6, r31
/* 802B282C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2830  FC 60 10 90 */	fmr f3, f2
/* 802B2834  48 00 17 B9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2838  7F 83 E3 78 */	mr r3, r28
/* 802B283C  38 9C 00 04 */	addi r4, r28, 4
/* 802B2840  38 A0 00 04 */	li r5, 4
/* 802B2844  C0 22 BF 98 */	lfs f1, lit_3372(r2)
/* 802B2848  7F E6 FB 78 */	mr r6, r31
/* 802B284C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2850  FC 60 10 90 */	fmr f3, f2
/* 802B2854  48 00 17 99 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2858  7F 83 E3 78 */	mr r3, r28
/* 802B285C  38 9C 00 04 */	addi r4, r28, 4
/* 802B2860  38 A0 00 05 */	li r5, 5
/* 802B2864  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B2868  7F E6 FB 78 */	mr r6, r31
/* 802B286C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2870  FC 60 10 90 */	fmr f3, f2
/* 802B2874  48 00 17 79 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2878  7F 83 E3 78 */	mr r3, r28
/* 802B287C  38 9C 00 04 */	addi r4, r28, 4
/* 802B2880  38 A0 00 06 */	li r5, 6
/* 802B2884  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B2888  7F E6 FB 78 */	mr r6, r31
/* 802B288C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2890  FC 60 10 90 */	fmr f3, f2
/* 802B2894  48 00 17 59 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2898  7F 83 E3 78 */	mr r3, r28
/* 802B289C  38 9C 00 04 */	addi r4, r28, 4
/* 802B28A0  38 A0 00 07 */	li r5, 7
/* 802B28A4  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B28A8  7F E6 FB 78 */	mr r6, r31
/* 802B28AC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B28B0  FC 60 10 90 */	fmr f3, f2
/* 802B28B4  48 00 17 39 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B28B8  7F 83 E3 78 */	mr r3, r28
/* 802B28BC  38 9C 00 04 */	addi r4, r28, 4
/* 802B28C0  38 A0 00 08 */	li r5, 8
/* 802B28C4  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B28C8  7F E6 FB 78 */	mr r6, r31
/* 802B28CC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B28D0  FC 60 10 90 */	fmr f3, f2
/* 802B28D4  48 00 17 19 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B28D8  7F 83 E3 78 */	mr r3, r28
/* 802B28DC  38 9C 00 04 */	addi r4, r28, 4
/* 802B28E0  38 A0 00 09 */	li r5, 9
/* 802B28E4  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B28E8  7F E6 FB 78 */	mr r6, r31
/* 802B28EC  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B28F0  FC 60 10 90 */	fmr f3, f2
/* 802B28F4  48 00 16 F9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B28F8  7F 83 E3 78 */	mr r3, r28
/* 802B28FC  38 9C 00 04 */	addi r4, r28, 4
/* 802B2900  38 A0 00 0A */	li r5, 0xa
/* 802B2904  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B2908  7F E6 FB 78 */	mr r6, r31
/* 802B290C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2910  FC 60 10 90 */	fmr f3, f2
/* 802B2914  48 00 16 D9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2918  7F 83 E3 78 */	mr r3, r28
/* 802B291C  38 9C 00 04 */	addi r4, r28, 4
/* 802B2920  38 A0 00 0B */	li r5, 0xb
/* 802B2924  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B2928  7F E6 FB 78 */	mr r6, r31
/* 802B292C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2930  FC 60 10 90 */	fmr f3, f2
/* 802B2934  48 00 16 B9 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2938  7F 83 E3 78 */	mr r3, r28
/* 802B293C  38 9C 00 04 */	addi r4, r28, 4
/* 802B2940  38 A0 00 0C */	li r5, 0xc
/* 802B2944  C0 22 BF 9C */	lfs f1, lit_3373(r2)
/* 802B2948  7F E6 FB 78 */	mr r6, r31
/* 802B294C  C0 42 BF B4 */	lfs f2, lit_4727(r2)
/* 802B2950  FC 60 10 90 */	fmr f3, f2
/* 802B2954  48 00 16 99 */	bl setChildTrackVolume__8Z2SeqMgrFP14JAISoundHandleifUlff
/* 802B2958  48 00 00 08 */	b lbl_802B2960
/* 802B295C  48 00 00 28 */	b lbl_802B2984
lbl_802B2960:
/* 802B2960  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 802B2964  41 82 00 1C */	beq lbl_802B2980
/* 802B2968  80 6D 85 F4 */	lwz r3, __OSReport_disable-0x24(r13)
/* 802B296C  38 9C 00 04 */	addi r4, r28, 4
/* 802B2970  38 A0 00 09 */	li r5, 9
/* 802B2974  57 A6 04 3E */	clrlwi r6, r29, 0x10
/* 802B2978  38 E0 FF FF */	li r7, -1
/* 802B297C  4B FF 85 61 */	bl setPortData__14Z2SoundStarterFP14JAISoundHandleUlUsSc
lbl_802B2980:
/* 802B2980  9B BC 00 BD */	stb r29, 0xbd(r28)
lbl_802B2984:
/* 802B2984  39 61 00 20 */	addi r11, r1, 0x20
/* 802B2988  48 0A F8 9D */	bl _restgpr_28
/* 802B298C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802B2990  7C 08 03 A6 */	mtlr r0
/* 802B2994  38 21 00 20 */	addi r1, r1, 0x20
/* 802B2998  4E 80 00 20 */	blr 
