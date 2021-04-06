lbl_806E06C0:
/* 806E06C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E06C4  7C 08 02 A6 */	mflr r0
/* 806E06C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E06CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806E06D0  7C 7F 1B 78 */	mr r31, r3
/* 806E06D4  A8 03 05 D2 */	lha r0, 0x5d2(r3)
/* 806E06D8  2C 00 00 02 */	cmpwi r0, 2
/* 806E06DC  40 82 00 1C */	bne lbl_806E06F8
/* 806E06E0  38 7F 08 EC */	addi r3, r31, 0x8ec
/* 806E06E4  38 80 00 68 */	li r4, 0x68
/* 806E06E8  38 A0 00 00 */	li r5, 0
/* 806E06EC  7F E6 FB 78 */	mr r6, r31
/* 806E06F0  4B 9A 31 71 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 806E06F4  48 00 00 18 */	b lbl_806E070C
lbl_806E06F8:
/* 806E06F8  38 7F 08 EC */	addi r3, r31, 0x8ec
/* 806E06FC  38 80 00 FE */	li r4, 0xfe
/* 806E0700  38 A0 00 00 */	li r5, 0
/* 806E0704  7F E6 FB 78 */	mr r6, r31
/* 806E0708  4B 9A 31 59 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
lbl_806E070C:
/* 806E070C  38 7F 09 28 */	addi r3, r31, 0x928
/* 806E0710  3C 80 80 6E */	lis r4, ccShpSrc@ha /* 0x806E5960@ha */
/* 806E0714  38 84 59 60 */	addi r4, r4, ccShpSrc@l /* 0x806E5960@l */
/* 806E0718  4B 9A 43 1D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806E071C  38 1F 08 EC */	addi r0, r31, 0x8ec
/* 806E0720  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 806E0724  38 7F 0A 4C */	addi r3, r31, 0xa4c
/* 806E0728  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806E072C  4B B8 EF 1D */	bl SetC__8cM3dGSphFRC4cXyz
/* 806E0730  38 00 00 01 */	li r0, 1
/* 806E0734  98 1F 09 9D */	stb r0, 0x99d(r31)
/* 806E0738  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806E073C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E0740  7C 08 03 A6 */	mtlr r0
/* 806E0744  38 21 00 10 */	addi r1, r1, 0x10
/* 806E0748  4E 80 00 20 */	blr 
