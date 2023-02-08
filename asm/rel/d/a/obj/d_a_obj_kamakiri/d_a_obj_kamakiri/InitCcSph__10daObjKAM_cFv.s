lbl_80C351BC:
/* 80C351BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C351C0  7C 08 02 A6 */	mflr r0
/* 80C351C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C351C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C351CC  7C 7F 1B 78 */	mr r31, r3
/* 80C351D0  38 7F 05 90 */	addi r3, r31, 0x590
/* 80C351D4  38 80 00 01 */	li r4, 1
/* 80C351D8  38 A0 00 00 */	li r5, 0
/* 80C351DC  7F E6 FB 78 */	mr r6, r31
/* 80C351E0  4B 44 E6 81 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C351E4  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 80C351E8  3C 80 80 C4 */	lis r4, ccSphSrc@ha /* 0x80C38410@ha */
/* 80C351EC  38 84 84 10 */	addi r4, r4, ccSphSrc@l /* 0x80C38410@l */
/* 80C351F0  4B 44 F8 45 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80C351F4  38 1F 05 90 */	addi r0, r31, 0x590
/* 80C351F8  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80C351FC  38 7F 06 F0 */	addi r3, r31, 0x6f0
/* 80C35200  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C35204  4B 63 A4 45 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80C35208  80 1F 06 68 */	lwz r0, 0x668(r31)
/* 80C3520C  60 00 00 04 */	ori r0, r0, 4
/* 80C35210  90 1F 06 68 */	stw r0, 0x668(r31)
/* 80C35214  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C35218  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3521C  7C 08 03 A6 */	mtlr r0
/* 80C35220  38 21 00 10 */	addi r1, r1, 0x10
/* 80C35224  4E 80 00 20 */	blr 
