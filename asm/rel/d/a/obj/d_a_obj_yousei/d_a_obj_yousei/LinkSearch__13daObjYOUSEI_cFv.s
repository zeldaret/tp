lbl_804D057C:
/* 804D057C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804D0580  7C 08 02 A6 */	mflr r0
/* 804D0584  90 01 00 34 */	stw r0, 0x34(r1)
/* 804D0588  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804D058C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804D0590  7C 7E 1B 78 */	mr r30, r3
/* 804D0594  3C 80 80 4D */	lis r4, ccSphSrc@ha
/* 804D0598  3B E4 15 F0 */	addi r31, r4, ccSphSrc@l
/* 804D059C  C0 03 06 14 */	lfs f0, 0x614(r3)
/* 804D05A0  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 804D05A4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804D05A8  40 80 00 98 */	bge lbl_804D0640
/* 804D05AC  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 804D05B0  A8 9E 06 18 */	lha r4, 0x618(r30)
/* 804D05B4  3C 84 00 01 */	addis r4, r4, 1
/* 804D05B8  38 04 80 00 */	addi r0, r4, -32768
/* 804D05BC  7C 04 07 34 */	extsh r4, r0
/* 804D05C0  48 00 00 9D */	bl WayBgCheck__13daObjYOUSEI_cFffs
/* 804D05C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804D05C8  41 82 00 0C */	beq lbl_804D05D4
/* 804D05CC  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 804D05D0  48 00 00 08 */	b lbl_804D05D8
lbl_804D05D4:
/* 804D05D4  C0 3F 00 7C */	lfs f1, 0x7c(r31)
lbl_804D05D8:
/* 804D05D8  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 804D05DC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804D05E0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804D05E4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 804D05E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804D05EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804D05F0  A8 9E 06 18 */	lha r4, 0x618(r30)
/* 804D05F4  3C 84 00 01 */	addis r4, r4, 1
/* 804D05F8  38 04 80 00 */	addi r0, r4, -32768
/* 804D05FC  7C 04 07 34 */	extsh r4, r0
/* 804D0600  4B B3 BD DC */	b mDoMtx_YrotS__FPA4_fs
/* 804D0604  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804D0608  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804D060C  38 81 00 14 */	addi r4, r1, 0x14
/* 804D0610  38 A1 00 08 */	addi r5, r1, 8
/* 804D0614  4B E7 67 58 */	b PSMTXMultVec
/* 804D0618  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 804D061C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804D0620  EC 61 00 2A */	fadds f3, f1, f0
/* 804D0624  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 804D0628  C0 01 00 08 */	lfs f0, 8(r1)
/* 804D062C  EC 01 00 2A */	fadds f0, f1, f0
/* 804D0630  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 804D0634  D0 7E 04 B0 */	stfs f3, 0x4b0(r30)
/* 804D0638  38 60 00 01 */	li r3, 1
/* 804D063C  48 00 00 08 */	b lbl_804D0644
lbl_804D0640:
/* 804D0640  38 60 00 00 */	li r3, 0
lbl_804D0644:
/* 804D0644  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804D0648  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 804D064C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804D0650  7C 08 03 A6 */	mtlr r0
/* 804D0654  38 21 00 30 */	addi r1, r1, 0x30
/* 804D0658  4E 80 00 20 */	blr 
