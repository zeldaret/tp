lbl_806B9534:
/* 806B9534  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806B9538  7C 08 02 A6 */	mflr r0
/* 806B953C  90 01 00 24 */	stw r0, 0x24(r1)
/* 806B9540  39 61 00 20 */	addi r11, r1, 0x20
/* 806B9544  4B CA 8C 8C */	b _savegpr_26
/* 806B9548  7C 7A 1B 78 */	mr r26, r3
/* 806B954C  38 7A 0F 08 */	addi r3, r26, 0xf08
/* 806B9550  38 80 00 7D */	li r4, 0x7d
/* 806B9554  38 A0 00 FF */	li r5, 0xff
/* 806B9558  7F 46 D3 78 */	mr r6, r26
/* 806B955C  4B 9C A3 04 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 806B9560  3B 60 00 00 */	li r27, 0
/* 806B9564  3B E0 00 00 */	li r31, 0
/* 806B9568  3C 60 80 6C */	lis r3, ccBodySphSrc@ha
/* 806B956C  3B A3 B7 04 */	addi r29, r3, ccBodySphSrc@l
/* 806B9570  3B DA 0F 08 */	addi r30, r26, 0xf08
lbl_806B9574:
/* 806B9574  7F 9A FA 14 */	add r28, r26, r31
/* 806B9578  38 7C 06 18 */	addi r3, r28, 0x618
/* 806B957C  7F A4 EB 78 */	mr r4, r29
/* 806B9580  4B 9C B4 B4 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806B9584  93 DC 06 5C */	stw r30, 0x65c(r28)
/* 806B9588  38 7C 07 3C */	addi r3, r28, 0x73c
/* 806B958C  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 806B9590  4B BB 60 B8 */	b SetC__8cM3dGSphFRC4cXyz
/* 806B9594  3B 7B 00 01 */	addi r27, r27, 1
/* 806B9598  2C 1B 00 02 */	cmpwi r27, 2
/* 806B959C  3B FF 01 38 */	addi r31, r31, 0x138
/* 806B95A0  41 80 FF D4 */	blt lbl_806B9574
/* 806B95A4  39 61 00 20 */	addi r11, r1, 0x20
/* 806B95A8  4B CA 8C 74 */	b _restgpr_26
/* 806B95AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806B95B0  7C 08 03 A6 */	mtlr r0
/* 806B95B4  38 21 00 20 */	addi r1, r1, 0x20
/* 806B95B8  4E 80 00 20 */	blr 
