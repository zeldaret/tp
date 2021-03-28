lbl_80BD4138:
/* 80BD4138  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD413C  7C 08 02 A6 */	mflr r0
/* 80BD4140  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD4144  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD4148  7C 7F 1B 78 */	mr r31, r3
/* 80BD414C  38 7F 05 D0 */	addi r3, r31, 0x5d0
/* 80BD4150  38 80 00 FF */	li r4, 0xff
/* 80BD4154  38 A0 00 FF */	li r5, 0xff
/* 80BD4158  7F E6 FB 78 */	mr r6, r31
/* 80BD415C  4B 4A F7 04 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BD4160  38 7F 06 0C */	addi r3, r31, 0x60c
/* 80BD4164  3C 80 80 BD */	lis r4, ccCylSrc@ha
/* 80BD4168  38 84 4D 04 */	addi r4, r4, ccCylSrc@l
/* 80BD416C  4B 4B 07 48 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80BD4170  38 1F 05 D0 */	addi r0, r31, 0x5d0
/* 80BD4174  90 1F 06 50 */	stw r0, 0x650(r31)
/* 80BD4178  38 7F 07 30 */	addi r3, r31, 0x730
/* 80BD417C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80BD4180  4B 69 B0 5C */	b SetC__8cM3dGCylFRC4cXyz
/* 80BD4184  80 1F 06 A8 */	lwz r0, 0x6a8(r31)
/* 80BD4188  60 00 01 00 */	ori r0, r0, 0x100
/* 80BD418C  90 1F 06 A8 */	stw r0, 0x6a8(r31)
/* 80BD4190  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD4194  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD4198  7C 08 03 A6 */	mtlr r0
/* 80BD419C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD41A0  4E 80 00 20 */	blr 
