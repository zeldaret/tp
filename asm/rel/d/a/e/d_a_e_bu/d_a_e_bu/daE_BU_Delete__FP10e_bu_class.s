lbl_80693A38:
/* 80693A38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80693A3C  7C 08 02 A6 */	mflr r0
/* 80693A40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80693A44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80693A48  7C 7F 1B 78 */	mr r31, r3
/* 80693A4C  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80693A50  3C 80 80 69 */	lis r4, d_a_e_bu__stringBase0@ha /* 0x80694770@ha */
/* 80693A54  38 84 47 70 */	addi r4, r4, d_a_e_bu__stringBase0@l /* 0x80694770@l */
/* 80693A58  4B 99 95 B1 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80693A5C  88 1F 0A A0 */	lbz r0, 0xaa0(r31)
/* 80693A60  28 00 00 00 */	cmplwi r0, 0
/* 80693A64  41 82 00 10 */	beq lbl_80693A74
/* 80693A68  38 00 00 00 */	li r0, 0
/* 80693A6C  3C 60 80 69 */	lis r3, data_80694958@ha /* 0x80694958@ha */
/* 80693A70  98 03 49 58 */	stb r0, data_80694958@l(r3)  /* 0x80694958@l */
lbl_80693A74:
/* 80693A74  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80693A78  28 00 00 00 */	cmplwi r0, 0
/* 80693A7C  41 82 00 0C */	beq lbl_80693A88
/* 80693A80  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80693A84  4B 97 D8 8D */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80693A88:
/* 80693A88  38 60 00 01 */	li r3, 1
/* 80693A8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80693A90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80693A94  7C 08 03 A6 */	mtlr r0
/* 80693A98  38 21 00 10 */	addi r1, r1, 0x10
/* 80693A9C  4E 80 00 20 */	blr 
