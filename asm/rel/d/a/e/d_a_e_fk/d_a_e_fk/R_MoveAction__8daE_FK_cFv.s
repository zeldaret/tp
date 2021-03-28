lbl_806B9DA4:
/* 806B9DA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806B9DA8  7C 08 02 A6 */	mflr r0
/* 806B9DAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 806B9DB0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806B9DB4  7C 7F 1B 78 */	mr r31, r3
/* 806B9DB8  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 806B9DBC  D0 01 00 08 */	stfs f0, 8(r1)
/* 806B9DC0  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 806B9DC4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806B9DC8  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 806B9DCC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806B9DD0  3C 60 80 6C */	lis r3, data_806BB96C@ha
/* 806B9DD4  A8 03 B9 6C */	lha r0, data_806BB96C@l(r3)
/* 806B9DD8  B0 1F 05 D0 */	sth r0, 0x5d0(r31)
/* 806B9DDC  3C 60 80 6C */	lis r3, data_806BB970@ha
/* 806B9DE0  C0 23 B9 70 */	lfs f1, data_806BB970@l(r3)
/* 806B9DE4  3C 60 80 6C */	lis r3, lit_4250@ha
/* 806B9DE8  C0 03 B7 C4 */	lfs f0, lit_4250@l(r3)
/* 806B9DEC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B9DF0  40 80 00 14 */	bge lbl_806B9E04
/* 806B9DF4  38 00 00 02 */	li r0, 2
/* 806B9DF8  98 1F 06 15 */	stb r0, 0x615(r31)
/* 806B9DFC  38 00 00 00 */	li r0, 0
/* 806B9E00  98 1F 06 16 */	stb r0, 0x616(r31)
lbl_806B9E04:
/* 806B9E04  7F E3 FB 78 */	mr r3, r31
/* 806B9E08  4B FF FE 11 */	bl SpeedChk__8daE_FK_cFv
/* 806B9E0C  7F E3 FB 78 */	mr r3, r31
/* 806B9E10  4B FF FD 1D */	bl SpeedSet__8daE_FK_cFv
/* 806B9E14  7F E3 FB 78 */	mr r3, r31
/* 806B9E18  4B FF FE 05 */	bl SetAnmSpeed__8daE_FK_cFv
/* 806B9E1C  7F E3 FB 78 */	mr r3, r31
/* 806B9E20  4B FF FD F5 */	bl HsAngleSet__8daE_FK_cFv
/* 806B9E24  7F E3 FB 78 */	mr r3, r31
/* 806B9E28  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806B9E2C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806B9E30  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806B9E34  4B 96 08 DC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806B9E38  7C 64 1B 78 */	mr r4, r3
/* 806B9E3C  7F E3 FB 78 */	mr r3, r31
/* 806B9E40  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 806B9E44  7C 00 20 50 */	subf r0, r0, r4
/* 806B9E48  7C 04 07 34 */	extsh r4, r0
/* 806B9E4C  4B FF FD 69 */	bl TnNeckSet__8daE_FK_cFs
/* 806B9E50  7F E3 FB 78 */	mr r3, r31
/* 806B9E54  4B FF FD CD */	bl TgChk__8daE_FK_cFv
/* 806B9E58  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806B9E5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806B9E60  7C 08 03 A6 */	mtlr r0
/* 806B9E64  38 21 00 20 */	addi r1, r1, 0x20
/* 806B9E68  4E 80 00 20 */	blr 
