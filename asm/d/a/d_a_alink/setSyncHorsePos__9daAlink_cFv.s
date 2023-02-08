lbl_800ED4DC:
/* 800ED4DC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800ED4E0  7C 08 02 A6 */	mflr r0
/* 800ED4E4  90 01 00 34 */	stw r0, 0x34(r1)
/* 800ED4E8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800ED4EC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800ED4F0  7C 7E 1B 78 */	mr r30, r3
/* 800ED4F4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800ED4F8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800ED4FC  83 E4 5D B8 */	lwz r31, 0x5db8(r4)
/* 800ED500  28 1F 00 00 */	cmplwi r31, 0
/* 800ED504  40 82 00 34 */	bne lbl_800ED538
/* 800ED508  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800ED50C  28 00 01 50 */	cmplwi r0, 0x150
/* 800ED510  41 82 00 0C */	beq lbl_800ED51C
/* 800ED514  28 00 01 48 */	cmplwi r0, 0x148
/* 800ED518  40 82 00 0C */	bne lbl_800ED524
lbl_800ED51C:
/* 800ED51C  38 60 00 01 */	li r3, 1
/* 800ED520  48 00 02 54 */	b lbl_800ED774
lbl_800ED524:
/* 800ED524  4B FF F6 AD */	bl rideGetOff__9daAlink_cFv
/* 800ED528  7F C3 F3 78 */	mr r3, r30
/* 800ED52C  4B FC 83 C1 */	bl checkWaitAction__9daAlink_cFv
/* 800ED530  38 60 00 00 */	li r3, 0
/* 800ED534  48 00 02 40 */	b lbl_800ED774
lbl_800ED538:
/* 800ED538  38 00 00 60 */	li r0, 0x60
/* 800ED53C  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800ED540  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800ED544  28 00 00 4F */	cmplwi r0, 0x4f
/* 800ED548  41 82 00 44 */	beq lbl_800ED58C
/* 800ED54C  28 00 00 50 */	cmplwi r0, 0x50
/* 800ED550  41 82 00 3C */	beq lbl_800ED58C
/* 800ED554  38 80 00 55 */	li r4, 0x55
/* 800ED558  4B FB F0 01 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800ED55C  2C 03 00 00 */	cmpwi r3, 0
/* 800ED560  40 82 00 2C */	bne lbl_800ED58C
/* 800ED564  7F C3 F3 78 */	mr r3, r30
/* 800ED568  38 80 00 5A */	li r4, 0x5a
/* 800ED56C  4B FB EF ED */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800ED570  2C 03 00 00 */	cmpwi r3, 0
/* 800ED574  40 82 00 18 */	bne lbl_800ED58C
/* 800ED578  7F C3 F3 78 */	mr r3, r30
/* 800ED57C  38 80 00 5B */	li r4, 0x5b
/* 800ED580  4B FB EF D9 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800ED584  2C 03 00 00 */	cmpwi r3, 0
/* 800ED588  41 82 01 2C */	beq lbl_800ED6B4
lbl_800ED58C:
/* 800ED58C  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800ED590  28 00 00 4F */	cmplwi r0, 0x4f
/* 800ED594  40 82 00 C8 */	bne lbl_800ED65C
/* 800ED598  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 800ED59C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800ED5A0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800ED5A4  38 63 03 F0 */	addi r3, r3, 0x3f0
/* 800ED5A8  3C 80 80 39 */	lis r4, localHorseRun_18095@ha /* 0x80391954@ha */
/* 800ED5AC  38 84 19 54 */	addi r4, r4, localHorseRun_18095@l /* 0x80391954@l */
/* 800ED5B0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 800ED5B4  48 25 97 B9 */	bl PSMTXMultVec
/* 800ED5B8  38 60 00 00 */	li r3, 0
/* 800ED5BC  88 9F 16 B4 */	lbz r4, 0x16b4(r31)
/* 800ED5C0  28 04 00 03 */	cmplwi r4, 3
/* 800ED5C4  40 82 00 14 */	bne lbl_800ED5D8
/* 800ED5C8  A8 1F 17 20 */	lha r0, 0x1720(r31)
/* 800ED5CC  2C 00 00 00 */	cmpwi r0, 0
/* 800ED5D0  40 82 00 08 */	bne lbl_800ED5D8
/* 800ED5D4  38 60 00 01 */	li r3, 1
lbl_800ED5D8:
/* 800ED5D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800ED5DC  40 82 00 A0 */	bne lbl_800ED67C
/* 800ED5E0  28 04 00 02 */	cmplwi r4, 2
/* 800ED5E4  41 82 00 98 */	beq lbl_800ED67C
/* 800ED5E8  C0 62 92 98 */	lfs f3, lit_5943(r2)
/* 800ED5EC  C0 5F 05 C0 */	lfs f2, 0x5c0(r31)
/* 800ED5F0  A8 1F 05 B8 */	lha r0, 0x5b8(r31)
/* 800ED5F4  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800ED5F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800ED5FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ED600  3C 00 43 30 */	lis r0, 0x4330
/* 800ED604  90 01 00 10 */	stw r0, 0x10(r1)
/* 800ED608  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 800ED60C  EC 00 08 28 */	fsubs f0, f0, f1
/* 800ED610  EC 02 00 24 */	fdivs f0, f2, f0
/* 800ED614  EC 43 00 2A */	fadds f2, f3, f0
/* 800ED618  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800ED61C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800ED620  40 81 00 08 */	ble lbl_800ED628
/* 800ED624  EC 42 00 28 */	fsubs f2, f2, f0
lbl_800ED628:
/* 800ED628  A8 1E 1F D8 */	lha r0, 0x1fd8(r30)
/* 800ED62C  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800ED630  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800ED634  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800ED638  3C 00 43 30 */	lis r0, 0x4330
/* 800ED63C  90 01 00 18 */	stw r0, 0x18(r1)
/* 800ED640  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 800ED644  EC 00 08 28 */	fsubs f0, f0, f1
/* 800ED648  EC 02 00 32 */	fmuls f0, f2, f0
/* 800ED64C  D0 1E 1F E0 */	stfs f0, 0x1fe0(r30)
/* 800ED650  80 7E 1F 2C */	lwz r3, 0x1f2c(r30)
/* 800ED654  D0 03 00 08 */	stfs f0, 8(r3)
/* 800ED658  48 00 00 24 */	b lbl_800ED67C
lbl_800ED65C:
/* 800ED65C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 800ED660  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800ED664  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800ED668  38 63 03 F0 */	addi r3, r3, 0x3f0
/* 800ED66C  3C 80 80 39 */	lis r4, localHorseRun_18103@ha /* 0x80391960@ha */
/* 800ED670  38 84 19 60 */	addi r4, r4, localHorseRun_18103@l /* 0x80391960@l */
/* 800ED674  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 800ED678  48 25 96 F5 */	bl PSMTXMultVec
lbl_800ED67C:
/* 800ED67C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 800ED680  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800ED684  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800ED688  38 63 03 F0 */	addi r3, r3, 0x3f0
/* 800ED68C  38 81 00 08 */	addi r4, r1, 8
/* 800ED690  4B F1 F5 71 */	bl mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 800ED694  A8 01 00 08 */	lha r0, 8(r1)
/* 800ED698  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 800ED69C  A8 01 00 0A */	lha r0, 0xa(r1)
/* 800ED6A0  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 800ED6A4  A8 61 00 0C */	lha r3, 0xc(r1)
/* 800ED6A8  38 03 C0 00 */	addi r0, r3, -16384
/* 800ED6AC  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 800ED6B0  48 00 00 7C */	b lbl_800ED72C
lbl_800ED6B4:
/* 800ED6B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800ED6B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800ED6BC  80 1E 31 7C */	lwz r0, 0x317c(r30)
/* 800ED6C0  1C 00 00 38 */	mulli r0, r0, 0x38
/* 800ED6C4  7C 63 02 14 */	add r3, r3, r0
/* 800ED6C8  80 03 5D 7C */	lwz r0, 0x5d7c(r3)
/* 800ED6CC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800ED6D0  41 82 00 28 */	beq lbl_800ED6F8
/* 800ED6D4  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 800ED6D8  C0 22 94 C4 */	lfs f1, lit_18176(r2)
/* 800ED6DC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800ED6E0  EC 21 00 2A */	fadds f1, f1, f0
/* 800ED6E4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800ED6E8  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 800ED6EC  D0 3E 04 D4 */	stfs f1, 0x4d4(r30)
/* 800ED6F0  D0 5E 04 D8 */	stfs f2, 0x4d8(r30)
/* 800ED6F4  48 00 00 20 */	b lbl_800ED714
lbl_800ED6F8:
/* 800ED6F8  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 800ED6FC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800ED700  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800ED704  3C 80 80 42 */	lis r4, l_localHorseRidePos@ha /* 0x804255BC@ha */
/* 800ED708  38 84 55 BC */	addi r4, r4, l_localHorseRidePos@l /* 0x804255BC@l */
/* 800ED70C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 800ED710  48 25 96 5D */	bl PSMTXMultVec
lbl_800ED714:
/* 800ED714  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 800ED718  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 800ED71C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800ED720  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 800ED724  A8 1F 04 E8 */	lha r0, 0x4e8(r31)
/* 800ED728  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
lbl_800ED72C:
/* 800ED72C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800ED730  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800ED734  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 800ED738  FC 00 02 10 */	fabs f0, f0
/* 800ED73C  FC 00 00 18 */	frsp f0, f0
/* 800ED740  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800ED744  7F C3 F3 78 */	mr r3, r30
/* 800ED748  4B FC 61 BD */	bl checkZeroSpeedF__9daAlink_cCFv
/* 800ED74C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800ED750  41 82 00 14 */	beq lbl_800ED764
/* 800ED754  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800ED758  60 00 00 01 */	ori r0, r0, 1
/* 800ED75C  90 1E 31 A0 */	stw r0, 0x31a0(r30)
/* 800ED760  48 00 00 10 */	b lbl_800ED770
lbl_800ED764:
/* 800ED764  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800ED768  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800ED76C  90 1E 31 A0 */	stw r0, 0x31a0(r30)
lbl_800ED770:
/* 800ED770  38 60 00 01 */	li r3, 1
lbl_800ED774:
/* 800ED774  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800ED778  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800ED77C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800ED780  7C 08 03 A6 */	mtlr r0
/* 800ED784  38 21 00 30 */	addi r1, r1, 0x30
/* 800ED788  4E 80 00 20 */	blr 
