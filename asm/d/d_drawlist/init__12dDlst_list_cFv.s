lbl_80056390:
/* 80056390  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80056394  7C 08 02 A6 */	mflr r0
/* 80056398  90 01 00 24 */	stw r0, 0x24(r1)
/* 8005639C  39 61 00 20 */	addi r11, r1, 0x20
/* 800563A0  48 30 BE 39 */	bl _savegpr_28
/* 800563A4  7C 7F 1B 78 */	mr r31, r3
/* 800563A8  7F FE FB 78 */	mr r30, r31
/* 800563AC  3C 60 80 38 */	lis r3, l_drawlistSize@ha /* 0x8037A178@ha */
/* 800563B0  38 03 A1 78 */	addi r0, r3, l_drawlistSize@l /* 0x8037A178@l */
/* 800563B4  7C 1D 03 78 */	mr r29, r0
/* 800563B8  3B 80 00 00 */	li r28, 0
lbl_800563BC:
/* 800563BC  A0 7D 00 00 */	lhz r3, 0(r29)
/* 800563C0  3B BD 00 02 */	addi r29, r29, 2
/* 800563C4  4B FF E0 B5 */	bl J3DDrawBuffer__create__FUl
/* 800563C8  90 7E 00 00 */	stw r3, 0(r30)
/* 800563CC  3B 9C 00 01 */	addi r28, r28, 1
/* 800563D0  2C 1C 00 15 */	cmpwi r28, 0x15
/* 800563D4  3B DE 00 04 */	addi r30, r30, 4
/* 800563D8  41 80 FF E4 */	blt lbl_800563BC
/* 800563DC  3C 60 80 38 */	lis r3, l_nonSortId@ha /* 0x8037A1A4@ha */
/* 800563E0  38 03 A1 A4 */	addi r0, r3, l_nonSortId@l /* 0x8037A1A4@l */
/* 800563E4  7C 05 03 78 */	mr r5, r0
/* 800563E8  38 60 00 05 */	li r3, 5
/* 800563EC  38 00 00 09 */	li r0, 9
/* 800563F0  7C 09 03 A6 */	mtctr r0
lbl_800563F4:
/* 800563F4  88 05 00 00 */	lbz r0, 0(r5)
/* 800563F8  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 800563FC  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80056400  90 64 00 0C */	stw r3, 0xc(r4)
/* 80056404  38 A5 00 01 */	addi r5, r5, 1
/* 80056408  42 00 FF EC */	bdnz lbl_800563F4
/* 8005640C  38 A2 86 C4 */	la r5, l_zSortId(r2) /* 804520C4-_SDA2_BASE_ */
/* 80056410  38 60 00 02 */	li r3, 2
/* 80056414  38 00 00 06 */	li r0, 6
/* 80056418  7C 09 03 A6 */	mtctr r0
lbl_8005641C:
/* 8005641C  88 05 00 00 */	lbz r0, 0(r5)
/* 80056420  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80056424  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80056428  90 64 00 0C */	stw r3, 0xc(r4)
/* 8005642C  38 A5 00 01 */	addi r5, r5, 1
/* 80056430  42 00 FF EC */	bdnz lbl_8005641C
/* 80056434  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 80056438  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8005643C  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80056440  90 03 00 48 */	stw r0, 0x48(r3)
/* 80056444  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 80056448  90 03 00 4C */	stw r0, 0x4c(r3)
/* 8005644C  38 1F 00 54 */	addi r0, r31, 0x54
/* 80056450  90 1F 00 64 */	stw r0, 0x64(r31)
/* 80056454  38 1F 00 6C */	addi r0, r31, 0x6c
/* 80056458  90 1F 00 AC */	stw r0, 0xac(r31)
/* 8005645C  38 1F 00 B4 */	addi r0, r31, 0xb4
/* 80056460  90 1F 01 B4 */	stw r0, 0x1b4(r31)
/* 80056464  38 1F 01 BC */	addi r0, r31, 0x1bc
/* 80056468  90 1F 02 3C */	stw r0, 0x23c(r31)
/* 8005646C  38 7F 02 5C */	addi r3, r31, 0x25c
/* 80056470  4B FF F2 15 */	bl init__21dDlst_shadowControl_cFv
/* 80056474  39 61 00 20 */	addi r11, r1, 0x20
/* 80056478  48 30 BD AD */	bl _restgpr_28
/* 8005647C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80056480  7C 08 03 A6 */	mtlr r0
/* 80056484  38 21 00 20 */	addi r1, r1, 0x20
/* 80056488  4E 80 00 20 */	blr 
