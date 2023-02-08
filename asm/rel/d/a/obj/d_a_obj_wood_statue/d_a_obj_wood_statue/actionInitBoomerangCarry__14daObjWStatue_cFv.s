lbl_80D3AE7C:
/* 80D3AE7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D3AE80  7C 08 02 A6 */	mflr r0
/* 80D3AE84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D3AE88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D3AE8C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D3AE90  7C 7F 1B 78 */	mr r31, r3
/* 80D3AE94  80 03 07 F8 */	lwz r0, 0x7f8(r3)
/* 80D3AE98  60 00 00 01 */	ori r0, r0, 1
/* 80D3AE9C  90 03 07 F8 */	stw r0, 0x7f8(r3)
/* 80D3AEA0  80 03 08 0C */	lwz r0, 0x80c(r3)
/* 80D3AEA4  60 00 00 01 */	ori r0, r0, 1
/* 80D3AEA8  90 03 08 0C */	stw r0, 0x80c(r3)
/* 80D3AEAC  3C 60 80 3B */	lis r3, item_info__10dItem_data@ha /* 0x803AED78@ha */
/* 80D3AEB0  38 63 ED 78 */	addi r3, r3, item_info__10dItem_data@l /* 0x803AED78@l */
/* 80D3AEB4  88 1F 09 2A */	lbz r0, 0x92a(r31)
/* 80D3AEB8  54 00 10 3A */	slwi r0, r0, 2
/* 80D3AEBC  7C 63 02 14 */	add r3, r3, r0
/* 80D3AEC0  8B C3 00 01 */	lbz r30, 1(r3)
/* 80D3AEC4  88 03 00 02 */	lbz r0, 2(r3)
/* 80D3AEC8  38 7F 09 04 */	addi r3, r31, 0x904
/* 80D3AECC  3C 80 80 D4 */	lis r4, lit_4256@ha /* 0x80D3B6C0@ha */
/* 80D3AED0  C0 44 B6 C0 */	lfs f2, lit_4256@l(r4)  /* 0x80D3B6C0@l */
/* 80D3AED4  3C 80 80 D4 */	lis r4, lit_3946@ha /* 0x80D3B6A0@ha */
/* 80D3AED8  C8 24 B6 A0 */	lfd f1, lit_3946@l(r4)  /* 0x80D3B6A0@l */
/* 80D3AEDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D3AEE0  3C 00 43 30 */	lis r0, 0x4330
/* 80D3AEE4  90 01 00 08 */	stw r0, 8(r1)
/* 80D3AEE8  C8 01 00 08 */	lfd f0, 8(r1)
/* 80D3AEEC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D3AEF0  EC 22 00 32 */	fmuls f1, f2, f0
/* 80D3AEF4  4B 53 43 0D */	bl SetR__8cM3dGCylFf
/* 80D3AEF8  38 7F 09 04 */	addi r3, r31, 0x904
/* 80D3AEFC  3C 80 80 D4 */	lis r4, lit_4256@ha /* 0x80D3B6C0@ha */
/* 80D3AF00  C0 44 B6 C0 */	lfs f2, lit_4256@l(r4)  /* 0x80D3B6C0@l */
/* 80D3AF04  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80D3AF08  3C 80 80 D4 */	lis r4, lit_3946@ha /* 0x80D3B6A0@ha */
/* 80D3AF0C  C8 24 B6 A0 */	lfd f1, lit_3946@l(r4)  /* 0x80D3B6A0@l */
/* 80D3AF10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3AF14  3C 00 43 30 */	lis r0, 0x4330
/* 80D3AF18  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D3AF1C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80D3AF20  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D3AF24  EC 22 00 32 */	fmuls f1, f2, f0
/* 80D3AF28  4B 53 42 D1 */	bl SetH__8cM3dGCylFf
/* 80D3AF2C  80 1F 08 0C */	lwz r0, 0x80c(r31)
/* 80D3AF30  60 00 00 01 */	ori r0, r0, 1
/* 80D3AF34  90 1F 08 0C */	stw r0, 0x80c(r31)
/* 80D3AF38  38 00 00 04 */	li r0, 4
/* 80D3AF3C  98 1F 09 38 */	stb r0, 0x938(r31)
/* 80D3AF40  38 60 00 01 */	li r3, 1
/* 80D3AF44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D3AF48  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D3AF4C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D3AF50  7C 08 03 A6 */	mtlr r0
/* 80D3AF54  38 21 00 20 */	addi r1, r1, 0x20
/* 80D3AF58  4E 80 00 20 */	blr 
