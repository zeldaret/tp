lbl_802F1664:
/* 802F1664  38 80 00 00 */	li r4, 0
/* 802F1668  98 83 00 04 */	stb r4, 4(r3)
/* 802F166C  38 A2 C7 84 */	la r5, j2dDefaultIndTexOrderNull(r2) /* 80456184-_SDA2_BASE_ */
/* 802F1670  38 00 00 04 */	li r0, 4
/* 802F1674  7C 09 03 A6 */	mtctr r0
lbl_802F1678:
/* 802F1678  88 02 C7 84 */	lbz r0, j2dDefaultIndTexOrderNull(r2)
/* 802F167C  7C C3 22 14 */	add r6, r3, r4
/* 802F1680  98 06 00 05 */	stb r0, 5(r6)
/* 802F1684  88 05 00 01 */	lbz r0, 1(r5)
/* 802F1688  98 06 00 06 */	stb r0, 6(r6)
/* 802F168C  38 84 00 02 */	addi r4, r4, 2
/* 802F1690  42 00 FF E8 */	bdnz lbl_802F1678
/* 802F1694  39 80 00 00 */	li r12, 0
/* 802F1698  38 80 00 00 */	li r4, 0
/* 802F169C  3C A0 80 3A */	lis r5, j2dDefaultIndTexMtxInfo@ha /* 0x803A1BC4@ha */
/* 802F16A0  38 E5 1B C4 */	addi r7, r5, j2dDefaultIndTexMtxInfo@l /* 0x803A1BC4@l */
lbl_802F16A4:
/* 802F16A4  39 00 00 00 */	li r8, 0
/* 802F16A8  38 A0 00 00 */	li r5, 0
/* 802F16AC  7D 63 22 14 */	add r11, r3, r4
lbl_802F16B0:
/* 802F16B0  38 C0 00 00 */	li r6, 0
/* 802F16B4  7D 27 2A 14 */	add r9, r7, r5
/* 802F16B8  7D 4B 2A 14 */	add r10, r11, r5
/* 802F16BC  38 00 00 03 */	li r0, 3
/* 802F16C0  7C 09 03 A6 */	mtctr r0
lbl_802F16C4:
/* 802F16C4  7C 09 34 2E */	lfsx f0, r9, r6
/* 802F16C8  38 06 00 10 */	addi r0, r6, 0x10
/* 802F16CC  7C 0A 05 2E */	stfsx f0, r10, r0
/* 802F16D0  38 C6 00 04 */	addi r6, r6, 4
/* 802F16D4  42 00 FF F0 */	bdnz lbl_802F16C4
/* 802F16D8  39 08 00 01 */	addi r8, r8, 1
/* 802F16DC  2C 08 00 02 */	cmpwi r8, 2
/* 802F16E0  38 A5 00 0C */	addi r5, r5, 0xc
/* 802F16E4  41 80 FF CC */	blt lbl_802F16B0
/* 802F16E8  88 07 00 18 */	lbz r0, 0x18(r7)
/* 802F16EC  98 0B 00 28 */	stb r0, 0x28(r11)
/* 802F16F0  39 8C 00 01 */	addi r12, r12, 1
/* 802F16F4  2C 0C 00 03 */	cmpwi r12, 3
/* 802F16F8  38 84 00 1C */	addi r4, r4, 0x1c
/* 802F16FC  41 80 FF A8 */	blt lbl_802F16A4
/* 802F1700  38 80 00 00 */	li r4, 0
/* 802F1704  38 A2 C7 90 */	la r5, j2dDefaultIndTexCoordScaleInfo(r2) /* 80456190-_SDA2_BASE_ */
/* 802F1708  38 00 00 04 */	li r0, 4
/* 802F170C  7C 09 03 A6 */	mtctr r0
lbl_802F1710:
/* 802F1710  88 02 C7 90 */	lbz r0, j2dDefaultIndTexCoordScaleInfo(r2)
/* 802F1714  7C C3 22 14 */	add r6, r3, r4
/* 802F1718  98 06 00 64 */	stb r0, 0x64(r6)
/* 802F171C  88 05 00 01 */	lbz r0, 1(r5)
/* 802F1720  98 06 00 65 */	stb r0, 0x65(r6)
/* 802F1724  38 84 00 02 */	addi r4, r4, 2
/* 802F1728  42 00 FF E8 */	bdnz lbl_802F1710
/* 802F172C  4E 80 00 20 */	blr 
