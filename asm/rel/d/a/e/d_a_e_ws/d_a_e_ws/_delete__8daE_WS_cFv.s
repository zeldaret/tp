lbl_807E66B4:
/* 807E66B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E66B8  7C 08 02 A6 */	mflr r0
/* 807E66BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E66C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E66C4  7C 7F 1B 78 */	mr r31, r3
/* 807E66C8  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 807E66CC  3C 80 80 7E */	lis r4, stringBase0@ha
/* 807E66D0  38 84 74 04 */	addi r4, r4, stringBase0@l
/* 807E66D4  4B 84 69 34 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 807E66D8  88 1F 0B 7C */	lbz r0, 0xb7c(r31)
/* 807E66DC  28 00 00 00 */	cmplwi r0, 0
/* 807E66E0  41 82 00 10 */	beq lbl_807E66F0
/* 807E66E4  38 00 00 00 */	li r0, 0
/* 807E66E8  3C 60 80 7E */	lis r3, data_807E75B8@ha
/* 807E66EC  98 03 75 B8 */	stb r0, data_807E75B8@l(r3)
lbl_807E66F0:
/* 807E66F0  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 807E66F4  28 00 00 00 */	cmplwi r0, 0
/* 807E66F8  41 82 00 18 */	beq lbl_807E6710
/* 807E66FC  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 807E6700  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 807E6704  81 8C 00 08 */	lwz r12, 8(r12)
/* 807E6708  7D 89 03 A6 */	mtctr r12
/* 807E670C  4E 80 04 21 */	bctrl 
lbl_807E6710:
/* 807E6710  38 60 00 01 */	li r3, 1
/* 807E6714  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E6718  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E671C  7C 08 03 A6 */	mtlr r0
/* 807E6720  38 21 00 10 */	addi r1, r1, 0x10
/* 807E6724  4E 80 00 20 */	blr 
