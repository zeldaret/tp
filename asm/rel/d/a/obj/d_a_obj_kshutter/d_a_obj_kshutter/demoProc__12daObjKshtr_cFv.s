lbl_80C49158:
/* 80C49158  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4915C  7C 08 02 A6 */	mflr r0
/* 80C49160  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C49164  3C 80 80 C5 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80C49E60@ha */
/* 80C49168  38 84 9E 60 */	addi r4, r4, cNullVec__6Z2Calc@l /* 0x80C49E60@l */
/* 80C4916C  3C A0 80 C5 */	lis r5, struct_80C4A0E8+0x3@ha /* 0x80C4A0EB@ha */
/* 80C49170  38 E5 A0 EB */	addi r7, r5, struct_80C4A0E8+0x3@l /* 0x80C4A0EB@l */
/* 80C49174  88 07 00 00 */	lbz r0, 0(r7)
/* 80C49178  7C 00 07 75 */	extsb. r0, r0
/* 80C4917C  40 82 00 40 */	bne lbl_80C491BC
/* 80C49180  80 A4 01 A0 */	lwz r5, 0x1a0(r4)
/* 80C49184  80 04 01 A4 */	lwz r0, 0x1a4(r4)
/* 80C49188  90 A4 01 B8 */	stw r5, 0x1b8(r4)
/* 80C4918C  90 04 01 BC */	stw r0, 0x1bc(r4)
/* 80C49190  80 04 01 A8 */	lwz r0, 0x1a8(r4)
/* 80C49194  90 04 01 C0 */	stw r0, 0x1c0(r4)
/* 80C49198  38 C4 01 B8 */	addi r6, r4, 0x1b8
/* 80C4919C  80 A4 01 AC */	lwz r5, 0x1ac(r4)
/* 80C491A0  80 04 01 B0 */	lwz r0, 0x1b0(r4)
/* 80C491A4  90 A6 00 0C */	stw r5, 0xc(r6)
/* 80C491A8  90 06 00 10 */	stw r0, 0x10(r6)
/* 80C491AC  80 04 01 B4 */	lwz r0, 0x1b4(r4)
/* 80C491B0  90 06 00 14 */	stw r0, 0x14(r6)
/* 80C491B4  38 00 00 01 */	li r0, 1
/* 80C491B8  98 07 00 00 */	stb r0, 0(r7)
lbl_80C491BC:
/* 80C491BC  3C A0 80 C5 */	lis r5, data_80C4A0EC@ha /* 0x80C4A0EC@ha */
/* 80C491C0  38 E5 A0 EC */	addi r7, r5, data_80C4A0EC@l /* 0x80C4A0EC@l */
/* 80C491C4  88 07 00 00 */	lbz r0, 0(r7)
/* 80C491C8  7C 00 07 75 */	extsb. r0, r0
/* 80C491CC  40 82 00 40 */	bne lbl_80C4920C
/* 80C491D0  80 A4 01 D0 */	lwz r5, 0x1d0(r4)
/* 80C491D4  80 04 01 D4 */	lwz r0, 0x1d4(r4)
/* 80C491D8  90 A4 01 E8 */	stw r5, 0x1e8(r4)
/* 80C491DC  90 04 01 EC */	stw r0, 0x1ec(r4)
/* 80C491E0  80 04 01 D8 */	lwz r0, 0x1d8(r4)
/* 80C491E4  90 04 01 F0 */	stw r0, 0x1f0(r4)
/* 80C491E8  38 C4 01 E8 */	addi r6, r4, 0x1e8
/* 80C491EC  80 A4 01 DC */	lwz r5, 0x1dc(r4)
/* 80C491F0  80 04 01 E0 */	lwz r0, 0x1e0(r4)
/* 80C491F4  90 A6 00 0C */	stw r5, 0xc(r6)
/* 80C491F8  90 06 00 10 */	stw r0, 0x10(r6)
/* 80C491FC  80 04 01 E4 */	lwz r0, 0x1e4(r4)
/* 80C49200  90 06 00 14 */	stw r0, 0x14(r6)
/* 80C49204  38 00 00 01 */	li r0, 1
/* 80C49208  98 07 00 00 */	stb r0, 0(r7)
lbl_80C4920C:
/* 80C4920C  88 03 05 ED */	lbz r0, 0x5ed(r3)
/* 80C49210  28 00 00 00 */	cmplwi r0, 0
/* 80C49214  41 82 00 20 */	beq lbl_80C49234
/* 80C49218  88 03 05 EA */	lbz r0, 0x5ea(r3)
/* 80C4921C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C49220  39 84 01 B8 */	addi r12, r4, 0x1b8
/* 80C49224  7D 8C 02 14 */	add r12, r12, r0
/* 80C49228  4B 71 8E 5D */	bl __ptmf_scall
/* 80C4922C  60 00 00 00 */	nop 
/* 80C49230  48 00 00 1C */	b lbl_80C4924C
lbl_80C49234:
/* 80C49234  88 03 05 EA */	lbz r0, 0x5ea(r3)
/* 80C49238  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C4923C  39 84 01 E8 */	addi r12, r4, 0x1e8
/* 80C49240  7D 8C 02 14 */	add r12, r12, r0
/* 80C49244  4B 71 8E 41 */	bl __ptmf_scall
/* 80C49248  60 00 00 00 */	nop 
lbl_80C4924C:
/* 80C4924C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C49250  7C 08 03 A6 */	mtlr r0
/* 80C49254  38 21 00 10 */	addi r1, r1, 0x10
/* 80C49258  4E 80 00 20 */	blr 
