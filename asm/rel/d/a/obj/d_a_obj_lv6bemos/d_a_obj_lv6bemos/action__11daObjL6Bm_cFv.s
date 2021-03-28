lbl_80C7D4F4:
/* 80C7D4F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7D4F8  7C 08 02 A6 */	mflr r0
/* 80C7D4FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7D500  3C 80 80 C8 */	lis r4, cNullVec__6Z2Calc@ha
/* 80C7D504  38 E4 DF 78 */	addi r7, r4, cNullVec__6Z2Calc@l
/* 80C7D508  3C 80 80 C8 */	lis r4, data_80C7E138@ha
/* 80C7D50C  38 C4 E1 38 */	addi r6, r4, data_80C7E138@l
/* 80C7D510  88 06 00 00 */	lbz r0, 0(r6)
/* 80C7D514  7C 00 07 75 */	extsb. r0, r0
/* 80C7D518  40 82 00 58 */	bne lbl_80C7D570
/* 80C7D51C  80 87 00 88 */	lwz r4, 0x88(r7)
/* 80C7D520  80 07 00 8C */	lwz r0, 0x8c(r7)
/* 80C7D524  90 87 00 AC */	stw r4, 0xac(r7)
/* 80C7D528  90 07 00 B0 */	stw r0, 0xb0(r7)
/* 80C7D52C  80 07 00 90 */	lwz r0, 0x90(r7)
/* 80C7D530  90 07 00 B4 */	stw r0, 0xb4(r7)
/* 80C7D534  38 A7 00 AC */	addi r5, r7, 0xac
/* 80C7D538  80 87 00 94 */	lwz r4, 0x94(r7)
/* 80C7D53C  80 07 00 98 */	lwz r0, 0x98(r7)
/* 80C7D540  90 85 00 0C */	stw r4, 0xc(r5)
/* 80C7D544  90 05 00 10 */	stw r0, 0x10(r5)
/* 80C7D548  80 07 00 9C */	lwz r0, 0x9c(r7)
/* 80C7D54C  90 05 00 14 */	stw r0, 0x14(r5)
/* 80C7D550  80 87 00 A0 */	lwz r4, 0xa0(r7)
/* 80C7D554  80 07 00 A4 */	lwz r0, 0xa4(r7)
/* 80C7D558  90 85 00 18 */	stw r4, 0x18(r5)
/* 80C7D55C  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80C7D560  80 07 00 A8 */	lwz r0, 0xa8(r7)
/* 80C7D564  90 05 00 20 */	stw r0, 0x20(r5)
/* 80C7D568  38 00 00 01 */	li r0, 1
/* 80C7D56C  98 06 00 00 */	stb r0, 0(r6)
lbl_80C7D570:
/* 80C7D570  88 03 09 10 */	lbz r0, 0x910(r3)
/* 80C7D574  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C7D578  39 87 00 AC */	addi r12, r7, 0xac
/* 80C7D57C  7D 8C 02 14 */	add r12, r12, r0
/* 80C7D580  4B 6E 4B 04 */	b __ptmf_scall
/* 80C7D584  60 00 00 00 */	nop 
/* 80C7D588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7D58C  7C 08 03 A6 */	mtlr r0
/* 80C7D590  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7D594  4E 80 00 20 */	blr 
