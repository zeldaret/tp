lbl_80C9D4D8:
/* 80C9D4D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9D4DC  7C 08 02 A6 */	mflr r0
/* 80C9D4E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9D4E4  3C 80 80 CA */	lis r4, cNullVec__6Z2Calc@ha /* 0x80C9E920@ha */
/* 80C9D4E8  38 E4 E9 20 */	addi r7, r4, cNullVec__6Z2Calc@l /* 0x80C9E920@l */
/* 80C9D4EC  3C 80 80 CA */	lis r4, struct_80C9EAA8+0x1@ha /* 0x80C9EAA9@ha */
/* 80C9D4F0  38 C4 EA A9 */	addi r6, r4, struct_80C9EAA8+0x1@l /* 0x80C9EAA9@l */
/* 80C9D4F4  88 06 00 00 */	lbz r0, 0(r6)
/* 80C9D4F8  7C 00 07 75 */	extsb. r0, r0
/* 80C9D4FC  40 82 00 70 */	bne lbl_80C9D56C
/* 80C9D500  80 87 00 88 */	lwz r4, 0x88(r7)
/* 80C9D504  80 07 00 8C */	lwz r0, 0x8c(r7)
/* 80C9D508  90 87 00 B8 */	stw r4, 0xb8(r7)
/* 80C9D50C  90 07 00 BC */	stw r0, 0xbc(r7)
/* 80C9D510  80 07 00 90 */	lwz r0, 0x90(r7)
/* 80C9D514  90 07 00 C0 */	stw r0, 0xc0(r7)
/* 80C9D518  38 A7 00 B8 */	addi r5, r7, 0xb8
/* 80C9D51C  80 87 00 94 */	lwz r4, 0x94(r7)
/* 80C9D520  80 07 00 98 */	lwz r0, 0x98(r7)
/* 80C9D524  90 85 00 0C */	stw r4, 0xc(r5)
/* 80C9D528  90 05 00 10 */	stw r0, 0x10(r5)
/* 80C9D52C  80 07 00 9C */	lwz r0, 0x9c(r7)
/* 80C9D530  90 05 00 14 */	stw r0, 0x14(r5)
/* 80C9D534  80 87 00 A0 */	lwz r4, 0xa0(r7)
/* 80C9D538  80 07 00 A4 */	lwz r0, 0xa4(r7)
/* 80C9D53C  90 85 00 18 */	stw r4, 0x18(r5)
/* 80C9D540  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80C9D544  80 07 00 A8 */	lwz r0, 0xa8(r7)
/* 80C9D548  90 05 00 20 */	stw r0, 0x20(r5)
/* 80C9D54C  80 87 00 AC */	lwz r4, 0xac(r7)
/* 80C9D550  80 07 00 B0 */	lwz r0, 0xb0(r7)
/* 80C9D554  90 85 00 24 */	stw r4, 0x24(r5)
/* 80C9D558  90 05 00 28 */	stw r0, 0x28(r5)
/* 80C9D55C  80 07 00 B4 */	lwz r0, 0xb4(r7)
/* 80C9D560  90 05 00 2C */	stw r0, 0x2c(r5)
/* 80C9D564  38 00 00 01 */	li r0, 1
/* 80C9D568  98 06 00 00 */	stb r0, 0(r6)
lbl_80C9D56C:
/* 80C9D56C  88 03 06 3E */	lbz r0, 0x63e(r3)
/* 80C9D570  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C9D574  39 87 00 B8 */	addi r12, r7, 0xb8
/* 80C9D578  7D 8C 02 14 */	add r12, r12, r0
/* 80C9D57C  4B 6C 4B 09 */	bl __ptmf_scall
/* 80C9D580  60 00 00 00 */	nop 
/* 80C9D584  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9D588  7C 08 03 A6 */	mtlr r0
/* 80C9D58C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9D590  4E 80 00 20 */	blr 
