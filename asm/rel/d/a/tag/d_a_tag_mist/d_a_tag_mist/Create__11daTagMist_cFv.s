lbl_8048F370:
/* 8048F370  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F374  7C 08 02 A6 */	mflr r0
/* 8048F378  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F37C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048F380  7C 7F 1B 78 */	mr r31, r3
/* 8048F384  3C 80 80 49 */	lis r4, lit_3678@ha /* 0x8048F700@ha */
/* 8048F388  38 84 F7 00 */	addi r4, r4, lit_3678@l /* 0x8048F700@l */
/* 8048F38C  C0 44 00 00 */	lfs f2, 0(r4)
/* 8048F390  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 8048F394  EC 02 00 32 */	fmuls f0, f2, f0
/* 8048F398  D0 03 05 70 */	stfs f0, 0x570(r3)
/* 8048F39C  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 8048F3A0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8048F3A4  D0 03 05 78 */	stfs f0, 0x578(r3)
/* 8048F3A8  C0 24 00 04 */	lfs f1, 4(r4)
/* 8048F3AC  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 8048F3B0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8048F3B4  D0 03 05 7C */	stfs f0, 0x57c(r3)
/* 8048F3B8  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 8048F3BC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8048F3C0  D0 03 05 84 */	stfs f0, 0x584(r3)
/* 8048F3C4  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 8048F3C8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8048F3CC  D0 03 05 88 */	stfs f0, 0x588(r3)
/* 8048F3D0  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 8048F3D4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8048F3D8  D0 03 05 90 */	stfs f0, 0x590(r3)
/* 8048F3DC  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 8048F3E0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8048F3E4  D0 03 05 94 */	stfs f0, 0x594(r3)
/* 8048F3E8  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 8048F3EC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8048F3F0  D0 03 05 9C */	stfs f0, 0x59c(r3)
/* 8048F3F4  C0 04 00 08 */	lfs f0, 8(r4)
/* 8048F3F8  D0 03 05 98 */	stfs f0, 0x598(r3)
/* 8048F3FC  D0 03 05 8C */	stfs f0, 0x58c(r3)
/* 8048F400  D0 03 05 80 */	stfs f0, 0x580(r3)
/* 8048F404  D0 03 05 74 */	stfs f0, 0x574(r3)
/* 8048F408  4B FF FF 09 */	bl isMySw__11daTagMist_cFv
/* 8048F40C  2C 03 00 00 */	cmpwi r3, 0
/* 8048F410  41 82 00 14 */	beq lbl_8048F424
/* 8048F414  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8048F418  54 00 46 BE */	rlwinm r0, r0, 8, 0x1a, 0x1f
/* 8048F41C  3C 60 80 45 */	lis r3, mPlayerNo__11daTagMist_c+0x0@ha /* 0x80450DC0@ha */
/* 8048F420  98 03 0D C0 */	stb r0, mPlayerNo__11daTagMist_c+0x0@l(r3)  /* 0x80450DC0@l */
lbl_8048F424:
/* 8048F424  38 00 00 00 */	li r0, 0
/* 8048F428  98 1F 05 A0 */	stb r0, 0x5a0(r31)
/* 8048F42C  38 60 00 01 */	li r3, 1
/* 8048F430  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048F434  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F438  7C 08 03 A6 */	mtlr r0
/* 8048F43C  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F440  4E 80 00 20 */	blr 
