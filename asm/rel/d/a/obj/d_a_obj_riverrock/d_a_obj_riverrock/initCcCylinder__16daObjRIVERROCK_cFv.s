lbl_80CBC6F4:
/* 80CBC6F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBC6F8  7C 08 02 A6 */	mflr r0
/* 80CBC6FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBC700  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBC704  7C 7F 1B 78 */	mr r31, r3
/* 80CBC708  38 7F 06 20 */	addi r3, r31, 0x620
/* 80CBC70C  38 80 00 FF */	li r4, 0xff
/* 80CBC710  38 A0 00 FF */	li r5, 0xff
/* 80CBC714  7F E6 FB 78 */	mr r6, r31
/* 80CBC718  4B 3C 71 49 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80CBC71C  38 7F 06 5C */	addi r3, r31, 0x65c
/* 80CBC720  3C 80 80 CC */	lis r4, ccCylSrc@ha /* 0x80CBDA60@ha */
/* 80CBC724  38 84 DA 60 */	addi r4, r4, ccCylSrc@l /* 0x80CBDA60@l */
/* 80CBC728  4B 3C 81 8D */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80CBC72C  38 1F 06 20 */	addi r0, r31, 0x620
/* 80CBC730  90 1F 06 A0 */	stw r0, 0x6a0(r31)
/* 80CBC734  38 7F 07 80 */	addi r3, r31, 0x780
/* 80CBC738  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80CBC73C  4B 5B 2A A1 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80CBC740  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBC744  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBC748  7C 08 03 A6 */	mtlr r0
/* 80CBC74C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBC750  4E 80 00 20 */	blr 
