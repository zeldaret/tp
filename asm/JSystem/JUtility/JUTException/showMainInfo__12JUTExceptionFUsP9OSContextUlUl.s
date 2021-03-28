lbl_802E27B0:
/* 802E27B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E27B4  7C 08 02 A6 */	mflr r0
/* 802E27B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E27BC  39 61 00 20 */	addi r11, r1, 0x20
/* 802E27C0  48 07 FA 19 */	bl _savegpr_28
/* 802E27C4  7C 9F 23 78 */	mr r31, r4
/* 802E27C8  7C BC 2B 78 */	mr r28, r5
/* 802E27CC  7C DD 33 78 */	mr r29, r6
/* 802E27D0  7C FE 3B 78 */	mr r30, r7
/* 802E27D4  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E27D8  28 03 00 00 */	cmplwi r3, 0
/* 802E27DC  41 82 02 90 */	beq lbl_802E2A6C
/* 802E27E0  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 802E27E4  28 00 00 11 */	cmplwi r0, 0x11
/* 802E27E8  40 80 00 2C */	bge lbl_802E2814
/* 802E27EC  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha
/* 802E27F0  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l
/* 802E27F4  38 84 01 BF */	addi r4, r4, 0x1bf
/* 802E27F8  57 E0 13 BA */	rlwinm r0, r31, 2, 0xe, 0x1d
/* 802E27FC  3C C0 80 3D */	lis r6, sCpuExpName__12JUTException@ha
/* 802E2800  38 C6 C6 60 */	addi r6, r6, sCpuExpName__12JUTException@l
/* 802E2804  7C C6 00 2E */	lwzx r6, r6, r0
/* 802E2808  4C C6 31 82 */	crclr 6
/* 802E280C  48 00 53 AD */	bl print_f__10JUTConsoleFPCce
/* 802E2810  48 00 00 18 */	b lbl_802E2828
lbl_802E2814:
/* 802E2814  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha
/* 802E2818  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l
/* 802E281C  38 84 01 DE */	addi r4, r4, 0x1de
/* 802E2820  4C C6 31 82 */	crclr 6
/* 802E2824  48 00 53 95 */	bl print_f__10JUTConsoleFPCce
lbl_802E2828:
/* 802E2828  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 802E282C  28 00 00 10 */	cmplwi r0, 0x10
/* 802E2830  40 82 01 FC */	bne lbl_802E2A2C
/* 802E2834  80 6D 8F A4 */	lwz r3, fpscr__12JUTException(r13)
/* 802E2838  54 60 B0 8C */	rlwinm r0, r3, 0x16, 2, 6
/* 802E283C  64 00 01 F8 */	oris r0, r0, 0x1f8
/* 802E2840  60 00 07 00 */	ori r0, r0, 0x700
/* 802E2844  7C 7F 00 38 */	and r31, r3, r0
/* 802E2848  57 E0 00 85 */	rlwinm. r0, r31, 0, 2, 2
/* 802E284C  41 82 01 60 */	beq lbl_802E29AC
/* 802E2850  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E2854  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha
/* 802E2858  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l
/* 802E285C  38 84 01 ED */	addi r4, r4, 0x1ed
/* 802E2860  4C C6 31 82 */	crclr 6
/* 802E2864  48 00 53 55 */	bl print_f__10JUTConsoleFPCce
/* 802E2868  80 0D 8F A4 */	lwz r0, fpscr__12JUTException(r13)
/* 802E286C  54 00 01 CF */	rlwinm. r0, r0, 0, 7, 7
/* 802E2870  41 82 00 1C */	beq lbl_802E288C
/* 802E2874  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E2878  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha
/* 802E287C  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l
/* 802E2880  38 84 02 06 */	addi r4, r4, 0x206
/* 802E2884  4C C6 31 82 */	crclr 6
/* 802E2888  48 00 53 31 */	bl print_f__10JUTConsoleFPCce
lbl_802E288C:
/* 802E288C  80 0D 8F A4 */	lwz r0, fpscr__12JUTException(r13)
/* 802E2890  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 802E2894  41 82 00 1C */	beq lbl_802E28B0
/* 802E2898  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E289C  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha
/* 802E28A0  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l
/* 802E28A4  38 84 02 0D */	addi r4, r4, 0x20d
/* 802E28A8  4C C6 31 82 */	crclr 6
/* 802E28AC  48 00 53 0D */	bl print_f__10JUTConsoleFPCce
lbl_802E28B0:
/* 802E28B0  80 0D 8F A4 */	lwz r0, fpscr__12JUTException(r13)
/* 802E28B4  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 802E28B8  41 82 00 1C */	beq lbl_802E28D4
/* 802E28BC  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E28C0  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha
/* 802E28C4  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l
/* 802E28C8  38 84 02 23 */	addi r4, r4, 0x223
/* 802E28CC  4C C6 31 82 */	crclr 6
/* 802E28D0  48 00 52 E9 */	bl print_f__10JUTConsoleFPCce
lbl_802E28D4:
/* 802E28D4  80 0D 8F A4 */	lwz r0, fpscr__12JUTException(r13)
/* 802E28D8  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 802E28DC  41 82 00 1C */	beq lbl_802E28F8
/* 802E28E0  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E28E4  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha
/* 802E28E8  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l
/* 802E28EC  38 84 02 39 */	addi r4, r4, 0x239
/* 802E28F0  4C C6 31 82 */	crclr 6
/* 802E28F4  48 00 52 C5 */	bl print_f__10JUTConsoleFPCce
lbl_802E28F8:
/* 802E28F8  80 0D 8F A4 */	lwz r0, fpscr__12JUTException(r13)
/* 802E28FC  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 802E2900  41 82 00 1C */	beq lbl_802E291C
/* 802E2904  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E2908  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha
/* 802E290C  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l
/* 802E2910  38 84 02 41 */	addi r4, r4, 0x241
/* 802E2914  4C C6 31 82 */	crclr 6
/* 802E2918  48 00 52 A1 */	bl print_f__10JUTConsoleFPCce
lbl_802E291C:
/* 802E291C  80 0D 8F A4 */	lwz r0, fpscr__12JUTException(r13)
/* 802E2920  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 802E2924  41 82 00 1C */	beq lbl_802E2940
/* 802E2928  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E292C  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha
/* 802E2930  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l
/* 802E2934  38 84 02 50 */	addi r4, r4, 0x250
/* 802E2938  4C C6 31 82 */	crclr 6
/* 802E293C  48 00 52 7D */	bl print_f__10JUTConsoleFPCce
lbl_802E2940:
/* 802E2940  80 0D 8F A4 */	lwz r0, fpscr__12JUTException(r13)
/* 802E2944  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 802E2948  41 82 00 1C */	beq lbl_802E2964
/* 802E294C  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E2950  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha
/* 802E2954  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l
/* 802E2958  38 84 02 62 */	addi r4, r4, 0x262
/* 802E295C  4C C6 31 82 */	crclr 6
/* 802E2960  48 00 52 59 */	bl print_f__10JUTConsoleFPCce
lbl_802E2964:
/* 802E2964  80 0D 8F A4 */	lwz r0, fpscr__12JUTException(r13)
/* 802E2968  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 802E296C  41 82 00 1C */	beq lbl_802E2988
/* 802E2970  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E2974  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha
/* 802E2978  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l
/* 802E297C  38 84 02 75 */	addi r4, r4, 0x275
/* 802E2980  4C C6 31 82 */	crclr 6
/* 802E2984  48 00 52 35 */	bl print_f__10JUTConsoleFPCce
lbl_802E2988:
/* 802E2988  80 0D 8F A4 */	lwz r0, fpscr__12JUTException(r13)
/* 802E298C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 802E2990  41 82 00 1C */	beq lbl_802E29AC
/* 802E2994  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E2998  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha
/* 802E299C  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l
/* 802E29A0  38 84 02 8B */	addi r4, r4, 0x28b
/* 802E29A4  4C C6 31 82 */	crclr 6
/* 802E29A8  48 00 52 11 */	bl print_f__10JUTConsoleFPCce
lbl_802E29AC:
/* 802E29AC  57 E0 00 C7 */	rlwinm. r0, r31, 0, 3, 3
/* 802E29B0  41 82 00 1C */	beq lbl_802E29CC
/* 802E29B4  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E29B8  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha
/* 802E29BC  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l
/* 802E29C0  38 84 02 A5 */	addi r4, r4, 0x2a5
/* 802E29C4  4C C6 31 82 */	crclr 6
/* 802E29C8  48 00 51 F1 */	bl print_f__10JUTConsoleFPCce
lbl_802E29CC:
/* 802E29CC  57 E0 01 09 */	rlwinm. r0, r31, 0, 4, 4
/* 802E29D0  41 82 00 1C */	beq lbl_802E29EC
/* 802E29D4  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E29D8  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha
/* 802E29DC  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l
/* 802E29E0  38 84 02 B5 */	addi r4, r4, 0x2b5
/* 802E29E4  4C C6 31 82 */	crclr 6
/* 802E29E8  48 00 51 D1 */	bl print_f__10JUTConsoleFPCce
lbl_802E29EC:
/* 802E29EC  57 E0 01 4B */	rlwinm. r0, r31, 0, 5, 5
/* 802E29F0  41 82 00 1C */	beq lbl_802E2A0C
/* 802E29F4  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E29F8  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha
/* 802E29FC  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l
/* 802E2A00  38 84 02 C6 */	addi r4, r4, 0x2c6
/* 802E2A04  4C C6 31 82 */	crclr 6
/* 802E2A08  48 00 51 B1 */	bl print_f__10JUTConsoleFPCce
lbl_802E2A0C:
/* 802E2A0C  57 E0 01 8D */	rlwinm. r0, r31, 0, 6, 6
/* 802E2A10  41 82 00 1C */	beq lbl_802E2A2C
/* 802E2A14  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E2A18  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha
/* 802E2A1C  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l
/* 802E2A20  38 84 02 DB */	addi r4, r4, 0x2db
/* 802E2A24  4C C6 31 82 */	crclr 6
/* 802E2A28  48 00 51 91 */	bl print_f__10JUTConsoleFPCce
lbl_802E2A2C:
/* 802E2A2C  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E2A30  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha
/* 802E2A34  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l
/* 802E2A38  38 84 02 F1 */	addi r4, r4, 0x2f1
/* 802E2A3C  80 BC 01 98 */	lwz r5, 0x198(r28)
/* 802E2A40  80 DC 01 9C */	lwz r6, 0x19c(r28)
/* 802E2A44  4C C6 31 82 */	crclr 6
/* 802E2A48  48 00 51 71 */	bl print_f__10JUTConsoleFPCce
/* 802E2A4C  80 6D 8F 9C */	lwz r3, sConsole__12JUTException(r13)
/* 802E2A50  3C 80 80 3A */	lis r4, JUTException__stringBase0@ha
/* 802E2A54  38 84 D4 90 */	addi r4, r4, JUTException__stringBase0@l
/* 802E2A58  38 84 03 0D */	addi r4, r4, 0x30d
/* 802E2A5C  7F A5 EB 78 */	mr r5, r29
/* 802E2A60  7F C6 F3 78 */	mr r6, r30
/* 802E2A64  4C C6 31 82 */	crclr 6
/* 802E2A68  48 00 51 51 */	bl print_f__10JUTConsoleFPCce
lbl_802E2A6C:
/* 802E2A6C  39 61 00 20 */	addi r11, r1, 0x20
/* 802E2A70  48 07 F7 B5 */	bl _restgpr_28
/* 802E2A74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E2A78  7C 08 03 A6 */	mtlr r0
/* 802E2A7C  38 21 00 20 */	addi r1, r1, 0x20
/* 802E2A80  4E 80 00 20 */	blr 
