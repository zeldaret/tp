lbl_80604CFC:
/* 80604CFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80604D00  7C 08 02 A6 */	mflr r0
/* 80604D04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80604D08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80604D0C  7C 7F 1B 78 */	mr r31, r3
/* 80604D10  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80604D14  3C 80 80 60 */	lis r4, d_a_b_gos__stringBase0@ha /* 0x80605414@ha */
/* 80604D18  38 84 54 14 */	addi r4, r4, d_a_b_gos__stringBase0@l /* 0x80605414@l */
/* 80604D1C  4B A2 82 ED */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80604D20  88 1F 0C C8 */	lbz r0, 0xcc8(r31)
/* 80604D24  28 00 00 00 */	cmplwi r0, 0
/* 80604D28  41 82 00 10 */	beq lbl_80604D38
/* 80604D2C  38 00 00 00 */	li r0, 0
/* 80604D30  3C 60 80 60 */	lis r3, data_8060560C@ha /* 0x8060560C@ha */
/* 80604D34  98 03 56 0C */	stb r0, data_8060560C@l(r3)  /* 0x8060560C@l */
lbl_80604D38:
/* 80604D38  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80604D3C  28 00 00 00 */	cmplwi r0, 0
/* 80604D40  41 82 00 0C */	beq lbl_80604D4C
/* 80604D44  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 80604D48  4B A0 C5 C9 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80604D4C:
/* 80604D4C  38 60 00 01 */	li r3, 1
/* 80604D50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80604D54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80604D58  7C 08 03 A6 */	mtlr r0
/* 80604D5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80604D60  4E 80 00 20 */	blr 
