lbl_80BDA5B4:
/* 80BDA5B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDA5B8  7C 08 02 A6 */	mflr r0
/* 80BDA5BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDA5C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDA5C4  7C 7F 1B 78 */	mr r31, r3
/* 80BDA5C8  38 7F 05 90 */	addi r3, r31, 0x590
/* 80BDA5CC  38 80 00 01 */	li r4, 1
/* 80BDA5D0  38 A0 00 00 */	li r5, 0
/* 80BDA5D4  7F E6 FB 78 */	mr r6, r31
/* 80BDA5D8  4B 4A 92 89 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BDA5DC  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 80BDA5E0  3C 80 80 BE */	lis r4, ccSphSrc@ha /* 0x80BDC3B4@ha */
/* 80BDA5E4  38 84 C3 B4 */	addi r4, r4, ccSphSrc@l /* 0x80BDC3B4@l */
/* 80BDA5E8  4B 4A A4 4D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80BDA5EC  38 1F 05 90 */	addi r0, r31, 0x590
/* 80BDA5F0  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80BDA5F4  38 7F 06 F0 */	addi r3, r31, 0x6f0
/* 80BDA5F8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80BDA5FC  4B 69 50 4D */	bl SetC__8cM3dGSphFRC4cXyz
/* 80BDA600  80 1F 06 68 */	lwz r0, 0x668(r31)
/* 80BDA604  60 00 00 04 */	ori r0, r0, 4
/* 80BDA608  90 1F 06 68 */	stw r0, 0x668(r31)
/* 80BDA60C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDA610  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDA614  7C 08 03 A6 */	mtlr r0
/* 80BDA618  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDA61C  4E 80 00 20 */	blr 
