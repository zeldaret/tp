lbl_80C39994:
/* 80C39994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C39998  7C 08 02 A6 */	mflr r0
/* 80C3999C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C399A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C399A4  7C 7F 1B 78 */	mr r31, r3
/* 80C399A8  38 7F 08 10 */	addi r3, r31, 0x810
/* 80C399AC  38 80 00 01 */	li r4, 1
/* 80C399B0  38 A0 00 00 */	li r5, 0
/* 80C399B4  7F E6 FB 78 */	mr r6, r31
/* 80C399B8  4B 44 9E A8 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C399BC  38 7F 08 4C */	addi r3, r31, 0x84c
/* 80C399C0  3C 80 80 C4 */	lis r4, ccSphSrc@ha
/* 80C399C4  38 84 C6 7C */	addi r4, r4, ccSphSrc@l
/* 80C399C8  4B 44 B0 6C */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80C399CC  38 1F 08 10 */	addi r0, r31, 0x810
/* 80C399D0  90 1F 08 90 */	stw r0, 0x890(r31)
/* 80C399D4  38 7F 09 70 */	addi r3, r31, 0x970
/* 80C399D8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C399DC  4B 63 5C 6C */	b SetC__8cM3dGSphFRC4cXyz
/* 80C399E0  80 1F 08 E8 */	lwz r0, 0x8e8(r31)
/* 80C399E4  60 00 00 04 */	ori r0, r0, 4
/* 80C399E8  90 1F 08 E8 */	stw r0, 0x8e8(r31)
/* 80C399EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C399F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C399F4  7C 08 03 A6 */	mtlr r0
/* 80C399F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C399FC  4E 80 00 20 */	blr 
