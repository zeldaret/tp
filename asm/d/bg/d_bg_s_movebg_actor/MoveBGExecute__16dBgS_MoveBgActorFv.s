lbl_80078950:
/* 80078950  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80078954  7C 08 02 A6 */	mflr r0
/* 80078958  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007895C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80078960  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80078964  7C 7E 1B 78 */	mr r30, r3
/* 80078968  38 00 00 00 */	li r0, 0
/* 8007896C  90 01 00 08 */	stw r0, 8(r1)
/* 80078970  38 81 00 08 */	addi r4, r1, 8
/* 80078974  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80078978  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 8007897C  7D 89 03 A6 */	mtctr r12
/* 80078980  4E 80 04 21 */	bctrl 
/* 80078984  7C 7F 1B 78 */	mr r31, r3
/* 80078988  80 61 00 08 */	lwz r3, 8(r1)
/* 8007898C  28 03 00 00 */	cmplwi r3, 0
/* 80078990  40 82 00 50 */	bne lbl_800789E0
/* 80078994  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80078998  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8007899C  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 800789A0  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 800789A4  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 800789A8  48 2C DF 41 */	bl PSMTXTrans
/* 800789AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800789B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800789B4  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 800789B8  4B F9 3A 7D */	bl mDoMtx_YrotM__FPA4_fs
/* 800789BC  C0 3E 04 EC */	lfs f1, 0x4ec(r30)
/* 800789C0  C0 5E 04 F0 */	lfs f2, 0x4f0(r30)
/* 800789C4  C0 7E 04 F4 */	lfs f3, 0x4f4(r30)
/* 800789C8  4B F9 44 71 */	bl scaleM__14mDoMtx_stack_cFfff
/* 800789CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800789D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800789D4  38 9E 05 6C */	addi r4, r30, 0x56c
/* 800789D8  48 2C DA D9 */	bl PSMTXCopy
/* 800789DC  48 00 00 0C */	b lbl_800789E8
lbl_800789E0:
/* 800789E0  38 9E 05 6C */	addi r4, r30, 0x56c
/* 800789E4  48 2C DA CD */	bl PSMTXCopy
lbl_800789E8:
/* 800789E8  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 800789EC  28 03 00 00 */	cmplwi r3, 0
/* 800789F0  41 82 00 08 */	beq lbl_800789F8
/* 800789F4  48 00 2F CD */	bl Move__4dBgWFv
lbl_800789F8:
/* 800789F8  7F E3 FB 78 */	mr r3, r31
/* 800789FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80078A00  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80078A04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80078A08  7C 08 03 A6 */	mtlr r0
/* 80078A0C  38 21 00 20 */	addi r1, r1, 0x20
/* 80078A10  4E 80 00 20 */	blr 
