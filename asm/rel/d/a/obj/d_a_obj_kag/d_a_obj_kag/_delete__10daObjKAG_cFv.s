lbl_80C306EC:
/* 80C306EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C306F0  7C 08 02 A6 */	mflr r0
/* 80C306F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C306F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C306FC  7C 7F 1B 78 */	mr r31, r3
/* 80C30700  38 7F 05 90 */	addi r3, r31, 0x590
/* 80C30704  3C 80 80 C3 */	lis r4, stringBase0@ha
/* 80C30708  38 84 12 60 */	addi r4, r4, stringBase0@l
/* 80C3070C  4B 3F C8 FC */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C30710  88 1F 08 5F */	lbz r0, 0x85f(r31)
/* 80C30714  28 00 00 00 */	cmplwi r0, 0
/* 80C30718  41 82 00 10 */	beq lbl_80C30728
/* 80C3071C  38 00 00 00 */	li r0, 0
/* 80C30720  3C 60 80 C3 */	lis r3, data_80C31430@ha
/* 80C30724  98 03 14 30 */	stb r0, data_80C31430@l(r3)
lbl_80C30728:
/* 80C30728  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80C3072C  28 00 00 00 */	cmplwi r0, 0
/* 80C30730  41 82 00 0C */	beq lbl_80C3073C
/* 80C30734  80 7F 06 28 */	lwz r3, 0x628(r31)
/* 80C30738  4B 3E 0B D8 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80C3073C:
/* 80C3073C  38 60 00 01 */	li r3, 1
/* 80C30740  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C30744  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C30748  7C 08 03 A6 */	mtlr r0
/* 80C3074C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C30750  4E 80 00 20 */	blr 
