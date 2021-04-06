lbl_8048FF9C:
/* 8048FF9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048FFA0  7C 08 02 A6 */	mflr r0
/* 8048FFA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048FFA8  A8 03 04 B4 */	lha r0, 0x4b4(r3)
/* 8048FFAC  98 03 05 DE */	stb r0, 0x5de(r3)
/* 8048FFB0  A8 03 04 B4 */	lha r0, 0x4b4(r3)
/* 8048FFB4  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 8048FFB8  98 03 05 DF */	stb r0, 0x5df(r3)
/* 8048FFBC  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8048FFC0  54 00 05 3E */	clrlwi r0, r0, 0x14
/* 8048FFC4  B0 03 05 E0 */	sth r0, 0x5e0(r3)
/* 8048FFC8  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8048FFCC  54 00 A5 3E */	rlwinm r0, r0, 0x14, 0x14, 0x1f
/* 8048FFD0  B0 03 05 E2 */	sth r0, 0x5e2(r3)
/* 8048FFD4  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8048FFD8  54 00 47 FE */	rlwinm r0, r0, 8, 0x1f, 0x1f
/* 8048FFDC  98 03 05 DC */	stb r0, 0x5dc(r3)
/* 8048FFE0  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8048FFE4  54 00 3F FE */	rlwinm r0, r0, 7, 0x1f, 0x1f
/* 8048FFE8  98 03 05 DD */	stb r0, 0x5dd(r3)
/* 8048FFEC  A8 03 04 B8 */	lha r0, 0x4b8(r3)
/* 8048FFF0  54 00 04 3F */	clrlwi. r0, r0, 0x10
/* 8048FFF4  41 82 00 0C */	beq lbl_80490000
/* 8048FFF8  90 03 05 7C */	stw r0, 0x57c(r3)
/* 8048FFFC  48 00 00 0C */	b lbl_80490008
lbl_80490000:
/* 80490000  38 00 FF FF */	li r0, -1
/* 80490004  90 03 05 7C */	stw r0, 0x57c(r3)
lbl_80490008:
/* 80490008  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 8049000C  3C 80 80 49 */	lis r4, lit_3880@ha /* 0x804901A0@ha */
/* 80490010  C0 24 01 A0 */	lfs f1, lit_3880@l(r4)  /* 0x804901A0@l */
/* 80490014  EC 00 00 72 */	fmuls f0, f0, f1
/* 80490018  D0 03 04 EC */	stfs f0, 0x4ec(r3)
/* 8049001C  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 80490020  EC 00 00 72 */	fmuls f0, f0, f1
/* 80490024  D0 03 04 F0 */	stfs f0, 0x4f0(r3)
/* 80490028  38 63 05 6C */	addi r3, r3, 0x56c
/* 8049002C  3C 80 80 49 */	lis r4, d_a_tag_msg__stringBase0@ha /* 0x804901A4@ha */
/* 80490030  38 84 01 A4 */	addi r4, r4, d_a_tag_msg__stringBase0@l /* 0x804901A4@l */
/* 80490034  38 84 00 0D */	addi r4, r4, 0xd
/* 80490038  4B ED 8A F5 */	bl strcpy
/* 8049003C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80490040  7C 08 03 A6 */	mtlr r0
/* 80490044  38 21 00 10 */	addi r1, r1, 0x10
/* 80490048  4E 80 00 20 */	blr 
