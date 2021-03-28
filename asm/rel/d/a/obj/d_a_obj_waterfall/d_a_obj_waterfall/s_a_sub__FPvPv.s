lbl_80D2ECA4:
/* 80D2ECA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2ECA8  7C 08 02 A6 */	mflr r0
/* 80D2ECAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2ECB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2ECB4  7C 7F 1B 78 */	mr r31, r3
/* 80D2ECB8  4B 2E A0 28 */	b fopAc_IsActor__FPv
/* 80D2ECBC  2C 03 00 00 */	cmpwi r3, 0
/* 80D2ECC0  41 82 00 3C */	beq lbl_80D2ECFC
/* 80D2ECC4  A8 1F 00 08 */	lha r0, 8(r31)
/* 80D2ECC8  2C 00 03 08 */	cmpwi r0, 0x308
/* 80D2ECCC  40 82 00 30 */	bne lbl_80D2ECFC
/* 80D2ECD0  3C 60 80 D3 */	lis r3, target_info_count@ha
/* 80D2ECD4  38 83 FE 78 */	addi r4, r3, target_info_count@l
/* 80D2ECD8  80 A4 00 00 */	lwz r5, 0(r4)
/* 80D2ECDC  2C 05 00 0A */	cmpwi r5, 0xa
/* 80D2ECE0  40 80 00 1C */	bge lbl_80D2ECFC
/* 80D2ECE4  54 A0 10 3A */	slwi r0, r5, 2
/* 80D2ECE8  3C 60 80 D3 */	lis r3, target_info@ha
/* 80D2ECEC  38 63 FE 50 */	addi r3, r3, target_info@l
/* 80D2ECF0  7F E3 01 2E */	stwx r31, r3, r0
/* 80D2ECF4  38 05 00 01 */	addi r0, r5, 1
/* 80D2ECF8  90 04 00 00 */	stw r0, 0(r4)
lbl_80D2ECFC:
/* 80D2ECFC  38 60 00 00 */	li r3, 0
/* 80D2ED00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2ED04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2ED08  7C 08 03 A6 */	mtlr r0
/* 80D2ED0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2ED10  4E 80 00 20 */	blr 
