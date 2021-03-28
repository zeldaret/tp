lbl_80B4B0DC:
/* 80B4B0DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B4B0E0  7C 08 02 A6 */	mflr r0
/* 80B4B0E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B4B0E8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80B4B0EC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80B4B0F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B4B0F4  7C 7F 1B 78 */	mr r31, r3
/* 80B4B0F8  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80B4B0FC  38 83 FD FF */	addi r4, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80B4B100  38 A0 00 1F */	li r5, 0x1f
/* 80B4B104  88 1F 0E 25 */	lbz r0, 0xe25(r31)
/* 80B4B108  28 00 00 00 */	cmplwi r0, 0
/* 80B4B10C  40 82 00 C0 */	bne lbl_80B4B1CC
/* 80B4B110  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B4B114  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B4B118  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80B4B11C  28 00 00 00 */	cmplwi r0, 0
/* 80B4B120  41 82 00 10 */	beq lbl_80B4B130
/* 80B4B124  38 80 00 00 */	li r4, 0
/* 80B4B128  38 A0 00 00 */	li r5, 0
/* 80B4B12C  48 00 00 30 */	b lbl_80B4B15C
lbl_80B4B130:
/* 80B4B130  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B4B134  28 00 00 00 */	cmplwi r0, 0
/* 80B4B138  41 82 00 10 */	beq lbl_80B4B148
/* 80B4B13C  38 80 00 00 */	li r4, 0
/* 80B4B140  38 A0 00 00 */	li r5, 0
/* 80B4B144  48 00 00 18 */	b lbl_80B4B15C
lbl_80B4B148:
/* 80B4B148  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B4B14C  2C 00 00 00 */	cmpwi r0, 0
/* 80B4B150  41 82 00 0C */	beq lbl_80B4B15C
/* 80B4B154  38 80 00 00 */	li r4, 0
/* 80B4B158  38 A0 00 00 */	li r5, 0
lbl_80B4B15C:
/* 80B4B15C  C0 3F 0D EC */	lfs f1, 0xdec(r31)
/* 80B4B160  C3 FF 0D F0 */	lfs f31, 0xdf0(r31)
/* 80B4B164  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80B4B168  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B4B16C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80B4B170  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B4B174  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80B4B178  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B4B17C  38 00 00 79 */	li r0, 0x79
/* 80B4B180  90 1F 0E 70 */	stw r0, 0xe70(r31)
/* 80B4B184  90 9F 0E 6C */	stw r4, 0xe6c(r31)
/* 80B4B188  90 BF 0E 5C */	stw r5, 0xe5c(r31)
/* 80B4B18C  80 1F 0E E0 */	lwz r0, 0xee0(r31)
/* 80B4B190  60 00 00 04 */	ori r0, r0, 4
/* 80B4B194  90 1F 0E E0 */	stw r0, 0xee0(r31)
/* 80B4B198  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80B4B19C  4B 72 40 5C */	b SetH__8cM3dGCylFf
/* 80B4B1A0  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80B4B1A4  FC 20 F8 90 */	fmr f1, f31
/* 80B4B1A8  4B 72 40 58 */	b SetR__8cM3dGCylFf
/* 80B4B1AC  38 7F 0F 68 */	addi r3, r31, 0xf68
/* 80B4B1B0  38 81 00 08 */	addi r4, r1, 8
/* 80B4B1B4  4B 72 40 28 */	b SetC__8cM3dGCylFRC4cXyz
/* 80B4B1B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B4B1BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B4B1C0  38 63 23 3C */	addi r3, r3, 0x233c
/* 80B4B1C4  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 80B4B1C8  4B 71 99 E0 */	b Set__4cCcSFP8cCcD_Obj
lbl_80B4B1CC:
/* 80B4B1CC  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80B4B1D0  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80B4B1D4  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80B4B1D8  7D 89 03 A6 */	mtctr r12
/* 80B4B1DC  4E 80 04 21 */	bctrl 
/* 80B4B1E0  38 7F 0E 44 */	addi r3, r31, 0xe44
/* 80B4B1E4  81 9F 0E 80 */	lwz r12, 0xe80(r31)
/* 80B4B1E8  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B4B1EC  7D 89 03 A6 */	mtctr r12
/* 80B4B1F0  4E 80 04 21 */	bctrl 
/* 80B4B1F4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80B4B1F8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80B4B1FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B4B200  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B4B204  7C 08 03 A6 */	mtlr r0
/* 80B4B208  38 21 00 30 */	addi r1, r1, 0x30
/* 80B4B20C  4E 80 00 20 */	blr 
