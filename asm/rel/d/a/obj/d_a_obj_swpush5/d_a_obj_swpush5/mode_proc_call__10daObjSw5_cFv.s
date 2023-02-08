lbl_8059BFE4:
/* 8059BFE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059BFE8  7C 08 02 A6 */	mflr r0
/* 8059BFEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059BFF0  3C 80 80 5A */	lis r4, cNullVec__6Z2Calc@ha /* 0x8059C6DC@ha */
/* 8059BFF4  38 E4 C6 DC */	addi r7, r4, cNullVec__6Z2Calc@l /* 0x8059C6DC@l */
/* 8059BFF8  3C 80 80 5A */	lis r4, struct_8059C914+0x1@ha /* 0x8059C915@ha */
/* 8059BFFC  38 C4 C9 15 */	addi r6, r4, struct_8059C914+0x1@l /* 0x8059C915@l */
/* 8059C000  88 06 00 00 */	lbz r0, 0(r6)
/* 8059C004  7C 00 07 75 */	extsb. r0, r0
/* 8059C008  40 82 00 70 */	bne lbl_8059C078
/* 8059C00C  80 87 00 B4 */	lwz r4, 0xb4(r7)
/* 8059C010  80 07 00 B8 */	lwz r0, 0xb8(r7)
/* 8059C014  90 87 00 E4 */	stw r4, 0xe4(r7)
/* 8059C018  90 07 00 E8 */	stw r0, 0xe8(r7)
/* 8059C01C  80 07 00 BC */	lwz r0, 0xbc(r7)
/* 8059C020  90 07 00 EC */	stw r0, 0xec(r7)
/* 8059C024  38 A7 00 E4 */	addi r5, r7, 0xe4
/* 8059C028  80 87 00 C0 */	lwz r4, 0xc0(r7)
/* 8059C02C  80 07 00 C4 */	lwz r0, 0xc4(r7)
/* 8059C030  90 85 00 0C */	stw r4, 0xc(r5)
/* 8059C034  90 05 00 10 */	stw r0, 0x10(r5)
/* 8059C038  80 07 00 C8 */	lwz r0, 0xc8(r7)
/* 8059C03C  90 05 00 14 */	stw r0, 0x14(r5)
/* 8059C040  80 87 00 CC */	lwz r4, 0xcc(r7)
/* 8059C044  80 07 00 D0 */	lwz r0, 0xd0(r7)
/* 8059C048  90 85 00 18 */	stw r4, 0x18(r5)
/* 8059C04C  90 05 00 1C */	stw r0, 0x1c(r5)
/* 8059C050  80 07 00 D4 */	lwz r0, 0xd4(r7)
/* 8059C054  90 05 00 20 */	stw r0, 0x20(r5)
/* 8059C058  80 87 00 D8 */	lwz r4, 0xd8(r7)
/* 8059C05C  80 07 00 DC */	lwz r0, 0xdc(r7)
/* 8059C060  90 85 00 24 */	stw r4, 0x24(r5)
/* 8059C064  90 05 00 28 */	stw r0, 0x28(r5)
/* 8059C068  80 07 00 E0 */	lwz r0, 0xe0(r7)
/* 8059C06C  90 05 00 2C */	stw r0, 0x2c(r5)
/* 8059C070  38 00 00 01 */	li r0, 1
/* 8059C074  98 06 00 00 */	stb r0, 0(r6)
lbl_8059C078:
/* 8059C078  88 03 05 EE */	lbz r0, 0x5ee(r3)
/* 8059C07C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8059C080  39 87 00 E4 */	addi r12, r7, 0xe4
/* 8059C084  7D 8C 02 14 */	add r12, r12, r0
/* 8059C088  4B DC 5F FD */	bl __ptmf_scall
/* 8059C08C  60 00 00 00 */	nop 
/* 8059C090  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059C094  7C 08 03 A6 */	mtlr r0
/* 8059C098  38 21 00 10 */	addi r1, r1, 0x10
/* 8059C09C  4E 80 00 20 */	blr 
