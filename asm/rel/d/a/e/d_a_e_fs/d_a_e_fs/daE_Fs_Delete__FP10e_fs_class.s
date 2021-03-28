lbl_806BD6D8:
/* 806BD6D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BD6DC  7C 08 02 A6 */	mflr r0
/* 806BD6E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BD6E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806BD6E8  7C 7F 1B 78 */	mr r31, r3
/* 806BD6EC  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 806BD6F0  3C 80 80 6C */	lis r4, stringBase0@ha
/* 806BD6F4  38 84 E5 64 */	addi r4, r4, stringBase0@l
/* 806BD6F8  4B 96 F9 10 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 806BD6FC  88 1F 0B 98 */	lbz r0, 0xb98(r31)
/* 806BD700  28 00 00 00 */	cmplwi r0, 0
/* 806BD704  41 82 00 10 */	beq lbl_806BD714
/* 806BD708  38 00 00 00 */	li r0, 0
/* 806BD70C  3C 60 80 6C */	lis r3, data_806BE7A0@ha
/* 806BD710  98 03 E7 A0 */	stb r0, data_806BE7A0@l(r3)
lbl_806BD714:
/* 806BD714  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 806BD718  28 00 00 00 */	cmplwi r0, 0
/* 806BD71C  41 82 00 0C */	beq lbl_806BD728
/* 806BD720  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 806BD724  4B 95 3B EC */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_806BD728:
/* 806BD728  38 60 00 01 */	li r3, 1
/* 806BD72C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806BD730  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BD734  7C 08 03 A6 */	mtlr r0
/* 806BD738  38 21 00 10 */	addi r1, r1, 0x10
/* 806BD73C  4E 80 00 20 */	blr 
