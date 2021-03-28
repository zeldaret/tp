lbl_80D1AE00:
/* 80D1AE00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1AE04  7C 08 02 A6 */	mflr r0
/* 80D1AE08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1AE0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1AE10  7C 7F 1B 78 */	mr r31, r3
/* 80D1AE14  38 7F 0A 0C */	addi r3, r31, 0xa0c
/* 80D1AE18  3C 80 80 D2 */	lis r4, stringBase0@ha
/* 80D1AE1C  38 84 B7 E8 */	addi r4, r4, stringBase0@l
/* 80D1AE20  4B 31 21 E8 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D1AE24  88 1F 0A 14 */	lbz r0, 0xa14(r31)
/* 80D1AE28  28 00 00 00 */	cmplwi r0, 0
/* 80D1AE2C  41 82 00 10 */	beq lbl_80D1AE3C
/* 80D1AE30  38 00 00 00 */	li r0, 0
/* 80D1AE34  3C 60 80 D2 */	lis r3, data_80D1B8F0@ha
/* 80D1AE38  98 03 B8 F0 */	stb r0, data_80D1B8F0@l(r3)
lbl_80D1AE3C:
/* 80D1AE3C  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80D1AE40  28 00 00 00 */	cmplwi r0, 0
/* 80D1AE44  41 82 00 0C */	beq lbl_80D1AE50
/* 80D1AE48  80 7F 08 30 */	lwz r3, 0x830(r31)
/* 80D1AE4C  4B 2F 64 C4 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80D1AE50:
/* 80D1AE50  38 60 00 01 */	li r3, 1
/* 80D1AE54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1AE58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1AE5C  7C 08 03 A6 */	mtlr r0
/* 80D1AE60  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1AE64  4E 80 00 20 */	blr 
