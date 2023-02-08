lbl_800F659C:
/* 800F659C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800F65A0  7C 08 02 A6 */	mflr r0
/* 800F65A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800F65A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800F65AC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800F65B0  7C 7E 1B 78 */	mr r30, r3
/* 800F65B4  4B FF E2 25 */	bl canoeCommon__9daAlink_cFv
/* 800F65B8  2C 03 00 00 */	cmpwi r3, 0
/* 800F65BC  41 82 00 0C */	beq lbl_800F65C8
/* 800F65C0  38 60 00 01 */	li r3, 1
/* 800F65C4  48 00 01 E4 */	b lbl_800F67A8
lbl_800F65C8:
/* 800F65C8  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 800F65CC  28 00 01 05 */	cmplwi r0, 0x105
/* 800F65D0  40 82 00 18 */	bne lbl_800F65E8
/* 800F65D4  80 1E 28 28 */	lwz r0, 0x2828(r30)
/* 800F65D8  28 00 00 00 */	cmplwi r0, 0
/* 800F65DC  40 82 00 0C */	bne lbl_800F65E8
/* 800F65E0  38 60 00 01 */	li r3, 1
/* 800F65E4  48 00 01 C4 */	b lbl_800F67A8
lbl_800F65E8:
/* 800F65E8  3B FE 20 48 */	addi r31, r30, 0x2048
/* 800F65EC  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 800F65F0  2C 00 00 00 */	cmpwi r0, 0
/* 800F65F4  41 82 00 28 */	beq lbl_800F661C
/* 800F65F8  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800F65FC  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 800F6600  41 82 01 A4 */	beq lbl_800F67A4
/* 800F6604  38 00 00 00 */	li r0, 0
/* 800F6608  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 800F660C  7F C3 F3 78 */	mr r3, r30
/* 800F6610  38 80 00 68 */	li r4, 0x68
/* 800F6614  4B FB 6D 2D */	bl setUpperAnimeBase__9daAlink_cFUs
/* 800F6618  48 00 01 8C */	b lbl_800F67A4
lbl_800F661C:
/* 800F661C  A0 1E 1F BC */	lhz r0, 0x1fbc(r30)
/* 800F6620  28 00 00 68 */	cmplwi r0, 0x68
/* 800F6624  40 82 00 40 */	bne lbl_800F6664
/* 800F6628  7F E3 FB 78 */	mr r3, r31
/* 800F662C  48 06 7E A1 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800F6630  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F6634  41 82 00 10 */	beq lbl_800F6644
/* 800F6638  7F C3 F3 78 */	mr r3, r30
/* 800F663C  48 00 01 85 */	bl procCanoeFishingReelInit__9daAlink_cFv
/* 800F6640  48 00 01 64 */	b lbl_800F67A4
lbl_800F6644:
/* 800F6644  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800F6648  C0 02 93 8C */	lfs f0, lit_8783(r2)
/* 800F664C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F6650  4C 41 13 82 */	cror 2, 1, 2
/* 800F6654  40 82 01 50 */	bne lbl_800F67A4
/* 800F6658  38 00 00 00 */	li r0, 0
/* 800F665C  B0 1E 30 18 */	sth r0, 0x3018(r30)
/* 800F6660  48 00 01 44 */	b lbl_800F67A4
lbl_800F6664:
/* 800F6664  7F C3 F3 78 */	mr r3, r30
/* 800F6668  4B FF E2 BD */	bl checkNextActionCanoe__9daAlink_cFv
/* 800F666C  2C 03 00 00 */	cmpwi r3, 0
/* 800F6670  40 82 01 34 */	bne lbl_800F67A4
/* 800F6674  38 60 00 00 */	li r3, 0
/* 800F6678  A0 1E 1F BC */	lhz r0, 0x1fbc(r30)
/* 800F667C  28 00 00 5D */	cmplwi r0, 0x5d
/* 800F6680  41 82 00 10 */	beq lbl_800F6690
/* 800F6684  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800F6688  28 00 02 60 */	cmplwi r0, 0x260
/* 800F668C  40 82 00 08 */	bne lbl_800F6694
lbl_800F6690:
/* 800F6690  38 60 00 01 */	li r3, 1
lbl_800F6694:
/* 800F6694  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F6698  41 82 01 0C */	beq lbl_800F67A4
/* 800F669C  A8 1E 30 08 */	lha r0, 0x3008(r30)
/* 800F66A0  2C 00 00 00 */	cmpwi r0, 0
/* 800F66A4  40 82 00 30 */	bne lbl_800F66D4
/* 800F66A8  38 7E 05 9E */	addi r3, r30, 0x59e
/* 800F66AC  A8 9E 30 0E */	lha r4, 0x300e(r30)
/* 800F66B0  38 A0 00 02 */	li r5, 2
/* 800F66B4  38 C0 08 00 */	li r6, 0x800
/* 800F66B8  38 E0 02 00 */	li r7, 0x200
/* 800F66BC  48 06 92 C1 */	bl daPy_addCalcShort__FPsssss
/* 800F66C0  2C 03 00 00 */	cmpwi r3, 0
/* 800F66C4  40 82 00 88 */	bne lbl_800F674C
/* 800F66C8  38 00 00 01 */	li r0, 1
/* 800F66CC  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 800F66D0  48 00 00 7C */	b lbl_800F674C
lbl_800F66D4:
/* 800F66D4  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 800F66D8  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800F66DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F66E0  40 81 00 6C */	ble lbl_800F674C
/* 800F66E4  A8 1E 2F E0 */	lha r0, 0x2fe0(r30)
/* 800F66E8  2C 00 20 00 */	cmpwi r0, 0x2000
/* 800F66EC  40 81 00 0C */	ble lbl_800F66F8
/* 800F66F0  2C 00 60 00 */	cmpwi r0, 0x6000
/* 800F66F4  41 80 00 14 */	blt lbl_800F6708
lbl_800F66F8:
/* 800F66F8  2C 00 E0 00 */	cmpwi r0, -8192
/* 800F66FC  40 80 00 50 */	bge lbl_800F674C
/* 800F6700  2C 00 A0 00 */	cmpwi r0, -24576
/* 800F6704  40 81 00 48 */	ble lbl_800F674C
lbl_800F6708:
/* 800F6708  2C 00 20 00 */	cmpwi r0, 0x2000
/* 800F670C  40 81 00 14 */	ble lbl_800F6720
/* 800F6710  2C 00 60 00 */	cmpwi r0, 0x6000
/* 800F6714  40 80 00 0C */	bge lbl_800F6720
/* 800F6718  38 80 38 00 */	li r4, 0x3800
/* 800F671C  48 00 00 08 */	b lbl_800F6724
lbl_800F6720:
/* 800F6720  38 80 C8 00 */	li r4, -14336
lbl_800F6724:
/* 800F6724  38 7E 05 9E */	addi r3, r30, 0x59e
/* 800F6728  38 A0 00 05 */	li r5, 5
/* 800F672C  C0 22 95 2C */	lfs f1, lit_21680(r2)
/* 800F6730  C0 1E 33 A8 */	lfs f0, 0x33a8(r30)
/* 800F6734  EC 01 00 32 */	fmuls f0, f1, f0
/* 800F6738  FC 00 00 1E */	fctiwz f0, f0
/* 800F673C  D8 01 00 08 */	stfd f0, 8(r1)
/* 800F6740  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 800F6744  38 E0 00 01 */	li r7, 1
/* 800F6748  48 06 92 35 */	bl daPy_addCalcShort__FPsssss
lbl_800F674C:
/* 800F674C  C0 62 92 B8 */	lfs f3, lit_6040(r2)
/* 800F6750  A8 7E 05 9E */	lha r3, 0x59e(r30)
/* 800F6754  38 03 40 00 */	addi r0, r3, 0x4000
/* 800F6758  C8 42 92 B0 */	lfd f2, lit_6025(r2)
/* 800F675C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800F6760  90 01 00 0C */	stw r0, 0xc(r1)
/* 800F6764  3C 60 43 30 */	lis r3, 0x4330
/* 800F6768  90 61 00 08 */	stw r3, 8(r1)
/* 800F676C  C8 01 00 08 */	lfd f0, 8(r1)
/* 800F6770  EC 20 10 28 */	fsubs f1, f0, f2
/* 800F6774  C0 02 95 28 */	lfs f0, lit_21624(r2)
/* 800F6778  EC 01 00 24 */	fdivs f0, f1, f0
/* 800F677C  EC 23 00 28 */	fsubs f1, f3, f0
/* 800F6780  A8 1E 1F D8 */	lha r0, 0x1fd8(r30)
/* 800F6784  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800F6788  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F678C  90 61 00 10 */	stw r3, 0x10(r1)
/* 800F6790  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800F6794  EC 00 10 28 */	fsubs f0, f0, f2
/* 800F6798  EC 01 00 32 */	fmuls f0, f1, f0
/* 800F679C  D0 1E 1F E0 */	stfs f0, 0x1fe0(r30)
/* 800F67A0  D0 1F 00 10 */	stfs f0, 0x10(r31)
lbl_800F67A4:
/* 800F67A4  38 60 00 01 */	li r3, 1
lbl_800F67A8:
/* 800F67A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800F67AC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800F67B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800F67B4  7C 08 03 A6 */	mtlr r0
/* 800F67B8  38 21 00 20 */	addi r1, r1, 0x20
/* 800F67BC  4E 80 00 20 */	blr 
