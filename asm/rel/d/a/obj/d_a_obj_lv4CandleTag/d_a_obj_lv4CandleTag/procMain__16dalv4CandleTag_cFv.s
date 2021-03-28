lbl_80C5D618:
/* 80C5D618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5D61C  7C 08 02 A6 */	mflr r0
/* 80C5D620  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5D624  3C 80 80 C6 */	lis r4, cNullVec__6Z2Calc@ha
/* 80C5D628  38 E4 DB 64 */	addi r7, r4, cNullVec__6Z2Calc@l
/* 80C5D62C  3C 80 80 C6 */	lis r4, data_80C5DCAC@ha
/* 80C5D630  38 C4 DC AC */	addi r6, r4, data_80C5DCAC@l
/* 80C5D634  88 06 00 00 */	lbz r0, 0(r6)
/* 80C5D638  7C 00 07 75 */	extsb. r0, r0
/* 80C5D63C  40 82 00 70 */	bne lbl_80C5D6AC
/* 80C5D640  80 87 00 20 */	lwz r4, 0x20(r7)
/* 80C5D644  80 07 00 24 */	lwz r0, 0x24(r7)
/* 80C5D648  90 87 00 50 */	stw r4, 0x50(r7)
/* 80C5D64C  90 07 00 54 */	stw r0, 0x54(r7)
/* 80C5D650  80 07 00 28 */	lwz r0, 0x28(r7)
/* 80C5D654  90 07 00 58 */	stw r0, 0x58(r7)
/* 80C5D658  38 A7 00 50 */	addi r5, r7, 0x50
/* 80C5D65C  80 87 00 2C */	lwz r4, 0x2c(r7)
/* 80C5D660  80 07 00 30 */	lwz r0, 0x30(r7)
/* 80C5D664  90 85 00 0C */	stw r4, 0xc(r5)
/* 80C5D668  90 05 00 10 */	stw r0, 0x10(r5)
/* 80C5D66C  80 07 00 34 */	lwz r0, 0x34(r7)
/* 80C5D670  90 05 00 14 */	stw r0, 0x14(r5)
/* 80C5D674  80 87 00 38 */	lwz r4, 0x38(r7)
/* 80C5D678  80 07 00 3C */	lwz r0, 0x3c(r7)
/* 80C5D67C  90 85 00 18 */	stw r4, 0x18(r5)
/* 80C5D680  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80C5D684  80 07 00 40 */	lwz r0, 0x40(r7)
/* 80C5D688  90 05 00 20 */	stw r0, 0x20(r5)
/* 80C5D68C  80 87 00 44 */	lwz r4, 0x44(r7)
/* 80C5D690  80 07 00 48 */	lwz r0, 0x48(r7)
/* 80C5D694  90 85 00 24 */	stw r4, 0x24(r5)
/* 80C5D698  90 05 00 28 */	stw r0, 0x28(r5)
/* 80C5D69C  80 07 00 4C */	lwz r0, 0x4c(r7)
/* 80C5D6A0  90 05 00 2C */	stw r0, 0x2c(r5)
/* 80C5D6A4  38 00 00 01 */	li r0, 1
/* 80C5D6A8  98 06 00 00 */	stb r0, 0(r6)
lbl_80C5D6AC:
/* 80C5D6AC  88 03 05 84 */	lbz r0, 0x584(r3)
/* 80C5D6B0  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C5D6B4  39 87 00 50 */	addi r12, r7, 0x50
/* 80C5D6B8  7D 8C 02 14 */	add r12, r12, r0
/* 80C5D6BC  4B 70 49 C8 */	b __ptmf_scall
/* 80C5D6C0  60 00 00 00 */	nop 
/* 80C5D6C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5D6C8  7C 08 03 A6 */	mtlr r0
/* 80C5D6CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5D6D0  4E 80 00 20 */	blr 
