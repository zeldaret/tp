lbl_807A53C4:
/* 807A53C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807A53C8  7C 08 02 A6 */	mflr r0
/* 807A53CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807A53D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807A53D4  7C 7F 1B 78 */	mr r31, r3
/* 807A53D8  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 807A53DC  3C 80 80 7A */	lis r4, stringBase0@ha
/* 807A53E0  38 84 69 E0 */	addi r4, r4, stringBase0@l
/* 807A53E4  4B 88 7C 24 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 807A53E8  88 1F 10 64 */	lbz r0, 0x1064(r31)
/* 807A53EC  28 00 00 00 */	cmplwi r0, 0
/* 807A53F0  41 82 00 10 */	beq lbl_807A5400
/* 807A53F4  38 00 00 00 */	li r0, 0
/* 807A53F8  3C 60 80 7A */	lis r3, data_807A6DE4@ha
/* 807A53FC  98 03 6D E4 */	stb r0, data_807A6DE4@l(r3)
lbl_807A5400:
/* 807A5400  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 807A5404  28 00 00 00 */	cmplwi r0, 0
/* 807A5408  41 82 00 0C */	beq lbl_807A5414
/* 807A540C  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807A5410  4B 86 BF 00 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_807A5414:
/* 807A5414  38 60 00 01 */	li r3, 1
/* 807A5418  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807A541C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807A5420  7C 08 03 A6 */	mtlr r0
/* 807A5424  38 21 00 10 */	addi r1, r1, 0x10
/* 807A5428  4E 80 00 20 */	blr 
