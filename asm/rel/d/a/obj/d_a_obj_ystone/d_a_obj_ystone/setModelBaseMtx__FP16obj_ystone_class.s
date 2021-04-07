lbl_80D3E180:
/* 80D3E180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3E184  7C 08 02 A6 */	mflr r0
/* 80D3E188  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3E18C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3E190  93 C1 00 08 */	stw r30, 8(r1)
/* 80D3E194  7C 7E 1B 78 */	mr r30, r3
/* 80D3E198  88 03 05 99 */	lbz r0, 0x599(r3)
/* 80D3E19C  28 00 00 03 */	cmplwi r0, 3
/* 80D3E1A0  40 80 00 0C */	bge lbl_80D3E1AC
/* 80D3E1A4  83 FE 05 70 */	lwz r31, 0x570(r30)
/* 80D3E1A8  48 00 00 0C */	b lbl_80D3E1B4
lbl_80D3E1AC:
/* 80D3E1AC  80 7E 05 7C */	lwz r3, 0x57c(r30)
/* 80D3E1B0  83 E3 00 04 */	lwz r31, 4(r3)
lbl_80D3E1B4:
/* 80D3E1B4  88 1E 05 98 */	lbz r0, 0x598(r30)
/* 80D3E1B8  7C 00 07 75 */	extsb. r0, r0
/* 80D3E1BC  40 82 00 50 */	bne lbl_80D3E20C
/* 80D3E1C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D3E1C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D3E1C8  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80D3E1CC  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80D3E1D0  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 80D3E1D4  4B 60 87 15 */	bl PSMTXTrans
/* 80D3E1D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D3E1DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D3E1E0  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80D3E1E4  4B 2C E2 51 */	bl mDoMtx_YrotM__FPA4_fs
/* 80D3E1E8  C0 3E 05 80 */	lfs f1, 0x580(r30)
/* 80D3E1EC  FC 40 08 90 */	fmr f2, f1
/* 80D3E1F0  FC 60 08 90 */	fmr f3, f1
/* 80D3E1F4  4B 2C EC 45 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80D3E1F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D3E1FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D3E200  38 9F 00 24 */	addi r4, r31, 0x24
/* 80D3E204  4B 60 82 AD */	bl PSMTXCopy
/* 80D3E208  48 00 00 3C */	b lbl_80D3E244
lbl_80D3E20C:
/* 80D3E20C  38 00 00 00 */	li r0, 0
/* 80D3E210  98 1E 05 98 */	stb r0, 0x598(r30)
/* 80D3E214  38 7F 00 24 */	addi r3, r31, 0x24
/* 80D3E218  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D3E21C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D3E220  4B 60 82 91 */	bl PSMTXCopy
/* 80D3E224  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80D3E228  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80D3E22C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80D3E230  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80D3E234  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80D3E238  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80D3E23C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80D3E240  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_80D3E244:
/* 80D3E244  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3E248  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D3E24C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3E250  7C 08 03 A6 */	mtlr r0
/* 80D3E254  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3E258  4E 80 00 20 */	blr 
