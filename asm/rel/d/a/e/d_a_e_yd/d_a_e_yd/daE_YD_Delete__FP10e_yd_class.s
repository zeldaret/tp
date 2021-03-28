lbl_807F6954:
/* 807F6954  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807F6958  7C 08 02 A6 */	mflr r0
/* 807F695C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807F6960  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807F6964  7C 7F 1B 78 */	mr r31, r3
/* 807F6968  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 807F696C  3C 80 80 7F */	lis r4, stringBase0@ha
/* 807F6970  38 84 7B 30 */	addi r4, r4, stringBase0@l
/* 807F6974  4B 83 66 94 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 807F6978  88 1F 12 68 */	lbz r0, 0x1268(r31)
/* 807F697C  28 00 00 00 */	cmplwi r0, 0
/* 807F6980  41 82 00 10 */	beq lbl_807F6990
/* 807F6984  38 00 00 00 */	li r0, 0
/* 807F6988  3C 60 80 7F */	lis r3, data_807F7D68@ha
/* 807F698C  98 03 7D 68 */	stb r0, data_807F7D68@l(r3)
lbl_807F6990:
/* 807F6990  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 807F6994  28 00 00 00 */	cmplwi r0, 0
/* 807F6998  41 82 00 0C */	beq lbl_807F69A4
/* 807F699C  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 807F69A0  4B 81 A9 70 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_807F69A4:
/* 807F69A4  38 60 00 01 */	li r3, 1
/* 807F69A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807F69AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807F69B0  7C 08 03 A6 */	mtlr r0
/* 807F69B4  38 21 00 10 */	addi r1, r1, 0x10
/* 807F69B8  4E 80 00 20 */	blr 
