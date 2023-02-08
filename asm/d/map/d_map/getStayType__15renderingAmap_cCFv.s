lbl_80029160:
/* 80029160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80029164  7C 08 02 A6 */	mflr r0
/* 80029168  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002916C  4B FF F7 59 */	bl getDispType__15renderingAmap_cCFv
/* 80029170  54 60 10 3A */	slwi r0, r3, 2
/* 80029174  3C 60 80 38 */	lis r3, l_stayType@ha /* 0x80378F08@ha */
/* 80029178  38 63 8F 08 */	addi r3, r3, l_stayType@l /* 0x80378F08@l */
/* 8002917C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80029180  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80029184  7C 08 03 A6 */	mtlr r0
/* 80029188  38 21 00 10 */	addi r1, r1, 0x10
/* 8002918C  4E 80 00 20 */	blr 
