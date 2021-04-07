lbl_80CAA290:
/* 80CAA290  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAA294  7C 08 02 A6 */	mflr r0
/* 80CAA298  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAA29C  3C 80 80 CB */	lis r4, cNullVec__6Z2Calc@ha /* 0x80CAAB4C@ha */
/* 80CAA2A0  38 E4 AB 4C */	addi r7, r4, cNullVec__6Z2Calc@l /* 0x80CAAB4C@l */
/* 80CAA2A4  3C 80 80 CB */	lis r4, data_80CAAC30@ha /* 0x80CAAC30@ha */
/* 80CAA2A8  38 C4 AC 30 */	addi r6, r4, data_80CAAC30@l /* 0x80CAAC30@l */
/* 80CAA2AC  88 06 00 00 */	lbz r0, 0(r6)
/* 80CAA2B0  7C 00 07 75 */	extsb. r0, r0
/* 80CAA2B4  40 82 00 40 */	bne lbl_80CAA2F4
/* 80CAA2B8  80 87 00 3C */	lwz r4, 0x3c(r7)
/* 80CAA2BC  80 07 00 40 */	lwz r0, 0x40(r7)
/* 80CAA2C0  90 87 00 54 */	stw r4, 0x54(r7)
/* 80CAA2C4  90 07 00 58 */	stw r0, 0x58(r7)
/* 80CAA2C8  80 07 00 44 */	lwz r0, 0x44(r7)
/* 80CAA2CC  90 07 00 5C */	stw r0, 0x5c(r7)
/* 80CAA2D0  38 A7 00 54 */	addi r5, r7, 0x54
/* 80CAA2D4  80 87 00 48 */	lwz r4, 0x48(r7)
/* 80CAA2D8  80 07 00 4C */	lwz r0, 0x4c(r7)
/* 80CAA2DC  90 85 00 0C */	stw r4, 0xc(r5)
/* 80CAA2E0  90 05 00 10 */	stw r0, 0x10(r5)
/* 80CAA2E4  80 07 00 50 */	lwz r0, 0x50(r7)
/* 80CAA2E8  90 05 00 14 */	stw r0, 0x14(r5)
/* 80CAA2EC  38 00 00 01 */	li r0, 1
/* 80CAA2F0  98 06 00 00 */	stb r0, 0(r6)
lbl_80CAA2F4:
/* 80CAA2F4  88 03 05 AD */	lbz r0, 0x5ad(r3)
/* 80CAA2F8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80CAA2FC  39 87 00 54 */	addi r12, r7, 0x54
/* 80CAA300  7D 8C 02 14 */	add r12, r12, r0
/* 80CAA304  4B 6B 7D 81 */	bl __ptmf_scall
/* 80CAA308  60 00 00 00 */	nop 
/* 80CAA30C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAA310  7C 08 03 A6 */	mtlr r0
/* 80CAA314  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAA318  4E 80 00 20 */	blr 
