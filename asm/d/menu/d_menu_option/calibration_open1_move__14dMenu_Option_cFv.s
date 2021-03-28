lbl_801E5380:
/* 801E5380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801E5384  7C 08 02 A6 */	mflr r0
/* 801E5388  90 01 00 14 */	stw r0, 0x14(r1)
/* 801E538C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801E5390  7C 7F 1B 78 */	mr r31, r3
/* 801E5394  80 6D 86 48 */	lwz r3, mFader__13mDoGph_gInf_c(r13)
/* 801E5398  80 03 00 04 */	lwz r0, 4(r3)
/* 801E539C  2C 00 00 00 */	cmpwi r0, 0
/* 801E53A0  40 82 00 10 */	bne lbl_801E53B0
/* 801E53A4  48 01 7A D5 */	bl dMw_fade_in__5dMw_cFv
/* 801E53A8  38 00 00 01 */	li r0, 1
/* 801E53AC  98 1F 03 F4 */	stb r0, 0x3f4(r31)
lbl_801E53B0:
/* 801E53B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801E53B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801E53B8  7C 08 03 A6 */	mtlr r0
/* 801E53BC  38 21 00 10 */	addi r1, r1, 0x10
/* 801E53C0  4E 80 00 20 */	blr 
