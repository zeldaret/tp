lbl_80485974:
/* 80485974  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80485978  7C 08 02 A6 */	mflr r0
/* 8048597C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80485980  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80485984  7C 7F 1B 78 */	mr r31, r3
/* 80485988  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8048598C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80485990  40 82 00 1C */	bne lbl_804859AC
/* 80485994  28 1F 00 00 */	cmplwi r31, 0
/* 80485998  41 82 00 08 */	beq lbl_804859A0
/* 8048599C  4B B9 31 C9 */	bl __ct__10fopAc_ac_cFv
lbl_804859A0:
/* 804859A0  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 804859A4  60 00 00 08 */	ori r0, r0, 8
/* 804859A8  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_804859AC:
/* 804859AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804859B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804859B4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 804859B8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 804859BC  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 804859C0  4B EC 0F 29 */	bl PSMTXTrans
/* 804859C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804859C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804859CC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 804859D0  4B B8 6A 65 */	bl mDoMtx_YrotM__FPA4_fs
/* 804859D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804859D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804859DC  38 9F 05 68 */	addi r4, r31, 0x568
/* 804859E0  4B EC 0B D1 */	bl PSMTXInverse
/* 804859E4  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 804859E8  3C 60 80 48 */	lis r3, lit_3758@ha /* 0x80485C98@ha */
/* 804859EC  C0 23 5C 98 */	lfs f1, lit_3758@l(r3)  /* 0x80485C98@l */
/* 804859F0  EC 00 00 72 */	fmuls f0, f0, f1
/* 804859F4  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 804859F8  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 804859FC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80485A00  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 80485A04  C0 3F 04 F0 */	lfs f1, 0x4f0(r31)
/* 80485A08  3C 60 80 48 */	lis r3, lit_3759@ha /* 0x80485C9C@ha */
/* 80485A0C  C0 03 5C 9C */	lfs f0, lit_3759@l(r3)  /* 0x80485C9C@l */
/* 80485A10  EC 01 00 32 */	fmuls f0, f1, f0
/* 80485A14  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 80485A18  38 60 00 04 */	li r3, 4
/* 80485A1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80485A20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80485A24  7C 08 03 A6 */	mtlr r0
/* 80485A28  38 21 00 10 */	addi r1, r1, 0x10
/* 80485A2C  4E 80 00 20 */	blr 
