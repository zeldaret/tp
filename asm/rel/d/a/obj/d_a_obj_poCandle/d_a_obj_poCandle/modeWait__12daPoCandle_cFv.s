lbl_80CB214C:
/* 80CB214C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB2150  7C 08 02 A6 */	mflr r0
/* 80CB2154  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB2158  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB215C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB2160  7C 7E 1B 78 */	mr r30, r3
/* 80CB2164  8B E3 05 D7 */	lbz r31, 0x5d7(r3)
/* 80CB2168  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CB216C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CB2170  88 9E 05 D4 */	lbz r4, 0x5d4(r30)
/* 80CB2174  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80CB2178  7C 05 07 74 */	extsb r5, r0
/* 80CB217C  4B 38 31 E4 */	b isSwitch__10dSv_info_cCFii
/* 80CB2180  98 7E 05 D7 */	stb r3, 0x5d7(r30)
/* 80CB2184  88 1E 05 D7 */	lbz r0, 0x5d7(r30)
/* 80CB2188  7C 1F 00 40 */	cmplw r31, r0
/* 80CB218C  41 82 00 34 */	beq lbl_80CB21C0
/* 80CB2190  28 00 00 00 */	cmplwi r0, 0
/* 80CB2194  41 82 00 18 */	beq lbl_80CB21AC
/* 80CB2198  38 00 00 01 */	li r0, 1
/* 80CB219C  98 1E 05 D2 */	stb r0, 0x5d2(r30)
/* 80CB21A0  7F C3 F3 78 */	mr r3, r30
/* 80CB21A4  48 00 00 35 */	bl init_modeOnFire__12daPoCandle_cFv
/* 80CB21A8  48 00 00 18 */	b lbl_80CB21C0
lbl_80CB21AC:
/* 80CB21AC  38 00 00 00 */	li r0, 0
/* 80CB21B0  98 1E 05 D2 */	stb r0, 0x5d2(r30)
/* 80CB21B4  98 1E 05 D1 */	stb r0, 0x5d1(r30)
/* 80CB21B8  7F C3 F3 78 */	mr r3, r30
/* 80CB21BC  4B FF FC 75 */	bl cutLight__12daPoCandle_cFv
lbl_80CB21C0:
/* 80CB21C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB21C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB21C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB21CC  7C 08 03 A6 */	mtlr r0
/* 80CB21D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB21D4  4E 80 00 20 */	blr 
