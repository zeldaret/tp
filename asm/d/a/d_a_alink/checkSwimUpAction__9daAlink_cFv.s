lbl_80103058:
/* 80103058  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8010305C  7C 08 02 A6 */	mflr r0
/* 80103060  90 01 00 24 */	stw r0, 0x24(r1)
/* 80103064  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80103068  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8010306C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80103070  7C 7F 1B 78 */	mr r31, r3
/* 80103074  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80103078  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8010307C  41 82 00 40 */	beq lbl_801030BC
/* 80103080  38 60 00 00 */	li r3, 0
/* 80103084  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 80103088  28 00 01 8D */	cmplwi r0, 0x18d
/* 8010308C  41 82 00 10 */	beq lbl_8010309C
/* 80103090  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80103094  28 00 01 8C */	cmplwi r0, 0x18c
/* 80103098  40 82 00 08 */	bne lbl_801030A0
lbl_8010309C:
/* 8010309C  38 60 00 01 */	li r3, 1
lbl_801030A0:
/* 801030A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801030A4  41 82 00 0C */	beq lbl_801030B0
/* 801030A8  38 60 00 00 */	li r3, 0
/* 801030AC  48 00 02 00 */	b lbl_801032AC
lbl_801030B0:
/* 801030B0  7F E3 FB 78 */	mr r3, r31
/* 801030B4  4B FC B5 75 */	bl checkSubjectAction__9daAlink_cFv
/* 801030B8  48 00 01 F4 */	b lbl_801032AC
lbl_801030BC:
/* 801030BC  4B FF E8 FD */	bl getZoraSwim__9daAlink_cCFv
/* 801030C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801030C4  40 82 00 48 */	bne lbl_8010310C
/* 801030C8  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 801030CC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 801030D0  41 82 00 18 */	beq lbl_801030E8
/* 801030D4  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlSwim_c0@ha /* 0x8038F8B4@ha */
/* 801030D8  38 63 F8 B4 */	addi r3, r3, m__20daAlinkHIO_wlSwim_c0@l /* 0x8038F8B4@l */
/* 801030DC  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 801030E0  D0 1F 34 80 */	stfs f0, 0x3480(r31)
/* 801030E4  48 00 00 30 */	b lbl_80103114
lbl_801030E8:
/* 801030E8  38 7F 34 80 */	addi r3, r31, 0x3480
/* 801030EC  3C 80 80 39 */	lis r4, m__18daAlinkHIO_swim_c0@ha /* 0x8038ED2C@ha */
/* 801030F0  38 84 ED 2C */	addi r4, r4, m__18daAlinkHIO_swim_c0@l /* 0x8038ED2C@l */
/* 801030F4  C0 24 00 60 */	lfs f1, 0x60(r4)
/* 801030F8  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 801030FC  C0 62 94 64 */	lfs f3, lit_14954(r2)
/* 80103100  C0 82 92 B8 */	lfs f4, lit_6040(r2)
/* 80103104  48 16 C8 79 */	bl cLib_addCalc__FPfffff
/* 80103108  48 00 00 0C */	b lbl_80103114
lbl_8010310C:
/* 8010310C  C0 02 94 BC */	lfs f0, lit_17593(r2)
/* 80103110  D0 1F 34 80 */	stfs f0, 0x3480(r31)
lbl_80103114:
/* 80103114  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80103118  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8010311C  41 82 00 14 */	beq lbl_80103130
/* 80103120  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlSwim_c0@ha /* 0x8038F8B4@ha */
/* 80103124  38 63 F8 B4 */	addi r3, r3, m__20daAlinkHIO_wlSwim_c0@l /* 0x8038F8B4@l */
/* 80103128  C3 E3 00 4C */	lfs f31, 0x4c(r3)
/* 8010312C  48 00 00 10 */	b lbl_8010313C
lbl_80103130:
/* 80103130  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha /* 0x8038ED2C@ha */
/* 80103134  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l /* 0x8038ED2C@l */
/* 80103138  C3 E3 00 64 */	lfs f31, 0x64(r3)
lbl_8010313C:
/* 8010313C  7F E3 FB 78 */	mr r3, r31
/* 80103140  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80103144  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 80103148  7D 89 03 A6 */	mtctr r12
/* 8010314C  4E 80 04 21 */	bctrl 
/* 80103150  2C 03 00 00 */	cmpwi r3, 0
/* 80103154  40 82 00 5C */	bne lbl_801031B0
/* 80103158  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 8010315C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80103160  40 82 00 50 */	bne lbl_801031B0
/* 80103164  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80103168  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010316C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80103170  4C 41 13 82 */	cror 2, 1, 2
/* 80103174  40 82 00 3C */	bne lbl_801031B0
/* 80103178  C0 3F 33 B4 */	lfs f1, 0x33b4(r31)
/* 8010317C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80103180  EC 01 00 28 */	fsubs f0, f1, f0
/* 80103184  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80103188  40 80 00 28 */	bge lbl_801031B0
/* 8010318C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80103190  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80103194  41 82 00 10 */	beq lbl_801031A4
/* 80103198  7F E3 FB 78 */	mr r3, r31
/* 8010319C  48 03 52 3D */	bl procWolfSwimUpInit__9daAlink_cFv
/* 801031A0  48 00 01 0C */	b lbl_801032AC
lbl_801031A4:
/* 801031A4  7F E3 FB 78 */	mr r3, r31
/* 801031A8  48 00 0F 51 */	bl procSwimUpInit__9daAlink_cFv
/* 801031AC  48 00 01 00 */	b lbl_801032AC
lbl_801031B0:
/* 801031B0  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 801031B4  C0 1F 34 80 */	lfs f0, 0x3480(r31)
/* 801031B8  EC 21 00 28 */	fsubs f1, f1, f0
/* 801031BC  C0 1F 1A 08 */	lfs f0, 0x1a08(r31)
/* 801031C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801031C4  40 80 00 A8 */	bge lbl_8010326C
/* 801031C8  7F E3 FB 78 */	mr r3, r31
/* 801031CC  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 801031D0  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 801031D4  7D 89 03 A6 */	mtctr r12
/* 801031D8  4E 80 04 21 */	bctrl 
/* 801031DC  2C 03 00 00 */	cmpwi r3, 0
/* 801031E0  40 82 00 50 */	bne lbl_80103230
/* 801031E4  C0 3F 34 80 */	lfs f1, 0x3480(r31)
/* 801031E8  C0 1F 1A 08 */	lfs f0, 0x1a08(r31)
/* 801031EC  EC 01 00 2A */	fadds f0, f1, f0
/* 801031F0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 801031F4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 801031F8  D0 1F 37 9C */	stfs f0, 0x379c(r31)
/* 801031FC  7F E3 FB 78 */	mr r3, r31
/* 80103200  38 9F 1A 60 */	addi r4, r31, 0x1a60
/* 80103204  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80103208  4B FA CE 91 */	bl getGroundAngle__9daAlink_cFP13cBgS_PolyInfos
/* 8010320C  B0 7F 30 0E */	sth r3, 0x300e(r31)
/* 80103210  38 00 00 02 */	li r0, 2
/* 80103214  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 80103218  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 8010321C  C0 02 92 BC */	lfs f0, lit_6041(r2)
/* 80103220  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80103224  40 80 00 84 */	bge lbl_801032A8
/* 80103228  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8010322C  48 00 00 7C */	b lbl_801032A8
lbl_80103230:
/* 80103230  C0 1F 1A 08 */	lfs f0, 0x1a08(r31)
/* 80103234  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80103238  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 8010323C  60 00 00 20 */	ori r0, r0, 0x20
/* 80103240  90 1F 19 9C */	stw r0, 0x199c(r31)
/* 80103244  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80103248  64 00 00 80 */	oris r0, r0, 0x80
/* 8010324C  90 1F 05 70 */	stw r0, 0x570(r31)
/* 80103250  7F E3 FB 78 */	mr r3, r31
/* 80103254  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80103258  4B FC 3C C1 */	bl procLandInit__9daAlink_cFf
/* 8010325C  38 00 00 90 */	li r0, 0x90
/* 80103260  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 80103264  38 60 00 01 */	li r3, 1
/* 80103268  48 00 00 44 */	b lbl_801032AC
lbl_8010326C:
/* 8010326C  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 80103270  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 80103274  41 82 00 34 */	beq lbl_801032A8
/* 80103278  7F E3 FB 78 */	mr r3, r31
/* 8010327C  38 9F 1A A0 */	addi r4, r31, 0x1aa0
/* 80103280  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80103284  4B FA CE CD */	bl getRoofAngle__9daAlink_cFP13cBgS_PolyInfos
/* 80103288  B0 7F 30 0E */	sth r3, 0x300e(r31)
/* 8010328C  38 00 00 02 */	li r0, 2
/* 80103290  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 80103294  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 80103298  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8010329C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801032A0  40 81 00 08 */	ble lbl_801032A8
/* 801032A4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_801032A8:
/* 801032A8  38 60 00 00 */	li r3, 0
lbl_801032AC:
/* 801032AC  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 801032B0  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 801032B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801032B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801032BC  7C 08 03 A6 */	mtlr r0
/* 801032C0  38 21 00 20 */	addi r1, r1, 0x20
/* 801032C4  4E 80 00 20 */	blr 
