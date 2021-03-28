lbl_80110840:
/* 80110840  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80110844  7C 08 02 A6 */	mflr r0
/* 80110848  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011084C  80 A3 05 78 */	lwz r5, 0x578(r3)
/* 80110850  3C 80 F0 00 */	lis r4, 0xF000 /* 0xEFFFFFFE@ha */
/* 80110854  38 04 FF FE */	addi r0, r4, 0xFFFE /* 0xEFFFFFFE@l */
/* 80110858  7C A0 00 38 */	and r0, r5, r0
/* 8011085C  90 03 05 78 */	stw r0, 0x578(r3)
/* 80110860  38 80 00 00 */	li r4, 0
/* 80110864  38 63 2C A8 */	addi r3, r3, 0x2ca8
/* 80110868  48 1B 2F 11 */	bl setKanteraState__14Z2CreatureLinkFUc
/* 8011086C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80110870  7C 08 03 A6 */	mtlr r0
/* 80110874  38 21 00 10 */	addi r1, r1, 0x10
/* 80110878  4E 80 00 20 */	blr 
