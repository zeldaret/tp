lbl_80840CA4:
/* 80840CA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80840CA8  7C 08 02 A6 */	mflr r0
/* 80840CAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80840CB0  80 03 05 A8 */	lwz r0, 0x5a8(r3)
/* 80840CB4  28 00 00 00 */	cmplwi r0, 0
/* 80840CB8  41 82 00 1C */	beq lbl_80840CD4
/* 80840CBC  38 00 00 00 */	li r0, 0
/* 80840CC0  90 03 05 A8 */	stw r0, 0x5a8(r3)
/* 80840CC4  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 80840CC8  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0x0000FFFF@l */
/* 80840CCC  B0 03 16 C8 */	sth r0, 0x16c8(r3)
/* 80840CD0  4B FF FE 59 */	bl setNeckAnimeMorf__9daHorse_cFv
lbl_80840CD4:
/* 80840CD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80840CD8  7C 08 03 A6 */	mtlr r0
/* 80840CDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80840CE0  4E 80 00 20 */	blr 
