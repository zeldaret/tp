lbl_80C2AEA4:
/* 80C2AEA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2AEA8  7C 08 02 A6 */	mflr r0
/* 80C2AEAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2AEB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C2AEB4  7C 7F 1B 78 */	mr r31, r3
/* 80C2AEB8  38 7F 05 90 */	addi r3, r31, 0x590
/* 80C2AEBC  38 80 00 01 */	li r4, 1
/* 80C2AEC0  38 A0 00 00 */	li r5, 0
/* 80C2AEC4  7F E6 FB 78 */	mr r6, r31
/* 80C2AEC8  4B 45 89 98 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C2AECC  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 80C2AED0  3C 80 80 C3 */	lis r4, ccSphSrc@ha
/* 80C2AED4  38 84 E1 1C */	addi r4, r4, ccSphSrc@l
/* 80C2AED8  4B 45 9B 5C */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80C2AEDC  38 1F 05 90 */	addi r0, r31, 0x590
/* 80C2AEE0  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80C2AEE4  38 7F 06 F0 */	addi r3, r31, 0x6f0
/* 80C2AEE8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C2AEEC  4B 64 47 5C */	b SetC__8cM3dGSphFRC4cXyz
/* 80C2AEF0  80 1F 06 68 */	lwz r0, 0x668(r31)
/* 80C2AEF4  60 00 00 04 */	ori r0, r0, 4
/* 80C2AEF8  90 1F 06 68 */	stw r0, 0x668(r31)
/* 80C2AEFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C2AF00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2AF04  7C 08 03 A6 */	mtlr r0
/* 80C2AF08  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2AF0C  4E 80 00 20 */	blr 
