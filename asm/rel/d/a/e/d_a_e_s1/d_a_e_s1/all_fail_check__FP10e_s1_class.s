lbl_8077C9D8:
/* 8077C9D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8077C9DC  7C 08 02 A6 */	mflr r0
/* 8077C9E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8077C9E4  7C 64 1B 78 */	mr r4, r3
/* 8077C9E8  3C 60 80 78 */	lis r3, s_fail_sub__FPvPv@ha /* 0x8077C938@ha */
/* 8077C9EC  38 63 C9 38 */	addi r3, r3, s_fail_sub__FPvPv@l /* 0x8077C938@l */
/* 8077C9F0  4B 8A 49 49 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 8077C9F4  7C 60 00 34 */	cntlzw r0, r3
/* 8077C9F8  54 03 D9 7E */	srwi r3, r0, 5
/* 8077C9FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8077CA00  7C 08 03 A6 */	mtlr r0
/* 8077CA04  38 21 00 10 */	addi r1, r1, 0x10
/* 8077CA08  4E 80 00 20 */	blr 
