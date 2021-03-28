lbl_808278A4:
/* 808278A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808278A8  7C 08 02 A6 */	mflr r0
/* 808278AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 808278B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 808278B4  7C 7F 1B 78 */	mr r31, r3
/* 808278B8  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 808278BC  3C 80 80 83 */	lis r4, stringBase0@ha
/* 808278C0  38 84 89 A8 */	addi r4, r4, stringBase0@l
/* 808278C4  4B 80 57 44 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 808278C8  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 808278CC  28 00 00 00 */	cmplwi r0, 0
/* 808278D0  41 82 00 0C */	beq lbl_808278DC
/* 808278D4  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 808278D8  4B 7E 9A 38 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_808278DC:
/* 808278DC  38 60 00 01 */	li r3, 1
/* 808278E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 808278E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808278E8  7C 08 03 A6 */	mtlr r0
/* 808278EC  38 21 00 10 */	addi r1, r1, 0x10
/* 808278F0  4E 80 00 20 */	blr 
