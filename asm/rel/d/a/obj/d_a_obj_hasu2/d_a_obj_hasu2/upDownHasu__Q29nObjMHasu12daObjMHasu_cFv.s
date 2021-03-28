lbl_80C186E0:
/* 80C186E0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C186E4  7C 08 02 A6 */	mflr r0
/* 80C186E8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C186EC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80C186F0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80C186F4  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80C186F8  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80C186FC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C18700  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C18704  7C 7F 1B 78 */	mr r31, r3
/* 80C18708  3C 60 80 C2 */	lis r3, l_cull_box@ha
/* 80C1870C  3B C3 8A 58 */	addi r30, r3, l_cull_box@l
/* 80C18710  88 1F 06 0C */	lbz r0, 0x60c(r31)
/* 80C18714  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 80C18718  41 82 00 84 */	beq lbl_80C1879C
/* 80C1871C  C0 7F 06 2C */	lfs f3, 0x62c(r31)
/* 80C18720  C0 3F 06 20 */	lfs f1, 0x620(r31)
/* 80C18724  C0 1F 06 10 */	lfs f0, 0x610(r31)
/* 80C18728  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C1872C  EF E3 00 2A */	fadds f31, f3, f0
/* 80C18730  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80C18734  C0 5F 06 14 */	lfs f2, 0x614(r31)
/* 80C18738  EC 02 00 2A */	fadds f0, f2, f0
/* 80C1873C  EC 02 00 2A */	fadds f0, f2, f0
/* 80C18740  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C18744  40 81 00 14 */	ble lbl_80C18758
/* 80C18748  C0 3F 06 28 */	lfs f1, 0x628(r31)
/* 80C1874C  C0 1F 06 18 */	lfs f0, 0x618(r31)
/* 80C18750  EF C1 00 2A */	fadds f30, f1, f0
/* 80C18754  48 00 00 30 */	b lbl_80C18784
lbl_80C18758:
/* 80C18758  88 1F 06 30 */	lbz r0, 0x630(r31)
/* 80C1875C  28 00 00 00 */	cmplwi r0, 0
/* 80C18760  41 82 00 18 */	beq lbl_80C18778
/* 80C18764  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80C18768  C0 1F 06 28 */	lfs f0, 0x628(r31)
/* 80C1876C  EF C1 00 32 */	fmuls f30, f1, f0
/* 80C18770  EF FF 18 2A */	fadds f31, f31, f3
/* 80C18774  48 00 00 10 */	b lbl_80C18784
lbl_80C18778:
/* 80C18778  C0 3F 06 28 */	lfs f1, 0x628(r31)
/* 80C1877C  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80C18780  EF C1 00 32 */	fmuls f30, f1, f0
lbl_80C18784:
/* 80C18784  88 7F 06 30 */	lbz r3, 0x630(r31)
/* 80C18788  28 03 00 00 */	cmplwi r3, 0
/* 80C1878C  41 82 00 20 */	beq lbl_80C187AC
/* 80C18790  38 03 FF FF */	addi r0, r3, -1
/* 80C18794  98 1F 06 30 */	stb r0, 0x630(r31)
/* 80C18798  48 00 00 14 */	b lbl_80C187AC
lbl_80C1879C:
/* 80C1879C  C0 3F 06 20 */	lfs f1, 0x620(r31)
/* 80C187A0  C0 1F 06 2C */	lfs f0, 0x62c(r31)
/* 80C187A4  EF E1 00 2A */	fadds f31, f1, f0
/* 80C187A8  C3 DF 06 28 */	lfs f30, 0x628(r31)
lbl_80C187AC:
/* 80C187AC  C0 1F 06 28 */	lfs f0, 0x628(r31)
/* 80C187B0  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80C187B4  40 81 00 5C */	ble lbl_80C18810
/* 80C187B8  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80C187BC  C0 1F 06 20 */	lfs f0, 0x620(r31)
/* 80C187C0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C187C4  FC 00 02 10 */	fabs f0, f0
/* 80C187C8  FC 20 00 18 */	frsp f1, f0
/* 80C187CC  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802AE@ha */
/* 80C187D0  38 03 02 AE */	addi r0, r3, 0x02AE /* 0x000802AE@l */
/* 80C187D4  90 01 00 08 */	stw r0, 8(r1)
/* 80C187D8  4B 74 98 D4 */	b __cvt_fp2unsigned
/* 80C187DC  7C 66 1B 78 */	mr r6, r3
/* 80C187E0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C187E4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C187E8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C187EC  38 81 00 08 */	addi r4, r1, 8
/* 80C187F0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C187F4  38 E0 00 00 */	li r7, 0
/* 80C187F8  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 80C187FC  FC 40 08 90 */	fmr f2, f1
/* 80C18800  C0 7E 00 38 */	lfs f3, 0x38(r30)
/* 80C18804  FC 80 18 90 */	fmr f4, f3
/* 80C18808  39 00 00 00 */	li r8, 0
/* 80C1880C  4B 69 3D 00 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C18810:
/* 80C18810  38 7F 04 D4 */	addi r3, r31, 0x4d4
/* 80C18814  FC 20 F8 90 */	fmr f1, f31
/* 80C18818  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80C1881C  FC 60 F0 90 */	fmr f3, f30
/* 80C18820  FC 80 F0 90 */	fmr f4, f30
/* 80C18824  4B 65 71 58 */	b cLib_addCalc__FPfffff
/* 80C18828  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 80C1882C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C18830  40 82 00 14 */	bne lbl_80C18844
/* 80C18834  C0 3F 06 2C */	lfs f1, 0x62c(r31)
/* 80C18838  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80C1883C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C18840  D0 1F 06 2C */	stfs f0, 0x62c(r31)
lbl_80C18844:
/* 80C18844  88 7F 06 0C */	lbz r3, 0x60c(r31)
/* 80C18848  50 63 FE 72 */	rlwimi r3, r3, 0x1f, 0x19, 0x19
/* 80C1884C  98 7F 06 0C */	stb r3, 0x60c(r31)
/* 80C18850  38 60 00 00 */	li r3, 0
/* 80C18854  88 1F 06 0C */	lbz r0, 0x60c(r31)
/* 80C18858  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 80C1885C  98 1F 06 0C */	stb r0, 0x60c(r31)
/* 80C18860  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80C18864  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80C18868  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 80C1886C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 80C18870  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C18874  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C18878  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C1887C  7C 08 03 A6 */	mtlr r0
/* 80C18880  38 21 00 40 */	addi r1, r1, 0x40
/* 80C18884  4E 80 00 20 */	blr 
