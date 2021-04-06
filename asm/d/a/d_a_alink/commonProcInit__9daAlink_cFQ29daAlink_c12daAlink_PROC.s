lbl_800C1F6C:
/* 800C1F6C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800C1F70  7C 08 02 A6 */	mflr r0
/* 800C1F74  90 01 00 34 */	stw r0, 0x34(r1)
/* 800C1F78  39 61 00 30 */	addi r11, r1, 0x30
/* 800C1F7C  48 2A 02 51 */	bl _savegpr_25
/* 800C1F80  7C 79 1B 78 */	mr r25, r3
/* 800C1F84  7C 9A 23 78 */	mr r26, r4
/* 800C1F88  A0 A3 2F E8 */	lhz r5, 0x2fe8(r3)
/* 800C1F8C  28 05 01 3D */	cmplwi r5, 0x13d
/* 800C1F90  40 82 00 40 */	bne lbl_800C1FD0
/* 800C1F94  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C1F98  D0 19 04 FC */	stfs f0, 0x4fc(r25)
/* 800C1F9C  48 05 5B F5 */	bl resetDemoBck__9daAlink_cFv
/* 800C1FA0  80 19 31 A0 */	lwz r0, 0x31a0(r25)
/* 800C1FA4  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800C1FA8  41 82 00 0C */	beq lbl_800C1FB4
/* 800C1FAC  7F 23 CB 78 */	mr r3, r25
/* 800C1FB0  48 02 AB A9 */	bl initForceRideHorse__9daAlink_cFv
lbl_800C1FB4:
/* 800C1FB4  A8 19 30 0C */	lha r0, 0x300c(r25)
/* 800C1FB8  2C 00 00 00 */	cmpwi r0, 0
/* 800C1FBC  41 82 02 94 */	beq lbl_800C2250
/* 800C1FC0  7F 23 CB 78 */	mr r3, r25
/* 800C1FC4  38 80 00 01 */	li r4, 1
/* 800C1FC8  4B FF FE 45 */	bl changeWarpMaterial__9daAlink_cFQ29daAlink_c21daAlink_WARP_MAT_MODE
/* 800C1FCC  48 00 02 84 */	b lbl_800C2250
lbl_800C1FD0:
/* 800C1FD0  28 05 00 73 */	cmplwi r5, 0x73
/* 800C1FD4  40 82 00 54 */	bne lbl_800C2028
/* 800C1FD8  38 60 00 00 */	li r3, 0
/* 800C1FDC  38 8D 8B E0 */	la r4, Zero__5csXyz(r13) /* 80451160-_SDA_BASE_ */
/* 800C1FE0  38 00 00 02 */	li r0, 2
/* 800C1FE4  7C 09 03 A6 */	mtctr r0
lbl_800C1FE8:
/* 800C1FE8  A8 0D 8B E0 */	lha r0, Zero__5csXyz(r13)
/* 800C1FEC  7C B9 1A 14 */	add r5, r25, r3
/* 800C1FF0  B0 05 31 2A */	sth r0, 0x312a(r5)
/* 800C1FF4  A8 04 00 02 */	lha r0, 2(r4)
/* 800C1FF8  B0 05 31 2C */	sth r0, 0x312c(r5)
/* 800C1FFC  A8 04 00 04 */	lha r0, 4(r4)
/* 800C2000  B0 05 31 2E */	sth r0, 0x312e(r5)
/* 800C2004  A8 0D 8B E0 */	lha r0, Zero__5csXyz(r13)
/* 800C2008  B0 05 31 36 */	sth r0, 0x3136(r5)
/* 800C200C  A8 04 00 02 */	lha r0, 2(r4)
/* 800C2010  B0 05 31 38 */	sth r0, 0x3138(r5)
/* 800C2014  A8 04 00 04 */	lha r0, 4(r4)
/* 800C2018  B0 05 31 3A */	sth r0, 0x313a(r5)
/* 800C201C  38 63 00 06 */	addi r3, r3, 6
/* 800C2020  42 00 FF C8 */	bdnz lbl_800C1FE8
/* 800C2024  48 00 02 2C */	b lbl_800C2250
lbl_800C2028:
/* 800C2028  28 05 00 BA */	cmplwi r5, 0xba
/* 800C202C  40 82 00 0C */	bne lbl_800C2038
/* 800C2030  4B FF D8 55 */	bl returnKeepItemData__9daAlink_cFv
/* 800C2034  48 00 02 1C */	b lbl_800C2250
lbl_800C2038:
/* 800C2038  80 19 31 A0 */	lwz r0, 0x31a0(r25)
/* 800C203C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800C2040  41 82 00 A0 */	beq lbl_800C20E0
/* 800C2044  80 99 28 10 */	lwz r4, 0x2810(r25)
/* 800C2048  28 04 00 00 */	cmplwi r4, 0
/* 800C204C  41 82 00 70 */	beq lbl_800C20BC
/* 800C2050  28 05 01 23 */	cmplwi r5, 0x123
/* 800C2054  40 82 00 20 */	bne lbl_800C2074
/* 800C2058  A0 04 05 8E */	lhz r0, 0x58e(r4)
/* 800C205C  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 800C2060  B0 04 05 8E */	sth r0, 0x58e(r4)
/* 800C2064  2C 1A 00 F9 */	cmpwi r26, 0xf9
/* 800C2068  41 82 00 54 */	beq lbl_800C20BC
/* 800C206C  48 07 6E AD */	bl resetWolfBallGrab__9daAlink_cFv
/* 800C2070  48 00 00 4C */	b lbl_800C20BC
lbl_800C2074:
/* 800C2074  28 05 00 BC */	cmplwi r5, 0xbc
/* 800C2078  40 82 00 14 */	bne lbl_800C208C
/* 800C207C  A0 04 06 BE */	lhz r0, 0x6be(r4)
/* 800C2080  60 00 00 02 */	ori r0, r0, 2
/* 800C2084  B0 04 06 BE */	sth r0, 0x6be(r4)
/* 800C2088  48 00 00 34 */	b lbl_800C20BC
lbl_800C208C:
/* 800C208C  28 05 00 C1 */	cmplwi r5, 0xc1
/* 800C2090  40 82 00 14 */	bne lbl_800C20A4
/* 800C2094  A0 04 05 68 */	lhz r0, 0x568(r4)
/* 800C2098  60 00 01 00 */	ori r0, r0, 0x100
/* 800C209C  B0 04 05 68 */	sth r0, 0x568(r4)
/* 800C20A0  48 00 00 1C */	b lbl_800C20BC
lbl_800C20A4:
/* 800C20A4  28 05 00 E2 */	cmplwi r5, 0xe2
/* 800C20A8  41 82 00 0C */	beq lbl_800C20B4
/* 800C20AC  28 05 00 E3 */	cmplwi r5, 0xe3
/* 800C20B0  40 82 00 0C */	bne lbl_800C20BC
lbl_800C20B4:
/* 800C20B4  7C 83 23 78 */	mr r3, r4
/* 800C20B8  4B F7 5A 2D */	bl dead__12daItemBase_cFv
lbl_800C20BC:
/* 800C20BC  38 79 28 0C */	addi r3, r25, 0x280c
/* 800C20C0  48 09 CC 3D */	bl clearData__16daPy_actorKeep_cFv
/* 800C20C4  A0 19 2F E8 */	lhz r0, 0x2fe8(r25)
/* 800C20C8  28 00 00 B5 */	cmplwi r0, 0xb5
/* 800C20CC  40 82 01 84 */	bne lbl_800C2250
/* 800C20D0  80 19 05 78 */	lwz r0, 0x578(r25)
/* 800C20D4  54 00 01 04 */	rlwinm r0, r0, 0, 4, 2
/* 800C20D8  90 19 05 78 */	stw r0, 0x578(r25)
/* 800C20DC  48 00 01 74 */	b lbl_800C2250
lbl_800C20E0:
/* 800C20E0  28 05 00 C6 */	cmplwi r5, 0xc6
/* 800C20E4  40 82 00 2C */	bne lbl_800C2110
/* 800C20E8  48 04 67 41 */	bl cancelHookshotCarry__9daAlink_cFv
/* 800C20EC  7F 23 CB 78 */	mr r3, r25
/* 800C20F0  A8 99 04 E4 */	lha r4, 0x4e4(r25)
/* 800C20F4  38 A0 00 00 */	li r5, 0
/* 800C20F8  38 C0 00 00 */	li r6, 0
/* 800C20FC  4B FE BA 7D */	bl setOldRootQuaternion__9daAlink_cFsss
/* 800C2100  7F 23 CB 78 */	mr r3, r25
/* 800C2104  38 80 00 01 */	li r4, 1
/* 800C2108  4B FF 50 89 */	bl cancelItemUseQuake__9daAlink_cFi
/* 800C210C  48 00 01 44 */	b lbl_800C2250
lbl_800C2110:
/* 800C2110  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C2114  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C2118  80 04 5F 1C */	lwz r0, 0x5f1c(r4)
/* 800C211C  74 00 02 01 */	andis. r0, r0, 0x201
/* 800C2120  41 82 00 38 */	beq lbl_800C2158
/* 800C2124  28 05 00 C6 */	cmplwi r5, 0xc6
/* 800C2128  41 82 00 0C */	beq lbl_800C2134
/* 800C212C  38 80 00 00 */	li r4, 0
/* 800C2130  4B FF 50 61 */	bl cancelItemUseQuake__9daAlink_cFi
lbl_800C2134:
/* 800C2134  80 79 28 58 */	lwz r3, 0x2858(r25)
/* 800C2138  28 03 00 00 */	cmplwi r3, 0
/* 800C213C  41 82 01 14 */	beq lbl_800C2250
/* 800C2140  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 800C2144  54 00 03 14 */	rlwinm r0, r0, 0, 0xc, 0xa
/* 800C2148  90 03 04 9C */	stw r0, 0x49c(r3)
/* 800C214C  38 79 28 54 */	addi r3, r25, 0x2854
/* 800C2150  48 09 CB AD */	bl clearData__16daPy_actorKeep_cFv
/* 800C2154  48 00 00 FC */	b lbl_800C2250
lbl_800C2158:
/* 800C2158  28 05 01 36 */	cmplwi r5, 0x136
/* 800C215C  40 82 00 0C */	bne lbl_800C2168
/* 800C2160  48 07 6A A5 */	bl resetWolfEnemyBiteAll__9daAlink_cFv
/* 800C2164  48 00 00 EC */	b lbl_800C2250
lbl_800C2168:
/* 800C2168  48 06 5C 01 */	bl checkWolfShapeReverse__9daAlink_cCFv
/* 800C216C  2C 03 00 00 */	cmpwi r3, 0
/* 800C2170  41 82 00 5C */	beq lbl_800C21CC
/* 800C2174  7F 23 CB 78 */	mr r3, r25
/* 800C2178  38 80 00 00 */	li r4, 0
/* 800C217C  38 A0 80 00 */	li r5, -32768
/* 800C2180  38 C0 00 00 */	li r6, 0
/* 800C2184  4B FE B9 F5 */	bl setOldRootQuaternion__9daAlink_cFsss
/* 800C2188  A8 79 04 E6 */	lha r3, 0x4e6(r25)
/* 800C218C  3C 63 00 01 */	addis r3, r3, 1
/* 800C2190  38 03 80 00 */	addi r0, r3, -32768
/* 800C2194  B0 19 04 E6 */	sth r0, 0x4e6(r25)
/* 800C2198  A8 19 04 E6 */	lha r0, 0x4e6(r25)
/* 800C219C  B0 19 2F E4 */	sth r0, 0x2fe4(r25)
/* 800C21A0  A8 19 04 E4 */	lha r0, 0x4e4(r25)
/* 800C21A4  7C 00 00 D0 */	neg r0, r0
/* 800C21A8  B0 19 04 E4 */	sth r0, 0x4e4(r25)
/* 800C21AC  A8 19 04 E6 */	lha r0, 0x4e6(r25)
/* 800C21B0  B0 19 2F E6 */	sth r0, 0x2fe6(r25)
/* 800C21B4  A0 19 2F E8 */	lhz r0, 0x2fe8(r25)
/* 800C21B8  28 00 01 0E */	cmplwi r0, 0x10e
/* 800C21BC  41 82 00 94 */	beq lbl_800C2250
/* 800C21C0  A8 19 04 E6 */	lha r0, 0x4e6(r25)
/* 800C21C4  B0 19 04 DE */	sth r0, 0x4de(r25)
/* 800C21C8  48 00 00 88 */	b lbl_800C2250
lbl_800C21CC:
/* 800C21CC  A0 19 2F E8 */	lhz r0, 0x2fe8(r25)
/* 800C21D0  28 00 01 4F */	cmplwi r0, 0x14f
/* 800C21D4  40 82 00 14 */	bne lbl_800C21E8
/* 800C21D8  7F 23 CB 78 */	mr r3, r25
/* 800C21DC  38 80 00 01 */	li r4, 1
/* 800C21E0  4B FF FC 2D */	bl changeWarpMaterial__9daAlink_cFQ29daAlink_c21daAlink_WARP_MAT_MODE
/* 800C21E4  48 00 00 6C */	b lbl_800C2250
lbl_800C21E8:
/* 800C21E8  28 00 00 F9 */	cmplwi r0, 0xf9
/* 800C21EC  40 82 00 10 */	bne lbl_800C21FC
/* 800C21F0  7F 23 CB 78 */	mr r3, r25
/* 800C21F4  48 07 6D 25 */	bl resetWolfBallGrab__9daAlink_cFv
/* 800C21F8  48 00 00 58 */	b lbl_800C2250
lbl_800C21FC:
/* 800C21FC  28 00 00 AF */	cmplwi r0, 0xaf
/* 800C2200  40 82 00 10 */	bne lbl_800C2210
/* 800C2204  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800C2208  D0 19 1F 50 */	stfs f0, 0x1f50(r25)
/* 800C220C  48 00 00 44 */	b lbl_800C2250
lbl_800C2210:
/* 800C2210  28 00 00 DE */	cmplwi r0, 0xde
/* 800C2214  41 82 00 14 */	beq lbl_800C2228
/* 800C2218  28 00 01 0A */	cmplwi r0, 0x10a
/* 800C221C  41 82 00 0C */	beq lbl_800C2228
/* 800C2220  28 00 01 42 */	cmplwi r0, 0x142
/* 800C2224  40 82 00 1C */	bne lbl_800C2240
lbl_800C2228:
/* 800C2228  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C222C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C2230  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800C2234  38 80 00 1F */	li r4, 0x1f
/* 800C2238  4B FA DB 5D */	bl StopQuake__12dVibration_cFi
/* 800C223C  48 00 00 14 */	b lbl_800C2250
lbl_800C2240:
/* 800C2240  28 00 00 1F */	cmplwi r0, 0x1f
/* 800C2244  40 82 00 0C */	bne lbl_800C2250
/* 800C2248  38 00 FF FF */	li r0, -1
/* 800C224C  90 19 08 44 */	stw r0, 0x844(r25)
lbl_800C2250:
/* 800C2250  A0 19 2F E8 */	lhz r0, 0x2fe8(r25)
/* 800C2254  28 00 00 AE */	cmplwi r0, 0xae
/* 800C2258  41 82 00 0C */	beq lbl_800C2264
/* 800C225C  28 00 01 2E */	cmplwi r0, 0x12e
/* 800C2260  40 82 00 14 */	bne lbl_800C2274
lbl_800C2264:
/* 800C2264  38 00 00 00 */	li r0, 0
/* 800C2268  98 19 2F A3 */	stb r0, 0x2fa3(r25)
/* 800C226C  38 79 28 44 */	addi r3, r25, 0x2844
/* 800C2270  48 09 CA 8D */	bl clearData__16daPy_actorKeep_cFv
lbl_800C2274:
/* 800C2274  A0 19 2F E8 */	lhz r0, 0x2fe8(r25)
/* 800C2278  20 00 00 A2 */	subfic r0, r0, 0xa2
/* 800C227C  7C 00 00 34 */	cntlzw r0, r0
/* 800C2280  54 1F D9 7E */	srwi r31, r0, 5
/* 800C2284  80 19 05 70 */	lwz r0, 0x570(r25)
/* 800C2288  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 800C228C  90 19 05 70 */	stw r0, 0x570(r25)
/* 800C2290  80 79 31 A0 */	lwz r3, 0x31a0(r25)
/* 800C2294  54 7B 7F FE */	rlwinm r27, r3, 0xf, 0x1f, 0x1f
/* 800C2298  54 60 FF FE */	rlwinm r0, r3, 0x1f, 0x1f, 0x1f
/* 800C229C  68 1C 00 01 */	xori r28, r0, 1
/* 800C22A0  54 7E 03 5A */	rlwinm r30, r3, 0, 0xd, 0xd
/* 800C22A4  54 7D 05 6B */	rlwinm. r29, r3, 0, 0x15, 0x15
/* 800C22A8  41 82 00 48 */	beq lbl_800C22F0
/* 800C22AC  7F 23 CB 78 */	mr r3, r25
/* 800C22B0  81 99 06 28 */	lwz r12, 0x628(r25)
/* 800C22B4  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 800C22B8  7D 89 03 A6 */	mtctr r12
/* 800C22BC  4E 80 04 21 */	bctrl 
/* 800C22C0  28 03 00 00 */	cmplwi r3, 0
/* 800C22C4  40 82 00 2C */	bne lbl_800C22F0
/* 800C22C8  7F 23 CB 78 */	mr r3, r25
/* 800C22CC  81 99 06 28 */	lwz r12, 0x628(r25)
/* 800C22D0  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 800C22D4  7D 89 03 A6 */	mtctr r12
/* 800C22D8  4E 80 04 21 */	bctrl 
/* 800C22DC  28 03 00 00 */	cmplwi r3, 0
/* 800C22E0  40 82 00 10 */	bne lbl_800C22F0
/* 800C22E4  38 00 00 A0 */	li r0, 0xa0
/* 800C22E8  98 19 2F 99 */	stb r0, 0x2f99(r25)
/* 800C22EC  48 00 00 34 */	b lbl_800C2320
lbl_800C22F0:
/* 800C22F0  80 99 31 A0 */	lwz r4, 0x31a0(r25)
/* 800C22F4  3C 60 00 04 */	lis r3, 0x0004 /* 0x00040840@ha */
/* 800C22F8  38 03 08 40 */	addi r0, r3, 0x0840 /* 0x00040840@l */
/* 800C22FC  7C 80 00 39 */	and. r0, r4, r0
/* 800C2300  40 82 00 18 */	bne lbl_800C2318
/* 800C2304  A0 19 2F E8 */	lhz r0, 0x2fe8(r25)
/* 800C2308  28 00 00 DC */	cmplwi r0, 0xdc
/* 800C230C  41 82 00 0C */	beq lbl_800C2318
/* 800C2310  28 00 01 31 */	cmplwi r0, 0x131
/* 800C2314  40 82 00 0C */	bne lbl_800C2320
lbl_800C2318:
/* 800C2318  38 00 00 70 */	li r0, 0x70
/* 800C231C  98 19 2F 99 */	stb r0, 0x2f99(r25)
lbl_800C2320:
/* 800C2320  57 44 20 36 */	slwi r4, r26, 4
/* 800C2324  3C 60 80 3B */	lis r3, m_procInitTable__9daAlink_c@ha /* 0x803B0A28@ha */
/* 800C2328  38 03 0A 28 */	addi r0, r3, m_procInitTable__9daAlink_c@l /* 0x803B0A28@l */
/* 800C232C  7C 80 22 14 */	add r4, r0, r4
/* 800C2330  80 64 00 00 */	lwz r3, 0(r4)
/* 800C2334  80 04 00 04 */	lwz r0, 4(r4)
/* 800C2338  90 79 38 50 */	stw r3, 0x3850(r25)
/* 800C233C  90 19 38 54 */	stw r0, 0x3854(r25)
/* 800C2340  80 04 00 08 */	lwz r0, 8(r4)
/* 800C2344  90 19 38 58 */	stw r0, 0x3858(r25)
/* 800C2348  B3 59 2F E8 */	sth r26, 0x2fe8(r25)
/* 800C234C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 800C2350  90 19 31 A0 */	stw r0, 0x31a0(r25)
/* 800C2354  7F 23 CB 78 */	mr r3, r25
/* 800C2358  81 99 06 28 */	lwz r12, 0x628(r25)
/* 800C235C  81 8C 01 8C */	lwz r12, 0x18c(r12)
/* 800C2360  7D 89 03 A6 */	mtctr r12
/* 800C2364  4E 80 04 21 */	bctrl 
/* 800C2368  28 03 00 00 */	cmplwi r3, 0
/* 800C236C  41 82 00 10 */	beq lbl_800C237C
/* 800C2370  80 19 31 A0 */	lwz r0, 0x31a0(r25)
/* 800C2374  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 800C2378  90 19 31 A0 */	stw r0, 0x31a0(r25)
lbl_800C237C:
/* 800C237C  A0 19 2F E8 */	lhz r0, 0x2fe8(r25)
/* 800C2380  28 00 01 50 */	cmplwi r0, 0x150
/* 800C2384  40 82 00 60 */	bne lbl_800C23E4
/* 800C2388  28 1D 00 00 */	cmplwi r29, 0
/* 800C238C  41 82 00 40 */	beq lbl_800C23CC
/* 800C2390  7F 23 CB 78 */	mr r3, r25
/* 800C2394  81 99 06 28 */	lwz r12, 0x628(r25)
/* 800C2398  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800C239C  7D 89 03 A6 */	mtctr r12
/* 800C23A0  4E 80 04 21 */	bctrl 
/* 800C23A4  28 03 00 00 */	cmplwi r3, 0
/* 800C23A8  41 82 00 14 */	beq lbl_800C23BC
/* 800C23AC  7F 23 CB 78 */	mr r3, r25
/* 800C23B0  38 80 00 02 */	li r4, 2
/* 800C23B4  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800C23B8  4B FE B7 35 */	bl resetUnderAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDERf
lbl_800C23BC:
/* 800C23BC  80 19 31 A0 */	lwz r0, 0x31a0(r25)
/* 800C23C0  60 00 04 00 */	ori r0, r0, 0x400
/* 800C23C4  90 19 31 A0 */	stw r0, 0x31a0(r25)
/* 800C23C8  48 00 00 D4 */	b lbl_800C249C
lbl_800C23CC:
/* 800C23CC  28 1E 00 00 */	cmplwi r30, 0
/* 800C23D0  41 82 00 CC */	beq lbl_800C249C
/* 800C23D4  80 19 31 A0 */	lwz r0, 0x31a0(r25)
/* 800C23D8  64 00 00 04 */	oris r0, r0, 4
/* 800C23DC  90 19 31 A0 */	stw r0, 0x31a0(r25)
/* 800C23E0  48 00 00 BC */	b lbl_800C249C
lbl_800C23E4:
/* 800C23E4  28 00 00 DC */	cmplwi r0, 0xdc
/* 800C23E8  40 82 00 24 */	bne lbl_800C240C
/* 800C23EC  7F 23 CB 78 */	mr r3, r25
/* 800C23F0  48 04 65 F9 */	bl checkBossOctaIealRoom__9daAlink_cFv
/* 800C23F4  2C 03 00 00 */	cmpwi r3, 0
/* 800C23F8  41 82 00 A4 */	beq lbl_800C249C
/* 800C23FC  80 19 31 A0 */	lwz r0, 0x31a0(r25)
/* 800C2400  64 00 00 04 */	oris r0, r0, 4
/* 800C2404  90 19 31 A0 */	stw r0, 0x31a0(r25)
/* 800C2408  48 00 00 94 */	b lbl_800C249C
lbl_800C240C:
/* 800C240C  28 00 01 48 */	cmplwi r0, 0x148
/* 800C2410  40 82 00 48 */	bne lbl_800C2458
/* 800C2414  28 1D 00 00 */	cmplwi r29, 0
/* 800C2418  41 82 00 84 */	beq lbl_800C249C
/* 800C241C  7F 23 CB 78 */	mr r3, r25
/* 800C2420  81 99 06 28 */	lwz r12, 0x628(r25)
/* 800C2424  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800C2428  7D 89 03 A6 */	mtctr r12
/* 800C242C  4E 80 04 21 */	bctrl 
/* 800C2430  28 03 00 00 */	cmplwi r3, 0
/* 800C2434  41 82 00 14 */	beq lbl_800C2448
/* 800C2438  7F 23 CB 78 */	mr r3, r25
/* 800C243C  38 80 00 02 */	li r4, 2
/* 800C2440  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800C2444  4B FE B6 A9 */	bl resetUnderAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDERf
lbl_800C2448:
/* 800C2448  80 19 31 A0 */	lwz r0, 0x31a0(r25)
/* 800C244C  60 00 04 00 */	ori r0, r0, 0x400
/* 800C2450  90 19 31 A0 */	stw r0, 0x31a0(r25)
/* 800C2454  48 00 00 48 */	b lbl_800C249C
lbl_800C2458:
/* 800C2458  28 00 01 42 */	cmplwi r0, 0x142
/* 800C245C  40 82 00 40 */	bne lbl_800C249C
/* 800C2460  28 1E 00 00 */	cmplwi r30, 0
/* 800C2464  41 82 00 10 */	beq lbl_800C2474
/* 800C2468  80 19 31 A0 */	lwz r0, 0x31a0(r25)
/* 800C246C  64 00 00 04 */	oris r0, r0, 4
/* 800C2470  90 19 31 A0 */	stw r0, 0x31a0(r25)
lbl_800C2474:
/* 800C2474  80 19 05 84 */	lwz r0, 0x584(r25)
/* 800C2478  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800C247C  41 82 00 20 */	beq lbl_800C249C
/* 800C2480  A0 79 2F DC */	lhz r3, 0x2fdc(r25)
/* 800C2484  48 09 C7 35 */	bl checkHookshotItem__9daPy_py_cFi
/* 800C2488  2C 03 00 00 */	cmpwi r3, 0
/* 800C248C  41 82 00 10 */	beq lbl_800C249C
/* 800C2490  80 19 31 A0 */	lwz r0, 0x31a0(r25)
/* 800C2494  60 00 10 00 */	ori r0, r0, 0x1000
/* 800C2498  90 19 31 A0 */	stw r0, 0x31a0(r25)
lbl_800C249C:
/* 800C249C  2C 1F 00 00 */	cmpwi r31, 0
/* 800C24A0  41 82 00 48 */	beq lbl_800C24E8
/* 800C24A4  80 79 28 28 */	lwz r3, 0x2828(r25)
/* 800C24A8  28 03 00 00 */	cmplwi r3, 0
/* 800C24AC  41 82 00 10 */	beq lbl_800C24BC
/* 800C24B0  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 800C24B4  28 00 00 02 */	cmplwi r0, 2
/* 800C24B8  41 82 00 30 */	beq lbl_800C24E8
lbl_800C24BC:
/* 800C24BC  80 19 05 88 */	lwz r0, 0x588(r25)
/* 800C24C0  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800C24C4  40 82 00 24 */	bne lbl_800C24E8
/* 800C24C8  7F 23 CB 78 */	mr r3, r25
/* 800C24CC  38 80 00 00 */	li r4, 0
/* 800C24D0  38 A0 00 00 */	li r5, 0
/* 800C24D4  4B FF EE 09 */	bl deleteEquipItem__9daAlink_cFii
/* 800C24D8  7F 23 CB 78 */	mr r3, r25
/* 800C24DC  38 80 00 02 */	li r4, 2
/* 800C24E0  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800C24E4  4B FE B2 41 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_800C24E8:
/* 800C24E8  80 19 31 A0 */	lwz r0, 0x31a0(r25)
/* 800C24EC  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 800C24F0  41 82 00 14 */	beq lbl_800C2504
/* 800C24F4  80 19 19 9C */	lwz r0, 0x199c(r25)
/* 800C24F8  60 00 00 08 */	ori r0, r0, 8
/* 800C24FC  90 19 19 9C */	stw r0, 0x199c(r25)
/* 800C2500  48 00 00 10 */	b lbl_800C2510
lbl_800C2504:
/* 800C2504  80 19 19 9C */	lwz r0, 0x199c(r25)
/* 800C2508  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 800C250C  90 19 19 9C */	stw r0, 0x199c(r25)
lbl_800C2510:
/* 800C2510  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C2514  D0 19 2B 9C */	stfs f0, 0x2b9c(r25)
/* 800C2518  D0 19 2B 98 */	stfs f0, 0x2b98(r25)
/* 800C251C  D0 19 33 9C */	stfs f0, 0x339c(r25)
/* 800C2520  38 00 00 00 */	li r0, 0
/* 800C2524  98 19 2F B3 */	stb r0, 0x2fb3(r25)
/* 800C2528  38 00 00 06 */	li r0, 6
/* 800C252C  98 19 2F 9E */	stb r0, 0x2f9e(r25)
/* 800C2530  7F 23 CB 78 */	mr r3, r25
/* 800C2534  48 06 09 E5 */	bl clearCutTurnEffectID__9daAlink_cFv
/* 800C2538  80 19 31 A0 */	lwz r0, 0x31a0(r25)
/* 800C253C  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800C2540  40 82 00 0C */	bne lbl_800C254C
/* 800C2544  38 00 00 00 */	li r0, 0
/* 800C2548  B0 19 30 80 */	sth r0, 0x3080(r25)
lbl_800C254C:
/* 800C254C  38 60 00 00 */	li r3, 0
/* 800C2550  B0 79 30 82 */	sth r3, 0x3082(r25)
/* 800C2554  B0 79 30 88 */	sth r3, 0x3088(r25)
/* 800C2558  B0 79 30 8A */	sth r3, 0x308a(r25)
/* 800C255C  80 19 05 74 */	lwz r0, 0x574(r25)
/* 800C2560  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800C2564  41 82 00 14 */	beq lbl_800C2578
/* 800C2568  B0 79 04 E8 */	sth r3, 0x4e8(r25)
/* 800C256C  B0 79 05 9C */	sth r3, 0x59c(r25)
/* 800C2570  B0 79 05 9E */	sth r3, 0x59e(r25)
/* 800C2574  48 00 00 4C */	b lbl_800C25C0
lbl_800C2578:
/* 800C2578  88 19 2F AA */	lbz r0, 0x2faa(r25)
/* 800C257C  28 00 00 01 */	cmplwi r0, 1
/* 800C2580  41 82 00 0C */	beq lbl_800C258C
/* 800C2584  28 00 00 02 */	cmplwi r0, 2
/* 800C2588  40 82 00 08 */	bne lbl_800C2590
lbl_800C258C:
/* 800C258C  38 60 00 01 */	li r3, 1
lbl_800C2590:
/* 800C2590  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C2594  40 82 00 2C */	bne lbl_800C25C0
/* 800C2598  7F 23 CB 78 */	mr r3, r25
/* 800C259C  81 99 06 28 */	lwz r12, 0x628(r25)
/* 800C25A0  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 800C25A4  7D 89 03 A6 */	mtctr r12
/* 800C25A8  4E 80 04 21 */	bctrl 
/* 800C25AC  28 03 00 00 */	cmplwi r3, 0
/* 800C25B0  40 82 00 10 */	bne lbl_800C25C0
/* 800C25B4  38 00 00 00 */	li r0, 0
/* 800C25B8  B0 19 04 E4 */	sth r0, 0x4e4(r25)
/* 800C25BC  B0 19 04 E8 */	sth r0, 0x4e8(r25)
lbl_800C25C0:
/* 800C25C0  7F 23 CB 78 */	mr r3, r25
/* 800C25C4  4B FF 90 81 */	bl initGravity__9daAlink_cFv
/* 800C25C8  38 80 00 00 */	li r4, 0
/* 800C25CC  B0 99 30 8C */	sth r4, 0x308c(r25)
/* 800C25D0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C25D4  D0 19 33 F0 */	stfs f0, 0x33f0(r25)
/* 800C25D8  D0 19 33 F4 */	stfs f0, 0x33f4(r25)
/* 800C25DC  B0 99 30 A0 */	sth r4, 0x30a0(r25)
/* 800C25E0  B0 99 30 A2 */	sth r4, 0x30a2(r25)
/* 800C25E4  B0 99 30 F0 */	sth r4, 0x30f0(r25)
/* 800C25E8  80 79 06 C4 */	lwz r3, 0x6c4(r25)
/* 800C25EC  D0 03 00 08 */	stfs f0, 8(r3)
/* 800C25F0  B0 99 31 0A */	sth r4, 0x310a(r25)
/* 800C25F4  A8 19 04 E6 */	lha r0, 0x4e6(r25)
/* 800C25F8  B0 19 31 0C */	sth r0, 0x310c(r25)
/* 800C25FC  80 19 31 90 */	lwz r0, 0x3190(r25)
/* 800C2600  2C 00 00 00 */	cmpwi r0, 0
/* 800C2604  41 82 00 0C */	beq lbl_800C2610
/* 800C2608  90 99 31 90 */	stw r4, 0x3190(r25)
/* 800C260C  B0 99 05 9E */	sth r4, 0x59e(r25)
lbl_800C2610:
/* 800C2610  A8 0D 8B E0 */	lha r0, Zero__5csXyz(r13)
/* 800C2614  B0 19 31 5A */	sth r0, 0x315a(r25)
/* 800C2618  38 6D 8B E0 */	la r3, Zero__5csXyz(r13) /* 80451160-_SDA_BASE_ */
/* 800C261C  A8 03 00 02 */	lha r0, 2(r3)
/* 800C2620  B0 19 31 5C */	sth r0, 0x315c(r25)
/* 800C2624  A8 03 00 04 */	lha r0, 4(r3)
/* 800C2628  B0 19 31 5E */	sth r0, 0x315e(r25)
/* 800C262C  A8 0D 8B E0 */	lha r0, Zero__5csXyz(r13)
/* 800C2630  B0 19 31 60 */	sth r0, 0x3160(r25)
/* 800C2634  A8 03 00 02 */	lha r0, 2(r3)
/* 800C2638  B0 19 31 62 */	sth r0, 0x3162(r25)
/* 800C263C  A8 03 00 04 */	lha r0, 4(r3)
/* 800C2640  B0 19 31 64 */	sth r0, 0x3164(r25)
/* 800C2644  88 19 2F C8 */	lbz r0, 0x2fc8(r25)
/* 800C2648  28 00 00 00 */	cmplwi r0, 0
/* 800C264C  41 82 00 14 */	beq lbl_800C2660
/* 800C2650  38 00 00 00 */	li r0, 0
/* 800C2654  98 19 2F C8 */	stb r0, 0x2fc8(r25)
/* 800C2658  7F 23 CB 78 */	mr r3, r25
/* 800C265C  4B FE D6 61 */	bl resetFacePriAnime__9daAlink_cFv
lbl_800C2660:
/* 800C2660  38 00 00 05 */	li r0, 5
/* 800C2664  98 19 2F CE */	stb r0, 0x2fce(r25)
/* 800C2668  88 19 2F 99 */	lbz r0, 0x2f99(r25)
/* 800C266C  28 00 00 05 */	cmplwi r0, 5
/* 800C2670  40 82 00 10 */	bne lbl_800C2680
/* 800C2674  38 00 00 30 */	li r0, 0x30
/* 800C2678  98 19 2F 99 */	stb r0, 0x2f99(r25)
/* 800C267C  48 00 00 14 */	b lbl_800C2690
lbl_800C2680:
/* 800C2680  28 00 00 04 */	cmplwi r0, 4
/* 800C2684  40 82 00 0C */	bne lbl_800C2690
/* 800C2688  38 00 00 20 */	li r0, 0x20
/* 800C268C  98 19 2F 99 */	stb r0, 0x2f99(r25)
lbl_800C2690:
/* 800C2690  80 99 31 A0 */	lwz r4, 0x31a0(r25)
/* 800C2694  3C 60 00 04 */	lis r3, 0x0004 /* 0x00040840@ha */
/* 800C2698  38 03 08 40 */	addi r0, r3, 0x0840 /* 0x00040840@l */
/* 800C269C  7C 80 00 39 */	and. r0, r4, r0
/* 800C26A0  40 82 00 10 */	bne lbl_800C26B0
/* 800C26A4  A0 19 2F E8 */	lhz r0, 0x2fe8(r25)
/* 800C26A8  28 00 00 DC */	cmplwi r0, 0xdc
/* 800C26AC  40 82 00 0C */	bne lbl_800C26B8
lbl_800C26B0:
/* 800C26B0  38 00 00 50 */	li r0, 0x50
/* 800C26B4  98 19 2F 99 */	stb r0, 0x2f99(r25)
lbl_800C26B8:
/* 800C26B8  80 19 31 A0 */	lwz r0, 0x31a0(r25)
/* 800C26BC  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800C26C0  40 82 00 18 */	bne lbl_800C26D8
/* 800C26C4  A0 19 2F E8 */	lhz r0, 0x2fe8(r25)
/* 800C26C8  28 00 00 1B */	cmplwi r0, 0x1b
/* 800C26CC  41 82 00 0C */	beq lbl_800C26D8
/* 800C26D0  28 00 01 18 */	cmplwi r0, 0x118
/* 800C26D4  40 82 00 20 */	bne lbl_800C26F4
lbl_800C26D8:
/* 800C26D8  80 19 19 9C */	lwz r0, 0x199c(r25)
/* 800C26DC  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 800C26E0  90 19 19 9C */	stw r0, 0x199c(r25)
/* 800C26E4  80 19 19 9C */	lwz r0, 0x199c(r25)
/* 800C26E8  60 00 40 00 */	ori r0, r0, 0x4000
/* 800C26EC  90 19 19 9C */	stw r0, 0x199c(r25)
/* 800C26F0  48 00 00 54 */	b lbl_800C2744
lbl_800C26F4:
/* 800C26F4  80 19 19 9C */	lwz r0, 0x199c(r25)
/* 800C26F8  60 00 20 00 */	ori r0, r0, 0x2000
/* 800C26FC  90 19 19 9C */	stw r0, 0x199c(r25)
/* 800C2700  80 19 19 9C */	lwz r0, 0x199c(r25)
/* 800C2704  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 800C2708  90 19 19 9C */	stw r0, 0x199c(r25)
/* 800C270C  80 19 05 74 */	lwz r0, 0x574(r25)
/* 800C2710  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800C2714  40 82 00 30 */	bne lbl_800C2744
/* 800C2718  38 99 2A 4C */	addi r4, r25, 0x2a4c
/* 800C271C  38 60 00 00 */	li r3, 0
/* 800C2720  38 00 00 02 */	li r0, 2
/* 800C2724  7C 09 03 A6 */	mtctr r0
lbl_800C2728:
/* 800C2728  B0 64 00 06 */	sth r3, 6(r4)
/* 800C272C  B0 64 00 04 */	sth r3, 4(r4)
/* 800C2730  B0 64 00 02 */	sth r3, 2(r4)
/* 800C2734  38 84 00 A4 */	addi r4, r4, 0xa4
/* 800C2738  42 00 FF F0 */	bdnz lbl_800C2728
/* 800C273C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C2740  D0 19 2B A4 */	stfs f0, 0x2ba4(r25)
lbl_800C2744:
/* 800C2744  80 19 05 80 */	lwz r0, 0x580(r25)
/* 800C2748  64 00 08 00 */	oris r0, r0, 0x800
/* 800C274C  90 19 05 80 */	stw r0, 0x580(r25)
/* 800C2750  A0 19 2F E8 */	lhz r0, 0x2fe8(r25)
/* 800C2754  28 00 00 FD */	cmplwi r0, 0xfd
/* 800C2758  41 82 00 18 */	beq lbl_800C2770
/* 800C275C  28 00 00 FE */	cmplwi r0, 0xfe
/* 800C2760  41 82 00 10 */	beq lbl_800C2770
/* 800C2764  80 19 05 78 */	lwz r0, 0x578(r25)
/* 800C2768  54 00 05 EA */	rlwinm r0, r0, 0, 0x17, 0x15
/* 800C276C  90 19 05 78 */	stw r0, 0x578(r25)
lbl_800C2770:
/* 800C2770  80 99 05 78 */	lwz r4, 0x578(r25)
/* 800C2774  3C 60 FF FF */	lis r3, 0xFFFF /* 0xFFFEEEFD@ha */
/* 800C2778  38 03 EE FD */	addi r0, r3, 0xEEFD /* 0xFFFEEEFD@l */
/* 800C277C  7C 80 00 38 */	and r0, r4, r0
/* 800C2780  90 19 05 78 */	stw r0, 0x578(r25)
/* 800C2784  80 19 05 80 */	lwz r0, 0x580(r25)
/* 800C2788  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 800C278C  90 19 05 80 */	stw r0, 0x580(r25)
/* 800C2790  80 99 05 74 */	lwz r4, 0x574(r25)
/* 800C2794  3C 60 B8 00 */	lis r3, 0xB800 /* 0xB7FFBFFE@ha */
/* 800C2798  38 03 BF FE */	addi r0, r3, 0xBFFE /* 0xB7FFBFFE@l */
/* 800C279C  7C 80 00 38 */	and r0, r4, r0
/* 800C27A0  90 19 05 74 */	stw r0, 0x574(r25)
/* 800C27A4  80 99 05 70 */	lwz r4, 0x570(r25)
/* 800C27A8  3C 60 FF F8 */	lis r3, 0xFFF8 /* 0xFFF7FFE7@ha */
/* 800C27AC  38 03 FF E7 */	addi r0, r3, 0xFFE7 /* 0xFFF7FFE7@l */
/* 800C27B0  7C 80 00 38 */	and r0, r4, r0
/* 800C27B4  90 19 05 70 */	stw r0, 0x570(r25)
/* 800C27B8  38 00 FF FF */	li r0, -1
/* 800C27BC  90 19 28 F8 */	stw r0, 0x28f8(r25)
/* 800C27C0  3B E0 00 00 */	li r31, 0
/* 800C27C4  9B F9 20 68 */	stb r31, 0x2068(r25)
/* 800C27C8  9B F9 20 B0 */	stb r31, 0x20b0(r25)
/* 800C27CC  88 19 2F B1 */	lbz r0, 0x2fb1(r25)
/* 800C27D0  28 00 00 00 */	cmplwi r0, 0
/* 800C27D4  41 82 00 48 */	beq lbl_800C281C
/* 800C27D8  A0 19 2F E8 */	lhz r0, 0x2fe8(r25)
/* 800C27DC  28 00 01 26 */	cmplwi r0, 0x126
/* 800C27E0  41 82 00 3C */	beq lbl_800C281C
/* 800C27E4  28 00 01 25 */	cmplwi r0, 0x125
/* 800C27E8  41 82 00 34 */	beq lbl_800C281C
/* 800C27EC  3B 40 00 00 */	li r26, 0
/* 800C27F0  48 00 00 18 */	b lbl_800C2808
lbl_800C27F4:
/* 800C27F4  38 7A 07 C4 */	addi r3, r26, 0x7c4
/* 800C27F8  7C 79 1A 14 */	add r3, r25, r3
/* 800C27FC  48 09 C5 01 */	bl clearData__16daPy_actorKeep_cFv
/* 800C2800  3B FF 00 01 */	addi r31, r31, 1
/* 800C2804  3B 5A 00 08 */	addi r26, r26, 8
lbl_800C2808:
/* 800C2808  88 19 2F B1 */	lbz r0, 0x2fb1(r25)
/* 800C280C  7C 1F 00 00 */	cmpw r31, r0
/* 800C2810  41 80 FF E4 */	blt lbl_800C27F4
/* 800C2814  38 00 00 00 */	li r0, 0
/* 800C2818  98 19 2F B1 */	stb r0, 0x2fb1(r25)
lbl_800C281C:
/* 800C281C  38 00 00 00 */	li r0, 0
/* 800C2820  B0 19 30 78 */	sth r0, 0x3078(r25)
/* 800C2824  7F 23 CB 78 */	mr r3, r25
/* 800C2828  4B FF 6B 19 */	bl checkEquipAnime__9daAlink_cCFv
/* 800C282C  2C 03 00 00 */	cmpwi r3, 0
/* 800C2830  41 82 00 10 */	beq lbl_800C2840
/* 800C2834  80 19 31 A0 */	lwz r0, 0x31a0(r25)
/* 800C2838  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800C283C  40 82 00 40 */	bne lbl_800C287C
lbl_800C2840:
/* 800C2840  80 99 31 A0 */	lwz r4, 0x31a0(r25)
/* 800C2844  54 80 03 5B */	rlwinm. r0, r4, 0, 0xd, 0xd
/* 800C2848  41 82 00 2C */	beq lbl_800C2874
/* 800C284C  38 60 00 00 */	li r3, 0
/* 800C2850  A0 19 1F BC */	lhz r0, 0x1fbc(r25)
/* 800C2854  28 00 02 BD */	cmplwi r0, 0x2bd
/* 800C2858  41 82 00 10 */	beq lbl_800C2868
/* 800C285C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800C2860  28 00 02 BE */	cmplwi r0, 0x2be
/* 800C2864  40 82 00 08 */	bne lbl_800C286C
lbl_800C2868:
/* 800C2868  38 60 00 01 */	li r3, 1
lbl_800C286C:
/* 800C286C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C2870  40 82 00 0C */	bne lbl_800C287C
lbl_800C2874:
/* 800C2874  54 80 04 E7 */	rlwinm. r0, r4, 0, 0x13, 0x13
/* 800C2878  41 82 00 70 */	beq lbl_800C28E8
lbl_800C287C:
/* 800C287C  7F 23 CB 78 */	mr r3, r25
/* 800C2880  4B FF 6B 4D */	bl checkSwordTwirlAnime__9daAlink_cCFv
/* 800C2884  2C 03 00 00 */	cmpwi r3, 0
/* 800C2888  41 82 00 18 */	beq lbl_800C28A0
/* 800C288C  A0 19 2F E8 */	lhz r0, 0x2fe8(r25)
/* 800C2890  28 00 00 06 */	cmplwi r0, 6
/* 800C2894  41 82 00 0C */	beq lbl_800C28A0
/* 800C2898  28 00 00 07 */	cmplwi r0, 7
/* 800C289C  40 82 00 4C */	bne lbl_800C28E8
lbl_800C28A0:
/* 800C28A0  80 99 05 74 */	lwz r4, 0x574(r25)
/* 800C28A4  54 80 01 8D */	rlwinm. r0, r4, 0, 6, 6
/* 800C28A8  41 82 00 38 */	beq lbl_800C28E0
/* 800C28AC  38 60 00 00 */	li r3, 0
/* 800C28B0  A0 19 1F BC */	lhz r0, 0x1fbc(r25)
/* 800C28B4  28 00 00 62 */	cmplwi r0, 0x62
/* 800C28B8  41 82 00 10 */	beq lbl_800C28C8
/* 800C28BC  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800C28C0  28 00 02 A0 */	cmplwi r0, 0x2a0
/* 800C28C4  40 82 00 08 */	bne lbl_800C28CC
lbl_800C28C8:
/* 800C28C8  38 60 00 01 */	li r3, 1
lbl_800C28CC:
/* 800C28CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C28D0  41 82 00 10 */	beq lbl_800C28E0
/* 800C28D4  80 19 31 A0 */	lwz r0, 0x31a0(r25)
/* 800C28D8  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800C28DC  40 82 00 0C */	bne lbl_800C28E8
lbl_800C28E0:
/* 800C28E0  54 80 00 C7 */	rlwinm. r0, r4, 0, 3, 3
/* 800C28E4  41 82 00 54 */	beq lbl_800C2938
lbl_800C28E8:
/* 800C28E8  A0 79 1F BC */	lhz r3, 0x1fbc(r25)
/* 800C28EC  28 03 02 62 */	cmplwi r3, 0x262
/* 800C28F0  40 82 00 10 */	bne lbl_800C2900
/* 800C28F4  A0 19 2F E8 */	lhz r0, 0x2fe8(r25)
/* 800C28F8  28 00 00 32 */	cmplwi r0, 0x32
/* 800C28FC  41 82 00 24 */	beq lbl_800C2920
lbl_800C2900:
/* 800C2900  28 03 FF FF */	cmplwi r3, 0xffff
/* 800C2904  41 82 00 1C */	beq lbl_800C2920
/* 800C2908  7F 23 CB 78 */	mr r3, r25
/* 800C290C  38 80 00 02 */	li r4, 2
/* 800C2910  3C A0 80 39 */	lis r5, m__19daAlinkHIO_basic_c0@ha /* 0x8038D664@ha */
/* 800C2914  38 A5 D6 64 */	addi r5, r5, m__19daAlinkHIO_basic_c0@l /* 0x8038D664@l */
/* 800C2918  C0 25 00 18 */	lfs f1, 0x18(r5)
/* 800C291C  4B FE AE 09 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_800C2920:
/* 800C2920  A0 79 2F DC */	lhz r3, 0x2fdc(r25)
/* 800C2924  48 09 C1 25 */	bl checkBombItem__9daPy_py_cFi
/* 800C2928  2C 03 00 00 */	cmpwi r3, 0
/* 800C292C  41 82 00 0C */	beq lbl_800C2938
/* 800C2930  38 00 00 FF */	li r0, 0xff
/* 800C2934  B0 19 2F DC */	sth r0, 0x2fdc(r25)
lbl_800C2938:
/* 800C2938  80 19 31 A0 */	lwz r0, 0x31a0(r25)
/* 800C293C  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 800C2940  40 82 00 50 */	bne lbl_800C2990
/* 800C2944  7F 23 CB 78 */	mr r3, r25
/* 800C2948  48 02 13 25 */	bl checkGrabAnime__9daAlink_cCFv
/* 800C294C  2C 03 00 00 */	cmpwi r3, 0
/* 800C2950  40 82 00 40 */	bne lbl_800C2990
/* 800C2954  38 60 00 00 */	li r3, 0
/* 800C2958  A0 19 1F BC */	lhz r0, 0x1fbc(r25)
/* 800C295C  28 00 02 DA */	cmplwi r0, 0x2da
/* 800C2960  41 82 00 10 */	beq lbl_800C2970
/* 800C2964  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800C2968  28 00 02 DB */	cmplwi r0, 0x2db
/* 800C296C  40 82 00 08 */	bne lbl_800C2974
lbl_800C2970:
/* 800C2970  38 60 00 01 */	li r3, 1
lbl_800C2974:
/* 800C2974  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C2978  40 82 00 18 */	bne lbl_800C2990
/* 800C297C  80 19 28 30 */	lwz r0, 0x2830(r25)
/* 800C2980  28 00 00 00 */	cmplwi r0, 0
/* 800C2984  41 82 00 0C */	beq lbl_800C2990
/* 800C2988  7F 23 CB 78 */	mr r3, r25
/* 800C298C  48 02 22 49 */	bl freeGrabItem__9daAlink_cFv
lbl_800C2990:
/* 800C2990  38 60 00 00 */	li r3, 0
/* 800C2994  A0 19 1F BC */	lhz r0, 0x1fbc(r25)
/* 800C2998  28 00 01 8D */	cmplwi r0, 0x18d
/* 800C299C  41 82 00 10 */	beq lbl_800C29AC
/* 800C29A0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800C29A4  28 00 01 8C */	cmplwi r0, 0x18c
/* 800C29A8  40 82 00 08 */	bne lbl_800C29B0
lbl_800C29AC:
/* 800C29AC  38 60 00 01 */	li r3, 1
lbl_800C29B0:
/* 800C29B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C29B4  40 82 00 18 */	bne lbl_800C29CC
/* 800C29B8  A0 19 2F E8 */	lhz r0, 0x2fe8(r25)
/* 800C29BC  28 00 00 C6 */	cmplwi r0, 0xc6
/* 800C29C0  41 82 00 0C */	beq lbl_800C29CC
/* 800C29C4  7F 23 CB 78 */	mr r3, r25
/* 800C29C8  48 04 5E 61 */	bl cancelHookshotCarry__9daAlink_cFv
lbl_800C29CC:
/* 800C29CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C29D0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C29D4  80 1F 5F 18 */	lwz r0, 0x5f18(r31)
/* 800C29D8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 800C29DC  41 82 00 1C */	beq lbl_800C29F8
/* 800C29E0  80 19 31 A0 */	lwz r0, 0x31a0(r25)
/* 800C29E4  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 800C29E8  40 82 00 10 */	bne lbl_800C29F8
/* 800C29EC  A0 19 2F E8 */	lhz r0, 0x2fe8(r25)
/* 800C29F0  28 00 00 5A */	cmplwi r0, 0x5a
/* 800C29F4  40 82 00 2C */	bne lbl_800C2A20
lbl_800C29F8:
/* 800C29F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C29FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C2A00  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 800C2A04  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800C2A08  41 82 00 B8 */	beq lbl_800C2AC0
/* 800C2A0C  A0 19 2F E8 */	lhz r0, 0x2fe8(r25)
/* 800C2A10  28 00 00 CB */	cmplwi r0, 0xcb
/* 800C2A14  41 82 00 AC */	beq lbl_800C2AC0
/* 800C2A18  28 00 00 CA */	cmplwi r0, 0xca
/* 800C2A1C  41 82 00 A4 */	beq lbl_800C2AC0
lbl_800C2A20:
/* 800C2A20  A0 19 2F E8 */	lhz r0, 0x2fe8(r25)
/* 800C2A24  28 00 00 85 */	cmplwi r0, 0x85
/* 800C2A28  40 82 00 50 */	bne lbl_800C2A78
/* 800C2A2C  A8 19 04 E6 */	lha r0, 0x4e6(r25)
/* 800C2A30  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800C2A34  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800C2A38  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800C2A3C  7C 03 04 2E */	lfsx f0, r3, r0
/* 800C2A40  C0 39 04 D0 */	lfs f1, 0x4d0(r25)
/* 800C2A44  C0 42 93 30 */	lfs f2, lit_7625(r2)
/* 800C2A48  EC 02 00 32 */	fmuls f0, f2, f0
/* 800C2A4C  EC 01 00 2A */	fadds f0, f1, f0
/* 800C2A50  D0 19 04 D0 */	stfs f0, 0x4d0(r25)
/* 800C2A54  A8 19 04 E6 */	lha r0, 0x4e6(r25)
/* 800C2A58  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800C2A5C  7C 63 02 14 */	add r3, r3, r0
/* 800C2A60  C0 03 00 04 */	lfs f0, 4(r3)
/* 800C2A64  C0 39 04 D8 */	lfs f1, 0x4d8(r25)
/* 800C2A68  EC 02 00 32 */	fmuls f0, f2, f0
/* 800C2A6C  EC 01 00 2A */	fadds f0, f1, f0
/* 800C2A70  D0 19 04 D8 */	stfs f0, 0x4d8(r25)
/* 800C2A74  48 00 00 4C */	b lbl_800C2AC0
lbl_800C2A78:
/* 800C2A78  A8 19 04 E6 */	lha r0, 0x4e6(r25)
/* 800C2A7C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800C2A80  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800C2A84  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800C2A88  7C 03 04 2E */	lfsx f0, r3, r0
/* 800C2A8C  C0 39 04 D0 */	lfs f1, 0x4d0(r25)
/* 800C2A90  C0 42 93 30 */	lfs f2, lit_7625(r2)
/* 800C2A94  EC 02 00 32 */	fmuls f0, f2, f0
/* 800C2A98  EC 01 00 28 */	fsubs f0, f1, f0
/* 800C2A9C  D0 19 04 D0 */	stfs f0, 0x4d0(r25)
/* 800C2AA0  A8 19 04 E6 */	lha r0, 0x4e6(r25)
/* 800C2AA4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800C2AA8  7C 63 02 14 */	add r3, r3, r0
/* 800C2AAC  C0 03 00 04 */	lfs f0, 4(r3)
/* 800C2AB0  C0 39 04 D8 */	lfs f1, 0x4d8(r25)
/* 800C2AB4  EC 02 00 32 */	fmuls f0, f2, f0
/* 800C2AB8  EC 01 00 28 */	fsubs f0, f1, f0
/* 800C2ABC  D0 19 04 D8 */	stfs f0, 0x4d8(r25)
lbl_800C2AC0:
/* 800C2AC0  80 1F 5F 18 */	lwz r0, 0x5f18(r31)
/* 800C2AC4  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 800C2AC8  41 82 00 3C */	beq lbl_800C2B04
/* 800C2ACC  3C 60 00 02 */	lis r3, 0x0002 /* 0x000200B6@ha */
/* 800C2AD0  38 03 00 B6 */	addi r0, r3, 0x00B6 /* 0x000200B6@l */
/* 800C2AD4  90 01 00 08 */	stw r0, 8(r1)
/* 800C2AD8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 800C2ADC  38 81 00 08 */	addi r4, r1, 8
/* 800C2AE0  38 A0 00 00 */	li r5, 0
/* 800C2AE4  38 C0 00 00 */	li r6, 0
/* 800C2AE8  38 E0 00 00 */	li r7, 0
/* 800C2AEC  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800C2AF0  FC 40 08 90 */	fmr f2, f1
/* 800C2AF4  C0 62 92 BC */	lfs f3, lit_6041(r2)
/* 800C2AF8  FC 80 18 90 */	fmr f4, f3
/* 800C2AFC  39 00 00 00 */	li r8, 0
/* 800C2B00  48 1E 8E 85 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_800C2B04:
/* 800C2B04  7F 23 CB 78 */	mr r3, r25
/* 800C2B08  4B FF 84 79 */	bl checkUpperReadyThrowAnime__9daAlink_cCFv
/* 800C2B0C  2C 03 00 00 */	cmpwi r3, 0
/* 800C2B10  41 82 00 28 */	beq lbl_800C2B38
/* 800C2B14  A0 19 2F DC */	lhz r0, 0x2fdc(r25)
/* 800C2B18  28 00 01 02 */	cmplwi r0, 0x102
/* 800C2B1C  41 82 00 1C */	beq lbl_800C2B38
/* 800C2B20  80 9F 5F 18 */	lwz r4, 0x5f18(r31)
/* 800C2B24  3C 60 01 4A */	lis r3, 0x014A /* 0x014A54F0@ha */
/* 800C2B28  38 03 54 F0 */	addi r0, r3, 0x54F0 /* 0x014A54F0@l */
/* 800C2B2C  7C 80 00 38 */	and r0, r4, r0
/* 800C2B30  90 1F 5F 18 */	stw r0, 0x5f18(r31)
/* 800C2B34  48 00 00 18 */	b lbl_800C2B4C
lbl_800C2B38:
/* 800C2B38  80 9F 5F 18 */	lwz r4, 0x5f18(r31)
/* 800C2B3C  3C 60 00 40 */	lis r3, 0x0040 /* 0x00400030@ha */
/* 800C2B40  38 03 00 30 */	addi r0, r3, 0x0030 /* 0x00400030@l */
/* 800C2B44  7C 80 00 38 */	and r0, r4, r0
/* 800C2B48  90 1F 5F 18 */	stw r0, 0x5f18(r31)
lbl_800C2B4C:
/* 800C2B4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C2B50  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C2B54  80 85 5F 1C */	lwz r4, 0x5f1c(r5)
/* 800C2B58  3C 60 F8 05 */	lis r3, 0xF805 /* 0xF8048487@ha */
/* 800C2B5C  38 03 84 87 */	addi r0, r3, 0x8487 /* 0xF8048487@l */
/* 800C2B60  7C 80 00 38 */	and r0, r4, r0
/* 800C2B64  90 05 5F 1C */	stw r0, 0x5f1c(r5)
/* 800C2B68  7F 23 CB 78 */	mr r3, r25
/* 800C2B6C  48 04 63 81 */	bl cancelHookshotShot__9daAlink_cFv
/* 800C2B70  A0 19 2F DC */	lhz r0, 0x2fdc(r25)
/* 800C2B74  28 00 01 09 */	cmplwi r0, 0x109
/* 800C2B78  40 82 00 14 */	bne lbl_800C2B8C
/* 800C2B7C  7F 23 CB 78 */	mr r3, r25
/* 800C2B80  38 80 00 00 */	li r4, 0
/* 800C2B84  38 A0 00 00 */	li r5, 0
/* 800C2B88  4B FF E7 55 */	bl deleteEquipItem__9daAlink_cFii
lbl_800C2B8C:
/* 800C2B8C  2C 1C 00 00 */	cmpwi r28, 0
/* 800C2B90  41 82 00 38 */	beq lbl_800C2BC8
/* 800C2B94  80 19 31 A0 */	lwz r0, 0x31a0(r25)
/* 800C2B98  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800C2B9C  41 82 00 2C */	beq lbl_800C2BC8
/* 800C2BA0  C0 19 04 D0 */	lfs f0, 0x4d0(r25)
/* 800C2BA4  D0 19 34 F8 */	stfs f0, 0x34f8(r25)
/* 800C2BA8  C0 19 04 D4 */	lfs f0, 0x4d4(r25)
/* 800C2BAC  D0 19 34 FC */	stfs f0, 0x34fc(r25)
/* 800C2BB0  C0 19 04 D8 */	lfs f0, 0x4d8(r25)
/* 800C2BB4  D0 19 35 00 */	stfs f0, 0x3500(r25)
/* 800C2BB8  C0 19 34 FC */	lfs f0, 0x34fc(r25)
/* 800C2BBC  D0 19 33 C4 */	stfs f0, 0x33c4(r25)
/* 800C2BC0  C0 19 34 FC */	lfs f0, 0x34fc(r25)
/* 800C2BC4  D0 19 33 C8 */	stfs f0, 0x33c8(r25)
lbl_800C2BC8:
/* 800C2BC8  80 19 31 A0 */	lwz r0, 0x31a0(r25)
/* 800C2BCC  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800C2BD0  40 82 00 14 */	bne lbl_800C2BE4
/* 800C2BD4  28 1D 00 00 */	cmplwi r29, 0
/* 800C2BD8  41 82 00 0C */	beq lbl_800C2BE4
/* 800C2BDC  7F 23 CB 78 */	mr r3, r25
/* 800C2BE0  48 02 9F F1 */	bl rideGetOff__9daAlink_cFv
lbl_800C2BE4:
/* 800C2BE4  7F 23 CB 78 */	mr r3, r25
/* 800C2BE8  81 99 06 28 */	lwz r12, 0x628(r25)
/* 800C2BEC  81 8C 01 8C */	lwz r12, 0x18c(r12)
/* 800C2BF0  7D 89 03 A6 */	mtctr r12
/* 800C2BF4  4E 80 04 21 */	bctrl 
/* 800C2BF8  28 03 00 00 */	cmplwi r3, 0
/* 800C2BFC  40 82 00 30 */	bne lbl_800C2C2C
/* 800C2C00  7F 23 CB 78 */	mr r3, r25
/* 800C2C04  81 99 06 28 */	lwz r12, 0x628(r25)
/* 800C2C08  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800C2C0C  7D 89 03 A6 */	mtctr r12
/* 800C2C10  4E 80 04 21 */	bctrl 
/* 800C2C14  28 03 00 00 */	cmplwi r3, 0
/* 800C2C18  40 82 00 14 */	bne lbl_800C2C2C
/* 800C2C1C  7F 23 CB 78 */	mr r3, r25
/* 800C2C20  38 80 00 02 */	li r4, 2
/* 800C2C24  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800C2C28  4B FE AE C5 */	bl resetUnderAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDERf
lbl_800C2C2C:
/* 800C2C2C  80 99 31 A0 */	lwz r4, 0x31a0(r25)
/* 800C2C30  3C 60 00 01 */	lis r3, 0x0001 /* 0x00010040@ha */
/* 800C2C34  38 03 00 40 */	addi r0, r3, 0x0040 /* 0x00010040@l */
/* 800C2C38  7C 80 00 39 */	and. r0, r4, r0
/* 800C2C3C  41 82 00 28 */	beq lbl_800C2C64
/* 800C2C40  80 19 05 74 */	lwz r0, 0x574(r25)
/* 800C2C44  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800C2C48  41 82 00 10 */	beq lbl_800C2C58
/* 800C2C4C  38 00 00 FF */	li r0, 0xff
/* 800C2C50  98 19 08 28 */	stb r0, 0x828(r25)
/* 800C2C54  48 00 00 18 */	b lbl_800C2C6C
lbl_800C2C58:
/* 800C2C58  38 00 00 FE */	li r0, 0xfe
/* 800C2C5C  98 19 08 28 */	stb r0, 0x828(r25)
/* 800C2C60  48 00 00 0C */	b lbl_800C2C6C
lbl_800C2C64:
/* 800C2C64  38 00 00 78 */	li r0, 0x78
/* 800C2C68  98 19 08 28 */	stb r0, 0x828(r25)
lbl_800C2C6C:
/* 800C2C6C  38 00 00 00 */	li r0, 0
/* 800C2C70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C2C74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C2C78  98 03 5E 81 */	stb r0, 0x5e81(r3)
/* 800C2C7C  7F 23 CB 78 */	mr r3, r25
/* 800C2C80  48 01 BD 69 */	bl checkBowAnime__9daAlink_cCFv
/* 800C2C84  2C 03 00 00 */	cmpwi r3, 0
/* 800C2C88  40 82 00 0C */	bne lbl_800C2C94
/* 800C2C8C  7F 23 CB 78 */	mr r3, r25
/* 800C2C90  48 01 CF E1 */	bl setBowNormalAnime__9daAlink_cFv
lbl_800C2C94:
/* 800C2C94  28 1E 00 00 */	cmplwi r30, 0
/* 800C2C98  41 82 00 3C */	beq lbl_800C2CD4
/* 800C2C9C  80 19 31 A0 */	lwz r0, 0x31a0(r25)
/* 800C2CA0  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800C2CA4  40 82 00 30 */	bne lbl_800C2CD4
/* 800C2CA8  A0 19 2F E8 */	lhz r0, 0x2fe8(r25)
/* 800C2CAC  28 00 01 53 */	cmplwi r0, 0x153
/* 800C2CB0  41 82 00 24 */	beq lbl_800C2CD4
/* 800C2CB4  28 00 00 C6 */	cmplwi r0, 0xc6
/* 800C2CB8  41 82 00 1C */	beq lbl_800C2CD4
/* 800C2CBC  80 19 05 70 */	lwz r0, 0x570(r25)
/* 800C2CC0  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 800C2CC4  40 82 00 10 */	bne lbl_800C2CD4
/* 800C2CC8  7F 23 CB 78 */	mr r3, r25
/* 800C2CCC  38 80 00 00 */	li r4, 0
/* 800C2CD0  48 04 05 F9 */	bl swimOutAfter__9daAlink_cFi
lbl_800C2CD4:
/* 800C2CD4  7F 23 CB 78 */	mr r3, r25
/* 800C2CD8  4B FE EA 99 */	bl setBgCheckParam__9daAlink_cFv
/* 800C2CDC  80 79 05 78 */	lwz r3, 0x578(r25)
/* 800C2CE0  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 800C2CE4  41 82 00 10 */	beq lbl_800C2CF4
/* 800C2CE8  A0 19 2F E8 */	lhz r0, 0x2fe8(r25)
/* 800C2CEC  28 00 01 36 */	cmplwi r0, 0x136
/* 800C2CF0  40 82 00 40 */	bne lbl_800C2D30
lbl_800C2CF4:
/* 800C2CF4  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 800C2CF8  41 82 00 40 */	beq lbl_800C2D38
/* 800C2CFC  A0 19 2F E8 */	lhz r0, 0x2fe8(r25)
/* 800C2D00  28 00 01 35 */	cmplwi r0, 0x135
/* 800C2D04  41 82 00 34 */	beq lbl_800C2D38
/* 800C2D08  38 60 00 00 */	li r3, 0
/* 800C2D0C  A0 19 1F BC */	lhz r0, 0x1fbc(r25)
/* 800C2D10  28 00 02 BD */	cmplwi r0, 0x2bd
/* 800C2D14  41 82 00 10 */	beq lbl_800C2D24
/* 800C2D18  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800C2D1C  28 00 02 BE */	cmplwi r0, 0x2be
/* 800C2D20  40 82 00 08 */	bne lbl_800C2D28
lbl_800C2D24:
/* 800C2D24  38 60 00 01 */	li r3, 1
lbl_800C2D28:
/* 800C2D28  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C2D2C  40 82 00 0C */	bne lbl_800C2D38
lbl_800C2D30:
/* 800C2D30  7F 23 CB 78 */	mr r3, r25
/* 800C2D34  48 07 5E D1 */	bl resetWolfEnemyBiteAll__9daAlink_cFv
lbl_800C2D38:
/* 800C2D38  83 59 28 10 */	lwz r26, 0x2810(r25)
/* 800C2D3C  28 1A 00 00 */	cmplwi r26, 0
/* 800C2D40  41 82 00 4C */	beq lbl_800C2D8C
/* 800C2D44  2C 1B 00 00 */	cmpwi r27, 0
/* 800C2D48  41 82 00 44 */	beq lbl_800C2D8C
/* 800C2D4C  80 19 31 A0 */	lwz r0, 0x31a0(r25)
/* 800C2D50  54 00 03 9D */	rlwinm. r0, r0, 0, 0xe, 0xe
/* 800C2D54  40 82 00 38 */	bne lbl_800C2D8C
/* 800C2D58  38 79 28 0C */	addi r3, r25, 0x280c
/* 800C2D5C  48 09 BF A1 */	bl clearData__16daPy_actorKeep_cFv
/* 800C2D60  A8 1A 00 08 */	lha r0, 8(r26)
/* 800C2D64  2C 00 02 BE */	cmpwi r0, 0x2be
/* 800C2D68  40 82 00 14 */	bne lbl_800C2D7C
/* 800C2D6C  38 00 FF FF */	li r0, -1
/* 800C2D70  90 1A 07 18 */	stw r0, 0x718(r26)
/* 800C2D74  90 1A 07 1C */	stw r0, 0x71c(r26)
/* 800C2D78  48 00 00 14 */	b lbl_800C2D8C
lbl_800C2D7C:
/* 800C2D7C  2C 00 01 59 */	cmpwi r0, 0x159
/* 800C2D80  40 82 00 0C */	bne lbl_800C2D8C
/* 800C2D84  38 00 00 00 */	li r0, 0
/* 800C2D88  98 1A 07 74 */	stb r0, 0x774(r26)
lbl_800C2D8C:
/* 800C2D8C  39 61 00 30 */	addi r11, r1, 0x30
/* 800C2D90  48 29 F4 89 */	bl _restgpr_25
/* 800C2D94  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800C2D98  7C 08 03 A6 */	mtlr r0
/* 800C2D9C  38 21 00 30 */	addi r1, r1, 0x30
/* 800C2DA0  4E 80 00 20 */	blr 
