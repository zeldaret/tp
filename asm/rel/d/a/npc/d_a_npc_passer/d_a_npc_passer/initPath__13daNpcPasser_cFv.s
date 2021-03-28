lbl_80AA3284:
/* 80AA3284  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA3288  7C 08 02 A6 */	mflr r0
/* 80AA328C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA3290  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA3294  7C 7F 1B 78 */	mr r31, r3
/* 80AA3298  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80AA329C  54 00 47 3E */	rlwinm r0, r0, 8, 0x1c, 0x1f
/* 80AA32A0  28 00 00 01 */	cmplwi r0, 1
/* 80AA32A4  40 82 00 10 */	bne lbl_80AA32B4
/* 80AA32A8  38 00 00 02 */	li r0, 2
/* 80AA32AC  90 1F 0B 1C */	stw r0, 0xb1c(r31)
/* 80AA32B0  48 00 00 38 */	b lbl_80AA32E8
lbl_80AA32B4:
/* 80AA32B4  28 00 00 02 */	cmplwi r0, 2
/* 80AA32B8  40 82 00 10 */	bne lbl_80AA32C8
/* 80AA32BC  38 00 00 01 */	li r0, 1
/* 80AA32C0  90 1F 0B 1C */	stw r0, 0xb1c(r31)
/* 80AA32C4  48 00 00 24 */	b lbl_80AA32E8
lbl_80AA32C8:
/* 80AA32C8  38 60 00 00 */	li r3, 0
/* 80AA32CC  38 80 00 02 */	li r4, 2
/* 80AA32D0  48 00 27 29 */	bl func_80AA59F8
/* 80AA32D4  2C 03 00 00 */	cmpwi r3, 0
/* 80AA32D8  38 00 00 01 */	li r0, 1
/* 80AA32DC  41 82 00 08 */	beq lbl_80AA32E4
/* 80AA32E0  38 00 00 02 */	li r0, 2
lbl_80AA32E4:
/* 80AA32E4  90 1F 0B 1C */	stw r0, 0xb1c(r31)
lbl_80AA32E8:
/* 80AA32E8  38 80 00 02 */	li r4, 2
/* 80AA32EC  80 1F 0B 1C */	lwz r0, 0xb1c(r31)
/* 80AA32F0  28 00 00 02 */	cmplwi r0, 2
/* 80AA32F4  40 82 00 50 */	bne lbl_80AA3344
/* 80AA32F8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80AA32FC  54 00 27 BE */	rlwinm r0, r0, 4, 0x1e, 0x1f
/* 80AA3300  28 00 00 01 */	cmplwi r0, 1
/* 80AA3304  40 82 00 0C */	bne lbl_80AA3310
/* 80AA3308  38 80 00 02 */	li r4, 2
/* 80AA330C  48 00 00 88 */	b lbl_80AA3394
lbl_80AA3310:
/* 80AA3310  28 00 00 02 */	cmplwi r0, 2
/* 80AA3314  40 82 00 0C */	bne lbl_80AA3320
/* 80AA3318  38 80 00 03 */	li r4, 3
/* 80AA331C  48 00 00 78 */	b lbl_80AA3394
lbl_80AA3320:
/* 80AA3320  38 60 00 00 */	li r3, 0
/* 80AA3324  38 80 00 02 */	li r4, 2
/* 80AA3328  48 00 26 D1 */	bl func_80AA59F8
/* 80AA332C  2C 03 00 00 */	cmpwi r3, 0
/* 80AA3330  38 00 00 03 */	li r0, 3
/* 80AA3334  41 82 00 08 */	beq lbl_80AA333C
/* 80AA3338  38 00 00 02 */	li r0, 2
lbl_80AA333C:
/* 80AA333C  7C 04 03 78 */	mr r4, r0
/* 80AA3340  48 00 00 54 */	b lbl_80AA3394
lbl_80AA3344:
/* 80AA3344  28 00 00 01 */	cmplwi r0, 1
/* 80AA3348  40 82 00 4C */	bne lbl_80AA3394
/* 80AA334C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80AA3350  54 00 17 BE */	srwi r0, r0, 0x1e
/* 80AA3354  28 00 00 01 */	cmplwi r0, 1
/* 80AA3358  40 82 00 0C */	bne lbl_80AA3364
/* 80AA335C  38 80 00 04 */	li r4, 4
/* 80AA3360  48 00 00 34 */	b lbl_80AA3394
lbl_80AA3364:
/* 80AA3364  28 00 00 02 */	cmplwi r0, 2
/* 80AA3368  40 82 00 0C */	bne lbl_80AA3374
/* 80AA336C  38 80 00 05 */	li r4, 5
/* 80AA3370  48 00 00 24 */	b lbl_80AA3394
lbl_80AA3374:
/* 80AA3374  38 60 00 00 */	li r3, 0
/* 80AA3378  38 80 00 02 */	li r4, 2
/* 80AA337C  48 00 26 7D */	bl func_80AA59F8
/* 80AA3380  2C 03 00 00 */	cmpwi r3, 0
/* 80AA3384  38 00 00 05 */	li r0, 5
/* 80AA3388  41 82 00 08 */	beq lbl_80AA3390
/* 80AA338C  38 00 00 04 */	li r0, 4
lbl_80AA3390:
/* 80AA3390  7C 04 03 78 */	mr r4, r0
lbl_80AA3394:
/* 80AA3394  7F E3 FB 78 */	mr r3, r31
/* 80AA3398  80 BF 0B 00 */	lwz r5, 0xb00(r31)
/* 80AA339C  4B 6B 4D 54 */	b getAnmP__10daNpcCd2_cFii
/* 80AA33A0  7C 64 1B 78 */	mr r4, r3
/* 80AA33A4  7F E3 FB 78 */	mr r3, r31
/* 80AA33A8  3C A0 80 AA */	lis r5, lit_4189@ha
/* 80AA33AC  C0 25 69 98 */	lfs f1, lit_4189@l(r5)
/* 80AA33B0  3C A0 80 AA */	lis r5, lit_4190@ha
/* 80AA33B4  C0 45 69 9C */	lfs f2, lit_4190@l(r5)
/* 80AA33B8  38 A0 00 02 */	li r5, 2
/* 80AA33BC  38 C0 00 00 */	li r6, 0
/* 80AA33C0  38 E0 FF FF */	li r7, -1
/* 80AA33C4  4B 6B 5B 3C */	b setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 80AA33C8  38 60 00 00 */	li r3, 0
/* 80AA33CC  98 7F 0B 23 */	stb r3, 0xb23(r31)
/* 80AA33D0  38 00 00 01 */	li r0, 1
/* 80AA33D4  98 1F 0B 22 */	stb r0, 0xb22(r31)
/* 80AA33D8  98 7F 0B 24 */	stb r3, 0xb24(r31)
/* 80AA33DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA33E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA33E4  7C 08 03 A6 */	mtlr r0
/* 80AA33E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA33EC  4E 80 00 20 */	blr 
