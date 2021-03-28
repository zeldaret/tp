lbl_807712A8:
/* 807712A8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 807712AC  7C 08 02 A6 */	mflr r0
/* 807712B0  90 01 00 74 */	stw r0, 0x74(r1)
/* 807712B4  39 61 00 70 */	addi r11, r1, 0x70
/* 807712B8  4B BF 0F 18 */	b _savegpr_26
/* 807712BC  7C 7D 1B 78 */	mr r29, r3
/* 807712C0  3C 60 80 78 */	lis r3, lit_4018@ha
/* 807712C4  3B C3 9D FC */	addi r30, r3, lit_4018@l
/* 807712C8  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 807712CC  2C 00 00 00 */	cmpwi r0, 0
/* 807712D0  41 81 00 18 */	bgt lbl_807712E8
/* 807712D4  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 807712D8  54 00 00 3E */	slwi r0, r0, 0
/* 807712DC  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 807712E0  38 00 00 00 */	li r0, 0
/* 807712E4  90 1D 05 5C */	stw r0, 0x55c(r29)
lbl_807712E8:
/* 807712E8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807712EC  D0 1D 0A 34 */	stfs f0, 0xa34(r29)
/* 807712F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807712F4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 807712F8  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 807712FC  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80771300  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80771304  40 82 00 9C */	bne lbl_807713A0
/* 80771308  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 8077130C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80771310  41 82 00 90 */	beq lbl_807713A0
/* 80771314  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 80771318  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8077131C  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 80771320  38 00 00 03 */	li r0, 3
/* 80771324  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 80771328  38 00 00 64 */	li r0, 0x64
/* 8077132C  B0 1D 0A 60 */	sth r0, 0xa60(r29)
/* 80771330  38 00 00 2D */	li r0, 0x2d
/* 80771334  B0 1D 0A 62 */	sth r0, 0xa62(r29)
/* 80771338  38 00 00 00 */	li r0, 0
/* 8077133C  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 80771340  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070014@ha */
/* 80771344  38 03 00 14 */	addi r0, r3, 0x0014 /* 0x00070014@l */
/* 80771348  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8077134C  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80771350  38 81 00 1C */	addi r4, r1, 0x1c
/* 80771354  38 A0 FF FF */	li r5, -1
/* 80771358  81 9D 05 D0 */	lwz r12, 0x5d0(r29)
/* 8077135C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80771360  7D 89 03 A6 */	mtctr r12
/* 80771364  4E 80 04 21 */	bctrl 
/* 80771368  38 00 00 01 */	li r0, 1
/* 8077136C  98 1D 0A 38 */	stb r0, 0xa38(r29)
/* 80771370  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80771374  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80771378  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8077137C  80 03 05 88 */	lwz r0, 0x588(r3)
/* 80771380  64 00 01 00 */	oris r0, r0, 0x100
/* 80771384  90 03 05 88 */	stw r0, 0x588(r3)
/* 80771388  38 00 00 0F */	li r0, 0xf
/* 8077138C  B0 1D 0B AC */	sth r0, 0xbac(r29)
/* 80771390  A0 7D 05 8E */	lhz r3, 0x58e(r29)
/* 80771394  38 00 FF E8 */	li r0, -24
/* 80771398  7C 60 00 38 */	and r0, r3, r0
/* 8077139C  B0 1D 05 8E */	sth r0, 0x58e(r29)
lbl_807713A0:
/* 807713A0  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 807713A4  28 00 00 1F */	cmplwi r0, 0x1f
/* 807713A8  41 81 09 14 */	bgt lbl_80771CBC
/* 807713AC  3C 60 80 78 */	lis r3, lit_6638@ha
/* 807713B0  38 63 A2 5C */	addi r3, r3, lit_6638@l
/* 807713B4  54 00 10 3A */	slwi r0, r0, 2
/* 807713B8  7C 03 00 2E */	lwzx r0, r3, r0
/* 807713BC  7C 09 03 A6 */	mtctr r0
/* 807713C0  4E 80 04 20 */	bctr 
lbl_807713C4:
/* 807713C4  7F A3 EB 78 */	mr r3, r29
/* 807713C8  38 80 00 13 */	li r4, 0x13
/* 807713CC  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 807713D0  38 A0 00 00 */	li r5, 0
/* 807713D4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807713D8  4B FF AA A9 */	bl anm_init__FP11e_rdy_classifUcf
/* 807713DC  38 00 00 01 */	li r0, 1
/* 807713E0  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807713E4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807713E8  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 807713EC  7F A3 EB 78 */	mr r3, r29
/* 807713F0  4B FF BB 2D */	bl ride_off__FP11e_rdy_class
/* 807713F4  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 807713F8  D0 1D 0B 88 */	stfs f0, 0xb88(r29)
/* 807713FC  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 80771400  2C 00 00 00 */	cmpwi r0, 0
/* 80771404  41 81 00 50 */	bgt lbl_80771454
/* 80771408  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070014@ha */
/* 8077140C  38 03 00 14 */	addi r0, r3, 0x0014 /* 0x00070014@l */
/* 80771410  90 01 00 18 */	stw r0, 0x18(r1)
/* 80771414  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80771418  38 81 00 18 */	addi r4, r1, 0x18
/* 8077141C  38 A0 FF FF */	li r5, -1
/* 80771420  81 9D 05 D0 */	lwz r12, 0x5d0(r29)
/* 80771424  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80771428  7D 89 03 A6 */	mtctr r12
/* 8077142C  4E 80 04 21 */	bctrl 
/* 80771430  38 00 00 01 */	li r0, 1
/* 80771434  98 1D 0A 38 */	stb r0, 0xa38(r29)
/* 80771438  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8077143C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80771440  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80771444  80 03 05 88 */	lwz r0, 0x588(r3)
/* 80771448  64 00 01 00 */	oris r0, r0, 0x100
/* 8077144C  90 03 05 88 */	stw r0, 0x588(r3)
/* 80771450  48 00 00 2C */	b lbl_8077147C
lbl_80771454:
/* 80771454  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070013@ha */
/* 80771458  38 03 00 13 */	addi r0, r3, 0x0013 /* 0x00070013@l */
/* 8077145C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80771460  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 80771464  38 81 00 14 */	addi r4, r1, 0x14
/* 80771468  38 A0 FF FF */	li r5, -1
/* 8077146C  81 9D 05 D0 */	lwz r12, 0x5d0(r29)
/* 80771470  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80771474  7D 89 03 A6 */	mtctr r12
/* 80771478  4E 80 04 21 */	bctrl 
lbl_8077147C:
/* 8077147C  38 00 00 00 */	li r0, 0
/* 80771480  B0 1D 0A 60 */	sth r0, 0xa60(r29)
/* 80771484  48 00 08 38 */	b lbl_80771CBC
lbl_80771488:
/* 80771488  80 1D 0C 40 */	lwz r0, 0xc40(r29)
/* 8077148C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80771490  41 82 00 C4 */	beq lbl_80771554
/* 80771494  A8 1D 0A 60 */	lha r0, 0xa60(r29)
/* 80771498  2C 00 00 00 */	cmpwi r0, 0
/* 8077149C  40 82 00 B8 */	bne lbl_80771554
/* 807714A0  7F A3 EB 78 */	mr r3, r29
/* 807714A4  4B FF F9 A5 */	bl kado_check__FP11e_rdy_class
/* 807714A8  2C 03 00 00 */	cmpwi r3, 0
/* 807714AC  41 82 00 58 */	beq lbl_80771504
/* 807714B0  2C 03 00 02 */	cmpwi r3, 2
/* 807714B4  40 82 00 1C */	bne lbl_807714D0
/* 807714B8  38 00 10 00 */	li r0, 0x1000
/* 807714BC  B0 1D 0A C6 */	sth r0, 0xac6(r29)
/* 807714C0  A8 7D 0A DE */	lha r3, 0xade(r29)
/* 807714C4  38 03 E4 A8 */	addi r0, r3, -7000
/* 807714C8  B0 1D 0A DE */	sth r0, 0xade(r29)
/* 807714CC  48 00 00 18 */	b lbl_807714E4
lbl_807714D0:
/* 807714D0  38 00 F0 00 */	li r0, -4096
/* 807714D4  B0 1D 0A C6 */	sth r0, 0xac6(r29)
/* 807714D8  A8 7D 0A DE */	lha r3, 0xade(r29)
/* 807714DC  38 03 1B 58 */	addi r0, r3, 0x1b58
/* 807714E0  B0 1D 0A DE */	sth r0, 0xade(r29)
lbl_807714E4:
/* 807714E4  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 807714E8  D0 1D 0B 88 */	stfs f0, 0xb88(r29)
/* 807714EC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 807714F0  D0 1D 0A F4 */	stfs f0, 0xaf4(r29)
/* 807714F4  D0 1D 0A FC */	stfs f0, 0xafc(r29)
/* 807714F8  38 00 00 3C */	li r0, 0x3c
/* 807714FC  B0 1D 0A 60 */	sth r0, 0xa60(r29)
/* 80771500  48 00 07 BC */	b lbl_80771CBC
lbl_80771504:
/* 80771504  38 00 00 0A */	li r0, 0xa
/* 80771508  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8077150C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80771510  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80771514  C0 3D 0A BC */	lfs f1, 0xabc(r29)
/* 80771518  C0 1E 01 28 */	lfs f0, 0x128(r30)
/* 8077151C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80771520  D0 1D 0A BC */	stfs f0, 0xabc(r29)
/* 80771524  A8 7D 0A DE */	lha r3, 0xade(r29)
/* 80771528  3C 63 00 01 */	addis r3, r3, 1
/* 8077152C  38 03 80 00 */	addi r0, r3, -32768
/* 80771530  B0 1D 0A DE */	sth r0, 0xade(r29)
/* 80771534  38 00 00 05 */	li r0, 5
/* 80771538  B0 1D 0B C0 */	sth r0, 0xbc0(r29)
/* 8077153C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80771540  D0 1D 0A F4 */	stfs f0, 0xaf4(r29)
/* 80771544  D0 1D 0A FC */	stfs f0, 0xafc(r29)
/* 80771548  38 00 00 00 */	li r0, 0
/* 8077154C  B0 1D 0A C6 */	sth r0, 0xac6(r29)
/* 80771550  48 00 07 6C */	b lbl_80771CBC
lbl_80771554:
/* 80771554  38 7D 0A DC */	addi r3, r29, 0xadc
/* 80771558  38 80 C0 00 */	li r4, -16384
/* 8077155C  38 A0 00 01 */	li r5, 1
/* 80771560  38 C0 03 00 */	li r6, 0x300
/* 80771564  4B AF F0 A4 */	b cLib_addCalcAngleS2__FPssss
/* 80771568  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 8077156C  A8 1D 0A C6 */	lha r0, 0xac6(r29)
/* 80771570  7C 03 02 14 */	add r0, r3, r0
/* 80771574  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80771578  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8077157C  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80771580  A8 1D 0A DC */	lha r0, 0xadc(r29)
/* 80771584  2C 00 D0 00 */	cmpwi r0, -12288
/* 80771588  41 81 07 34 */	bgt lbl_80771CBC
/* 8077158C  80 1D 0C 40 */	lwz r0, 0xc40(r29)
/* 80771590  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80771594  41 82 07 28 */	beq lbl_80771CBC
/* 80771598  38 00 00 0A */	li r0, 0xa
/* 8077159C  98 1D 0A EE */	stb r0, 0xaee(r29)
/* 807715A0  88 1D 13 64 */	lbz r0, 0x1364(r29)
/* 807715A4  7C 00 07 75 */	extsb. r0, r0
/* 807715A8  41 82 00 34 */	beq lbl_807715DC
/* 807715AC  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002F@ha */
/* 807715B0  38 03 00 2F */	addi r0, r3, 0x002F /* 0x0006002F@l */
/* 807715B4  90 01 00 10 */	stw r0, 0x10(r1)
/* 807715B8  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 807715BC  38 81 00 10 */	addi r4, r1, 0x10
/* 807715C0  38 A0 00 00 */	li r5, 0
/* 807715C4  38 C0 FF FF */	li r6, -1
/* 807715C8  81 9D 05 D0 */	lwz r12, 0x5d0(r29)
/* 807715CC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807715D0  7D 89 03 A6 */	mtctr r12
/* 807715D4  4E 80 04 21 */	bctrl 
/* 807715D8  48 00 00 30 */	b lbl_80771608
lbl_807715DC:
/* 807715DC  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002C@ha */
/* 807715E0  38 03 00 2C */	addi r0, r3, 0x002C /* 0x0006002C@l */
/* 807715E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 807715E8  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 807715EC  38 81 00 0C */	addi r4, r1, 0xc
/* 807715F0  38 A0 00 00 */	li r5, 0
/* 807715F4  38 C0 FF FF */	li r6, -1
/* 807715F8  81 9D 05 D0 */	lwz r12, 0x5d0(r29)
/* 807715FC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80771600  7D 89 03 A6 */	mtctr r12
/* 80771604  4E 80 04 21 */	bctrl 
lbl_80771608:
/* 80771608  38 00 00 02 */	li r0, 2
/* 8077160C  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 80771610  88 1D 0A EF */	lbz r0, 0xaef(r29)
/* 80771614  7C 00 07 75 */	extsb. r0, r0
/* 80771618  40 82 00 24 */	bne lbl_8077163C
/* 8077161C  7F A3 EB 78 */	mr r3, r29
/* 80771620  38 80 00 11 */	li r4, 0x11
/* 80771624  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80771628  38 A0 00 00 */	li r5, 0
/* 8077162C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80771630  4B FF A8 51 */	bl anm_init__FP11e_rdy_classifUcf
/* 80771634  A8 1D 0A DE */	lha r0, 0xade(r29)
/* 80771638  48 00 00 14 */	b lbl_8077164C
lbl_8077163C:
/* 8077163C  A8 7D 0A DE */	lha r3, 0xade(r29)
/* 80771640  3C 63 00 01 */	addis r3, r3, 1
/* 80771644  38 03 80 00 */	addi r0, r3, -32768
/* 80771648  7C 00 07 34 */	extsh r0, r0
lbl_8077164C:
/* 8077164C  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80771650  88 1D 0A C8 */	lbz r0, 0xac8(r29)
/* 80771654  7C 00 07 75 */	extsb. r0, r0
/* 80771658  41 82 00 18 */	beq lbl_80771670
/* 8077165C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80771660  D0 1D 0A BC */	stfs f0, 0xabc(r29)
/* 80771664  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80771668  D0 1D 0B 88 */	stfs f0, 0xb88(r29)
/* 8077166C  48 00 06 50 */	b lbl_80771CBC
lbl_80771670:
/* 80771670  88 1D 0A EF */	lbz r0, 0xaef(r29)
/* 80771674  7C 00 07 75 */	extsb. r0, r0
/* 80771678  40 82 00 14 */	bne lbl_8077168C
/* 8077167C  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 80771680  D0 1D 0A F4 */	stfs f0, 0xaf4(r29)
/* 80771684  D0 1D 0A FC */	stfs f0, 0xafc(r29)
/* 80771688  48 00 00 10 */	b lbl_80771698
lbl_8077168C:
/* 8077168C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80771690  D0 1D 0A F4 */	stfs f0, 0xaf4(r29)
/* 80771694  D0 1D 0A FC */	stfs f0, 0xafc(r29)
lbl_80771698:
/* 80771698  38 00 B0 00 */	li r0, -20480
/* 8077169C  B0 1D 0A F8 */	sth r0, 0xaf8(r29)
/* 807716A0  38 00 C0 00 */	li r0, -16384
/* 807716A4  B0 1D 0B 00 */	sth r0, 0xb00(r29)
/* 807716A8  C0 3D 0A BC */	lfs f1, 0xabc(r29)
/* 807716AC  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 807716B0  EC 01 00 32 */	fmuls f0, f1, f0
/* 807716B4  D0 1D 0A BC */	stfs f0, 0xabc(r29)
/* 807716B8  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 807716BC  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 807716C0  A8 1D 0A C6 */	lha r0, 0xac6(r29)
/* 807716C4  7C 00 0E 70 */	srawi r0, r0, 1
/* 807716C8  7C 00 01 94 */	addze r0, r0
/* 807716CC  B0 1D 0A C6 */	sth r0, 0xac6(r29)
/* 807716D0  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 807716D4  D0 1D 0B 88 */	stfs f0, 0xb88(r29)
/* 807716D8  38 00 00 01 */	li r0, 1
/* 807716DC  98 1D 13 2D */	stb r0, 0x132d(r29)
/* 807716E0  48 00 05 DC */	b lbl_80771CBC
lbl_807716E4:
/* 807716E4  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 807716E8  A8 1D 0A C6 */	lha r0, 0xac6(r29)
/* 807716EC  7C 03 02 14 */	add r0, r3, r0
/* 807716F0  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 807716F4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 807716F8  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 807716FC  38 7D 0A DC */	addi r3, r29, 0xadc
/* 80771700  38 80 C0 00 */	li r4, -16384
/* 80771704  38 A0 00 01 */	li r5, 1
/* 80771708  38 C0 03 00 */	li r6, 0x300
/* 8077170C  4B AF EE FC */	b cLib_addCalcAngleS2__FPssss
/* 80771710  80 1D 0C 40 */	lwz r0, 0xc40(r29)
/* 80771714  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80771718  41 82 05 A4 */	beq lbl_80771CBC
/* 8077171C  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 80771720  2C 00 00 00 */	cmpwi r0, 0
/* 80771724  40 81 00 20 */	ble lbl_80771744
/* 80771728  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 8077172C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80771730  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80771734  40 82 00 10 */	bne lbl_80771744
/* 80771738  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 8077173C  60 00 00 01 */	ori r0, r0, 1
/* 80771740  B0 1D 05 8E */	sth r0, 0x58e(r29)
lbl_80771744:
/* 80771744  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80771748  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8077174C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80771750  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80771754  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80771758  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8077175C  38 61 00 20 */	addi r3, r1, 0x20
/* 80771760  38 80 00 64 */	li r4, 0x64
/* 80771764  28 1D 00 00 */	cmplwi r29, 0
/* 80771768  41 82 00 0C */	beq lbl_80771774
/* 8077176C  80 BD 00 04 */	lwz r5, 4(r29)
/* 80771770  48 00 00 08 */	b lbl_80771778
lbl_80771774:
/* 80771774  38 A0 FF FF */	li r5, -1
lbl_80771778:
/* 80771778  38 C0 00 05 */	li r6, 5
/* 8077177C  4B A3 6A 44 */	b dKy_Sound_set__F4cXyziUii
/* 80771780  38 00 00 0A */	li r0, 0xa
/* 80771784  98 1D 0A EE */	stb r0, 0xaee(r29)
/* 80771788  88 1D 0A EF */	lbz r0, 0xaef(r29)
/* 8077178C  7C 00 07 75 */	extsb. r0, r0
/* 80771790  40 82 00 20 */	bne lbl_807717B0
/* 80771794  7F A3 EB 78 */	mr r3, r29
/* 80771798  38 80 00 11 */	li r4, 0x11
/* 8077179C  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 807717A0  38 A0 00 00 */	li r5, 0
/* 807717A4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807717A8  4B FF A6 D9 */	bl anm_init__FP11e_rdy_classifUcf
/* 807717AC  48 00 00 1C */	b lbl_807717C8
lbl_807717B0:
/* 807717B0  7F A3 EB 78 */	mr r3, r29
/* 807717B4  38 80 00 13 */	li r4, 0x13
/* 807717B8  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 807717BC  38 A0 00 00 */	li r5, 0
/* 807717C0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807717C4  4B FF A6 BD */	bl anm_init__FP11e_rdy_classifUcf
lbl_807717C8:
/* 807717C8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807717CC  D0 1D 0A BC */	stfs f0, 0xabc(r29)
/* 807717D0  38 00 C0 00 */	li r0, -16384
/* 807717D4  B0 1D 0A DC */	sth r0, 0xadc(r29)
/* 807717D8  88 1D 0A EF */	lbz r0, 0xaef(r29)
/* 807717DC  7C 00 07 75 */	extsb. r0, r0
/* 807717E0  40 82 00 40 */	bne lbl_80771820
/* 807717E4  AB 7D 0A DE */	lha r27, 0xade(r29)
/* 807717E8  3B 40 00 00 */	li r26, 0
/* 807717EC  3B 80 00 00 */	li r28, 0
lbl_807717F0:
/* 807717F0  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 807717F4  4B AF 61 60 */	b cM_rndF__Ff
/* 807717F8  FC 00 08 1E */	fctiwz f0, f1
/* 807717FC  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80771800  80 61 00 4C */	lwz r3, 0x4c(r1)
/* 80771804  38 1C 0B A2 */	addi r0, r28, 0xba2
/* 80771808  7C 7D 03 2E */	sthx r3, r29, r0
/* 8077180C  3B 5A 00 01 */	addi r26, r26, 1
/* 80771810  2C 1A 00 04 */	cmpwi r26, 4
/* 80771814  3B 9C 00 02 */	addi r28, r28, 2
/* 80771818  41 80 FF D8 */	blt lbl_807717F0
/* 8077181C  48 00 00 14 */	b lbl_80771830
lbl_80771820:
/* 80771820  A8 7D 0A DE */	lha r3, 0xade(r29)
/* 80771824  3C 63 00 01 */	addis r3, r3, 1
/* 80771828  38 03 80 00 */	addi r0, r3, -32768
/* 8077182C  7C 1B 07 34 */	extsh r27, r0
lbl_80771830:
/* 80771830  B3 7D 04 DE */	sth r27, 0x4de(r29)
/* 80771834  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 80771838  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8077183C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80771840  41 82 00 18 */	beq lbl_80771858
/* 80771844  38 00 00 50 */	li r0, 0x50
/* 80771848  B0 1D 0A 60 */	sth r0, 0xa60(r29)
/* 8077184C  38 00 00 37 */	li r0, 0x37
/* 80771850  B0 1D 0A 62 */	sth r0, 0xa62(r29)
/* 80771854  48 00 00 2C */	b lbl_80771880
lbl_80771858:
/* 80771858  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 8077185C  4B AF 60 F8 */	b cM_rndF__Ff
/* 80771860  C0 1E 00 D4 */	lfs f0, 0xd4(r30)
/* 80771864  EC 00 08 2A */	fadds f0, f0, f1
/* 80771868  FC 00 00 1E */	fctiwz f0, f0
/* 8077186C  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80771870  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80771874  B0 1D 0A 60 */	sth r0, 0xa60(r29)
/* 80771878  38 00 00 23 */	li r0, 0x23
/* 8077187C  B0 1D 0A 62 */	sth r0, 0xa62(r29)
lbl_80771880:
/* 80771880  38 00 00 03 */	li r0, 3
/* 80771884  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 80771888  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 8077188C  D0 1D 0B 88 */	stfs f0, 0xb88(r29)
/* 80771890  38 00 00 01 */	li r0, 1
/* 80771894  98 1D 13 2D */	stb r0, 0x132d(r29)
/* 80771898  48 00 04 24 */	b lbl_80771CBC
lbl_8077189C:
/* 8077189C  7F A3 EB 78 */	mr r3, r29
/* 807718A0  4B FF F8 3D */	bl body_gake__FP11e_rdy_class
/* 807718A4  2C 03 00 00 */	cmpwi r3, 0
/* 807718A8  41 82 00 18 */	beq lbl_807718C0
/* 807718AC  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 807718B0  D0 1D 0A BC */	stfs f0, 0xabc(r29)
/* 807718B4  A8 7D 0A DC */	lha r3, 0xadc(r29)
/* 807718B8  38 03 FD 00 */	addi r0, r3, -768
/* 807718BC  B0 1D 0A DC */	sth r0, 0xadc(r29)
lbl_807718C0:
/* 807718C0  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 807718C4  2C 00 00 00 */	cmpwi r0, 0
/* 807718C8  41 81 00 1C */	bgt lbl_807718E4
/* 807718CC  A8 1D 0A 62 */	lha r0, 0xa62(r29)
/* 807718D0  2C 00 00 00 */	cmpwi r0, 0
/* 807718D4  40 82 00 10 */	bne lbl_807718E4
/* 807718D8  7F A3 EB 78 */	mr r3, r29
/* 807718DC  4B FF F7 21 */	bl rd_disappear__FP11e_rdy_class
/* 807718E0  48 00 04 AC */	b lbl_80771D8C
lbl_807718E4:
/* 807718E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807718E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807718EC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807718F0  88 03 05 68 */	lbz r0, 0x568(r3)
/* 807718F4  28 00 00 27 */	cmplwi r0, 0x27
/* 807718F8  41 82 03 C4 */	beq lbl_80771CBC
/* 807718FC  A8 1D 0A 60 */	lha r0, 0xa60(r29)
/* 80771900  2C 00 00 00 */	cmpwi r0, 0
/* 80771904  40 82 03 B8 */	bne lbl_80771CBC
/* 80771908  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8077190C  D0 1D 0A BC */	stfs f0, 0xabc(r29)
/* 80771910  38 00 C0 00 */	li r0, -16384
/* 80771914  B0 1D 0A DC */	sth r0, 0xadc(r29)
/* 80771918  A0 7D 05 8E */	lhz r3, 0x58e(r29)
/* 8077191C  38 00 FF E8 */	li r0, -24
/* 80771920  7C 60 00 38 */	and r0, r3, r0
/* 80771924  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 80771928  38 00 00 14 */	li r0, 0x14
/* 8077192C  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 80771930  88 1D 0A EF */	lbz r0, 0xaef(r29)
/* 80771934  7C 00 07 75 */	extsb. r0, r0
/* 80771938  40 82 00 20 */	bne lbl_80771958
/* 8077193C  7F A3 EB 78 */	mr r3, r29
/* 80771940  38 80 00 12 */	li r4, 0x12
/* 80771944  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80771948  38 A0 00 00 */	li r5, 0
/* 8077194C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80771950  4B FF A5 31 */	bl anm_init__FP11e_rdy_classifUcf
/* 80771954  48 00 00 1C */	b lbl_80771970
lbl_80771958:
/* 80771958  7F A3 EB 78 */	mr r3, r29
/* 8077195C  38 80 00 14 */	li r4, 0x14
/* 80771960  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80771964  38 A0 00 00 */	li r5, 0
/* 80771968  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8077196C  4B FF A5 15 */	bl anm_init__FP11e_rdy_classifUcf
lbl_80771970:
/* 80771970  88 1D 05 B8 */	lbz r0, 0x5b8(r29)
/* 80771974  28 00 00 0C */	cmplwi r0, 0xc
/* 80771978  40 82 03 44 */	bne lbl_80771CBC
/* 8077197C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070037@ha */
/* 80771980  38 03 00 37 */	addi r0, r3, 0x0037 /* 0x00070037@l */
/* 80771984  90 01 00 08 */	stw r0, 8(r1)
/* 80771988  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 8077198C  38 81 00 08 */	addi r4, r1, 8
/* 80771990  38 A0 FF FF */	li r5, -1
/* 80771994  81 9D 05 D0 */	lwz r12, 0x5d0(r29)
/* 80771998  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8077199C  7D 89 03 A6 */	mtctr r12
/* 807719A0  4E 80 04 21 */	bctrl 
/* 807719A4  48 00 03 18 */	b lbl_80771CBC
lbl_807719A8:
/* 807719A8  A8 1D 0B C0 */	lha r0, 0xbc0(r29)
/* 807719AC  2C 00 00 00 */	cmpwi r0, 0
/* 807719B0  41 82 00 1C */	beq lbl_807719CC
/* 807719B4  38 7D 0A DC */	addi r3, r29, 0xadc
/* 807719B8  38 80 00 00 */	li r4, 0
/* 807719BC  38 A0 00 01 */	li r5, 1
/* 807719C0  38 C0 03 00 */	li r6, 0x300
/* 807719C4  4B AF EC 44 */	b cLib_addCalcAngleS2__FPssss
/* 807719C8  48 00 02 F4 */	b lbl_80771CBC
lbl_807719CC:
/* 807719CC  38 7D 0A DC */	addi r3, r29, 0xadc
/* 807719D0  38 80 C0 00 */	li r4, -16384
/* 807719D4  38 A0 00 01 */	li r5, 1
/* 807719D8  38 C0 08 00 */	li r6, 0x800
/* 807719DC  4B AF EC 2C */	b cLib_addCalcAngleS2__FPssss
/* 807719E0  80 1D 0C 40 */	lwz r0, 0xc40(r29)
/* 807719E4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807719E8  41 82 02 D4 */	beq lbl_80771CBC
/* 807719EC  38 00 00 02 */	li r0, 2
/* 807719F0  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 807719F4  88 1D 0A EF */	lbz r0, 0xaef(r29)
/* 807719F8  7C 00 07 75 */	extsb. r0, r0
/* 807719FC  40 82 00 2C */	bne lbl_80771A28
/* 80771A00  7F A3 EB 78 */	mr r3, r29
/* 80771A04  38 80 00 11 */	li r4, 0x11
/* 80771A08  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80771A0C  38 A0 00 00 */	li r5, 0
/* 80771A10  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80771A14  4B FF A4 6D */	bl anm_init__FP11e_rdy_classifUcf
/* 80771A18  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 80771A1C  D0 1D 0A F4 */	stfs f0, 0xaf4(r29)
/* 80771A20  D0 1D 0A FC */	stfs f0, 0xafc(r29)
/* 80771A24  48 00 00 10 */	b lbl_80771A34
lbl_80771A28:
/* 80771A28  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80771A2C  D0 1D 0A F4 */	stfs f0, 0xaf4(r29)
/* 80771A30  D0 1D 0A FC */	stfs f0, 0xafc(r29)
lbl_80771A34:
/* 80771A34  38 00 B0 00 */	li r0, -20480
/* 80771A38  B0 1D 0A F8 */	sth r0, 0xaf8(r29)
/* 80771A3C  38 00 C0 00 */	li r0, -16384
/* 80771A40  B0 1D 0B 00 */	sth r0, 0xb00(r29)
/* 80771A44  C0 3D 0A BC */	lfs f1, 0xabc(r29)
/* 80771A48  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80771A4C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80771A50  D0 1D 0A BC */	stfs f0, 0xabc(r29)
/* 80771A54  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80771A58  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80771A5C  88 1D 0A EF */	lbz r0, 0xaef(r29)
/* 80771A60  7C 00 07 75 */	extsb. r0, r0
/* 80771A64  40 82 00 0C */	bne lbl_80771A70
/* 80771A68  A8 1D 0A DE */	lha r0, 0xade(r29)
/* 80771A6C  48 00 00 14 */	b lbl_80771A80
lbl_80771A70:
/* 80771A70  A8 7D 0A DE */	lha r3, 0xade(r29)
/* 80771A74  3C 63 00 01 */	addis r3, r3, 1
/* 80771A78  38 03 80 00 */	addi r0, r3, -32768
/* 80771A7C  7C 00 07 34 */	extsh r0, r0
lbl_80771A80:
/* 80771A80  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80771A84  C0 1E 01 24 */	lfs f0, 0x124(r30)
/* 80771A88  D0 1D 0B 88 */	stfs f0, 0xb88(r29)
/* 80771A8C  48 00 02 30 */	b lbl_80771CBC
lbl_80771A90:
/* 80771A90  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80771A94  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80771A98  C0 1E 01 30 */	lfs f0, 0x130(r30)
/* 80771A9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80771AA0  4C 41 13 82 */	cror 2, 1, 2
/* 80771AA4  40 82 00 10 */	bne lbl_80771AB4
/* 80771AA8  38 00 00 00 */	li r0, 0
/* 80771AAC  B0 1D 0A EC */	sth r0, 0xaec(r29)
/* 80771AB0  B0 1D 0A E8 */	sth r0, 0xae8(r29)
lbl_80771AB4:
/* 80771AB4  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80771AB8  38 80 00 01 */	li r4, 1
/* 80771ABC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80771AC0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80771AC4  40 82 00 18 */	bne lbl_80771ADC
/* 80771AC8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80771ACC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80771AD0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80771AD4  41 82 00 08 */	beq lbl_80771ADC
/* 80771AD8  38 80 00 00 */	li r4, 0
lbl_80771ADC:
/* 80771ADC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80771AE0  41 82 01 DC */	beq lbl_80771CBC
/* 80771AE4  38 00 00 00 */	li r0, 0
/* 80771AE8  B0 1D 0A DE */	sth r0, 0xade(r29)
/* 80771AEC  B0 1D 0A DC */	sth r0, 0xadc(r29)
/* 80771AF0  7F A3 EB 78 */	mr r3, r29
/* 80771AF4  38 80 00 4C */	li r4, 0x4c
/* 80771AF8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80771AFC  38 A0 00 02 */	li r5, 2
/* 80771B00  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80771B04  4B FF A3 7D */	bl anm_init__FP11e_rdy_classifUcf
/* 80771B08  38 00 00 05 */	li r0, 5
/* 80771B0C  B0 1D 0A 60 */	sth r0, 0xa60(r29)
/* 80771B10  38 00 00 15 */	li r0, 0x15
/* 80771B14  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 80771B18  A0 7D 05 8E */	lhz r3, 0x58e(r29)
/* 80771B1C  38 00 FF E8 */	li r0, -24
/* 80771B20  7C 60 00 38 */	and r0, r3, r0
/* 80771B24  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 80771B28  48 00 01 94 */	b lbl_80771CBC
lbl_80771B2C:
/* 80771B2C  A8 1D 0A 60 */	lha r0, 0xa60(r29)
/* 80771B30  2C 00 00 00 */	cmpwi r0, 0
/* 80771B34  40 82 01 88 */	bne lbl_80771CBC
/* 80771B38  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 80771B3C  4B AF 5E 18 */	b cM_rndF__Ff
/* 80771B40  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80771B44  EC 00 08 2A */	fadds f0, f0, f1
/* 80771B48  FC 00 00 1E */	fctiwz f0, f0
/* 80771B4C  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80771B50  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80771B54  B0 1D 0A 60 */	sth r0, 0xa60(r29)
/* 80771B58  7F A3 EB 78 */	mr r3, r29
/* 80771B5C  38 80 00 1E */	li r4, 0x1e
/* 80771B60  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80771B64  38 A0 00 02 */	li r5, 2
/* 80771B68  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80771B6C  4B FF A3 15 */	bl anm_init__FP11e_rdy_classifUcf
/* 80771B70  38 00 00 16 */	li r0, 0x16
/* 80771B74  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 80771B78  48 00 01 44 */	b lbl_80771CBC
lbl_80771B7C:
/* 80771B7C  38 60 00 00 */	li r3, 0
/* 80771B80  B0 7D 0A 68 */	sth r3, 0xa68(r29)
/* 80771B84  A8 1D 0A 60 */	lha r0, 0xa60(r29)
/* 80771B88  2C 00 00 00 */	cmpwi r0, 0
/* 80771B8C  40 82 01 30 */	bne lbl_80771CBC
/* 80771B90  B0 7D 0A 42 */	sth r3, 0xa42(r29)
/* 80771B94  B0 7D 05 B4 */	sth r3, 0x5b4(r29)
/* 80771B98  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80771B9C  4B AF 5D B8 */	b cM_rndF__Ff
/* 80771BA0  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80771BA4  EC 00 08 2A */	fadds f0, f0, f1
/* 80771BA8  FC 00 00 1E */	fctiwz f0, f0
/* 80771BAC  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80771BB0  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80771BB4  B0 1D 0A 60 */	sth r0, 0xa60(r29)
/* 80771BB8  7F A3 EB 78 */	mr r3, r29
/* 80771BBC  38 80 00 1E */	li r4, 0x1e
/* 80771BC0  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 80771BC4  38 A0 00 02 */	li r5, 2
/* 80771BC8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80771BCC  4B FF A2 B5 */	bl anm_init__FP11e_rdy_classifUcf
/* 80771BD0  48 00 00 EC */	b lbl_80771CBC
lbl_80771BD4:
/* 80771BD4  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 80771BD8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80771BDC  40 82 00 0C */	bne lbl_80771BE8
/* 80771BE0  38 00 00 00 */	li r0, 0
/* 80771BE4  B0 1D 0A 62 */	sth r0, 0xa62(r29)
lbl_80771BE8:
/* 80771BE8  A8 1D 0A 60 */	lha r0, 0xa60(r29)
/* 80771BEC  2C 00 00 00 */	cmpwi r0, 0
/* 80771BF0  40 82 00 58 */	bne lbl_80771C48
/* 80771BF4  38 00 00 1F */	li r0, 0x1f
/* 80771BF8  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 80771BFC  88 1D 0A EF */	lbz r0, 0xaef(r29)
/* 80771C00  7C 00 07 75 */	extsb. r0, r0
/* 80771C04  40 82 00 20 */	bne lbl_80771C24
/* 80771C08  7F A3 EB 78 */	mr r3, r29
/* 80771C0C  38 80 00 12 */	li r4, 0x12
/* 80771C10  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80771C14  38 A0 00 00 */	li r5, 0
/* 80771C18  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80771C1C  4B FF A2 65 */	bl anm_init__FP11e_rdy_classifUcf
/* 80771C20  48 00 00 1C */	b lbl_80771C3C
lbl_80771C24:
/* 80771C24  7F A3 EB 78 */	mr r3, r29
/* 80771C28  38 80 00 14 */	li r4, 0x14
/* 80771C2C  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 80771C30  38 A0 00 00 */	li r5, 0
/* 80771C34  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80771C38  4B FF A2 49 */	bl anm_init__FP11e_rdy_classifUcf
lbl_80771C3C:
/* 80771C3C  38 00 00 0A */	li r0, 0xa
/* 80771C40  B0 1D 0A 60 */	sth r0, 0xa60(r29)
/* 80771C44  48 00 00 78 */	b lbl_80771CBC
lbl_80771C48:
/* 80771C48  A8 1D 0A 62 */	lha r0, 0xa62(r29)
/* 80771C4C  2C 00 00 01 */	cmpwi r0, 1
/* 80771C50  40 82 00 6C */	bne lbl_80771CBC
/* 80771C54  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 80771C58  60 00 00 20 */	ori r0, r0, 0x20
/* 80771C5C  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 80771C60  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 80771C64  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80771C68  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 80771C6C  38 00 00 00 */	li r0, 0
/* 80771C70  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 80771C74  38 00 03 E8 */	li r0, 0x3e8
/* 80771C78  B0 1D 0A 60 */	sth r0, 0xa60(r29)
/* 80771C7C  38 00 00 23 */	li r0, 0x23
/* 80771C80  B0 1D 0A 62 */	sth r0, 0xa62(r29)
/* 80771C84  38 00 00 03 */	li r0, 3
/* 80771C88  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 80771C8C  48 00 00 30 */	b lbl_80771CBC
lbl_80771C90:
/* 80771C90  A8 1D 0A 60 */	lha r0, 0xa60(r29)
/* 80771C94  2C 00 00 00 */	cmpwi r0, 0
/* 80771C98  40 82 00 24 */	bne lbl_80771CBC
/* 80771C9C  A0 7D 05 8E */	lhz r3, 0x58e(r29)
/* 80771CA0  38 00 FF E8 */	li r0, -24
/* 80771CA4  7C 60 00 38 */	and r0, r3, r0
/* 80771CA8  B0 1D 05 8E */	sth r0, 0x58e(r29)
/* 80771CAC  38 00 00 14 */	li r0, 0x14
/* 80771CB0  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 80771CB4  38 00 00 00 */	li r0, 0
/* 80771CB8  98 1D 0B CA */	stb r0, 0xbca(r29)
lbl_80771CBC:
/* 80771CBC  A0 1D 05 8E */	lhz r0, 0x58e(r29)
/* 80771CC0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80771CC4  41 82 00 64 */	beq lbl_80771D28
/* 80771CC8  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 80771CCC  80 63 00 04 */	lwz r3, 4(r3)
/* 80771CD0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80771CD4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80771CD8  38 63 02 10 */	addi r3, r3, 0x210
/* 80771CDC  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80771CE0  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80771CE4  80 84 00 00 */	lwz r4, 0(r4)
/* 80771CE8  4B BD 47 C8 */	b PSMTXCopy
/* 80771CEC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80771CF0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80771CF4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80771CF8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80771CFC  38 61 00 38 */	addi r3, r1, 0x38
/* 80771D00  38 81 00 2C */	addi r4, r1, 0x2c
/* 80771D04  4B AF F1 E8 */	b MtxPosition__FP4cXyzP4cXyz
/* 80771D08  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80771D0C  D0 1D 05 68 */	stfs f0, 0x568(r29)
/* 80771D10  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80771D14  D0 1D 05 6C */	stfs f0, 0x56c(r29)
/* 80771D18  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80771D1C  D0 1D 05 70 */	stfs f0, 0x570(r29)
/* 80771D20  38 00 00 00 */	li r0, 0
/* 80771D24  98 1D 0A 7D */	stb r0, 0xa7d(r29)
lbl_80771D28:
/* 80771D28  A8 7D 0B AC */	lha r3, 0xbac(r29)
/* 80771D2C  2C 03 00 00 */	cmpwi r3, 0
/* 80771D30  41 82 00 5C */	beq lbl_80771D8C
/* 80771D34  38 03 FF FF */	addi r0, r3, -1
/* 80771D38  B0 1D 0B AC */	sth r0, 0xbac(r29)
/* 80771D3C  A8 9D 0B AC */	lha r4, 0xbac(r29)
/* 80771D40  1C 04 38 00 */	mulli r0, r4, 0x3800
/* 80771D44  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80771D48  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80771D4C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80771D50  7C 63 04 2E */	lfsx f3, r3, r0
/* 80771D54  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80771D58  C8 3E 00 68 */	lfd f1, 0x68(r30)
/* 80771D5C  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 80771D60  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80771D64  3C 00 43 30 */	lis r0, 0x4330
/* 80771D68  90 01 00 48 */	stw r0, 0x48(r1)
/* 80771D6C  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80771D70  EC 00 08 28 */	fsubs f0, f0, f1
/* 80771D74  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80771D78  EC 02 00 32 */	fmuls f0, f2, f0
/* 80771D7C  FC 00 00 1E */	fctiwz f0, f0
/* 80771D80  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 80771D84  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80771D88  B0 1D 0B AA */	sth r0, 0xbaa(r29)
lbl_80771D8C:
/* 80771D8C  39 61 00 70 */	addi r11, r1, 0x70
/* 80771D90  4B BF 04 8C */	b _restgpr_26
/* 80771D94  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80771D98  7C 08 03 A6 */	mtlr r0
/* 80771D9C  38 21 00 70 */	addi r1, r1, 0x70
/* 80771DA0  4E 80 00 20 */	blr 
