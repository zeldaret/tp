lbl_80736840:
/* 80736840  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80736844  7C 08 02 A6 */	mflr r0
/* 80736848  90 01 00 14 */	stw r0, 0x14(r1)
/* 8073684C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80736850  7C 7F 1B 78 */	mr r31, r3
/* 80736854  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80736858  3C 80 80 74 */	lis r4, d_a_e_oct_bg__stringBase0@ha /* 0x80739E44@ha */
/* 8073685C  38 84 9E 44 */	addi r4, r4, d_a_e_oct_bg__stringBase0@l /* 0x80739E44@l */
/* 80736860  4B 8F 67 A9 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80736864  88 1F 0B B3 */	lbz r0, 0xbb3(r31)
/* 80736868  28 00 00 00 */	cmplwi r0, 0
/* 8073686C  41 82 00 10 */	beq lbl_8073687C
/* 80736870  38 00 00 00 */	li r0, 0
/* 80736874  3C 60 80 74 */	lis r3, struct_8073A13C+0x1@ha /* 0x8073A13D@ha */
/* 80736878  98 03 A1 3D */	stb r0, struct_8073A13C+0x1@l(r3)  /* 0x8073A13D@l */
lbl_8073687C:
/* 8073687C  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80736880  28 00 00 00 */	cmplwi r0, 0
/* 80736884  41 82 00 0C */	beq lbl_80736890
/* 80736888  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8073688C  4B 8D AA 85 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80736890:
/* 80736890  38 60 00 01 */	li r3, 1
/* 80736894  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80736898  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8073689C  7C 08 03 A6 */	mtlr r0
/* 807368A0  38 21 00 10 */	addi r1, r1, 0x10
/* 807368A4  4E 80 00 20 */	blr 
