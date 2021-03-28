lbl_80C34390:
/* 80C34390  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C34394  7C 08 02 A6 */	mflr r0
/* 80C34398  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3439C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C343A0  7C 7F 1B 78 */	mr r31, r3
/* 80C343A4  38 7F 05 FC */	addi r3, r31, 0x5fc
/* 80C343A8  38 80 00 01 */	li r4, 1
/* 80C343AC  38 A0 00 FF */	li r5, 0xff
/* 80C343B0  7F E6 FB 78 */	mr r6, r31
/* 80C343B4  4B 44 F4 AC */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C343B8  38 7F 06 38 */	addi r3, r31, 0x638
/* 80C343BC  3C 80 80 C3 */	lis r4, ccCylSrc@ha
/* 80C343C0  38 84 4E FC */	addi r4, r4, ccCylSrc@l
/* 80C343C4  4B 45 04 F0 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C343C8  38 1F 05 FC */	addi r0, r31, 0x5fc
/* 80C343CC  90 1F 06 7C */	stw r0, 0x67c(r31)
/* 80C343D0  38 7F 07 5C */	addi r3, r31, 0x75c
/* 80C343D4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C343D8  4B 63 AE 04 */	b SetC__8cM3dGCylFRC4cXyz
/* 80C343DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C343E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C343E4  7C 08 03 A6 */	mtlr r0
/* 80C343E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C343EC  4E 80 00 20 */	blr 
