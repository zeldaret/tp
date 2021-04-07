lbl_80790FC8:
/* 80790FC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80790FCC  7C 08 02 A6 */	mflr r0
/* 80790FD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80790FD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80790FD8  7C 7F 1B 78 */	mr r31, r3
/* 80790FDC  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80790FE0  3C 80 80 79 */	lis r4, d_a_e_sh__stringBase0@ha /* 0x80791EC0@ha */
/* 80790FE4  38 84 1E C0 */	addi r4, r4, d_a_e_sh__stringBase0@l /* 0x80791EC0@l */
/* 80790FE8  4B 89 C0 21 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80790FEC  88 1F 0D 08 */	lbz r0, 0xd08(r31)
/* 80790FF0  28 00 00 00 */	cmplwi r0, 0
/* 80790FF4  41 82 00 10 */	beq lbl_80791004
/* 80790FF8  38 00 00 00 */	li r0, 0
/* 80790FFC  3C 60 80 79 */	lis r3, data_807920F8@ha /* 0x807920F8@ha */
/* 80791000  98 03 20 F8 */	stb r0, data_807920F8@l(r3)  /* 0x807920F8@l */
lbl_80791004:
/* 80791004  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80791008  28 00 00 00 */	cmplwi r0, 0
/* 8079100C  41 82 00 0C */	beq lbl_80791018
/* 80791010  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80791014  4B 88 02 FD */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80791018:
/* 80791018  38 60 00 01 */	li r3, 1
/* 8079101C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80791020  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80791024  7C 08 03 A6 */	mtlr r0
/* 80791028  38 21 00 10 */	addi r1, r1, 0x10
/* 8079102C  4E 80 00 20 */	blr 
