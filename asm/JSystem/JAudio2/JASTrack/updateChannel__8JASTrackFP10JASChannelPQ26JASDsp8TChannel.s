lbl_80292BF4:
/* 80292BF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80292BF8  7C 08 02 A6 */	mflr r0
/* 80292BFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80292C00  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80292C04  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80292C08  7C 7E 1B 78 */	mr r30, r3
/* 80292C0C  7C BF 2B 78 */	mr r31, r5
/* 80292C10  C0 23 01 E4 */	lfs f1, 0x1e4(r3)
/* 80292C14  C0 03 01 E0 */	lfs f0, 0x1e0(r3)
/* 80292C18  D0 04 00 68 */	stfs f0, 0x68(r4)
/* 80292C1C  D0 24 00 6C */	stfs f1, 0x6c(r4)
/* 80292C20  C0 23 01 EC */	lfs f1, 0x1ec(r3)
/* 80292C24  C0 03 01 E8 */	lfs f0, 0x1e8(r3)
/* 80292C28  D0 04 00 80 */	stfs f0, 0x80(r4)
/* 80292C2C  D0 24 00 84 */	stfs f1, 0x84(r4)
/* 80292C30  88 03 02 14 */	lbz r0, 0x214(r3)
/* 80292C34  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80292C38  41 82 00 10 */	beq lbl_80292C48
/* 80292C3C  7F E3 FB 78 */	mr r3, r31
/* 80292C40  38 9E 02 04 */	addi r4, r30, 0x204
/* 80292C44  48 00 B4 01 */	bl setIIRFilterParam__Q26JASDsp8TChannelFPs
lbl_80292C48:
/* 80292C48  88 1E 02 14 */	lbz r0, 0x214(r30)
/* 80292C4C  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 80292C50  41 82 00 10 */	beq lbl_80292C60
/* 80292C54  7F E3 FB 78 */	mr r3, r31
/* 80292C58  38 9E 01 F4 */	addi r4, r30, 0x1f4
/* 80292C5C  48 00 B4 11 */	bl setFIR8FilterParam__Q26JASDsp8TChannelFPs
lbl_80292C60:
/* 80292C60  7F E3 FB 78 */	mr r3, r31
/* 80292C64  88 9E 02 14 */	lbz r4, 0x214(r30)
/* 80292C68  48 00 B3 A5 */	bl setFilterMode__Q26JASDsp8TChannelFUs
/* 80292C6C  7F E3 FB 78 */	mr r3, r31
/* 80292C70  C0 22 BB D4 */	lfs f1, lit_1246(r2)
/* 80292C74  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 80292C78  EC 01 00 32 */	fmuls f0, f1, f0
/* 80292C7C  FC 00 00 1E */	fctiwz f0, f0
/* 80292C80  D8 01 00 08 */	stfd f0, 8(r1)
/* 80292C84  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80292C88  48 00 B4 0D */	bl setDistFilter__Q26JASDsp8TChannelFs
/* 80292C8C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80292C90  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80292C94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80292C98  7C 08 03 A6 */	mtlr r0
/* 80292C9C  38 21 00 20 */	addi r1, r1, 0x20
/* 80292CA0  4E 80 00 20 */	blr 
