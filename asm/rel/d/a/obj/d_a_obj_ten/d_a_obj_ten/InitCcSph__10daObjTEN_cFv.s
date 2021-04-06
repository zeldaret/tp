lbl_80D087F4:
/* 80D087F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D087F8  7C 08 02 A6 */	mflr r0
/* 80D087FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D08800  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D08804  7C 7F 1B 78 */	mr r31, r3
/* 80D08808  38 7F 06 28 */	addi r3, r31, 0x628
/* 80D0880C  38 80 00 01 */	li r4, 1
/* 80D08810  38 A0 00 00 */	li r5, 0
/* 80D08814  7F E6 FB 78 */	mr r6, r31
/* 80D08818  4B 37 B0 49 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D0881C  38 7F 06 64 */	addi r3, r31, 0x664
/* 80D08820  3C 80 80 D1 */	lis r4, ccSphSrc@ha /* 0x80D0B8F8@ha */
/* 80D08824  38 84 B8 F8 */	addi r4, r4, ccSphSrc@l /* 0x80D0B8F8@l */
/* 80D08828  4B 37 C2 0D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80D0882C  38 1F 06 28 */	addi r0, r31, 0x628
/* 80D08830  90 1F 06 A8 */	stw r0, 0x6a8(r31)
/* 80D08834  38 7F 07 88 */	addi r3, r31, 0x788
/* 80D08838  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80D0883C  4B 56 6E 0D */	bl SetC__8cM3dGSphFRC4cXyz
/* 80D08840  80 1F 07 00 */	lwz r0, 0x700(r31)
/* 80D08844  60 00 00 04 */	ori r0, r0, 4
/* 80D08848  90 1F 07 00 */	stw r0, 0x700(r31)
/* 80D0884C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D08850  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D08854  7C 08 03 A6 */	mtlr r0
/* 80D08858  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0885C  4E 80 00 20 */	blr 
