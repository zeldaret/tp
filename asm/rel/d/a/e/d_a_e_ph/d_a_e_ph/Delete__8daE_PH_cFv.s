lbl_80741200:
/* 80741200  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80741204  7C 08 02 A6 */	mflr r0
/* 80741208  90 01 00 14 */	stw r0, 0x14(r1)
/* 8074120C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80741210  7C 7F 1B 78 */	mr r31, r3
/* 80741214  38 7F 06 6C */	addi r3, r31, 0x66c
/* 80741218  3C 80 80 74 */	lis r4, d_a_e_ph__stringBase0@ha /* 0x80741D0C@ha */
/* 8074121C  38 84 1D 0C */	addi r4, r4, d_a_e_ph__stringBase0@l /* 0x80741D0C@l */
/* 80741220  4B 8E BD E9 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80741224  88 1F 0A D0 */	lbz r0, 0xad0(r31)
/* 80741228  28 00 00 00 */	cmplwi r0, 0
/* 8074122C  41 82 00 10 */	beq lbl_8074123C
/* 80741230  38 00 00 00 */	li r0, 0
/* 80741234  3C 60 80 74 */	lis r3, data_80741DC0@ha /* 0x80741DC0@ha */
/* 80741238  98 03 1D C0 */	stb r0, data_80741DC0@l(r3)  /* 0x80741DC0@l */
lbl_8074123C:
/* 8074123C  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80741240  28 00 00 00 */	cmplwi r0, 0
/* 80741244  41 82 00 0C */	beq lbl_80741250
/* 80741248  80 7F 07 1C */	lwz r3, 0x71c(r31)
/* 8074124C  4B 8D 00 C5 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80741250:
/* 80741250  38 60 00 01 */	li r3, 1
/* 80741254  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80741258  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8074125C  7C 08 03 A6 */	mtlr r0
/* 80741260  38 21 00 10 */	addi r1, r1, 0x10
/* 80741264  4E 80 00 20 */	blr 
