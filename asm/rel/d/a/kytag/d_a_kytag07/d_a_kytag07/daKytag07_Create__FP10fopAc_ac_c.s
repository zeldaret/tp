lbl_8085A3B0:
/* 8085A3B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8085A3B4  7C 08 02 A6 */	mflr r0
/* 8085A3B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8085A3BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8085A3C0  93 C1 00 08 */	stw r30, 8(r1)
/* 8085A3C4  7C 7E 1B 78 */	mr r30, r3
/* 8085A3C8  3C 80 80 86 */	lis r4, lit_3754@ha
/* 8085A3CC  3B E4 A4 84 */	addi r31, r4, lit_3754@l
/* 8085A3D0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8085A3D4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8085A3D8  40 82 00 1C */	bne lbl_8085A3F4
/* 8085A3DC  28 1E 00 00 */	cmplwi r30, 0
/* 8085A3E0  41 82 00 08 */	beq lbl_8085A3E8
/* 8085A3E4  4B 7B E7 80 */	b __ct__10fopAc_ac_cFv
lbl_8085A3E8:
/* 8085A3E8  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 8085A3EC  60 00 00 08 */	ori r0, r0, 8
/* 8085A3F0  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_8085A3F4:
/* 8085A3F4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8085A3F8  D0 1E 05 68 */	stfs f0, 0x568(r30)
/* 8085A3FC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8085A400  D0 1E 05 6C */	stfs f0, 0x56c(r30)
/* 8085A404  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8085A408  D0 1E 05 70 */	stfs f0, 0x570(r30)
/* 8085A40C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8085A410  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8085A414  B0 1E 05 74 */	sth r0, 0x574(r30)
/* 8085A418  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8085A41C  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 8085A420  B0 1E 05 76 */	sth r0, 0x576(r30)
/* 8085A424  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8085A428  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 8085A42C  B0 1E 05 78 */	sth r0, 0x578(r30)
/* 8085A430  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8085A434  D0 1E 05 7C */	stfs f0, 0x57c(r30)
/* 8085A438  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8085A43C  D0 1E 05 80 */	stfs f0, 0x580(r30)
/* 8085A440  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8085A444  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 8085A448  EC 01 00 32 */	fmuls f0, f1, f0
/* 8085A44C  D0 1E 05 88 */	stfs f0, 0x588(r30)
/* 8085A450  38 00 00 00 */	li r0, 0
/* 8085A454  98 1E 05 8C */	stb r0, 0x58c(r30)
/* 8085A458  38 7E 05 68 */	addi r3, r30, 0x568
/* 8085A45C  4B 94 D4 40 */	b dKy_plight_priority_set__FP15LIGHT_INFLUENCE
/* 8085A460  38 60 00 04 */	li r3, 4
/* 8085A464  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8085A468  83 C1 00 08 */	lwz r30, 8(r1)
/* 8085A46C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8085A470  7C 08 03 A6 */	mtlr r0
/* 8085A474  38 21 00 10 */	addi r1, r1, 0x10
/* 8085A478  4E 80 00 20 */	blr 
