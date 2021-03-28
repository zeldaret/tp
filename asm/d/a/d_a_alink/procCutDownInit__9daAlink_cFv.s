lbl_800D53C8:
/* 800D53C8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800D53CC  7C 08 02 A6 */	mflr r0
/* 800D53D0  90 01 00 54 */	stw r0, 0x54(r1)
/* 800D53D4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 800D53D8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 800D53DC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800D53E0  7C 7F 1B 78 */	mr r31, r3
/* 800D53E4  80 03 06 14 */	lwz r0, 0x614(r3)
/* 800D53E8  28 00 00 51 */	cmplwi r0, 0x51
/* 800D53EC  40 82 00 20 */	bne lbl_800D540C
/* 800D53F0  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800D53F4  28 00 00 2B */	cmplwi r0, 0x2b
/* 800D53F8  41 82 00 0C */	beq lbl_800D5404
/* 800D53FC  28 00 00 2C */	cmplwi r0, 0x2c
/* 800D5400  40 82 00 0C */	bne lbl_800D540C
lbl_800D5404:
/* 800D5404  38 60 00 01 */	li r3, 1
/* 800D5408  48 00 03 D4 */	b lbl_800D57DC
lbl_800D540C:
/* 800D540C  7F E3 FB 78 */	mr r3, r31
/* 800D5410  38 80 00 2B */	li r4, 0x2b
/* 800D5414  4B FE CB 59 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800D5418  7F E3 FB 78 */	mr r3, r31
/* 800D541C  38 80 00 01 */	li r4, 1
/* 800D5420  4B FF C0 11 */	bl resetCombo__9daAlink_cFi
/* 800D5424  38 00 00 00 */	li r0, 0
/* 800D5428  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800D542C  80 9F 27 EC */	lwz r4, 0x27ec(r31)
/* 800D5430  28 04 00 00 */	cmplwi r4, 0
/* 800D5434  41 82 00 40 */	beq lbl_800D5474
/* 800D5438  C0 04 05 68 */	lfs f0, 0x568(r4)
/* 800D543C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800D5440  C0 04 05 6C */	lfs f0, 0x56c(r4)
/* 800D5444  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800D5448  C0 04 05 70 */	lfs f0, 0x570(r4)
/* 800D544C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800D5450  38 7F 28 0C */	addi r3, r31, 0x280c
/* 800D5454  48 08 98 65 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 800D5458  80 7F 27 EC */	lwz r3, 0x27ec(r31)
/* 800D545C  A8 03 00 08 */	lha r0, 8(r3)
/* 800D5460  2C 00 02 0E */	cmpwi r0, 0x20e
/* 800D5464  40 82 00 60 */	bne lbl_800D54C4
/* 800D5468  38 00 00 01 */	li r0, 1
/* 800D546C  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800D5470  48 00 00 54 */	b lbl_800D54C4
lbl_800D5474:
/* 800D5474  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800D5478  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 800D547C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800D5480  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800D5484  7C 64 02 14 */	add r3, r4, r0
/* 800D5488  C0 03 00 04 */	lfs f0, 4(r3)
/* 800D548C  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 800D5490  C0 42 93 50 */	lfs f2, lit_8247(r2)
/* 800D5494  EC 02 00 32 */	fmuls f0, f2, f0
/* 800D5498  EC 81 00 2A */	fadds f4, f1, f0
/* 800D549C  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 800D54A0  7C 04 04 2E */	lfsx f0, r4, r0
/* 800D54A4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 800D54A8  EC 02 00 32 */	fmuls f0, f2, f0
/* 800D54AC  EC 01 00 2A */	fadds f0, f1, f0
/* 800D54B0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800D54B4  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 800D54B8  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 800D54BC  38 7F 28 0C */	addi r3, r31, 0x280c
/* 800D54C0  48 08 98 3D */	bl clearData__16daPy_actorKeep_cFv
lbl_800D54C4:
/* 800D54C4  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 800D54C8  2C 00 00 00 */	cmpwi r0, 0
/* 800D54CC  41 82 00 20 */	beq lbl_800D54EC
/* 800D54D0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D54D4  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800D54D8  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800D54DC  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800D54E0  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 800D54E4  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 800D54E8  48 00 02 C0 */	b lbl_800D57A8
lbl_800D54EC:
/* 800D54EC  7F E3 FB 78 */	mr r3, r31
/* 800D54F0  38 80 00 78 */	li r4, 0x78
/* 800D54F4  3C A0 80 39 */	lis r5, m__21daAlinkHIO_cutDown_c0@ha
/* 800D54F8  38 A5 DD 44 */	addi r5, r5, m__21daAlinkHIO_cutDown_c0@l
/* 800D54FC  4B FD 7B F9 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800D5500  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 800D5504  C0 02 93 00 */	lfs f0, lit_6895(r2)
/* 800D5508  EC 01 00 2A */	fadds f0, f1, f0
/* 800D550C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800D5510  38 61 00 24 */	addi r3, r1, 0x24
/* 800D5514  4B F4 87 A9 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 800D5518  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D551C  41 82 00 10 */	beq lbl_800D552C
/* 800D5520  C0 0D 87 50 */	lfs f0, mGroundY__11fopAcM_gc_c(r13)
/* 800D5524  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800D5528  48 00 00 14 */	b lbl_800D553C
lbl_800D552C:
/* 800D552C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 800D5530  C0 02 93 00 */	lfs f0, lit_6895(r2)
/* 800D5534  EC 01 00 28 */	fsubs f0, f1, f0
/* 800D5538  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_800D553C:
/* 800D553C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 800D5540  38 81 00 24 */	addi r4, r1, 0x24
/* 800D5544  48 19 B6 C1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 800D5548  B0 7F 04 E6 */	sth r3, 0x4e6(r31)
/* 800D554C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800D5550  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800D5554  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800D5558  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800D555C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800D5560  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 800D5564  7C 03 04 2E */	lfsx f0, r3, r0
/* 800D5568  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 800D556C  C0 62 93 54 */	lfs f3, lit_8248(r2)
/* 800D5570  EC 03 00 32 */	fmuls f0, f3, f0
/* 800D5574  EC 41 00 28 */	fsubs f2, f1, f0
/* 800D5578  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 800D557C  7C 63 02 14 */	add r3, r3, r0
/* 800D5580  C0 03 00 04 */	lfs f0, 4(r3)
/* 800D5584  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 800D5588  EC 03 00 32 */	fmuls f0, f3, f0
/* 800D558C  EC 21 00 28 */	fsubs f1, f1, f0
/* 800D5590  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 800D5594  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 800D5598  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800D559C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800D55A0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D55A4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 800D55A8  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 800D55AC  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 800D55B0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800D55B4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 800D55B8  38 61 00 0C */	addi r3, r1, 0xc
/* 800D55BC  38 81 00 18 */	addi r4, r1, 0x18
/* 800D55C0  48 27 1D DD */	bl PSVECSquareDistance
/* 800D55C4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D55C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D55CC  40 81 00 58 */	ble lbl_800D5624
/* 800D55D0  FC 00 08 34 */	frsqrte f0, f1
/* 800D55D4  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800D55D8  FC 44 00 32 */	fmul f2, f4, f0
/* 800D55DC  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800D55E0  FC 00 00 32 */	fmul f0, f0, f0
/* 800D55E4  FC 01 00 32 */	fmul f0, f1, f0
/* 800D55E8  FC 03 00 28 */	fsub f0, f3, f0
/* 800D55EC  FC 02 00 32 */	fmul f0, f2, f0
/* 800D55F0  FC 44 00 32 */	fmul f2, f4, f0
/* 800D55F4  FC 00 00 32 */	fmul f0, f0, f0
/* 800D55F8  FC 01 00 32 */	fmul f0, f1, f0
/* 800D55FC  FC 03 00 28 */	fsub f0, f3, f0
/* 800D5600  FC 02 00 32 */	fmul f0, f2, f0
/* 800D5604  FC 44 00 32 */	fmul f2, f4, f0
/* 800D5608  FC 00 00 32 */	fmul f0, f0, f0
/* 800D560C  FC 01 00 32 */	fmul f0, f1, f0
/* 800D5610  FC 03 00 28 */	fsub f0, f3, f0
/* 800D5614  FC 02 00 32 */	fmul f0, f2, f0
/* 800D5618  FC 21 00 32 */	fmul f1, f1, f0
/* 800D561C  FC 20 08 18 */	frsp f1, f1
/* 800D5620  48 00 00 88 */	b lbl_800D56A8
lbl_800D5624:
/* 800D5624  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800D5628  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D562C  40 80 00 10 */	bge lbl_800D563C
/* 800D5630  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800D5634  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 800D5638  48 00 00 70 */	b lbl_800D56A8
lbl_800D563C:
/* 800D563C  D0 21 00 08 */	stfs f1, 8(r1)
/* 800D5640  80 81 00 08 */	lwz r4, 8(r1)
/* 800D5644  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800D5648  3C 00 7F 80 */	lis r0, 0x7f80
/* 800D564C  7C 03 00 00 */	cmpw r3, r0
/* 800D5650  41 82 00 14 */	beq lbl_800D5664
/* 800D5654  40 80 00 40 */	bge lbl_800D5694
/* 800D5658  2C 03 00 00 */	cmpwi r3, 0
/* 800D565C  41 82 00 20 */	beq lbl_800D567C
/* 800D5660  48 00 00 34 */	b lbl_800D5694
lbl_800D5664:
/* 800D5664  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800D5668  41 82 00 0C */	beq lbl_800D5674
/* 800D566C  38 00 00 01 */	li r0, 1
/* 800D5670  48 00 00 28 */	b lbl_800D5698
lbl_800D5674:
/* 800D5674  38 00 00 02 */	li r0, 2
/* 800D5678  48 00 00 20 */	b lbl_800D5698
lbl_800D567C:
/* 800D567C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800D5680  41 82 00 0C */	beq lbl_800D568C
/* 800D5684  38 00 00 05 */	li r0, 5
/* 800D5688  48 00 00 10 */	b lbl_800D5698
lbl_800D568C:
/* 800D568C  38 00 00 03 */	li r0, 3
/* 800D5690  48 00 00 08 */	b lbl_800D5698
lbl_800D5694:
/* 800D5694  38 00 00 04 */	li r0, 4
lbl_800D5698:
/* 800D5698  2C 00 00 01 */	cmpwi r0, 1
/* 800D569C  40 82 00 0C */	bne lbl_800D56A8
/* 800D56A0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800D56A4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_800D56A8:
/* 800D56A8  FF E0 08 90 */	fmr f31, f1
/* 800D56AC  C0 02 93 58 */	lfs f0, lit_8249(r2)
/* 800D56B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D56B4  40 81 00 08 */	ble lbl_800D56BC
/* 800D56B8  FF E0 00 90 */	fmr f31, f0
lbl_800D56BC:
/* 800D56BC  3C 60 80 39 */	lis r3, m__21daAlinkHIO_cutDown_c0@ha
/* 800D56C0  38 63 DD 44 */	addi r3, r3, m__21daAlinkHIO_cutDown_c0@l
/* 800D56C4  C0 03 00 68 */	lfs f0, 0x68(r3)
/* 800D56C8  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800D56CC  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800D56D0  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 800D56D4  41 82 00 30 */	beq lbl_800D5704
/* 800D56D8  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 800D56DC  3C 60 80 39 */	lis r3, m__24daAlinkHIO_magneBoots_c0@ha
/* 800D56E0  38 63 E7 F4 */	addi r3, r3, m__24daAlinkHIO_magneBoots_c0@l
/* 800D56E4  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 800D56E8  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D56EC  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800D56F0  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 800D56F4  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 800D56F8  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D56FC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800D5700  48 00 00 2C */	b lbl_800D572C
lbl_800D5704:
/* 800D5704  7F E3 FB 78 */	mr r3, r31
/* 800D5708  38 80 00 01 */	li r4, 1
/* 800D570C  38 A0 00 01 */	li r5, 1
/* 800D5710  4B FE 5D A9 */	bl checkHeavyStateOn__9daAlink_cFii
/* 800D5714  2C 03 00 00 */	cmpwi r3, 0
/* 800D5718  41 82 00 14 */	beq lbl_800D572C
/* 800D571C  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 800D5720  C0 02 93 2C */	lfs f0, lit_7624(r2)
/* 800D5724  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D5728  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_800D572C:
/* 800D572C  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 800D5730  C0 3F 05 30 */	lfs f1, 0x530(r31)
/* 800D5734  EC 80 08 2A */	fadds f4, f0, f1
/* 800D5738  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800D573C  EC A0 08 24 */	fdivs f5, f0, f1
/* 800D5740  C0 61 00 28 */	lfs f3, 0x28(r1)
/* 800D5744  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 800D5748  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800D574C  EC 04 01 32 */	fmuls f0, f4, f4
/* 800D5750  EC 05 00 32 */	fmuls f0, f5, f0
/* 800D5754  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D5758  EC 02 00 28 */	fsubs f0, f2, f0
/* 800D575C  EC 23 00 28 */	fsubs f1, f3, f0
/* 800D5760  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D5764  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D5768  40 81 00 08 */	ble lbl_800D5770
/* 800D576C  FC 20 00 90 */	fmr f1, f0
lbl_800D5770:
/* 800D5770  C0 02 93 14 */	lfs f0, lit_7307(r2)
/* 800D5774  EC 00 00 72 */	fmuls f0, f0, f1
/* 800D5778  EC 20 01 72 */	fmuls f1, f0, f5
/* 800D577C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D5780  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D5784  40 81 00 0C */	ble lbl_800D5790
/* 800D5788  FC 00 08 34 */	frsqrte f0, f1
/* 800D578C  EC 20 00 72 */	fmuls f1, f0, f1
lbl_800D5790:
/* 800D5790  EC 04 01 72 */	fmuls f0, f4, f5
/* 800D5794  EC 01 00 28 */	fsubs f0, f1, f0
/* 800D5798  EC 1F 00 24 */	fdivs f0, f31, f0
/* 800D579C  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800D57A0  38 00 00 00 */	li r0, 0
/* 800D57A4  B0 1F 30 0C */	sth r0, 0x300c(r31)
lbl_800D57A8:
/* 800D57A8  7F E3 FB 78 */	mr r3, r31
/* 800D57AC  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010094@ha */
/* 800D57B0  38 84 00 94 */	addi r4, r4, 0x0094 /* 0x00010094@l */
/* 800D57B4  4B FF CA D1 */	bl setSwordVoiceSe__9daAlink_cFUl
/* 800D57B8  7F E3 FB 78 */	mr r3, r31
/* 800D57BC  38 80 00 27 */	li r4, 0x27
/* 800D57C0  4B FF BD 6D */	bl setCutType__9daAlink_cFUc
/* 800D57C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800D57C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800D57CC  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 800D57D0  64 00 00 40 */	oris r0, r0, 0x40
/* 800D57D4  90 03 5F 1C */	stw r0, 0x5f1c(r3)
/* 800D57D8  38 60 00 01 */	li r3, 1
lbl_800D57DC:
/* 800D57DC  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 800D57E0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 800D57E4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800D57E8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800D57EC  7C 08 03 A6 */	mtlr r0
/* 800D57F0  38 21 00 50 */	addi r1, r1, 0x50
/* 800D57F4  4E 80 00 20 */	blr 
