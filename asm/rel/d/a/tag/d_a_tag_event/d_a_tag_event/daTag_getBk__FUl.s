lbl_8048AD38:
/* 8048AD38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048AD3C  7C 08 02 A6 */	mflr r0
/* 8048AD40  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048AD44  7C 65 1B 78 */	mr r5, r3
/* 8048AD48  3C 60 80 49 */	lis r3, d_a_tag_event__stringBase0@ha /* 0x8048B840@ha */
/* 8048AD4C  38 63 B8 40 */	addi r3, r3, d_a_tag_event__stringBase0@l /* 0x8048B840@l */
/* 8048AD50  38 80 00 0F */	li r4, 0xf
/* 8048AD54  4B B9 29 45 */	bl fopAcM_searchFromName__FPCcUlUl
/* 8048AD58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048AD5C  7C 08 03 A6 */	mtlr r0
/* 8048AD60  38 21 00 10 */	addi r1, r1, 0x10
/* 8048AD64  4E 80 00 20 */	blr 
