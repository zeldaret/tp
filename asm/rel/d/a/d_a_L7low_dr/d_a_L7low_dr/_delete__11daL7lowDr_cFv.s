lbl_805AA748:
/* 805AA748  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AA74C  7C 08 02 A6 */	mflr r0
/* 805AA750  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AA754  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805AA758  7C 7F 1B 78 */	mr r31, r3
/* 805AA75C  38 7F 05 68 */	addi r3, r31, 0x568
/* 805AA760  3C 80 80 5B */	lis r4, stringBase0@ha
/* 805AA764  38 84 AF B0 */	addi r4, r4, stringBase0@l
/* 805AA768  4B A8 28 A0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 805AA76C  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 805AA770  28 00 00 00 */	cmplwi r0, 0
/* 805AA774  41 82 00 0C */	beq lbl_805AA780
/* 805AA778  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 805AA77C  4B A6 6B 94 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_805AA780:
/* 805AA780  38 60 00 01 */	li r3, 1
/* 805AA784  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805AA788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AA78C  7C 08 03 A6 */	mtlr r0
/* 805AA790  38 21 00 10 */	addi r1, r1, 0x10
/* 805AA794  4E 80 00 20 */	blr 
