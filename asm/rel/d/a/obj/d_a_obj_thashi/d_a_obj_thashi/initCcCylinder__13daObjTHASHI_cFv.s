lbl_80D0C238:
/* 80D0C238  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0C23C  7C 08 02 A6 */	mflr r0
/* 80D0C240  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0C244  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0C248  7C 7F 1B 78 */	mr r31, r3
/* 80D0C24C  38 7F 13 C8 */	addi r3, r31, 0x13c8
/* 80D0C250  38 80 00 FF */	li r4, 0xff
/* 80D0C254  38 A0 00 FF */	li r5, 0xff
/* 80D0C258  7F E6 FB 78 */	mr r6, r31
/* 80D0C25C  4B 37 76 05 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D0C260  38 7F 1A 58 */	addi r3, r31, 0x1a58
/* 80D0C264  3C 80 80 D1 */	lis r4, ccCylSrc_3701@ha /* 0x80D0D1E4@ha */
/* 80D0C268  38 84 D1 E4 */	addi r4, r4, ccCylSrc_3701@l /* 0x80D0D1E4@l */
/* 80D0C26C  4B 37 86 49 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80D0C270  38 1F 13 C8 */	addi r0, r31, 0x13c8
/* 80D0C274  90 1F 1A 9C */	stw r0, 0x1a9c(r31)
/* 80D0C278  38 7F 1B 7C */	addi r3, r31, 0x1b7c
/* 80D0C27C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80D0C280  4B 56 2F 5D */	bl SetC__8cM3dGCylFRC4cXyz
/* 80D0C284  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0C288  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0C28C  7C 08 03 A6 */	mtlr r0
/* 80D0C290  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0C294  4E 80 00 20 */	blr 
