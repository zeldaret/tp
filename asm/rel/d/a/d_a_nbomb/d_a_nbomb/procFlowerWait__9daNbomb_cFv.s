lbl_804CA2EC:
/* 804CA2EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CA2F0  7C 08 02 A6 */	mflr r0
/* 804CA2F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CA2F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CA2FC  7C 7F 1B 78 */	mr r31, r3
/* 804CA300  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 804CA304  3C 80 80 4D */	lis r4, lit_4216@ha /* 0x804CC37C@ha */
/* 804CA308  C0 24 C3 7C */	lfs f1, lit_4216@l(r4)  /* 0x804CC37C@l */
/* 804CA30C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804CA310  40 80 00 44 */	bge lbl_804CA354
/* 804CA314  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 804CA318  3C 80 80 4D */	lis r4, lit_5458@ha /* 0x804CC474@ha */
/* 804CA31C  C0 44 C4 74 */	lfs f2, lit_5458@l(r4)  /* 0x804CC474@l */
/* 804CA320  4B DA 64 21 */	bl cLib_chaseF__FPfff
/* 804CA324  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 804CA328  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 804CA32C  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 804CA330  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 804CA334  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 804CA338  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 804CA33C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 804CA340  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 804CA344  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 804CA348  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 804CA34C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 804CA350  48 00 00 50 */	b lbl_804CA3A0
lbl_804CA354:
/* 804CA354  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 804CA358  60 00 00 10 */	ori r0, r0, 0x10
/* 804CA35C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 804CA360  80 1F 07 E4 */	lwz r0, 0x7e4(r31)
/* 804CA364  60 00 00 01 */	ori r0, r0, 1
/* 804CA368  90 1F 07 E4 */	stw r0, 0x7e4(r31)
/* 804CA36C  4B FF DF 6D */	bl checkExplode__9daNbomb_cFv
/* 804CA370  2C 03 00 00 */	cmpwi r3, 0
/* 804CA374  41 82 00 0C */	beq lbl_804CA380
/* 804CA378  38 60 00 01 */	li r3, 1
/* 804CA37C  48 00 00 28 */	b lbl_804CA3A4
lbl_804CA380:
/* 804CA380  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 804CA384  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 804CA388  41 82 00 18 */	beq lbl_804CA3A0
/* 804CA38C  38 00 00 1E */	li r0, 0x1e
/* 804CA390  98 1F 07 A4 */	stb r0, 0x7a4(r31)
/* 804CA394  7F E3 FB 78 */	mr r3, r31
/* 804CA398  4B FF F0 49 */	bl procCarryInit__9daNbomb_cFv
/* 804CA39C  48 00 00 08 */	b lbl_804CA3A4
lbl_804CA3A0:
/* 804CA3A0  38 60 00 01 */	li r3, 1
lbl_804CA3A4:
/* 804CA3A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804CA3A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CA3AC  7C 08 03 A6 */	mtlr r0
/* 804CA3B0  38 21 00 10 */	addi r1, r1, 0x10
/* 804CA3B4  4E 80 00 20 */	blr 
