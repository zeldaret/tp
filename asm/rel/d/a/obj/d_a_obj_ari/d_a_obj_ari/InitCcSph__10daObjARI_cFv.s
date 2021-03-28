lbl_80BA26BC:
/* 80BA26BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA26C0  7C 08 02 A6 */	mflr r0
/* 80BA26C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA26C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA26CC  7C 7F 1B 78 */	mr r31, r3
/* 80BA26D0  38 7F 06 3C */	addi r3, r31, 0x63c
/* 80BA26D4  38 80 00 01 */	li r4, 1
/* 80BA26D8  38 A0 00 00 */	li r5, 0
/* 80BA26DC  7F E6 FB 78 */	mr r6, r31
/* 80BA26E0  4B 4E 11 80 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BA26E4  38 7F 06 78 */	addi r3, r31, 0x678
/* 80BA26E8  3C 80 80 BA */	lis r4, ccSphSrc@ha
/* 80BA26EC  38 84 54 14 */	addi r4, r4, ccSphSrc@l
/* 80BA26F0  4B 4E 23 44 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80BA26F4  38 1F 06 3C */	addi r0, r31, 0x63c
/* 80BA26F8  90 1F 06 BC */	stw r0, 0x6bc(r31)
/* 80BA26FC  38 7F 07 9C */	addi r3, r31, 0x79c
/* 80BA2700  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80BA2704  4B 6C CF 44 */	b SetC__8cM3dGSphFRC4cXyz
/* 80BA2708  80 1F 07 14 */	lwz r0, 0x714(r31)
/* 80BA270C  60 00 00 04 */	ori r0, r0, 4
/* 80BA2710  90 1F 07 14 */	stw r0, 0x714(r31)
/* 80BA2714  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA2718  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA271C  7C 08 03 A6 */	mtlr r0
/* 80BA2720  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA2724  4E 80 00 20 */	blr 
