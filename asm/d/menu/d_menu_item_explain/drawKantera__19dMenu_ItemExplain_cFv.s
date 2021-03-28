lbl_801DB744:
/* 801DB744  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DB748  7C 08 02 A6 */	mflr r0
/* 801DB74C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DB750  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 801DB754  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 801DB758  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801DB75C  7C 7F 1B 78 */	mr r31, r3
/* 801DB760  88 03 00 E1 */	lbz r0, 0xe1(r3)
/* 801DB764  28 00 00 48 */	cmplwi r0, 0x48
/* 801DB768  40 82 00 94 */	bne lbl_801DB7FC
/* 801DB76C  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 801DB770  80 83 00 04 */	lwz r4, 4(r3)
/* 801DB774  C0 24 00 2C */	lfs f1, 0x2c(r4)
/* 801DB778  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 801DB77C  EF E1 00 28 */	fsubs f31, f1, f0
/* 801DB780  48 07 8B E5 */	bl getGlobalPosY__8CPaneMgrFv
/* 801DB784  EC 21 F8 2A */	fadds f1, f1, f31
/* 801DB788  C0 02 A8 C0 */	lfs f0, lit_4347(r2)
/* 801DB78C  EF E0 08 2A */	fadds f31, f0, f1
/* 801DB790  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 801DB794  48 07 8B 55 */	bl getGlobalPosX__8CPaneMgrFv
/* 801DB798  C0 02 A8 BC */	lfs f0, lit_4346(r2)
/* 801DB79C  EC 20 08 2A */	fadds f1, f0, f1
/* 801DB7A0  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 801DB7A4  FC 40 F8 90 */	fmr f2, f31
/* 801DB7A8  4B FD 33 F9 */	bl setPos__15dKantera_icon_cFff
/* 801DB7AC  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 801DB7B0  C0 22 A8 C4 */	lfs f1, lit_4348(r2)
/* 801DB7B4  FC 40 08 90 */	fmr f2, f1
/* 801DB7B8  4B FD 34 3D */	bl setScale__15dKantera_icon_cFff
/* 801DB7BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801DB7C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801DB7C4  A0 A3 00 08 */	lhz r5, 8(r3)
/* 801DB7C8  A0 83 00 06 */	lhz r4, 6(r3)
/* 801DB7CC  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 801DB7D0  4B FD 34 75 */	bl setNowGauge__15dKantera_icon_cFUsUs
/* 801DB7D4  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 801DB7D8  48 07 A0 51 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 801DB7DC  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 801DB7E0  4B FD 33 9D */	bl setAlphaRate__15dKantera_icon_cFf
/* 801DB7E4  80 7F 00 6C */	lwz r3, 0x6c(r31)
/* 801DB7E8  80 63 00 04 */	lwz r3, 4(r3)
/* 801DB7EC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DB7F0  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DB7F4  7D 89 03 A6 */	mtctr r12
/* 801DB7F8  4E 80 04 21 */	bctrl 
lbl_801DB7FC:
/* 801DB7FC  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 801DB800  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 801DB804  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801DB808  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DB80C  7C 08 03 A6 */	mtlr r0
/* 801DB810  38 21 00 20 */	addi r1, r1, 0x20
/* 801DB814  4E 80 00 20 */	blr 
