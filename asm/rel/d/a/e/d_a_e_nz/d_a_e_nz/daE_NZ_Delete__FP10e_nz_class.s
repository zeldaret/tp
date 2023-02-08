lbl_8072B5DC:
/* 8072B5DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8072B5E0  7C 08 02 A6 */	mflr r0
/* 8072B5E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8072B5E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8072B5EC  7C 7F 1B 78 */	mr r31, r3
/* 8072B5F0  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8072B5F4  3C 80 80 73 */	lis r4, d_a_e_nz__stringBase0@ha /* 0x8072C240@ha */
/* 8072B5F8  38 84 C2 40 */	addi r4, r4, d_a_e_nz__stringBase0@l /* 0x8072C240@l */
/* 8072B5FC  4B 90 1A 0D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8072B600  88 1F 0A 84 */	lbz r0, 0xa84(r31)
/* 8072B604  28 00 00 00 */	cmplwi r0, 0
/* 8072B608  41 82 00 10 */	beq lbl_8072B618
/* 8072B60C  38 00 00 00 */	li r0, 0
/* 8072B610  3C 60 80 73 */	lis r3, struct_8072C424+0x1@ha /* 0x8072C425@ha */
/* 8072B614  98 03 C4 25 */	stb r0, struct_8072C424+0x1@l(r3)  /* 0x8072C425@l */
lbl_8072B618:
/* 8072B618  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 8072B61C  28 00 00 00 */	cmplwi r0, 0
/* 8072B620  41 82 00 0C */	beq lbl_8072B62C
/* 8072B624  80 7F 05 E0 */	lwz r3, 0x5e0(r31)
/* 8072B628  4B 8E 5C E9 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_8072B62C:
/* 8072B62C  88 DF 06 AC */	lbz r6, 0x6ac(r31)
/* 8072B630  7C C0 07 75 */	extsb. r0, r6
/* 8072B634  41 82 00 34 */	beq lbl_8072B668
/* 8072B638  3C 60 80 73 */	lis r3, data_8072C454@ha /* 0x8072C454@ha */
/* 8072B63C  38 A3 C4 54 */	addi r5, r3, data_8072C454@l /* 0x8072C454@l */
/* 8072B640  88 85 00 00 */	lbz r4, 0(r5)
/* 8072B644  3C 60 80 73 */	lis r3, stick_bit@ha /* 0x8072C284@ha */
/* 8072B648  38 63 C2 84 */	addi r3, r3, stick_bit@l /* 0x8072C284@l */
/* 8072B64C  7C C0 07 74 */	extsb r0, r6
/* 8072B650  7C 63 02 14 */	add r3, r3, r0
/* 8072B654  88 03 FF FF */	lbz r0, -1(r3)
/* 8072B658  7C 80 00 78 */	andc r0, r4, r0
/* 8072B65C  98 05 00 00 */	stb r0, 0(r5)
/* 8072B660  38 00 00 00 */	li r0, 0
/* 8072B664  98 1F 06 AC */	stb r0, 0x6ac(r31)
lbl_8072B668:
/* 8072B668  38 60 00 01 */	li r3, 1
/* 8072B66C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8072B670  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8072B674  7C 08 03 A6 */	mtlr r0
/* 8072B678  38 21 00 10 */	addi r1, r1, 0x10
/* 8072B67C  4E 80 00 20 */	blr 
