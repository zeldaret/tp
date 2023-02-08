lbl_80D52474:
/* 80D52474  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D52478  7C 08 02 A6 */	mflr r0
/* 80D5247C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D52480  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D52484  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D52488  41 82 00 24 */	beq lbl_80D524AC
/* 80D5248C  38 7F 05 70 */	addi r3, r31, 0x570
/* 80D52490  3C 80 80 D5 */	lis r4, l_arcName@ha /* 0x80D52510@ha */
/* 80D52494  38 84 25 10 */	addi r4, r4, l_arcName@l /* 0x80D52510@l */
/* 80D52498  80 84 00 00 */	lwz r4, 0(r4)
/* 80D5249C  4B 2D AB 6D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80D524A0  7F E3 FB 78 */	mr r3, r31
/* 80D524A4  38 80 00 00 */	li r4, 0
/* 80D524A8  4B 2C 67 E5 */	bl __dt__10fopAc_ac_cFv
lbl_80D524AC:
/* 80D524AC  38 60 00 01 */	li r3, 1
/* 80D524B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D524B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D524B8  7C 08 03 A6 */	mtlr r0
/* 80D524BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D524C0  4E 80 00 20 */	blr 
