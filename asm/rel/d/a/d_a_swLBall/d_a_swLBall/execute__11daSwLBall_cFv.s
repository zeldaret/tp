lbl_80D4EF60:
/* 80D4EF60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4EF64  7C 08 02 A6 */	mflr r0
/* 80D4EF68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4EF6C  3C 80 80 D5 */	lis r4, cNullVec__6Z2Calc@ha
/* 80D4EF70  38 E4 F4 E4 */	addi r7, r4, cNullVec__6Z2Calc@l
/* 80D4EF74  3C 80 80 D5 */	lis r4, data_80D4F5AC@ha
/* 80D4EF78  38 C4 F5 AC */	addi r6, r4, data_80D4F5AC@l
/* 80D4EF7C  88 06 00 00 */	lbz r0, 0(r6)
/* 80D4EF80  7C 00 07 75 */	extsb. r0, r0
/* 80D4EF84  40 82 00 58 */	bne lbl_80D4EFDC
/* 80D4EF88  80 87 00 20 */	lwz r4, 0x20(r7)
/* 80D4EF8C  80 07 00 24 */	lwz r0, 0x24(r7)
/* 80D4EF90  90 87 00 44 */	stw r4, 0x44(r7)
/* 80D4EF94  90 07 00 48 */	stw r0, 0x48(r7)
/* 80D4EF98  80 07 00 28 */	lwz r0, 0x28(r7)
/* 80D4EF9C  90 07 00 4C */	stw r0, 0x4c(r7)
/* 80D4EFA0  38 A7 00 44 */	addi r5, r7, 0x44
/* 80D4EFA4  80 87 00 2C */	lwz r4, 0x2c(r7)
/* 80D4EFA8  80 07 00 30 */	lwz r0, 0x30(r7)
/* 80D4EFAC  90 85 00 0C */	stw r4, 0xc(r5)
/* 80D4EFB0  90 05 00 10 */	stw r0, 0x10(r5)
/* 80D4EFB4  80 07 00 34 */	lwz r0, 0x34(r7)
/* 80D4EFB8  90 05 00 14 */	stw r0, 0x14(r5)
/* 80D4EFBC  80 87 00 38 */	lwz r4, 0x38(r7)
/* 80D4EFC0  80 07 00 3C */	lwz r0, 0x3c(r7)
/* 80D4EFC4  90 85 00 18 */	stw r4, 0x18(r5)
/* 80D4EFC8  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80D4EFCC  80 07 00 40 */	lwz r0, 0x40(r7)
/* 80D4EFD0  90 05 00 20 */	stw r0, 0x20(r5)
/* 80D4EFD4  38 00 00 01 */	li r0, 1
/* 80D4EFD8  98 06 00 00 */	stb r0, 0(r6)
lbl_80D4EFDC:
/* 80D4EFDC  88 03 05 71 */	lbz r0, 0x571(r3)
/* 80D4EFE0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80D4EFE4  39 87 00 44 */	addi r12, r7, 0x44
/* 80D4EFE8  7D 8C 02 14 */	add r12, r12, r0
/* 80D4EFEC  4B 61 30 98 */	b __ptmf_scall
/* 80D4EFF0  60 00 00 00 */	nop 
/* 80D4EFF4  38 60 00 01 */	li r3, 1
/* 80D4EFF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4EFFC  7C 08 03 A6 */	mtlr r0
/* 80D4F000  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4F004  4E 80 00 20 */	blr 
