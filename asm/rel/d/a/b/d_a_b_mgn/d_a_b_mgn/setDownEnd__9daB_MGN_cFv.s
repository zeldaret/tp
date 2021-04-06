lbl_8060A670:
/* 8060A670  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8060A674  7C 08 02 A6 */	mflr r0
/* 8060A678  90 01 00 14 */	stw r0, 0x14(r1)
/* 8060A67C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8060A680  7C 7F 1B 78 */	mr r31, r3
/* 8060A684  80 03 21 0C */	lwz r0, 0x210c(r3)
/* 8060A688  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8060A68C  90 03 21 0C */	stw r0, 0x210c(r3)
/* 8060A690  80 03 22 44 */	lwz r0, 0x2244(r3)
/* 8060A694  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8060A698  90 03 22 44 */	stw r0, 0x2244(r3)
/* 8060A69C  38 00 00 00 */	li r0, 0
/* 8060A6A0  98 03 0B 01 */	stb r0, 0xb01(r3)
/* 8060A6A4  90 03 05 5C */	stw r0, 0x55c(r3)
/* 8060A6A8  88 03 0A FC */	lbz r0, 0xafc(r3)
/* 8060A6AC  28 00 00 00 */	cmplwi r0, 0
/* 8060A6B0  40 82 00 30 */	bne lbl_8060A6E0
/* 8060A6B4  38 80 00 16 */	li r4, 0x16
/* 8060A6B8  38 A0 00 00 */	li r5, 0
/* 8060A6BC  3C C0 80 61 */	lis r6, lit_4206@ha /* 0x8060FE28@ha */
/* 8060A6C0  C0 26 FE 28 */	lfs f1, lit_4206@l(r6)  /* 0x8060FE28@l */
/* 8060A6C4  3C C0 80 61 */	lis r6, lit_3930@ha /* 0x8060FDE8@ha */
/* 8060A6C8  C0 46 FD E8 */	lfs f2, lit_3930@l(r6)  /* 0x8060FDE8@l */
/* 8060A6CC  4B FF D2 59 */	bl setBck__9daB_MGN_cFiUcff
/* 8060A6D0  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8060A6D4  38 03 C0 00 */	addi r0, r3, -16384
/* 8060A6D8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8060A6DC  48 00 00 2C */	b lbl_8060A708
lbl_8060A6E0:
/* 8060A6E0  38 80 00 10 */	li r4, 0x10
/* 8060A6E4  38 A0 00 00 */	li r5, 0
/* 8060A6E8  3C C0 80 61 */	lis r6, lit_4206@ha /* 0x8060FE28@ha */
/* 8060A6EC  C0 26 FE 28 */	lfs f1, lit_4206@l(r6)  /* 0x8060FE28@l */
/* 8060A6F0  3C C0 80 61 */	lis r6, lit_3930@ha /* 0x8060FDE8@ha */
/* 8060A6F4  C0 46 FD E8 */	lfs f2, lit_3930@l(r6)  /* 0x8060FDE8@l */
/* 8060A6F8  4B FF D2 2D */	bl setBck__9daB_MGN_cFiUcff
/* 8060A6FC  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8060A700  38 03 40 00 */	addi r0, r3, 0x4000
/* 8060A704  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_8060A708:
/* 8060A708  7F E3 FB 78 */	mr r3, r31
/* 8060A70C  38 80 00 04 */	li r4, 4
/* 8060A710  38 A0 00 07 */	li r5, 7
/* 8060A714  4B FF D3 19 */	bl setActionMode__9daB_MGN_cFii
/* 8060A718  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8060A71C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060A720  7C 08 03 A6 */	mtlr r0
/* 8060A724  38 21 00 10 */	addi r1, r1, 0x10
/* 8060A728  4E 80 00 20 */	blr 
