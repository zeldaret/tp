lbl_80742448:
/* 80742448  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8074244C  7C 08 02 A6 */	mflr r0
/* 80742450  90 01 00 14 */	stw r0, 0x14(r1)
/* 80742454  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80742458  7C 7F 1B 78 */	mr r31, r3
/* 8074245C  38 7F 09 DC */	addi r3, r31, 0x9dc
/* 80742460  38 80 00 FF */	li r4, 0xff
/* 80742464  38 A0 00 FF */	li r5, 0xff
/* 80742468  7F E6 FB 78 */	mr r6, r31
/* 8074246C  4B 94 13 F5 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80742470  38 7F 0A 18 */	addi r3, r31, 0xa18
/* 80742474  3C 80 80 75 */	lis r4, ccCylSrc@ha /* 0x8074BF8C@ha */
/* 80742478  38 84 BF 8C */	addi r4, r4, ccCylSrc@l /* 0x8074BF8C@l */
/* 8074247C  4B 94 24 39 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80742480  38 1F 09 DC */	addi r0, r31, 0x9dc
/* 80742484  90 1F 0A 5C */	stw r0, 0xa5c(r31)
/* 80742488  38 7F 0B 3C */	addi r3, r31, 0xb3c
/* 8074248C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80742490  4B B2 CD 4D */	bl SetC__8cM3dGCylFRC4cXyz
/* 80742494  80 1F 0A 18 */	lwz r0, 0xa18(r31)
/* 80742498  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8074249C  90 1F 0A 18 */	stw r0, 0xa18(r31)
/* 807424A0  80 1F 0A 30 */	lwz r0, 0xa30(r31)
/* 807424A4  60 00 00 01 */	ori r0, r0, 1
/* 807424A8  90 1F 0A 30 */	stw r0, 0xa30(r31)
/* 807424AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807424B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807424B4  7C 08 03 A6 */	mtlr r0
/* 807424B8  38 21 00 10 */	addi r1, r1, 0x10
/* 807424BC  4E 80 00 20 */	blr 
