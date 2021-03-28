lbl_80C1EB38:
/* 80C1EB38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1EB3C  7C 08 02 A6 */	mflr r0
/* 80C1EB40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1EB44  3C 80 80 C2 */	lis r4, cNullVec__6Z2Calc@ha
/* 80C1EB48  38 E4 EE A4 */	addi r7, r4, cNullVec__6Z2Calc@l
/* 80C1EB4C  3C 80 80 C2 */	lis r4, struct_80C1F1D8+0x102@ha
/* 80C1EB50  38 C4 F2 DA */	addi r6, r4, struct_80C1F1D8+0x102@l
/* 80C1EB54  88 06 00 00 */	lbz r0, 0(r6)
/* 80C1EB58  7C 00 07 75 */	extsb. r0, r0
/* 80C1EB5C  40 82 00 58 */	bne lbl_80C1EBB4
/* 80C1EB60  80 87 00 24 */	lwz r4, 0x24(r7)
/* 80C1EB64  80 07 00 28 */	lwz r0, 0x28(r7)
/* 80C1EB68  90 87 00 48 */	stw r4, 0x48(r7)
/* 80C1EB6C  90 07 00 4C */	stw r0, 0x4c(r7)
/* 80C1EB70  80 07 00 2C */	lwz r0, 0x2c(r7)
/* 80C1EB74  90 07 00 50 */	stw r0, 0x50(r7)
/* 80C1EB78  38 A7 00 48 */	addi r5, r7, 0x48
/* 80C1EB7C  80 87 00 30 */	lwz r4, 0x30(r7)
/* 80C1EB80  80 07 00 34 */	lwz r0, 0x34(r7)
/* 80C1EB84  90 85 00 0C */	stw r4, 0xc(r5)
/* 80C1EB88  90 05 00 10 */	stw r0, 0x10(r5)
/* 80C1EB8C  80 07 00 38 */	lwz r0, 0x38(r7)
/* 80C1EB90  90 05 00 14 */	stw r0, 0x14(r5)
/* 80C1EB94  80 87 00 3C */	lwz r4, 0x3c(r7)
/* 80C1EB98  80 07 00 40 */	lwz r0, 0x40(r7)
/* 80C1EB9C  90 85 00 18 */	stw r4, 0x18(r5)
/* 80C1EBA0  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80C1EBA4  80 07 00 44 */	lwz r0, 0x44(r7)
/* 80C1EBA8  90 05 00 20 */	stw r0, 0x20(r5)
/* 80C1EBAC  38 00 00 01 */	li r0, 1
/* 80C1EBB0  98 06 00 00 */	stb r0, 0(r6)
lbl_80C1EBB4:
/* 80C1EBB4  88 03 05 BE */	lbz r0, 0x5be(r3)
/* 80C1EBB8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C1EBBC  39 87 00 48 */	addi r12, r7, 0x48
/* 80C1EBC0  7D 8C 02 14 */	add r12, r12, r0
/* 80C1EBC4  4B 74 34 C0 */	b __ptmf_scall
/* 80C1EBC8  60 00 00 00 */	nop 
/* 80C1EBCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1EBD0  7C 08 03 A6 */	mtlr r0
/* 80C1EBD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1EBD8  4E 80 00 20 */	blr 
