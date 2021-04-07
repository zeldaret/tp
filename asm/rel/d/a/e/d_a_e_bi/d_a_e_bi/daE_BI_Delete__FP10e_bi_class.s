lbl_8068CAA0:
/* 8068CAA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068CAA4  7C 08 02 A6 */	mflr r0
/* 8068CAA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068CAAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8068CAB0  7C 7F 1B 78 */	mr r31, r3
/* 8068CAB4  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8068CAB8  3C 80 80 69 */	lis r4, d_a_e_bi__stringBase0@ha /* 0x8068D8D8@ha */
/* 8068CABC  38 84 D8 D8 */	addi r4, r4, d_a_e_bi__stringBase0@l /* 0x8068D8D8@l */
/* 8068CAC0  4B 9A 05 49 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8068CAC4  88 1F 0B FC */	lbz r0, 0xbfc(r31)
/* 8068CAC8  28 00 00 00 */	cmplwi r0, 0
/* 8068CACC  41 82 00 10 */	beq lbl_8068CADC
/* 8068CAD0  38 00 00 00 */	li r0, 0
/* 8068CAD4  3C 60 80 69 */	lis r3, struct_8068DB1C+0x1@ha /* 0x8068DB1D@ha */
/* 8068CAD8  98 03 DB 1D */	stb r0, struct_8068DB1C+0x1@l(r3)  /* 0x8068DB1D@l */
lbl_8068CADC:
/* 8068CADC  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 8068CAE0  28 00 00 00 */	cmplwi r0, 0
/* 8068CAE4  41 82 00 0C */	beq lbl_8068CAF0
/* 8068CAE8  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 8068CAEC  4B 98 48 25 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_8068CAF0:
/* 8068CAF0  38 60 00 01 */	li r3, 1
/* 8068CAF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8068CAF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8068CAFC  7C 08 03 A6 */	mtlr r0
/* 8068CB00  38 21 00 10 */	addi r1, r1, 0x10
/* 8068CB04  4E 80 00 20 */	blr 
