lbl_80CBBB60:
/* 80CBBB60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBBB64  7C 08 02 A6 */	mflr r0
/* 80CBBB68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBBB6C  3C 80 80 CC */	lis r4, cNullVec__6Z2Calc@ha
/* 80CBBB70  38 E4 C4 A0 */	addi r7, r4, cNullVec__6Z2Calc@l
/* 80CBBB74  3C 80 80 CC */	lis r4, struct_80CBC5CC+0x1@ha
/* 80CBBB78  38 C4 C5 CD */	addi r6, r4, struct_80CBC5CC+0x1@l
/* 80CBBB7C  88 06 00 00 */	lbz r0, 0(r6)
/* 80CBBB80  7C 00 07 75 */	extsb. r0, r0
/* 80CBBB84  40 82 00 58 */	bne lbl_80CBBBDC
/* 80CBBB88  80 87 00 24 */	lwz r4, 0x24(r7)
/* 80CBBB8C  80 07 00 28 */	lwz r0, 0x28(r7)
/* 80CBBB90  90 87 00 48 */	stw r4, 0x48(r7)
/* 80CBBB94  90 07 00 4C */	stw r0, 0x4c(r7)
/* 80CBBB98  80 07 00 2C */	lwz r0, 0x2c(r7)
/* 80CBBB9C  90 07 00 50 */	stw r0, 0x50(r7)
/* 80CBBBA0  38 A7 00 48 */	addi r5, r7, 0x48
/* 80CBBBA4  80 87 00 30 */	lwz r4, 0x30(r7)
/* 80CBBBA8  80 07 00 34 */	lwz r0, 0x34(r7)
/* 80CBBBAC  90 85 00 0C */	stw r4, 0xc(r5)
/* 80CBBBB0  90 05 00 10 */	stw r0, 0x10(r5)
/* 80CBBBB4  80 07 00 38 */	lwz r0, 0x38(r7)
/* 80CBBBB8  90 05 00 14 */	stw r0, 0x14(r5)
/* 80CBBBBC  80 87 00 3C */	lwz r4, 0x3c(r7)
/* 80CBBBC0  80 07 00 40 */	lwz r0, 0x40(r7)
/* 80CBBBC4  90 85 00 18 */	stw r4, 0x18(r5)
/* 80CBBBC8  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80CBBBCC  80 07 00 44 */	lwz r0, 0x44(r7)
/* 80CBBBD0  90 05 00 20 */	stw r0, 0x20(r5)
/* 80CBBBD4  38 00 00 01 */	li r0, 1
/* 80CBBBD8  98 06 00 00 */	stb r0, 0(r6)
lbl_80CBBBDC:
/* 80CBBBDC  88 03 0B A0 */	lbz r0, 0xba0(r3)
/* 80CBBBE0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80CBBBE4  39 87 00 48 */	addi r12, r7, 0x48
/* 80CBBBE8  7D 8C 02 14 */	add r12, r12, r0
/* 80CBBBEC  4B 6A 64 98 */	b __ptmf_scall
/* 80CBBBF0  60 00 00 00 */	nop 
/* 80CBBBF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBBBF8  7C 08 03 A6 */	mtlr r0
/* 80CBBBFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBBC00  4E 80 00 20 */	blr 
