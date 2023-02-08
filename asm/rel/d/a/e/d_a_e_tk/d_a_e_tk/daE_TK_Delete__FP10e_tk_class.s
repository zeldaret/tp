lbl_807B9C58:
/* 807B9C58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B9C5C  7C 08 02 A6 */	mflr r0
/* 807B9C60  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B9C64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807B9C68  7C 7F 1B 78 */	mr r31, r3
/* 807B9C6C  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 807B9C70  3C 80 80 7C */	lis r4, d_a_e_tk__stringBase0@ha /* 0x807BA2F0@ha */
/* 807B9C74  38 84 A2 F0 */	addi r4, r4, d_a_e_tk__stringBase0@l /* 0x807BA2F0@l */
/* 807B9C78  4B 87 33 91 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 807B9C7C  88 1F 0A 60 */	lbz r0, 0xa60(r31)
/* 807B9C80  28 00 00 00 */	cmplwi r0, 0
/* 807B9C84  41 82 00 10 */	beq lbl_807B9C94
/* 807B9C88  38 00 00 00 */	li r0, 0
/* 807B9C8C  3C 60 80 7C */	lis r3, data_807BA438@ha /* 0x807BA438@ha */
/* 807B9C90  98 03 A4 38 */	stb r0, data_807BA438@l(r3)  /* 0x807BA438@l */
lbl_807B9C94:
/* 807B9C94  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 807B9C98  28 00 00 00 */	cmplwi r0, 0
/* 807B9C9C  41 82 00 0C */	beq lbl_807B9CA8
/* 807B9CA0  80 7F 05 C4 */	lwz r3, 0x5c4(r31)
/* 807B9CA4  4B 85 76 6D */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_807B9CA8:
/* 807B9CA8  38 60 00 01 */	li r3, 1
/* 807B9CAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807B9CB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B9CB4  7C 08 03 A6 */	mtlr r0
/* 807B9CB8  38 21 00 10 */	addi r1, r1, 0x10
/* 807B9CBC  4E 80 00 20 */	blr 
