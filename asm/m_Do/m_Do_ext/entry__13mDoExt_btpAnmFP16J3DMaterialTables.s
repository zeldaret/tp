lbl_8000D5E8:
/* 8000D5E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000D5EC  7C 08 02 A6 */	mflr r0
/* 8000D5F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000D5F4  7C 66 1B 78 */	mr r6, r3
/* 8000D5F8  7C A0 07 34 */	extsh r0, r5
/* 8000D5FC  C8 22 81 20 */	lfd f1, lit_3878(r2)
/* 8000D600  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8000D604  90 01 00 0C */	stw r0, 0xc(r1)
/* 8000D608  3C 00 43 30 */	lis r0, 0x4330
/* 8000D60C  90 01 00 08 */	stw r0, 8(r1)
/* 8000D610  C8 01 00 08 */	lfd f0, 8(r1)
/* 8000D614  EC 00 08 28 */	fsubs f0, f0, f1
/* 8000D618  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8000D61C  D0 03 00 08 */	stfs f0, 8(r3)
/* 8000D620  7C 83 23 78 */	mr r3, r4
/* 8000D624  80 86 00 14 */	lwz r4, 0x14(r6)
/* 8000D628  48 32 25 A1 */	bl entryTexNoAnimator__16J3DMaterialTableFP16J3DAnmTexPattern
/* 8000D62C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000D630  7C 08 03 A6 */	mtlr r0
/* 8000D634  38 21 00 10 */	addi r1, r1, 0x10
/* 8000D638  4E 80 00 20 */	blr 
