lbl_801BF030:
/* 801BF030  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801BF034  7C 08 02 A6 */	mflr r0
/* 801BF038  90 01 00 34 */	stw r0, 0x34(r1)
/* 801BF03C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801BF040  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801BF044  7C 7F 1B 78 */	mr r31, r3
/* 801BF048  88 03 01 78 */	lbz r0, 0x178(r3)
/* 801BF04C  54 00 10 3A */	slwi r0, r0, 2
/* 801BF050  7C 7F 02 14 */	add r3, r31, r0
/* 801BF054  80 63 00 88 */	lwz r3, 0x88(r3)
/* 801BF058  88 9F 01 79 */	lbz r4, 0x179(r31)
/* 801BF05C  C0 22 A5 EC */	lfs f1, lit_3963(r2)
/* 801BF060  C0 42 A6 14 */	lfs f2, lit_4313(r2)
/* 801BF064  38 A0 00 00 */	li r5, 0
/* 801BF068  48 09 57 65 */	bl scaleAnime__8CPaneMgrFsffUc
/* 801BF06C  7C 7E 1B 78 */	mr r30, r3
/* 801BF070  88 1F 01 77 */	lbz r0, 0x177(r31)
/* 801BF074  54 00 10 3A */	slwi r0, r0, 2
/* 801BF078  7C 7F 02 14 */	add r3, r31, r0
/* 801BF07C  80 63 00 88 */	lwz r3, 0x88(r3)
/* 801BF080  88 9F 01 79 */	lbz r4, 0x179(r31)
/* 801BF084  C0 22 A6 14 */	lfs f1, lit_4313(r2)
/* 801BF088  C0 42 A5 EC */	lfs f2, lit_3963(r2)
/* 801BF08C  38 A0 00 00 */	li r5, 0
/* 801BF090  48 09 57 3D */	bl scaleAnime__8CPaneMgrFsffUc
/* 801BF094  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801BF098  28 00 00 01 */	cmplwi r0, 1
/* 801BF09C  40 82 00 CC */	bne lbl_801BF168
/* 801BF0A0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801BF0A4  28 00 00 01 */	cmplwi r0, 1
/* 801BF0A8  40 82 00 C0 */	bne lbl_801BF168
/* 801BF0AC  88 1F 01 77 */	lbz r0, 0x177(r31)
/* 801BF0B0  54 00 10 3A */	slwi r0, r0, 2
/* 801BF0B4  7C 7F 02 14 */	add r3, r31, r0
/* 801BF0B8  80 63 00 88 */	lwz r3, 0x88(r3)
/* 801BF0BC  80 63 00 04 */	lwz r3, 4(r3)
/* 801BF0C0  C0 03 00 D8 */	lfs f0, 0xd8(r3)
/* 801BF0C4  C0 23 00 D4 */	lfs f1, 0xd4(r3)
/* 801BF0C8  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 801BF0CC  80 63 00 04 */	lwz r3, 4(r3)
/* 801BF0D0  D0 23 00 D4 */	stfs f1, 0xd4(r3)
/* 801BF0D4  D0 03 00 D8 */	stfs f0, 0xd8(r3)
/* 801BF0D8  81 83 00 00 */	lwz r12, 0(r3)
/* 801BF0DC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801BF0E0  7D 89 03 A6 */	mtctr r12
/* 801BF0E4  4E 80 04 21 */	bctrl 
/* 801BF0E8  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 801BF0EC  48 09 64 DD */	bl show__13CPaneMgrAlphaFv
/* 801BF0F0  88 1F 01 77 */	lbz r0, 0x177(r31)
/* 801BF0F4  54 00 10 3A */	slwi r0, r0, 2
/* 801BF0F8  7C 7F 02 14 */	add r3, r31, r0
/* 801BF0FC  80 83 00 7C */	lwz r4, 0x7c(r3)
/* 801BF100  38 61 00 08 */	addi r3, r1, 8
/* 801BF104  80 A4 00 04 */	lwz r5, 4(r4)
/* 801BF108  38 C0 00 00 */	li r6, 0
/* 801BF10C  38 E0 00 00 */	li r7, 0
/* 801BF110  48 09 5D AD */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 801BF114  80 61 00 08 */	lwz r3, 8(r1)
/* 801BF118  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801BF11C  90 61 00 14 */	stw r3, 0x14(r1)
/* 801BF120  90 01 00 18 */	stw r0, 0x18(r1)
/* 801BF124  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801BF128  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801BF12C  88 1F 01 77 */	lbz r0, 0x177(r31)
/* 801BF130  54 00 10 3A */	slwi r0, r0, 2
/* 801BF134  7C 7F 02 14 */	add r3, r31, r0
/* 801BF138  80 63 00 7C */	lwz r3, 0x7c(r3)
/* 801BF13C  80 83 00 04 */	lwz r4, 4(r3)
/* 801BF140  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BF144  80 63 0C C0 */	lwz r3, 0xcc0(r3)
/* 801BF148  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 801BF14C  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 801BF150  EC 21 00 2A */	fadds f1, f1, f0
/* 801BF154  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 801BF158  38 A0 00 00 */	li r5, 0
/* 801BF15C  4B FD 5F 99 */	bl setPos__16dSelect_cursor_cFffP7J2DPaneb
/* 801BF160  38 00 00 00 */	li r0, 0
/* 801BF164  98 1F 01 7C */	stb r0, 0x17c(r31)
lbl_801BF168:
/* 801BF168  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801BF16C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 801BF170  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801BF174  7C 08 03 A6 */	mtlr r0
/* 801BF178  38 21 00 30 */	addi r1, r1, 0x30
/* 801BF17C  4E 80 00 20 */	blr 
