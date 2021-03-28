lbl_80C4A21C:
/* 80C4A21C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4A220  7C 08 02 A6 */	mflr r0
/* 80C4A224  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4A228  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4A22C  7C 7F 1B 78 */	mr r31, r3
/* 80C4A230  38 7F 05 90 */	addi r3, r31, 0x590
/* 80C4A234  38 80 00 01 */	li r4, 1
/* 80C4A238  38 A0 00 00 */	li r5, 0
/* 80C4A23C  7F E6 FB 78 */	mr r6, r31
/* 80C4A240  4B 43 96 20 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C4A244  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 80C4A248  3C 80 80 C5 */	lis r4, ccSphSrc@ha
/* 80C4A24C  38 84 D4 98 */	addi r4, r4, ccSphSrc@l
/* 80C4A250  4B 43 A7 E4 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80C4A254  38 1F 05 90 */	addi r0, r31, 0x590
/* 80C4A258  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80C4A25C  38 7F 06 F0 */	addi r3, r31, 0x6f0
/* 80C4A260  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C4A264  4B 62 53 E4 */	b SetC__8cM3dGSphFRC4cXyz
/* 80C4A268  80 1F 06 68 */	lwz r0, 0x668(r31)
/* 80C4A26C  60 00 00 04 */	ori r0, r0, 4
/* 80C4A270  90 1F 06 68 */	stw r0, 0x668(r31)
/* 80C4A274  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4A278  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4A27C  7C 08 03 A6 */	mtlr r0
/* 80C4A280  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4A284  4E 80 00 20 */	blr 
