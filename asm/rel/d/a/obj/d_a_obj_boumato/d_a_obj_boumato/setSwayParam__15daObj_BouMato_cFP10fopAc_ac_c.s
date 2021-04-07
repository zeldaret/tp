lbl_80BBC008:
/* 80BBC008  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80BBC00C  7C 08 02 A6 */	mflr r0
/* 80BBC010  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BBC014  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80BBC018  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80BBC01C  39 61 00 40 */	addi r11, r1, 0x40
/* 80BBC020  4B 7A 61 BD */	bl _savegpr_29
/* 80BBC024  7C 7E 1B 78 */	mr r30, r3
/* 80BBC028  7C 9D 23 78 */	mr r29, r4
/* 80BBC02C  3C A0 80 BC */	lis r5, m__21daObj_BouMato_Param_c@ha /* 0x80BBC470@ha */
/* 80BBC030  3B E5 C4 70 */	addi r31, r5, m__21daObj_BouMato_Param_c@l /* 0x80BBC470@l */
/* 80BBC034  C3 FF 00 5C */	lfs f31, 0x5c(r31)
/* 80BBC038  80 BF 00 88 */	lwz r5, 0x88(r31)
/* 80BBC03C  80 1F 00 8C */	lwz r0, 0x8c(r31)
/* 80BBC040  90 A1 00 08 */	stw r5, 8(r1)
/* 80BBC044  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BBC048  80 1F 00 90 */	lwz r0, 0x90(r31)
/* 80BBC04C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BBC050  38 BF 00 00 */	addi r5, r31, 0
/* 80BBC054  C0 05 00 18 */	lfs f0, 0x18(r5)
/* 80BBC058  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BBC05C  4B 45 E6 B5 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80BBC060  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80BBC064  7C 60 18 50 */	subf r3, r0, r3
/* 80BBC068  3C 63 00 01 */	addis r3, r3, 1
/* 80BBC06C  38 03 80 00 */	addi r0, r3, -32768
/* 80BBC070  B0 1E 0A 2A */	sth r0, 0xa2a(r30)
/* 80BBC074  38 00 00 08 */	li r0, 8
/* 80BBC078  90 1E 0A 10 */	stw r0, 0xa10(r30)
/* 80BBC07C  38 00 00 00 */	li r0, 0
/* 80BBC080  98 1E 0A 39 */	stb r0, 0xa39(r30)
/* 80BBC084  A8 1D 00 0E */	lha r0, 0xe(r29)
/* 80BBC088  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80BBC08C  40 82 00 7C */	bne lbl_80BBC108
/* 80BBC090  80 1E 0A 0C */	lwz r0, 0xa0c(r30)
/* 80BBC094  2C 00 00 05 */	cmpwi r0, 5
/* 80BBC098  41 82 00 68 */	beq lbl_80BBC100
/* 80BBC09C  40 80 00 10 */	bge lbl_80BBC0AC
/* 80BBC0A0  2C 00 00 03 */	cmpwi r0, 3
/* 80BBC0A4  40 80 00 14 */	bge lbl_80BBC0B8
/* 80BBC0A8  48 00 00 58 */	b lbl_80BBC100
lbl_80BBC0AC:
/* 80BBC0AC  2C 00 00 08 */	cmpwi r0, 8
/* 80BBC0B0  41 82 00 3C */	beq lbl_80BBC0EC
/* 80BBC0B4  40 80 00 4C */	bge lbl_80BBC100
lbl_80BBC0B8:
/* 80BBC0B8  2C 00 00 03 */	cmpwi r0, 3
/* 80BBC0BC  40 82 00 10 */	bne lbl_80BBC0CC
/* 80BBC0C0  A8 7E 0A 2A */	lha r3, 0xa2a(r30)
/* 80BBC0C4  38 03 C0 00 */	addi r0, r3, -16384
/* 80BBC0C8  B0 1E 0A 2A */	sth r0, 0xa2a(r30)
lbl_80BBC0CC:
/* 80BBC0CC  80 1E 0A 0C */	lwz r0, 0xa0c(r30)
/* 80BBC0D0  2C 00 00 04 */	cmpwi r0, 4
/* 80BBC0D4  40 82 00 10 */	bne lbl_80BBC0E4
/* 80BBC0D8  A8 7E 0A 2A */	lha r3, 0xa2a(r30)
/* 80BBC0DC  38 03 40 00 */	addi r0, r3, 0x4000
/* 80BBC0E0  B0 1E 0A 2A */	sth r0, 0xa2a(r30)
lbl_80BBC0E4:
/* 80BBC0E4  C3 FF 00 94 */	lfs f31, 0x94(r31)
/* 80BBC0E8  48 00 00 24 */	b lbl_80BBC10C
lbl_80BBC0EC:
/* 80BBC0EC  38 00 00 14 */	li r0, 0x14
/* 80BBC0F0  90 1E 0A 10 */	stw r0, 0xa10(r30)
/* 80BBC0F4  38 00 00 01 */	li r0, 1
/* 80BBC0F8  98 1E 0A 39 */	stb r0, 0xa39(r30)
/* 80BBC0FC  48 00 00 10 */	b lbl_80BBC10C
lbl_80BBC100:
/* 80BBC100  C3 FF 00 94 */	lfs f31, 0x94(r31)
/* 80BBC104  48 00 00 08 */	b lbl_80BBC10C
lbl_80BBC108:
/* 80BBC108  C3 FF 00 94 */	lfs f31, 0x94(r31)
lbl_80BBC10C:
/* 80BBC10C  38 60 00 00 */	li r3, 0
/* 80BBC110  38 80 00 00 */	li r4, 0
/* 80BBC114  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80BBC118  38 E1 00 08 */	addi r7, r1, 8
/* 80BBC11C  C8 3F 00 A0 */	lfd f1, 0xa0(r31)
/* 80BBC120  3C C0 43 30 */	lis r6, 0x4330
/* 80BBC124  38 A0 40 00 */	li r5, 0x4000
/* 80BBC128  38 00 00 03 */	li r0, 3
/* 80BBC12C  7C 09 03 A6 */	mtctr r0
lbl_80BBC130:
/* 80BBC130  7C 07 24 2E */	lfsx f0, r7, r4
/* 80BBC134  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BBC138  FC 00 00 1E */	fctiwz f0, f0
/* 80BBC13C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80BBC140  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80BBC144  7C 00 07 34 */	extsh r0, r0
/* 80BBC148  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BBC14C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BBC150  90 C1 00 20 */	stw r6, 0x20(r1)
/* 80BBC154  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80BBC158  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BBC15C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80BBC160  38 04 0A 18 */	addi r0, r4, 0xa18
/* 80BBC164  7C 1E 05 2E */	stfsx f0, r30, r0
/* 80BBC168  38 03 0A 24 */	addi r0, r3, 0xa24
/* 80BBC16C  7C BE 03 2E */	sthx r5, r30, r0
/* 80BBC170  38 63 00 02 */	addi r3, r3, 2
/* 80BBC174  38 84 00 04 */	addi r4, r4, 4
/* 80BBC178  42 00 FF B8 */	bdnz lbl_80BBC130
/* 80BBC17C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80BBC180  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80BBC184  39 61 00 40 */	addi r11, r1, 0x40
/* 80BBC188  4B 7A 60 A1 */	bl _restgpr_29
/* 80BBC18C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80BBC190  7C 08 03 A6 */	mtlr r0
/* 80BBC194  38 21 00 50 */	addi r1, r1, 0x50
/* 80BBC198  4E 80 00 20 */	blr 
