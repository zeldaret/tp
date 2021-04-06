lbl_80C1B12C:
/* 80C1B12C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1B130  7C 08 02 A6 */	mflr r0
/* 80C1B134  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1B138  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1B13C  7C 7F 1B 78 */	mr r31, r3
/* 80C1B140  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80C1B144  3C 80 80 C2 */	lis r4, d_a_obj_hb__stringBase0@ha /* 0x80C1B700@ha */
/* 80C1B148  38 84 B7 00 */	addi r4, r4, d_a_obj_hb__stringBase0@l /* 0x80C1B700@l */
/* 80C1B14C  4B 41 1E BD */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C1B150  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 80C1B154  4B 6A 55 A1 */	bl stopAnime__10Z2CreatureFv
/* 80C1B158  3C 60 80 C2 */	lis r3, data_80C1B7E0@ha /* 0x80C1B7E0@ha */
/* 80C1B15C  8C 03 B7 E0 */	lbzu r0, data_80C1B7E0@l(r3)  /* 0x80C1B7E0@l */
/* 80C1B160  7C 00 07 75 */	extsb. r0, r0
/* 80C1B164  41 82 00 0C */	beq lbl_80C1B170
/* 80C1B168  38 00 00 00 */	li r0, 0
/* 80C1B16C  98 03 00 00 */	stb r0, 0(r3)
lbl_80C1B170:
/* 80C1B170  38 60 00 01 */	li r3, 1
/* 80C1B174  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1B178  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1B17C  7C 08 03 A6 */	mtlr r0
/* 80C1B180  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1B184  4E 80 00 20 */	blr 
