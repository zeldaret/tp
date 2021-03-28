lbl_806A7828:
/* 806A7828  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A782C  7C 08 02 A6 */	mflr r0
/* 806A7830  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A7834  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A7838  7C 7F 1B 78 */	mr r31, r3
/* 806A783C  38 7F 06 7C */	addi r3, r31, 0x67c
/* 806A7840  38 80 00 FF */	li r4, 0xff
/* 806A7844  38 A0 00 FF */	li r5, 0xff
/* 806A7848  7F E6 FB 78 */	mr r6, r31
/* 806A784C  4B 9D C0 14 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 806A7850  38 7F 06 B8 */	addi r3, r31, 0x6b8
/* 806A7854  3C 80 80 6B */	lis r4, ccCylSrc@ha
/* 806A7858  38 84 9F 5C */	addi r4, r4, ccCylSrc@l
/* 806A785C  4B 9D D0 58 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 806A7860  38 1F 06 7C */	addi r0, r31, 0x67c
/* 806A7864  90 1F 06 FC */	stw r0, 0x6fc(r31)
/* 806A7868  38 7F 07 DC */	addi r3, r31, 0x7dc
/* 806A786C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806A7870  4B BC 79 6C */	b SetC__8cM3dGCylFRC4cXyz
/* 806A7874  80 1F 07 54 */	lwz r0, 0x754(r31)
/* 806A7878  60 00 00 04 */	ori r0, r0, 4
/* 806A787C  90 1F 07 54 */	stw r0, 0x754(r31)
/* 806A7880  80 1F 07 54 */	lwz r0, 0x754(r31)
/* 806A7884  60 00 01 00 */	ori r0, r0, 0x100
/* 806A7888  90 1F 07 54 */	stw r0, 0x754(r31)
/* 806A788C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A7890  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A7894  7C 08 03 A6 */	mtlr r0
/* 806A7898  38 21 00 10 */	addi r1, r1, 0x10
/* 806A789C  4E 80 00 20 */	blr 
