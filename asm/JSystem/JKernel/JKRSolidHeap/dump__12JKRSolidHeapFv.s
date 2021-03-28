lbl_802D10FC:
/* 802D10FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802D1100  7C 08 02 A6 */	mflr r0
/* 802D1104  90 01 00 34 */	stw r0, 0x34(r1)
/* 802D1108  39 61 00 30 */	addi r11, r1, 0x30
/* 802D110C  48 09 10 D1 */	bl _savegpr_29
/* 802D1110  7C 7E 1B 78 */	mr r30, r3
/* 802D1114  81 83 00 00 */	lwz r12, 0(r3)
/* 802D1118  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802D111C  7D 89 03 A6 */	mtctr r12
/* 802D1120  4E 80 04 21 */	bctrl 
/* 802D1124  7C 7F 1B 78 */	mr r31, r3
/* 802D1128  38 7E 00 18 */	addi r3, r30, 0x18
/* 802D112C  48 06 DF 15 */	bl OSLockMutex
/* 802D1130  80 9E 00 30 */	lwz r4, 0x30(r30)
/* 802D1134  80 1E 00 70 */	lwz r0, 0x70(r30)
/* 802D1138  7C A4 00 50 */	subf r5, r4, r0
/* 802D113C  80 7E 00 74 */	lwz r3, 0x74(r30)
/* 802D1140  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 802D1144  7C 03 00 50 */	subf r0, r3, r0
/* 802D1148  7F A5 02 14 */	add r29, r5, r0
/* 802D114C  3C 60 80 3A */	lis r3, JKRSolidHeap__stringBase0@ha
/* 802D1150  38 63 CE 50 */	addi r3, r3, JKRSolidHeap__stringBase0@l
/* 802D1154  38 63 01 17 */	addi r3, r3, 0x117
/* 802D1158  4C C6 31 82 */	crclr 6
/* 802D115C  48 01 74 6D */	bl JUTReportConsole_f
/* 802D1160  80 9E 00 74 */	lwz r4, 0x74(r30)
/* 802D1164  3C 60 80 3A */	lis r3, JKRSolidHeap__stringBase0@ha
/* 802D1168  38 63 CE 50 */	addi r3, r3, JKRSolidHeap__stringBase0@l
/* 802D116C  38 63 01 28 */	addi r3, r3, 0x128
/* 802D1170  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 802D1174  7C A4 00 50 */	subf r5, r4, r0
/* 802D1178  4C C6 31 82 */	crclr 6
/* 802D117C  48 01 74 4D */	bl JUTReportConsole_f
/* 802D1180  80 BE 00 38 */	lwz r5, 0x38(r30)
/* 802D1184  3C 60 80 3A */	lis r3, JKRSolidHeap__stringBase0@ha
/* 802D1188  38 63 CE 50 */	addi r3, r3, JKRSolidHeap__stringBase0@l
/* 802D118C  38 63 01 39 */	addi r3, r3, 0x139
/* 802D1190  7F A4 EB 78 */	mr r4, r29
/* 802D1194  C0 62 C5 A8 */	lfs f3, lit_693(r2)
/* 802D1198  C8 22 C5 B0 */	lfd f1, lit_695(r2)
/* 802D119C  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 802D11A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 802D11A4  3C 00 43 30 */	lis r0, 0x4330
/* 802D11A8  90 01 00 08 */	stw r0, 8(r1)
/* 802D11AC  C8 01 00 08 */	lfd f0, 8(r1)
/* 802D11B0  EC 40 08 28 */	fsubs f2, f0, f1
/* 802D11B4  C8 22 C5 B8 */	lfd f1, lit_697(r2)
/* 802D11B8  90 A1 00 14 */	stw r5, 0x14(r1)
/* 802D11BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 802D11C0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802D11C4  EC 00 08 28 */	fsubs f0, f0, f1
/* 802D11C8  EC 02 00 24 */	fdivs f0, f2, f0
/* 802D11CC  EC 23 00 32 */	fmuls f1, f3, f0
/* 802D11D0  4C C6 32 42 */	crset 6
/* 802D11D4  48 01 73 F5 */	bl JUTReportConsole_f
/* 802D11D8  38 7E 00 18 */	addi r3, r30, 0x18
/* 802D11DC  48 06 DF 41 */	bl OSUnlockMutex
/* 802D11E0  7F E3 FB 78 */	mr r3, r31
/* 802D11E4  39 61 00 30 */	addi r11, r1, 0x30
/* 802D11E8  48 09 10 41 */	bl _restgpr_29
/* 802D11EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802D11F0  7C 08 03 A6 */	mtlr r0
/* 802D11F4  38 21 00 30 */	addi r1, r1, 0x30
/* 802D11F8  4E 80 00 20 */	blr 
