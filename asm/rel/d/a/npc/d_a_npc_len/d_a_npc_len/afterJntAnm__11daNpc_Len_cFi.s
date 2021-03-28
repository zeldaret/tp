lbl_80A6516C:
/* 80A6516C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A65170  7C 08 02 A6 */	mflr r0
/* 80A65174  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A65178  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A6517C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A65180  7C 7E 1B 78 */	mr r30, r3
/* 80A65184  7C 9F 23 78 */	mr r31, r4
/* 80A65188  2C 1F 00 01 */	cmpwi r31, 1
/* 80A6518C  40 82 00 30 */	bne lbl_80A651BC
/* 80A65190  A8 9E 0D 12 */	lha r4, 0xd12(r30)
/* 80A65194  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A65198  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A6519C  4B 5A 72 98 */	b mDoMtx_YrotM__FPA4_fs
/* 80A651A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A651A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A651A8  A8 1E 0D 0E */	lha r0, 0xd0e(r30)
/* 80A651AC  7C 00 00 D0 */	neg r0, r0
/* 80A651B0  7C 04 07 34 */	extsh r4, r0
/* 80A651B4  4B 5A 73 18 */	b mDoMtx_ZrotM__FPA4_fs
/* 80A651B8  48 00 00 2C */	b lbl_80A651E4
lbl_80A651BC:
/* 80A651BC  2C 1F 00 04 */	cmpwi r31, 4
/* 80A651C0  40 82 00 24 */	bne lbl_80A651E4
/* 80A651C4  A8 9E 0D 0C */	lha r4, 0xd0c(r30)
/* 80A651C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A651CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A651D0  4B 5A 72 64 */	b mDoMtx_YrotM__FPA4_fs
/* 80A651D4  A8 9E 0D 08 */	lha r4, 0xd08(r30)
/* 80A651D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A651DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A651E0  4B 5A 72 EC */	b mDoMtx_ZrotM__FPA4_fs
lbl_80A651E4:
/* 80A651E4  2C 1F 00 06 */	cmpwi r31, 6
/* 80A651E8  40 82 00 78 */	bne lbl_80A65260
/* 80A651EC  C0 3E 0C A8 */	lfs f1, 0xca8(r30)
/* 80A651F0  C0 7E 0C 90 */	lfs f3, 0xc90(r30)
/* 80A651F4  3C 60 80 A7 */	lis r3, lit_4388@ha
/* 80A651F8  C0 43 8F 80 */	lfs f2, lit_4388@l(r3)
/* 80A651FC  C0 1E 0C F0 */	lfs f0, 0xcf0(r30)
/* 80A65200  EC 02 00 28 */	fsubs f0, f2, f0
/* 80A65204  EC 03 00 32 */	fmuls f0, f3, f0
/* 80A65208  EC 21 00 2A */	fadds f1, f1, f0
/* 80A6520C  4B 80 23 D8 */	b cM_rad2s__Ff
/* 80A65210  7C 60 1B 78 */	mr r0, r3
/* 80A65214  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A65218  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A6521C  3C 80 80 A7 */	lis r4, lit_4585@ha
/* 80A65220  C0 44 8F 88 */	lfs f2, lit_4585@l(r4)
/* 80A65224  7C 00 07 34 */	extsh r0, r0
/* 80A65228  7C 00 00 D0 */	neg r0, r0
/* 80A6522C  3C 80 80 A7 */	lis r4, lit_4587@ha
/* 80A65230  C8 24 8F 8C */	lfd f1, lit_4587@l(r4)
/* 80A65234  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A65238  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A6523C  3C 00 43 30 */	lis r0, 0x4330
/* 80A65240  90 01 00 08 */	stw r0, 8(r1)
/* 80A65244  C8 01 00 08 */	lfd f0, 8(r1)
/* 80A65248  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A6524C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A65250  FC 00 00 1E */	fctiwz f0, f0
/* 80A65254  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A65258  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80A6525C  4B 5A 71 D8 */	b mDoMtx_YrotM__FPA4_fs
lbl_80A65260:
/* 80A65260  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A65264  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A65268  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A6526C  7C 08 03 A6 */	mtlr r0
/* 80A65270  38 21 00 20 */	addi r1, r1, 0x20
/* 80A65274  4E 80 00 20 */	blr 
