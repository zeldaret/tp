lbl_801B1FAC:
/* 801B1FAC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801B1FB0  7C 08 02 A6 */	mflr r0
/* 801B1FB4  90 01 00 64 */	stw r0, 0x64(r1)
/* 801B1FB8  39 61 00 60 */	addi r11, r1, 0x60
/* 801B1FBC  48 1B 02 09 */	bl _savegpr_23
/* 801B1FC0  7C 7D 1B 78 */	mr r29, r3
/* 801B1FC4  8B E3 02 57 */	lbz r31, 0x257(r3)
/* 801B1FC8  8B C3 02 58 */	lbz r30, 0x258(r3)
/* 801B1FCC  80 63 00 10 */	lwz r3, 0x10(r3)
/* 801B1FD0  4B E8 01 CD */	bl checkTrigger__9STControlFv
/* 801B1FD4  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 801B1FD8  4B E8 04 D1 */	bl checkRightTrigger__9STControlFv
/* 801B1FDC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B1FE0  41 82 01 2C */	beq lbl_801B210C
/* 801B1FE4  88 1D 02 57 */	lbz r0, 0x257(r29)
/* 801B1FE8  28 00 00 06 */	cmplwi r0, 6
/* 801B1FEC  40 80 01 F4 */	bge lbl_801B21E0
/* 801B1FF0  28 00 00 00 */	cmplwi r0, 0
/* 801B1FF4  40 82 00 38 */	bne lbl_801B202C
/* 801B1FF8  88 1D 02 58 */	lbz r0, 0x258(r29)
/* 801B1FFC  28 00 00 00 */	cmplwi r0, 0
/* 801B2000  40 82 00 2C */	bne lbl_801B202C
/* 801B2004  88 7D 02 59 */	lbz r3, 0x259(r29)
/* 801B2008  28 03 00 03 */	cmplwi r3, 3
/* 801B200C  41 80 00 20 */	blt lbl_801B202C
/* 801B2010  88 1D 02 5A */	lbz r0, 0x25a(r29)
/* 801B2014  28 00 00 03 */	cmplwi r0, 3
/* 801B2018  40 80 00 14 */	bge lbl_801B202C
/* 801B201C  98 7D 02 57 */	stb r3, 0x257(r29)
/* 801B2020  88 1D 02 5A */	lbz r0, 0x25a(r29)
/* 801B2024  98 1D 02 58 */	stb r0, 0x258(r29)
/* 801B2028  48 00 01 B8 */	b lbl_801B21E0
lbl_801B202C:
/* 801B202C  88 7D 02 57 */	lbz r3, 0x257(r29)
/* 801B2030  38 03 00 01 */	addi r0, r3, 1
/* 801B2034  98 1D 02 57 */	stb r0, 0x257(r29)
/* 801B2038  88 1D 02 57 */	lbz r0, 0x257(r29)
/* 801B203C  28 00 00 06 */	cmplwi r0, 6
/* 801B2040  40 82 00 6C */	bne lbl_801B20AC
/* 801B2044  88 1D 02 58 */	lbz r0, 0x258(r29)
/* 801B2048  28 00 00 03 */	cmplwi r0, 3
/* 801B204C  40 80 00 60 */	bge lbl_801B20AC
/* 801B2050  88 1D 02 51 */	lbz r0, 0x251(r29)
/* 801B2054  28 00 00 00 */	cmplwi r0, 0
/* 801B2058  41 82 00 48 */	beq lbl_801B20A0
/* 801B205C  7F A3 EB 78 */	mr r3, r29
/* 801B2060  38 80 00 06 */	li r4, 6
/* 801B2064  38 A0 00 00 */	li r5, 0
/* 801B2068  38 C0 00 00 */	li r6, 0
/* 801B206C  48 00 26 91 */	bl getItemTag__17dMenu_Collect2D_cFiib
/* 801B2070  38 A0 00 00 */	li r5, 0
/* 801B2074  7C 84 2A 78 */	xor r4, r4, r5
/* 801B2078  7C 60 2A 78 */	xor r0, r3, r5
/* 801B207C  7C 80 03 79 */	or. r0, r4, r0
/* 801B2080  41 82 00 2C */	beq lbl_801B20AC
/* 801B2084  88 1D 02 51 */	lbz r0, 0x251(r29)
/* 801B2088  28 00 00 00 */	cmplwi r0, 0
/* 801B208C  41 82 00 20 */	beq lbl_801B20AC
/* 801B2090  38 00 00 06 */	li r0, 6
/* 801B2094  98 1D 02 57 */	stb r0, 0x257(r29)
/* 801B2098  98 BD 02 58 */	stb r5, 0x258(r29)
/* 801B209C  48 00 00 10 */	b lbl_801B20AC
lbl_801B20A0:
/* 801B20A0  9B FD 02 57 */	stb r31, 0x257(r29)
/* 801B20A4  9B DD 02 58 */	stb r30, 0x258(r29)
/* 801B20A8  48 00 01 38 */	b lbl_801B21E0
lbl_801B20AC:
/* 801B20AC  28 1F 00 04 */	cmplwi r31, 4
/* 801B20B0  40 82 00 20 */	bne lbl_801B20D0
/* 801B20B4  28 1E 00 01 */	cmplwi r30, 1
/* 801B20B8  40 82 00 18 */	bne lbl_801B20D0
/* 801B20BC  38 00 00 05 */	li r0, 5
/* 801B20C0  98 1D 02 57 */	stb r0, 0x257(r29)
/* 801B20C4  38 00 00 00 */	li r0, 0
/* 801B20C8  98 1D 02 58 */	stb r0, 0x258(r29)
/* 801B20CC  48 00 01 14 */	b lbl_801B21E0
lbl_801B20D0:
/* 801B20D0  7F A3 EB 78 */	mr r3, r29
/* 801B20D4  88 9D 02 57 */	lbz r4, 0x257(r29)
/* 801B20D8  88 BD 02 58 */	lbz r5, 0x258(r29)
/* 801B20DC  38 C0 00 01 */	li r6, 1
/* 801B20E0  48 00 26 1D */	bl getItemTag__17dMenu_Collect2D_cFiib
/* 801B20E4  38 00 00 00 */	li r0, 0
/* 801B20E8  7C 84 02 78 */	xor r4, r4, r0
/* 801B20EC  7C 60 02 78 */	xor r0, r3, r0
/* 801B20F0  7C 80 03 79 */	or. r0, r4, r0
/* 801B20F4  40 82 00 EC */	bne lbl_801B21E0
/* 801B20F8  88 1D 02 57 */	lbz r0, 0x257(r29)
/* 801B20FC  28 00 00 06 */	cmplwi r0, 6
/* 801B2100  41 80 FF 2C */	blt lbl_801B202C
/* 801B2104  9B FD 02 57 */	stb r31, 0x257(r29)
/* 801B2108  48 00 00 D8 */	b lbl_801B21E0
lbl_801B210C:
/* 801B210C  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 801B2110  4B E8 03 1D */	bl checkLeftTrigger__9STControlFv
/* 801B2114  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B2118  41 82 00 C8 */	beq lbl_801B21E0
/* 801B211C  88 1D 02 57 */	lbz r0, 0x257(r29)
/* 801B2120  28 00 00 00 */	cmplwi r0, 0
/* 801B2124  41 82 00 BC */	beq lbl_801B21E0
/* 801B2128  28 00 00 06 */	cmplwi r0, 6
/* 801B212C  40 82 00 38 */	bne lbl_801B2164
/* 801B2130  88 1D 02 58 */	lbz r0, 0x258(r29)
/* 801B2134  28 00 00 00 */	cmplwi r0, 0
/* 801B2138  40 82 00 2C */	bne lbl_801B2164
/* 801B213C  88 7D 02 59 */	lbz r3, 0x259(r29)
/* 801B2140  28 03 00 03 */	cmplwi r3, 3
/* 801B2144  41 80 00 20 */	blt lbl_801B2164
/* 801B2148  88 1D 02 5A */	lbz r0, 0x25a(r29)
/* 801B214C  28 00 00 03 */	cmplwi r0, 3
/* 801B2150  40 80 00 14 */	bge lbl_801B2164
/* 801B2154  98 7D 02 57 */	stb r3, 0x257(r29)
/* 801B2158  88 1D 02 5A */	lbz r0, 0x25a(r29)
/* 801B215C  98 1D 02 58 */	stb r0, 0x258(r29)
/* 801B2160  48 00 00 80 */	b lbl_801B21E0
lbl_801B2164:
/* 801B2164  28 1F 00 05 */	cmplwi r31, 5
/* 801B2168  40 82 00 34 */	bne lbl_801B219C
/* 801B216C  28 1E 00 00 */	cmplwi r30, 0
/* 801B2170  40 82 00 2C */	bne lbl_801B219C
/* 801B2174  88 7D 02 59 */	lbz r3, 0x259(r29)
/* 801B2178  28 03 00 04 */	cmplwi r3, 4
/* 801B217C  40 82 00 20 */	bne lbl_801B219C
/* 801B2180  88 1D 02 5A */	lbz r0, 0x25a(r29)
/* 801B2184  28 00 00 01 */	cmplwi r0, 1
/* 801B2188  40 82 00 14 */	bne lbl_801B219C
/* 801B218C  98 7D 02 57 */	stb r3, 0x257(r29)
/* 801B2190  88 1D 02 5A */	lbz r0, 0x25a(r29)
/* 801B2194  98 1D 02 58 */	stb r0, 0x258(r29)
/* 801B2198  48 00 00 48 */	b lbl_801B21E0
lbl_801B219C:
/* 801B219C  3B 40 00 00 */	li r26, 0
lbl_801B21A0:
/* 801B21A0  88 7D 02 57 */	lbz r3, 0x257(r29)
/* 801B21A4  38 03 FF FF */	addi r0, r3, -1
/* 801B21A8  98 1D 02 57 */	stb r0, 0x257(r29)
/* 801B21AC  7F A3 EB 78 */	mr r3, r29
/* 801B21B0  88 9D 02 57 */	lbz r4, 0x257(r29)
/* 801B21B4  88 BD 02 58 */	lbz r5, 0x258(r29)
/* 801B21B8  38 C0 00 01 */	li r6, 1
/* 801B21BC  48 00 25 41 */	bl getItemTag__17dMenu_Collect2D_cFiib
/* 801B21C0  7C 84 D2 78 */	xor r4, r4, r26
/* 801B21C4  7C 60 D2 78 */	xor r0, r3, r26
/* 801B21C8  7C 80 03 79 */	or. r0, r4, r0
/* 801B21CC  40 82 00 14 */	bne lbl_801B21E0
/* 801B21D0  88 1D 02 57 */	lbz r0, 0x257(r29)
/* 801B21D4  28 00 00 00 */	cmplwi r0, 0
/* 801B21D8  40 82 FF C8 */	bne lbl_801B21A0
/* 801B21DC  9B FD 02 57 */	stb r31, 0x257(r29)
lbl_801B21E0:
/* 801B21E0  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 801B21E4  4B E8 03 41 */	bl checkUpTrigger__9STControlFv
/* 801B21E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B21EC  41 82 02 28 */	beq lbl_801B2414
/* 801B21F0  88 1D 02 58 */	lbz r0, 0x258(r29)
/* 801B21F4  28 00 00 00 */	cmplwi r0, 0
/* 801B21F8  41 82 03 54 */	beq lbl_801B254C
lbl_801B21FC:
/* 801B21FC  88 7D 02 58 */	lbz r3, 0x258(r29)
/* 801B2200  38 03 FF FF */	addi r0, r3, -1
/* 801B2204  98 1D 02 58 */	stb r0, 0x258(r29)
/* 801B2208  88 1D 02 58 */	lbz r0, 0x258(r29)
/* 801B220C  28 00 00 02 */	cmplwi r0, 2
/* 801B2210  40 82 00 A0 */	bne lbl_801B22B0
/* 801B2214  3C 60 80 39 */	lis r3, lit_5343@ha /* 0x80395038@ha */
/* 801B2218  38 83 50 38 */	addi r4, r3, lit_5343@l /* 0x80395038@l */
/* 801B221C  80 64 00 00 */	lwz r3, 0(r4)
/* 801B2220  80 04 00 04 */	lwz r0, 4(r4)
/* 801B2224  90 61 00 2C */	stw r3, 0x2c(r1)
/* 801B2228  90 01 00 30 */	stw r0, 0x30(r1)
/* 801B222C  88 04 00 08 */	lbz r0, 8(r4)
/* 801B2230  98 01 00 34 */	stb r0, 0x34(r1)
/* 801B2234  3C 60 80 39 */	lis r3, lit_5344@ha /* 0x80395044@ha */
/* 801B2238  38 83 50 44 */	addi r4, r3, lit_5344@l /* 0x80395044@l */
/* 801B223C  80 64 00 00 */	lwz r3, 0(r4)
/* 801B2240  80 04 00 04 */	lwz r0, 4(r4)
/* 801B2244  90 61 00 20 */	stw r3, 0x20(r1)
/* 801B2248  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B224C  88 04 00 08 */	lbz r0, 8(r4)
/* 801B2250  98 01 00 28 */	stb r0, 0x28(r1)
/* 801B2254  3A E0 00 00 */	li r23, 0
/* 801B2258  3B 40 00 00 */	li r26, 0
/* 801B225C  3B 81 00 2C */	addi r28, r1, 0x2c
/* 801B2260  3B 61 00 20 */	addi r27, r1, 0x20
lbl_801B2264:
/* 801B2264  7F A3 EB 78 */	mr r3, r29
/* 801B2268  8B 3C 00 00 */	lbz r25, 0(r28)
/* 801B226C  7F 24 CB 78 */	mr r4, r25
/* 801B2270  8B 1B 00 00 */	lbz r24, 0(r27)
/* 801B2274  7F 05 C3 78 */	mr r5, r24
/* 801B2278  38 C0 00 01 */	li r6, 1
/* 801B227C  48 00 24 81 */	bl getItemTag__17dMenu_Collect2D_cFiib
/* 801B2280  7C 84 D2 78 */	xor r4, r4, r26
/* 801B2284  7C 60 D2 78 */	xor r0, r3, r26
/* 801B2288  7C 80 03 79 */	or. r0, r4, r0
/* 801B228C  41 82 00 10 */	beq lbl_801B229C
/* 801B2290  9B 3D 02 57 */	stb r25, 0x257(r29)
/* 801B2294  9B 1D 02 58 */	stb r24, 0x258(r29)
/* 801B2298  48 00 00 18 */	b lbl_801B22B0
lbl_801B229C:
/* 801B229C  3A F7 00 01 */	addi r23, r23, 1
/* 801B22A0  2C 17 00 09 */	cmpwi r23, 9
/* 801B22A4  3B 7B 00 01 */	addi r27, r27, 1
/* 801B22A8  3B 9C 00 01 */	addi r28, r28, 1
/* 801B22AC  41 80 FF B8 */	blt lbl_801B2264
lbl_801B22B0:
/* 801B22B0  28 1E 00 05 */	cmplwi r30, 5
/* 801B22B4  40 82 01 24 */	bne lbl_801B23D8
/* 801B22B8  28 1F 00 00 */	cmplwi r31, 0
/* 801B22BC  40 82 00 90 */	bne lbl_801B234C
/* 801B22C0  88 1D 02 5A */	lbz r0, 0x25a(r29)
/* 801B22C4  28 00 00 05 */	cmplwi r0, 5
/* 801B22C8  40 80 00 18 */	bge lbl_801B22E0
/* 801B22CC  88 1D 02 59 */	lbz r0, 0x259(r29)
/* 801B22D0  98 1D 02 57 */	stb r0, 0x257(r29)
/* 801B22D4  88 1D 02 5A */	lbz r0, 0x25a(r29)
/* 801B22D8  98 1D 02 58 */	stb r0, 0x258(r29)
/* 801B22DC  48 00 02 70 */	b lbl_801B254C
lbl_801B22E0:
/* 801B22E0  3A E0 00 00 */	li r23, 0
/* 801B22E4  3B 00 00 00 */	li r24, 0
/* 801B22E8  3B 40 00 00 */	li r26, 0
lbl_801B22EC:
/* 801B22EC  7F A3 EB 78 */	mr r3, r29
/* 801B22F0  7F 04 C3 78 */	mr r4, r24
/* 801B22F4  88 BD 02 58 */	lbz r5, 0x258(r29)
/* 801B22F8  38 C0 00 01 */	li r6, 1
/* 801B22FC  48 00 24 01 */	bl getItemTag__17dMenu_Collect2D_cFiib
/* 801B2300  7C 84 D2 78 */	xor r4, r4, r26
/* 801B2304  7C 60 D2 78 */	xor r0, r3, r26
/* 801B2308  7C 80 03 79 */	or. r0, r4, r0
/* 801B230C  41 82 00 10 */	beq lbl_801B231C
/* 801B2310  9B 1D 02 57 */	stb r24, 0x257(r29)
/* 801B2314  3A E0 00 01 */	li r23, 1
/* 801B2318  48 00 00 10 */	b lbl_801B2328
lbl_801B231C:
/* 801B231C  3B 18 00 01 */	addi r24, r24, 1
/* 801B2320  2C 18 00 04 */	cmpwi r24, 4
/* 801B2324  41 80 FF C8 */	blt lbl_801B22EC
lbl_801B2328:
/* 801B2328  88 1D 02 58 */	lbz r0, 0x258(r29)
/* 801B232C  28 00 00 00 */	cmplwi r0, 0
/* 801B2330  40 82 00 10 */	bne lbl_801B2340
/* 801B2334  9B FD 02 57 */	stb r31, 0x257(r29)
/* 801B2338  9B DD 02 58 */	stb r30, 0x258(r29)
/* 801B233C  3A E0 00 01 */	li r23, 1
lbl_801B2340:
/* 801B2340  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 801B2344  40 82 02 08 */	bne lbl_801B254C
/* 801B2348  4B FF FE B4 */	b lbl_801B21FC
lbl_801B234C:
/* 801B234C  88 1D 02 5A */	lbz r0, 0x25a(r29)
/* 801B2350  28 00 00 05 */	cmplwi r0, 5
/* 801B2354  40 80 00 18 */	bge lbl_801B236C
/* 801B2358  88 1D 02 59 */	lbz r0, 0x259(r29)
/* 801B235C  98 1D 02 57 */	stb r0, 0x257(r29)
/* 801B2360  88 1D 02 5A */	lbz r0, 0x25a(r29)
/* 801B2364  98 1D 02 58 */	stb r0, 0x258(r29)
/* 801B2368  48 00 01 E4 */	b lbl_801B254C
lbl_801B236C:
/* 801B236C  3A E0 00 00 */	li r23, 0
/* 801B2370  3B 00 00 03 */	li r24, 3
/* 801B2374  3B 40 00 00 */	li r26, 0
lbl_801B2378:
/* 801B2378  7F A3 EB 78 */	mr r3, r29
/* 801B237C  7F 04 C3 78 */	mr r4, r24
/* 801B2380  88 BD 02 58 */	lbz r5, 0x258(r29)
/* 801B2384  38 C0 00 01 */	li r6, 1
/* 801B2388  48 00 23 75 */	bl getItemTag__17dMenu_Collect2D_cFiib
/* 801B238C  7C 84 D2 78 */	xor r4, r4, r26
/* 801B2390  7C 60 D2 78 */	xor r0, r3, r26
/* 801B2394  7C 80 03 79 */	or. r0, r4, r0
/* 801B2398  41 82 00 10 */	beq lbl_801B23A8
/* 801B239C  9B 1D 02 57 */	stb r24, 0x257(r29)
/* 801B23A0  3A E0 00 01 */	li r23, 1
/* 801B23A4  48 00 00 10 */	b lbl_801B23B4
lbl_801B23A8:
/* 801B23A8  3B 18 00 01 */	addi r24, r24, 1
/* 801B23AC  2C 18 00 07 */	cmpwi r24, 7
/* 801B23B0  41 80 FF C8 */	blt lbl_801B2378
lbl_801B23B4:
/* 801B23B4  88 1D 02 58 */	lbz r0, 0x258(r29)
/* 801B23B8  28 00 00 00 */	cmplwi r0, 0
/* 801B23BC  40 82 00 10 */	bne lbl_801B23CC
/* 801B23C0  9B FD 02 57 */	stb r31, 0x257(r29)
/* 801B23C4  9B DD 02 58 */	stb r30, 0x258(r29)
/* 801B23C8  3A E0 00 01 */	li r23, 1
lbl_801B23CC:
/* 801B23CC  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 801B23D0  40 82 01 7C */	bne lbl_801B254C
/* 801B23D4  4B FF FE 28 */	b lbl_801B21FC
lbl_801B23D8:
/* 801B23D8  7F A3 EB 78 */	mr r3, r29
/* 801B23DC  88 9D 02 57 */	lbz r4, 0x257(r29)
/* 801B23E0  88 BD 02 58 */	lbz r5, 0x258(r29)
/* 801B23E4  38 C0 00 01 */	li r6, 1
/* 801B23E8  48 00 23 15 */	bl getItemTag__17dMenu_Collect2D_cFiib
/* 801B23EC  38 00 00 00 */	li r0, 0
/* 801B23F0  7C 84 02 78 */	xor r4, r4, r0
/* 801B23F4  7C 60 02 78 */	xor r0, r3, r0
/* 801B23F8  7C 80 03 79 */	or. r0, r4, r0
/* 801B23FC  40 82 01 50 */	bne lbl_801B254C
/* 801B2400  88 1D 02 58 */	lbz r0, 0x258(r29)
/* 801B2404  28 00 00 00 */	cmplwi r0, 0
/* 801B2408  40 82 FD F4 */	bne lbl_801B21FC
/* 801B240C  9B DD 02 58 */	stb r30, 0x258(r29)
/* 801B2410  48 00 01 3C */	b lbl_801B254C
lbl_801B2414:
/* 801B2414  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 801B2418  4B E8 01 89 */	bl checkDownTrigger__9STControlFv
/* 801B241C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B2420  41 82 01 2C */	beq lbl_801B254C
/* 801B2424  88 1D 02 58 */	lbz r0, 0x258(r29)
/* 801B2428  28 00 00 04 */	cmplwi r0, 4
/* 801B242C  40 80 00 F4 */	bge lbl_801B2520
lbl_801B2430:
/* 801B2430  88 7D 02 58 */	lbz r3, 0x258(r29)
/* 801B2434  38 03 00 01 */	addi r0, r3, 1
/* 801B2438  98 1D 02 58 */	stb r0, 0x258(r29)
/* 801B243C  88 1D 02 58 */	lbz r0, 0x258(r29)
/* 801B2440  28 00 00 03 */	cmplwi r0, 3
/* 801B2444  40 82 00 80 */	bne lbl_801B24C4
/* 801B2448  80 62 A5 50 */	lwz r3, lit_5402(r2)
/* 801B244C  80 02 A5 54 */	lwz r0, data_80453F54(r2)
/* 801B2450  90 61 00 18 */	stw r3, 0x18(r1)
/* 801B2454  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801B2458  80 62 A5 58 */	lwz r3, lit_5403(r2)
/* 801B245C  80 02 A5 5C */	lwz r0, data_80453F5C(r2)
/* 801B2460  90 61 00 10 */	stw r3, 0x10(r1)
/* 801B2464  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B2468  3A E0 00 00 */	li r23, 0
/* 801B246C  3B 40 00 00 */	li r26, 0
/* 801B2470  3B 61 00 18 */	addi r27, r1, 0x18
/* 801B2474  3B 81 00 10 */	addi r28, r1, 0x10
lbl_801B2478:
/* 801B2478  7F A3 EB 78 */	mr r3, r29
/* 801B247C  8B 1B 00 00 */	lbz r24, 0(r27)
/* 801B2480  7F 04 C3 78 */	mr r4, r24
/* 801B2484  8B 3C 00 00 */	lbz r25, 0(r28)
/* 801B2488  7F 25 CB 78 */	mr r5, r25
/* 801B248C  38 C0 00 01 */	li r6, 1
/* 801B2490  48 00 22 6D */	bl getItemTag__17dMenu_Collect2D_cFiib
/* 801B2494  7C 84 D2 78 */	xor r4, r4, r26
/* 801B2498  7C 60 D2 78 */	xor r0, r3, r26
/* 801B249C  7C 80 03 79 */	or. r0, r4, r0
/* 801B24A0  41 82 00 10 */	beq lbl_801B24B0
/* 801B24A4  9B 1D 02 57 */	stb r24, 0x257(r29)
/* 801B24A8  9B 3D 02 58 */	stb r25, 0x258(r29)
/* 801B24AC  48 00 00 18 */	b lbl_801B24C4
lbl_801B24B0:
/* 801B24B0  3A F7 00 01 */	addi r23, r23, 1
/* 801B24B4  2C 17 00 08 */	cmpwi r23, 8
/* 801B24B8  3B 9C 00 01 */	addi r28, r28, 1
/* 801B24BC  3B 7B 00 01 */	addi r27, r27, 1
/* 801B24C0  41 80 FF B8 */	blt lbl_801B2478
lbl_801B24C4:
/* 801B24C4  7F A3 EB 78 */	mr r3, r29
/* 801B24C8  88 9D 02 57 */	lbz r4, 0x257(r29)
/* 801B24CC  88 BD 02 58 */	lbz r5, 0x258(r29)
/* 801B24D0  38 C0 00 01 */	li r6, 1
/* 801B24D4  48 00 22 29 */	bl getItemTag__17dMenu_Collect2D_cFiib
/* 801B24D8  38 A0 00 00 */	li r5, 0
/* 801B24DC  7C 84 2A 78 */	xor r4, r4, r5
/* 801B24E0  7C 60 2A 78 */	xor r0, r3, r5
/* 801B24E4  7C 80 03 79 */	or. r0, r4, r0
/* 801B24E8  40 82 00 64 */	bne lbl_801B254C
/* 801B24EC  88 1D 02 58 */	lbz r0, 0x258(r29)
/* 801B24F0  28 00 00 04 */	cmplwi r0, 4
/* 801B24F4  41 80 FF 3C */	blt lbl_801B2430
/* 801B24F8  38 00 00 05 */	li r0, 5
/* 801B24FC  98 1D 02 58 */	stb r0, 0x258(r29)
/* 801B2500  88 1D 02 57 */	lbz r0, 0x257(r29)
/* 801B2504  28 00 00 02 */	cmplwi r0, 2
/* 801B2508  41 81 00 0C */	bgt lbl_801B2514
/* 801B250C  98 BD 02 57 */	stb r5, 0x257(r29)
/* 801B2510  48 00 00 3C */	b lbl_801B254C
lbl_801B2514:
/* 801B2514  38 00 00 01 */	li r0, 1
/* 801B2518  98 1D 02 57 */	stb r0, 0x257(r29)
/* 801B251C  48 00 00 30 */	b lbl_801B254C
lbl_801B2520:
/* 801B2520  40 82 00 2C */	bne lbl_801B254C
/* 801B2524  38 00 00 05 */	li r0, 5
/* 801B2528  98 1D 02 58 */	stb r0, 0x258(r29)
/* 801B252C  88 1D 02 57 */	lbz r0, 0x257(r29)
/* 801B2530  28 00 00 03 */	cmplwi r0, 3
/* 801B2534  41 81 00 10 */	bgt lbl_801B2544
/* 801B2538  38 00 00 00 */	li r0, 0
/* 801B253C  98 1D 02 57 */	stb r0, 0x257(r29)
/* 801B2540  48 00 00 0C */	b lbl_801B254C
lbl_801B2544:
/* 801B2544  38 00 00 01 */	li r0, 1
/* 801B2548  98 1D 02 57 */	stb r0, 0x257(r29)
lbl_801B254C:
/* 801B254C  88 1D 02 57 */	lbz r0, 0x257(r29)
/* 801B2550  7C 00 F8 40 */	cmplw r0, r31
/* 801B2554  40 82 00 10 */	bne lbl_801B2564
/* 801B2558  88 1D 02 58 */	lbz r0, 0x258(r29)
/* 801B255C  7C 00 F0 40 */	cmplw r0, r30
/* 801B2560  41 82 00 BC */	beq lbl_801B261C
lbl_801B2564:
/* 801B2564  9B FD 02 59 */	stb r31, 0x259(r29)
/* 801B2568  9B DD 02 5A */	stb r30, 0x25a(r29)
/* 801B256C  88 7D 02 57 */	lbz r3, 0x257(r29)
/* 801B2570  28 03 00 01 */	cmplwi r3, 1
/* 801B2574  40 82 00 10 */	bne lbl_801B2584
/* 801B2578  88 1D 02 58 */	lbz r0, 0x258(r29)
/* 801B257C  28 00 00 05 */	cmplwi r0, 5
/* 801B2580  41 82 00 18 */	beq lbl_801B2598
lbl_801B2584:
/* 801B2584  28 03 00 00 */	cmplwi r3, 0
/* 801B2588  40 82 00 48 */	bne lbl_801B25D0
/* 801B258C  88 1D 02 58 */	lbz r0, 0x258(r29)
/* 801B2590  28 00 00 05 */	cmplwi r0, 5
/* 801B2594  40 82 00 3C */	bne lbl_801B25D0
lbl_801B2598:
/* 801B2598  38 00 00 4C */	li r0, 0x4c
/* 801B259C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801B25A0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801B25A4  38 81 00 0C */	addi r4, r1, 0xc
/* 801B25A8  38 A0 00 00 */	li r5, 0
/* 801B25AC  38 C0 00 00 */	li r6, 0
/* 801B25B0  38 E0 00 00 */	li r7, 0
/* 801B25B4  C0 22 A5 2C */	lfs f1, lit_4482(r2)
/* 801B25B8  FC 40 08 90 */	fmr f2, f1
/* 801B25BC  C0 62 A5 60 */	lfs f3, lit_5531(r2)
/* 801B25C0  FC 80 18 90 */	fmr f4, f3
/* 801B25C4  39 00 00 00 */	li r8, 0
/* 801B25C8  48 0F 93 BD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801B25CC  48 00 00 38 */	b lbl_801B2604
lbl_801B25D0:
/* 801B25D0  38 00 00 4D */	li r0, 0x4d
/* 801B25D4  90 01 00 08 */	stw r0, 8(r1)
/* 801B25D8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801B25DC  38 81 00 08 */	addi r4, r1, 8
/* 801B25E0  38 A0 00 00 */	li r5, 0
/* 801B25E4  38 C0 00 00 */	li r6, 0
/* 801B25E8  38 E0 00 00 */	li r7, 0
/* 801B25EC  C0 22 A5 2C */	lfs f1, lit_4482(r2)
/* 801B25F0  FC 40 08 90 */	fmr f2, f1
/* 801B25F4  C0 62 A5 60 */	lfs f3, lit_5531(r2)
/* 801B25F8  FC 80 18 90 */	fmr f4, f3
/* 801B25FC  39 00 00 00 */	li r8, 0
/* 801B2600  48 0F 93 85 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_801B2604:
/* 801B2604  7F A3 EB 78 */	mr r3, r29
/* 801B2608  48 00 01 E5 */	bl cursorPosSet__17dMenu_Collect2D_cFv
/* 801B260C  7F A3 EB 78 */	mr r3, r29
/* 801B2610  88 9D 02 57 */	lbz r4, 0x257(r29)
/* 801B2614  88 BD 02 58 */	lbz r5, 0x258(r29)
/* 801B2618  48 00 3B A5 */	bl setItemNameString__17dMenu_Collect2D_cFUcUc
lbl_801B261C:
/* 801B261C  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 801B2620  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801B2624  3B 83 EB C8 */	addi r28, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801B2628  C0 5C 06 20 */	lfs f2, 0x620(r28)
/* 801B262C  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 801B2630  40 82 00 34 */	bne lbl_801B2664
/* 801B2634  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 801B2638  C0 1C 06 24 */	lfs f0, 0x624(r28)
/* 801B263C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801B2640  40 82 00 24 */	bne lbl_801B2664
/* 801B2644  C0 3D 00 4C */	lfs f1, 0x4c(r29)
/* 801B2648  C0 1C 06 28 */	lfs f0, 0x628(r28)
/* 801B264C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801B2650  40 82 00 14 */	bne lbl_801B2664
/* 801B2654  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 801B2658  C0 1C 06 2C */	lfs f0, 0x62c(r28)
/* 801B265C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801B2660  41 82 01 74 */	beq lbl_801B27D4
lbl_801B2664:
/* 801B2664  D0 5D 00 44 */	stfs f2, 0x44(r29)
/* 801B2668  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801B266C  3B 63 EB C8 */	addi r27, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801B2670  C0 1B 06 24 */	lfs f0, 0x624(r27)
/* 801B2674  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 801B2678  C0 1B 06 28 */	lfs f0, 0x628(r27)
/* 801B267C  D0 1D 00 4C */	stfs f0, 0x4c(r29)
/* 801B2680  C0 1B 06 2C */	lfs f0, 0x62c(r27)
/* 801B2684  D0 1D 00 50 */	stfs f0, 0x50(r29)
/* 801B2688  3A E0 00 00 */	li r23, 0
lbl_801B268C:
/* 801B268C  3B 00 00 00 */	li r24, 0
lbl_801B2690:
/* 801B2690  7F A3 EB 78 */	mr r3, r29
/* 801B2694  7E E4 BB 78 */	mr r4, r23
/* 801B2698  7F 05 C3 78 */	mr r5, r24
/* 801B269C  38 C0 00 01 */	li r6, 1
/* 801B26A0  48 00 20 5D */	bl getItemTag__17dMenu_Collect2D_cFiib
/* 801B26A4  38 00 00 00 */	li r0, 0
/* 801B26A8  7C 84 02 78 */	xor r4, r4, r0
/* 801B26AC  7C 60 02 78 */	xor r0, r3, r0
/* 801B26B0  7C 80 03 79 */	or. r0, r4, r0
/* 801B26B4  41 82 01 08 */	beq lbl_801B27BC
/* 801B26B8  7F A3 EB 78 */	mr r3, r29
/* 801B26BC  7E E4 BB 78 */	mr r4, r23
/* 801B26C0  7F 05 C3 78 */	mr r5, r24
/* 801B26C4  38 C0 00 01 */	li r6, 1
/* 801B26C8  48 00 20 35 */	bl getItemTag__17dMenu_Collect2D_cFiib
/* 801B26CC  7C 65 1B 78 */	mr r5, r3
/* 801B26D0  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 801B26D4  7C 86 23 78 */	mr r6, r4
/* 801B26D8  81 83 00 00 */	lwz r12, 0(r3)
/* 801B26DC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B26E0  7D 89 03 A6 */	mtctr r12
/* 801B26E4  4E 80 04 21 */	bctrl 
/* 801B26E8  2C 17 00 00 */	cmpwi r23, 0
/* 801B26EC  40 82 00 0C */	bne lbl_801B26F8
/* 801B26F0  2C 18 00 00 */	cmpwi r24, 0
/* 801B26F4  41 82 00 C8 */	beq lbl_801B27BC
lbl_801B26F8:
/* 801B26F8  2C 17 00 06 */	cmpwi r23, 6
/* 801B26FC  40 82 00 0C */	bne lbl_801B2708
/* 801B2700  2C 18 00 00 */	cmpwi r24, 0
/* 801B2704  41 82 00 B8 */	beq lbl_801B27BC
lbl_801B2708:
/* 801B2708  2C 18 00 05 */	cmpwi r24, 5
/* 801B270C  40 82 00 5C */	bne lbl_801B2768
/* 801B2710  88 1D 02 57 */	lbz r0, 0x257(r29)
/* 801B2714  7C 17 00 00 */	cmpw r23, r0
/* 801B2718  40 82 00 30 */	bne lbl_801B2748
/* 801B271C  88 1D 02 58 */	lbz r0, 0x258(r29)
/* 801B2720  7C 18 00 00 */	cmpw r24, r0
/* 801B2724  40 82 00 24 */	bne lbl_801B2748
/* 801B2728  C0 1B 06 2C */	lfs f0, 0x62c(r27)
/* 801B272C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801B2730  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801B2734  81 83 00 00 */	lwz r12, 0(r3)
/* 801B2738  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801B273C  7D 89 03 A6 */	mtctr r12
/* 801B2740  4E 80 04 21 */	bctrl 
/* 801B2744  48 00 00 78 */	b lbl_801B27BC
lbl_801B2748:
/* 801B2748  C0 1B 06 28 */	lfs f0, 0x628(r27)
/* 801B274C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801B2750  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801B2754  81 83 00 00 */	lwz r12, 0(r3)
/* 801B2758  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801B275C  7D 89 03 A6 */	mtctr r12
/* 801B2760  4E 80 04 21 */	bctrl 
/* 801B2764  48 00 00 58 */	b lbl_801B27BC
lbl_801B2768:
/* 801B2768  88 1D 02 57 */	lbz r0, 0x257(r29)
/* 801B276C  7C 17 00 00 */	cmpw r23, r0
/* 801B2770  40 82 00 30 */	bne lbl_801B27A0
/* 801B2774  88 1D 02 58 */	lbz r0, 0x258(r29)
/* 801B2778  7C 18 00 00 */	cmpw r24, r0
/* 801B277C  40 82 00 24 */	bne lbl_801B27A0
/* 801B2780  C0 1B 06 24 */	lfs f0, 0x624(r27)
/* 801B2784  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801B2788  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801B278C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B2790  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801B2794  7D 89 03 A6 */	mtctr r12
/* 801B2798  4E 80 04 21 */	bctrl 
/* 801B279C  48 00 00 20 */	b lbl_801B27BC
lbl_801B27A0:
/* 801B27A0  C0 1C 06 20 */	lfs f0, 0x620(r28)
/* 801B27A4  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801B27A8  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801B27AC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B27B0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801B27B4  7D 89 03 A6 */	mtctr r12
/* 801B27B8  4E 80 04 21 */	bctrl 
lbl_801B27BC:
/* 801B27BC  3B 18 00 01 */	addi r24, r24, 1
/* 801B27C0  2C 18 00 06 */	cmpwi r24, 6
/* 801B27C4  41 80 FE CC */	blt lbl_801B2690
/* 801B27C8  3A F7 00 01 */	addi r23, r23, 1
/* 801B27CC  2C 17 00 07 */	cmpwi r23, 7
/* 801B27D0  41 80 FE BC */	blt lbl_801B268C
lbl_801B27D4:
/* 801B27D4  39 61 00 60 */	addi r11, r1, 0x60
/* 801B27D8  48 1A FA 39 */	bl _restgpr_23
/* 801B27DC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 801B27E0  7C 08 03 A6 */	mtlr r0
/* 801B27E4  38 21 00 60 */	addi r1, r1, 0x60
/* 801B27E8  4E 80 00 20 */	blr 
