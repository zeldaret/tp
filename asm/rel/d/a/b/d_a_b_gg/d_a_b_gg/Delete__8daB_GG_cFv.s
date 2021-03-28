lbl_805EB8A8:
/* 805EB8A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EB8AC  7C 08 02 A6 */	mflr r0
/* 805EB8B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EB8B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EB8B8  7C 7F 1B 78 */	mr r31, r3
/* 805EB8BC  38 7F 0E 40 */	addi r3, r31, 0xe40
/* 805EB8C0  3C 80 80 5F */	lis r4, stringBase0@ha
/* 805EB8C4  38 84 D3 D4 */	addi r4, r4, stringBase0@l
/* 805EB8C8  4B A4 17 40 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 805EB8CC  88 1F 11 68 */	lbz r0, 0x1168(r31)
/* 805EB8D0  28 00 00 00 */	cmplwi r0, 0
/* 805EB8D4  41 82 00 10 */	beq lbl_805EB8E4
/* 805EB8D8  38 00 00 00 */	li r0, 0
/* 805EB8DC  3C 60 80 5F */	lis r3, struct_805ED6FC+0x1@ha
/* 805EB8E0  98 03 D6 FD */	stb r0, struct_805ED6FC+0x1@l(r3)
lbl_805EB8E4:
/* 805EB8E4  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 805EB8E8  28 00 00 00 */	cmplwi r0, 0
/* 805EB8EC  41 82 00 0C */	beq lbl_805EB8F8
/* 805EB8F0  80 7F 0E 30 */	lwz r3, 0xe30(r31)
/* 805EB8F4  4B A2 5A 1C */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_805EB8F8:
/* 805EB8F8  38 60 00 01 */	li r3, 1
/* 805EB8FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EB900  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EB904  7C 08 03 A6 */	mtlr r0
/* 805EB908  38 21 00 10 */	addi r1, r1, 0x10
/* 805EB90C  4E 80 00 20 */	blr 
