lbl_8010DAFC:
/* 8010DAFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010DB00  7C 08 02 A6 */	mflr r0
/* 8010DB04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010DB08  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 8010DB0C  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 8010DB10  38 63 00 9D */	addi r3, r3, 0x9d
/* 8010DB14  4B F8 FF 4D */	bl checkStageName__9daAlink_cFPCc
/* 8010DB18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010DB1C  7C 08 03 A6 */	mtlr r0
/* 8010DB20  38 21 00 10 */	addi r1, r1, 0x10
/* 8010DB24  4E 80 00 20 */	blr 
