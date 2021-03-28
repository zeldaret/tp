lbl_8048AA50:
/* 8048AA50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048AA54  7C 08 02 A6 */	mflr r0
/* 8048AA58  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048AA5C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8048AA60  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8048AA64  7C 7E 1B 78 */	mr r30, r3
/* 8048AA68  3C 80 80 49 */	lis r4, lit_3769@ha
/* 8048AA6C  3B E4 AC 28 */	addi r31, r4, lit_3769@l
/* 8048AA70  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8048AA74  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8048AA78  40 82 00 1C */	bne lbl_8048AA94
/* 8048AA7C  28 1E 00 00 */	cmplwi r30, 0
/* 8048AA80  41 82 00 08 */	beq lbl_8048AA88
/* 8048AA84  4B B8 E0 E0 */	b __ct__10fopAc_ac_cFv
lbl_8048AA88:
/* 8048AA88  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 8048AA8C  60 00 00 08 */	ori r0, r0, 8
/* 8048AA90  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_8048AA94:
/* 8048AA94  A8 1E 04 B8 */	lha r0, 0x4b8(r30)
/* 8048AA98  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8048AA9C  40 82 00 8C */	bne lbl_8048AB28
/* 8048AAA0  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 8048AAA4  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 8048AAA8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8048AAAC  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 8048AAB0  C0 3E 04 F0 */	lfs f1, 0x4f0(r30)
/* 8048AAB4  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8048AAB8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8048AABC  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 8048AAC0  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 8048AAC4  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8048AAC8  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 8048AACC  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 8048AAD0  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 8048AAD4  EC 61 00 28 */	fsubs f3, f1, f0
/* 8048AAD8  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8048AADC  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8048AAE0  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 8048AAE4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8048AAE8  D0 1E 05 70 */	stfs f0, 0x570(r30)
/* 8048AAEC  D0 5E 05 74 */	stfs f2, 0x574(r30)
/* 8048AAF0  D0 7E 05 78 */	stfs f3, 0x578(r30)
/* 8048AAF4  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 8048AAF8  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 8048AAFC  EC 61 00 2A */	fadds f3, f1, f0
/* 8048AB00  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8048AB04  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 8048AB08  EC 41 00 2A */	fadds f2, f1, f0
/* 8048AB0C  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8048AB10  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 8048AB14  EC 01 00 2A */	fadds f0, f1, f0
/* 8048AB18  D0 1E 05 7C */	stfs f0, 0x57c(r30)
/* 8048AB1C  D0 5E 05 80 */	stfs f2, 0x580(r30)
/* 8048AB20  D0 7E 05 84 */	stfs f3, 0x584(r30)
/* 8048AB24  48 00 00 58 */	b lbl_8048AB7C
lbl_8048AB28:
/* 8048AB28  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 8048AB2C  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 8048AB30  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048AB34  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 8048AB38  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 8048AB3C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048AB40  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 8048AB44  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 8048AB48  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8048AB4C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8048AB50  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 8048AB54  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8048AB58  D0 5E 05 70 */	stfs f2, 0x570(r30)
/* 8048AB5C  D0 1E 05 74 */	stfs f0, 0x574(r30)
/* 8048AB60  D0 5E 05 78 */	stfs f2, 0x578(r30)
/* 8048AB64  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8048AB68  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 8048AB6C  EC 01 00 2A */	fadds f0, f1, f0
/* 8048AB70  D0 5E 05 7C */	stfs f2, 0x57c(r30)
/* 8048AB74  D0 1E 05 80 */	stfs f0, 0x580(r30)
/* 8048AB78  D0 5E 05 84 */	stfs f2, 0x584(r30)
lbl_8048AB7C:
/* 8048AB7C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8048AB80  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 8048AB84  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8048AB88  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 8048AB8C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8048AB90  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 8048AB94  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8048AB98  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8048AB9C  28 00 00 FF */	cmplwi r0, 0xff
/* 8048ABA0  41 82 00 34 */	beq lbl_8048ABD4
/* 8048ABA4  C0 7E 05 54 */	lfs f3, 0x554(r30)
/* 8048ABA8  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 8048ABAC  C8 3F 00 38 */	lfd f1, 0x38(r31)
/* 8048ABB0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8048ABB4  3C 00 43 30 */	lis r0, 0x4330
/* 8048ABB8  90 01 00 08 */	stw r0, 8(r1)
/* 8048ABBC  C8 01 00 08 */	lfd f0, 8(r1)
/* 8048ABC0  EC 00 08 28 */	fsubs f0, f0, f1
/* 8048ABC4  EC 02 00 32 */	fmuls f0, f2, f0
/* 8048ABC8  EC 03 00 2A */	fadds f0, f3, f0
/* 8048ABCC  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 8048ABD0  48 00 00 1C */	b lbl_8048ABEC
lbl_8048ABD4:
/* 8048ABD4  C0 5E 05 54 */	lfs f2, 0x554(r30)
/* 8048ABD8  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8048ABDC  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 8048ABE0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8048ABE4  EC 02 00 2A */	fadds f0, f2, f0
/* 8048ABE8  D0 1E 05 54 */	stfs f0, 0x554(r30)
lbl_8048ABEC:
/* 8048ABEC  C0 1E 05 50 */	lfs f0, 0x550(r30)
/* 8048ABF0  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 8048ABF4  C0 1E 05 54 */	lfs f0, 0x554(r30)
/* 8048ABF8  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 8048ABFC  C0 1E 05 58 */	lfs f0, 0x558(r30)
/* 8048AC00  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 8048AC04  38 60 00 04 */	li r3, 4
/* 8048AC08  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8048AC0C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8048AC10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048AC14  7C 08 03 A6 */	mtlr r0
/* 8048AC18  38 21 00 20 */	addi r1, r1, 0x20
/* 8048AC1C  4E 80 00 20 */	blr 
