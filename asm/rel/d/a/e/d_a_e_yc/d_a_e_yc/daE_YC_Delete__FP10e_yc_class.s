lbl_807F223C:
/* 807F223C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807F2240  7C 08 02 A6 */	mflr r0
/* 807F2244  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F2248  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807F224C  7C 7F 1B 78 */	mr r31, r3
/* 807F2250  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 807F2254  3C 80 80 7F */	lis r4, stringBase0@ha
/* 807F2258  38 84 29 4C */	addi r4, r4, stringBase0@l
/* 807F225C  4B 83 AD AC */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 807F2260  88 1F 0B A4 */	lbz r0, 0xba4(r31)
/* 807F2264  28 00 00 00 */	cmplwi r0, 0
/* 807F2268  41 82 00 10 */	beq lbl_807F2278
/* 807F226C  38 00 00 00 */	li r0, 0
/* 807F2270  3C 60 80 7F */	lis r3, data_807F2B0C@ha
/* 807F2274  98 03 2B 0C */	stb r0, data_807F2B0C@l(r3)
lbl_807F2278:
/* 807F2278  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 807F227C  28 00 00 00 */	cmplwi r0, 0
/* 807F2280  41 82 00 0C */	beq lbl_807F228C
/* 807F2284  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 807F2288  4B 81 F0 88 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_807F228C:
/* 807F228C  38 60 00 01 */	li r3, 1
/* 807F2290  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807F2294  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F2298  7C 08 03 A6 */	mtlr r0
/* 807F229C  38 21 00 10 */	addi r1, r1, 0x10
/* 807F22A0  4E 80 00 20 */	blr 
