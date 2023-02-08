lbl_80CC32F4:
/* 80CC32F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC32F8  7C 08 02 A6 */	mflr r0
/* 80CC32FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC3300  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC3304  7C 7F 1B 78 */	mr r31, r3
/* 80CC3308  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80CC330C  3C 80 80 CC */	lis r4, d_a_obj_rw__stringBase0@ha /* 0x80CC3B4C@ha */
/* 80CC3310  38 84 3B 4C */	addi r4, r4, d_a_obj_rw__stringBase0@l /* 0x80CC3B4C@l */
/* 80CC3314  4B 36 9C F5 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CC3318  88 1F 0E 39 */	lbz r0, 0xe39(r31)
/* 80CC331C  28 00 00 00 */	cmplwi r0, 0
/* 80CC3320  41 82 00 10 */	beq lbl_80CC3330
/* 80CC3324  38 00 00 00 */	li r0, 0
/* 80CC3328  3C 60 80 CC */	lis r3, data_80CC3C80@ha /* 0x80CC3C80@ha */
/* 80CC332C  98 03 3C 80 */	stb r0, data_80CC3C80@l(r3)  /* 0x80CC3C80@l */
lbl_80CC3330:
/* 80CC3330  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80CC3334  28 00 00 00 */	cmplwi r0, 0
/* 80CC3338  41 82 00 18 */	beq lbl_80CC3350
/* 80CC333C  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 80CC3340  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 80CC3344  81 8C 00 08 */	lwz r12, 8(r12)
/* 80CC3348  7D 89 03 A6 */	mtctr r12
/* 80CC334C  4E 80 04 21 */	bctrl 
lbl_80CC3350:
/* 80CC3350  38 60 00 01 */	li r3, 1
/* 80CC3354  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC3358  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC335C  7C 08 03 A6 */	mtlr r0
/* 80CC3360  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC3364  4E 80 00 20 */	blr 
