lbl_8073D48C:
/* 8073D48C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8073D490  7C 08 02 A6 */	mflr r0
/* 8073D494  90 01 00 14 */	stw r0, 0x14(r1)
/* 8073D498  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8073D49C  7C 7F 1B 78 */	mr r31, r3
/* 8073D4A0  38 7F 09 38 */	addi r3, r31, 0x938
/* 8073D4A4  38 80 00 FF */	li r4, 0xff
/* 8073D4A8  38 A0 00 FF */	li r5, 0xff
/* 8073D4AC  7F E6 FB 78 */	mr r6, r31
/* 8073D4B0  4B 94 63 B1 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8073D4B4  38 7F 09 74 */	addi r3, r31, 0x974
/* 8073D4B8  3C 80 80 74 */	lis r4, ccSphSrc@ha /* 0x80741C00@ha */
/* 8073D4BC  38 84 1C 00 */	addi r4, r4, ccSphSrc@l /* 0x80741C00@l */
/* 8073D4C0  4B 94 75 75 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8073D4C4  38 1F 09 38 */	addi r0, r31, 0x938
/* 8073D4C8  90 1F 09 B8 */	stw r0, 0x9b8(r31)
/* 8073D4CC  38 7F 0A 98 */	addi r3, r31, 0xa98
/* 8073D4D0  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8073D4D4  4B B3 21 75 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8073D4D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8073D4DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8073D4E0  7C 08 03 A6 */	mtlr r0
/* 8073D4E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8073D4E8  4E 80 00 20 */	blr 
