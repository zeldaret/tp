lbl_80BDB928:
/* 80BDB928  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDB92C  7C 08 02 A6 */	mflr r0
/* 80BDB930  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDB934  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDB938  7C 7F 1B 78 */	mr r31, r3
/* 80BDB93C  38 7F 0A 60 */	addi r3, r31, 0xa60
/* 80BDB940  3C 80 80 BE */	lis r4, d_a_obj_dan__stringBase0@ha /* 0x80BDC46C@ha */
/* 80BDB944  38 84 C4 6C */	addi r4, r4, d_a_obj_dan__stringBase0@l /* 0x80BDC46C@l */
/* 80BDB948  4B 45 16 C1 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BDB94C  88 1F 0A 68 */	lbz r0, 0xa68(r31)
/* 80BDB950  28 00 00 00 */	cmplwi r0, 0
/* 80BDB954  41 82 00 10 */	beq lbl_80BDB964
/* 80BDB958  38 00 00 00 */	li r0, 0
/* 80BDB95C  3C 60 80 BE */	lis r3, data_80BDC568@ha /* 0x80BDC568@ha */
/* 80BDB960  98 03 C5 68 */	stb r0, data_80BDC568@l(r3)  /* 0x80BDC568@l */
lbl_80BDB964:
/* 80BDB964  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80BDB968  28 00 00 00 */	cmplwi r0, 0
/* 80BDB96C  41 82 00 0C */	beq lbl_80BDB978
/* 80BDB970  80 7F 08 44 */	lwz r3, 0x844(r31)
/* 80BDB974  4B 43 59 9D */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80BDB978:
/* 80BDB978  38 60 00 01 */	li r3, 1
/* 80BDB97C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDB980  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDB984  7C 08 03 A6 */	mtlr r0
/* 80BDB988  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDB98C  4E 80 00 20 */	blr 
