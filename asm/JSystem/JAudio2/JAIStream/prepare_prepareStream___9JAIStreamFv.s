lbl_802A3230:
/* 802A3230  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A3234  7C 08 02 A6 */	mflr r0
/* 802A3238  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A323C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802A3240  7C 7F 1B 78 */	mr r31, r3
/* 802A3244  80 03 02 90 */	lwz r0, 0x290(r3)
/* 802A3248  2C 00 00 02 */	cmpwi r0, 2
/* 802A324C  41 82 01 60 */	beq lbl_802A33AC
/* 802A3250  40 80 00 14 */	bge lbl_802A3264
/* 802A3254  2C 00 00 00 */	cmpwi r0, 0
/* 802A3258  41 82 00 1C */	beq lbl_802A3274
/* 802A325C  40 80 00 7C */	bge lbl_802A32D8
/* 802A3260  48 00 01 7C */	b lbl_802A33DC
lbl_802A3264:
/* 802A3264  2C 00 00 04 */	cmpwi r0, 4
/* 802A3268  41 82 01 74 */	beq lbl_802A33DC
/* 802A326C  40 80 01 70 */	bge lbl_802A33DC
/* 802A3270  48 00 01 64 */	b lbl_802A33D4
lbl_802A3274:
/* 802A3274  80 7F 02 B8 */	lwz r3, 0x2b8(r31)
/* 802A3278  80 63 00 68 */	lwz r3, 0x68(r3)
/* 802A327C  38 81 00 08 */	addi r4, r1, 8
/* 802A3280  81 83 00 00 */	lwz r12, 0(r3)
/* 802A3284  81 8C 00 08 */	lwz r12, 8(r12)
/* 802A3288  7D 89 03 A6 */	mtctr r12
/* 802A328C  4E 80 04 21 */	bctrl 
/* 802A3290  90 7F 02 9C */	stw r3, 0x29c(r31)
/* 802A3294  80 9F 02 9C */	lwz r4, 0x29c(r31)
/* 802A3298  28 04 00 00 */	cmplwi r4, 0
/* 802A329C  41 82 00 30 */	beq lbl_802A32CC
/* 802A32A0  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 802A32A4  80 A1 00 08 */	lwz r5, 8(r1)
/* 802A32A8  3C C0 80 2A */	lis r6, JAIStream_JASAramStreamCallback___FUlP13JASAramStreamPv@ha
/* 802A32AC  38 C6 30 D4 */	addi r6, r6, JAIStream_JASAramStreamCallback___FUlP13JASAramStreamPv@l
/* 802A32B0  7F E7 FB 78 */	mr r7, r31
/* 802A32B4  4B FF 31 E9 */	bl init__13JASAramStreamFUlUlPFUlP13JASAramStreamPv_vPv
/* 802A32B8  38 00 00 01 */	li r0, 1
/* 802A32BC  90 1F 02 90 */	stw r0, 0x290(r31)
/* 802A32C0  38 00 00 00 */	li r0, 0
/* 802A32C4  90 1F 00 14 */	stw r0, 0x14(r31)
/* 802A32C8  48 00 01 14 */	b lbl_802A33DC
lbl_802A32CC:
/* 802A32CC  7F E3 FB 78 */	mr r3, r31
/* 802A32D0  4B FF F3 9D */	bl increasePrepareCount_JAISound___8JAISoundFv
/* 802A32D4  48 00 01 08 */	b lbl_802A33DC
lbl_802A32D8:
/* 802A32D8  80 7F 00 08 */	lwz r3, 8(r31)
/* 802A32DC  28 03 00 00 */	cmplwi r3, 0
/* 802A32E0  41 82 00 A0 */	beq lbl_802A3380
/* 802A32E4  38 80 00 00 */	li r4, 0
/* 802A32E8  81 83 00 00 */	lwz r12, 0(r3)
/* 802A32EC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802A32F0  7D 89 03 A6 */	mtctr r12
/* 802A32F4  4E 80 04 21 */	bctrl 
/* 802A32F8  C0 03 00 08 */	lfs f0, 8(r3)
/* 802A32FC  D0 1F 02 20 */	stfs f0, 0x220(r31)
/* 802A3300  C0 03 00 00 */	lfs f0, 0(r3)
/* 802A3304  38 80 00 00 */	li r4, 0
/* 802A3308  38 00 00 06 */	li r0, 6
/* 802A330C  7C 09 03 A6 */	mtctr r0
lbl_802A3310:
/* 802A3310  38 04 02 24 */	addi r0, r4, 0x224
/* 802A3314  7C 1F 05 2E */	stfsx f0, r31, r0
/* 802A3318  38 84 00 04 */	addi r4, r4, 4
/* 802A331C  42 00 FF F4 */	bdnz lbl_802A3310
/* 802A3320  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 802A3324  38 80 00 00 */	li r4, 0
/* 802A3328  38 00 00 06 */	li r0, 6
/* 802A332C  7C 09 03 A6 */	mtctr r0
lbl_802A3330:
/* 802A3330  38 04 02 3C */	addi r0, r4, 0x23c
/* 802A3334  7C 1F 05 2E */	stfsx f0, r31, r0
/* 802A3338  38 84 00 04 */	addi r4, r4, 4
/* 802A333C  42 00 FF F4 */	bdnz lbl_802A3330
/* 802A3340  C0 03 00 04 */	lfs f0, 4(r3)
/* 802A3344  38 80 00 00 */	li r4, 0
/* 802A3348  38 00 00 06 */	li r0, 6
/* 802A334C  7C 09 03 A6 */	mtctr r0
lbl_802A3350:
/* 802A3350  38 04 02 54 */	addi r0, r4, 0x254
/* 802A3354  7C 1F 05 2E */	stfsx f0, r31, r0
/* 802A3358  38 84 00 04 */	addi r4, r4, 4
/* 802A335C  42 00 FF F4 */	bdnz lbl_802A3350
/* 802A3360  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 802A3364  38 60 00 00 */	li r3, 0
/* 802A3368  38 00 00 06 */	li r0, 6
/* 802A336C  7C 09 03 A6 */	mtctr r0
lbl_802A3370:
/* 802A3370  38 03 02 6C */	addi r0, r3, 0x26c
/* 802A3374  7C 1F 05 2E */	stfsx f0, r31, r0
/* 802A3378  38 63 00 04 */	addi r3, r3, 4
/* 802A337C  42 00 FF F4 */	bdnz lbl_802A3370
lbl_802A3380:
/* 802A3380  38 00 00 00 */	li r0, 0
/* 802A3384  98 1F 02 C5 */	stb r0, 0x2c5(r31)
/* 802A3388  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 802A338C  80 9F 02 94 */	lwz r4, 0x294(r31)
/* 802A3390  38 A0 FF FF */	li r5, -1
/* 802A3394  4B FF 31 C9 */	bl prepare__13JASAramStreamFli
/* 802A3398  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A339C  41 82 00 40 */	beq lbl_802A33DC
/* 802A33A0  38 00 00 02 */	li r0, 2
/* 802A33A4  90 1F 02 90 */	stw r0, 0x290(r31)
/* 802A33A8  48 00 00 34 */	b lbl_802A33DC
lbl_802A33AC:
/* 802A33AC  88 1F 02 C5 */	lbz r0, 0x2c5(r31)
/* 802A33B0  28 00 00 00 */	cmplwi r0, 0
/* 802A33B4  41 82 00 18 */	beq lbl_802A33CC
/* 802A33B8  38 00 00 00 */	li r0, 0
/* 802A33BC  98 1F 02 C5 */	stb r0, 0x2c5(r31)
/* 802A33C0  38 00 00 03 */	li r0, 3
/* 802A33C4  90 1F 02 90 */	stw r0, 0x290(r31)
/* 802A33C8  48 00 00 14 */	b lbl_802A33DC
lbl_802A33CC:
/* 802A33CC  4B FF F2 A1 */	bl increasePrepareCount_JAISound___8JAISoundFv
/* 802A33D0  48 00 00 0C */	b lbl_802A33DC
lbl_802A33D4:
/* 802A33D4  38 60 00 01 */	li r3, 1
/* 802A33D8  48 00 00 08 */	b lbl_802A33E0
lbl_802A33DC:
/* 802A33DC  38 60 00 00 */	li r3, 0
lbl_802A33E0:
/* 802A33E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802A33E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A33E8  7C 08 03 A6 */	mtlr r0
/* 802A33EC  38 21 00 20 */	addi r1, r1, 0x20
/* 802A33F0  4E 80 00 20 */	blr 
