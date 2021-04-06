lbl_8068FFB0:
/* 8068FFB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8068FFB4  7C 08 02 A6 */	mflr r0
/* 8068FFB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8068FFBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8068FFC0  7C 7F 1B 78 */	mr r31, r3
/* 8068FFC4  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8068FFC8  3C 80 80 69 */	lis r4, d_a_e_bs__stringBase0@ha /* 0x80690EB8@ha */
/* 8068FFCC  38 84 0E B8 */	addi r4, r4, d_a_e_bs__stringBase0@l /* 0x80690EB8@l */
/* 8068FFD0  4B 99 D0 39 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8068FFD4  88 1F 0C F8 */	lbz r0, 0xcf8(r31)
/* 8068FFD8  28 00 00 00 */	cmplwi r0, 0
/* 8068FFDC  41 82 00 10 */	beq lbl_8068FFEC
/* 8068FFE0  38 00 00 00 */	li r0, 0
/* 8068FFE4  3C 60 80 69 */	lis r3, data_80691090@ha /* 0x80691090@ha */
/* 8068FFE8  98 03 10 90 */	stb r0, data_80691090@l(r3)  /* 0x80691090@l */
lbl_8068FFEC:
/* 8068FFEC  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 8068FFF0  28 00 00 00 */	cmplwi r0, 0
/* 8068FFF4  41 82 00 0C */	beq lbl_80690000
/* 8068FFF8  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 8068FFFC  4B 98 13 15 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80690000:
/* 80690000  38 60 00 01 */	li r3, 1
/* 80690004  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80690008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8069000C  7C 08 03 A6 */	mtlr r0
/* 80690010  38 21 00 10 */	addi r1, r1, 0x10
/* 80690014  4E 80 00 20 */	blr 
