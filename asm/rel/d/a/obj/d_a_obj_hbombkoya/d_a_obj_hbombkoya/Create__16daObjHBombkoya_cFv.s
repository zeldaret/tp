lbl_80C1B9CC:
/* 80C1B9CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C1B9D0  7C 08 02 A6 */	mflr r0
/* 80C1B9D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C1B9D8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C1B9DC  7C 7F 1B 78 */	mr r31, r3
/* 80C1B9E0  80 63 06 18 */	lwz r3, 0x618(r3)
/* 80C1B9E4  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80C1B9E8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C1B9EC  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80C1B9F0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C1B9F4  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80C1B9F8  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C1B9FC  38 00 00 00 */	li r0, 0
/* 80C1BA00  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80C1BA04  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80C1BA08  81 83 00 04 */	lwz r12, 4(r3)
/* 80C1BA0C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80C1BA10  7D 89 03 A6 */	mtctr r12
/* 80C1BA14  4E 80 04 21 */	bctrl 
/* 80C1BA18  3C 80 80 C2 */	lis r4, __vt__8cM3dGAab@ha /* 0x80C1C99C@ha */
/* 80C1BA1C  38 04 C9 9C */	addi r0, r4, __vt__8cM3dGAab@l /* 0x80C1C99C@l */
/* 80C1BA20  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C1BA24  C0 23 00 00 */	lfs f1, 0(r3)
/* 80C1BA28  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C1BA2C  C0 43 00 04 */	lfs f2, 4(r3)
/* 80C1BA30  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80C1BA34  C0 63 00 08 */	lfs f3, 8(r3)
/* 80C1BA38  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80C1BA3C  C0 83 00 0C */	lfs f4, 0xc(r3)
/* 80C1BA40  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 80C1BA44  C0 A3 00 10 */	lfs f5, 0x10(r3)
/* 80C1BA48  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 80C1BA4C  C0 C3 00 14 */	lfs f6, 0x14(r3)
/* 80C1BA50  D0 C1 00 1C */	stfs f6, 0x1c(r1)
/* 80C1BA54  3C 60 80 C2 */	lis r3, lit_3699@ha /* 0x80C1C5F8@ha */
/* 80C1BA58  C0 03 C5 F8 */	lfs f0, lit_3699@l(r3)  /* 0x80C1C5F8@l */
/* 80C1BA5C  EC A5 00 2A */	fadds f5, f5, f0
/* 80C1BA60  D0 A1 00 18 */	stfs f5, 0x18(r1)
/* 80C1BA64  7F E3 FB 78 */	mr r3, r31
/* 80C1BA68  4B 3F EA E1 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C1BA6C  38 00 00 00 */	li r0, 0
/* 80C1BA70  90 1F 06 1C */	stw r0, 0x61c(r31)
/* 80C1BA74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C1BA78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C1BA7C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C1BA80  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C1BA84  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C1BA88  4B 72 AE 61 */	bl PSMTXTrans
/* 80C1BA8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C1BA90  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C1BA94  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80C1BA98  4B 3F 09 9D */	bl mDoMtx_YrotM__FPA4_fs
/* 80C1BA9C  C0 3F 04 EC */	lfs f1, 0x4ec(r31)
/* 80C1BAA0  C0 5F 04 F0 */	lfs f2, 0x4f0(r31)
/* 80C1BAA4  C0 7F 04 F4 */	lfs f3, 0x4f4(r31)
/* 80C1BAA8  4B 3F 13 91 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80C1BAAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C1BAB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C1BAB4  38 9F 05 E8 */	addi r4, r31, 0x5e8
/* 80C1BAB8  4B 72 A9 F9 */	bl PSMTXCopy
/* 80C1BABC  38 60 00 00 */	li r3, 0
/* 80C1BAC0  7C 64 1B 78 */	mr r4, r3
/* 80C1BAC4  38 00 00 09 */	li r0, 9
/* 80C1BAC8  7C 09 03 A6 */	mtctr r0
lbl_80C1BACC:
/* 80C1BACC  38 03 06 24 */	addi r0, r3, 0x624
/* 80C1BAD0  7C 9F 01 2E */	stwx r4, r31, r0
/* 80C1BAD4  38 63 00 04 */	addi r3, r3, 4
/* 80C1BAD8  42 00 FF F4 */	bdnz lbl_80C1BACC
/* 80C1BADC  38 00 00 01 */	li r0, 1
/* 80C1BAE0  98 1F 06 20 */	stb r0, 0x620(r31)
/* 80C1BAE4  38 7F 06 48 */	addi r3, r31, 0x648
/* 80C1BAE8  38 80 00 FF */	li r4, 0xff
/* 80C1BAEC  38 A0 00 00 */	li r5, 0
/* 80C1BAF0  7F E6 FB 78 */	mr r6, r31
/* 80C1BAF4  4B 46 7D 6D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C1BAF8  38 7F 06 84 */	addi r3, r31, 0x684
/* 80C1BAFC  3C 80 80 C2 */	lis r4, l_cc_cyl_src@ha /* 0x80C1C738@ha */
/* 80C1BB00  38 84 C7 38 */	addi r4, r4, l_cc_cyl_src@l /* 0x80C1C738@l */
/* 80C1BB04  4B 46 8D B1 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C1BB08  38 1F 06 48 */	addi r0, r31, 0x648
/* 80C1BB0C  90 1F 06 C8 */	stw r0, 0x6c8(r31)
/* 80C1BB10  3C 60 80 C2 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C1C99C@ha */
/* 80C1BB14  38 03 C9 9C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C1C99C@l */
/* 80C1BB18  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C1BB1C  38 60 00 01 */	li r3, 1
/* 80C1BB20  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C1BB24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C1BB28  7C 08 03 A6 */	mtlr r0
/* 80C1BB2C  38 21 00 30 */	addi r1, r1, 0x30
/* 80C1BB30  4E 80 00 20 */	blr 
