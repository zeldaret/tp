lbl_802F18A0:
/* 802F18A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F18A4  3C 80 80 3A */	lis r4, j2dDefaultIndTevStageInfo@ha /* 0x803A1BF4@ha */
/* 802F18A8  38 A4 1B F4 */	addi r5, r4, j2dDefaultIndTevStageInfo@l /* 0x803A1BF4@l */
/* 802F18AC  80 85 00 00 */	lwz r4, 0(r5)
/* 802F18B0  80 05 00 04 */	lwz r0, 4(r5)
/* 802F18B4  90 81 00 08 */	stw r4, 8(r1)
/* 802F18B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 802F18BC  80 05 00 08 */	lwz r0, 8(r5)
/* 802F18C0  90 01 00 10 */	stw r0, 0x10(r1)
/* 802F18C4  89 61 00 08 */	lbz r11, 8(r1)
/* 802F18C8  88 01 00 09 */	lbz r0, 9(r1)
/* 802F18CC  54 0A 10 3A */	slwi r10, r0, 2
/* 802F18D0  88 01 00 0A */	lbz r0, 0xa(r1)
/* 802F18D4  54 09 20 36 */	slwi r9, r0, 4
/* 802F18D8  88 01 00 0C */	lbz r0, 0xc(r1)
/* 802F18DC  54 08 40 2E */	slwi r8, r0, 8
/* 802F18E0  88 01 00 0D */	lbz r0, 0xd(r1)
/* 802F18E4  54 07 58 28 */	slwi r7, r0, 0xb
/* 802F18E8  88 01 00 0B */	lbz r0, 0xb(r1)
/* 802F18EC  54 06 80 1E */	slwi r6, r0, 0x10
/* 802F18F0  88 01 00 0E */	lbz r0, 0xe(r1)
/* 802F18F4  54 05 A0 16 */	slwi r5, r0, 0x14
/* 802F18F8  88 01 00 10 */	lbz r0, 0x10(r1)
/* 802F18FC  54 04 B0 12 */	slwi r4, r0, 0x16
/* 802F1900  88 01 00 0F */	lbz r0, 0xf(r1)
/* 802F1904  54 00 A8 14 */	slwi r0, r0, 0x15
/* 802F1908  7C 80 03 78 */	or r0, r4, r0
/* 802F190C  7C A0 03 78 */	or r0, r5, r0
/* 802F1910  7C C0 03 78 */	or r0, r6, r0
/* 802F1914  7C E0 03 78 */	or r0, r7, r0
/* 802F1918  7D 00 03 78 */	or r0, r8, r0
/* 802F191C  7D 20 03 78 */	or r0, r9, r0
/* 802F1920  7D 40 03 78 */	or r0, r10, r0
/* 802F1924  7D 60 03 78 */	or r0, r11, r0
/* 802F1928  90 03 00 00 */	stw r0, 0(r3)
/* 802F192C  38 21 00 20 */	addi r1, r1, 0x20
/* 802F1930  4E 80 00 20 */	blr 
