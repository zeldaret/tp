lbl_80D54F88:
/* 80D54F88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D54F8C  7C 08 02 A6 */	mflr r0
/* 80D54F90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D54F94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D54F98  7C 7F 1B 78 */	mr r31, r3
/* 80D54F9C  38 7F 05 74 */	addi r3, r31, 0x574
/* 80D54FA0  3C 80 80 D5 */	lis r4, d_a_tag_TWgate__stringBase0@ha /* 0x80D55848@ha */
/* 80D54FA4  38 84 58 48 */	addi r4, r4, d_a_tag_TWgate__stringBase0@l /* 0x80D55848@l */
/* 80D54FA8  38 84 01 0B */	addi r4, r4, 0x10b
/* 80D54FAC  4B 2D 7F 11 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D54FB0  2C 03 00 04 */	cmpwi r3, 4
/* 80D54FB4  40 82 00 28 */	bne lbl_80D54FDC
/* 80D54FB8  38 7F 05 7C */	addi r3, r31, 0x57c
/* 80D54FBC  88 1F 05 DF */	lbz r0, 0x5df(r31)
/* 80D54FC0  28 00 00 00 */	cmplwi r0, 0
/* 80D54FC4  3C 80 80 D5 */	lis r4, d_a_tag_TWgate__stringBase0@ha /* 0x80D55848@ha */
/* 80D54FC8  38 A4 58 48 */	addi r5, r4, d_a_tag_TWgate__stringBase0@l /* 0x80D55848@l */
/* 80D54FCC  38 85 01 1F */	addi r4, r5, 0x11f
/* 80D54FD0  41 82 00 08 */	beq lbl_80D54FD8
/* 80D54FD4  38 85 01 15 */	addi r4, r5, 0x115
lbl_80D54FD8:
/* 80D54FD8  4B 2D 7E E5 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
lbl_80D54FDC:
/* 80D54FDC  2C 03 00 04 */	cmpwi r3, 4
/* 80D54FE0  40 82 00 2C */	bne lbl_80D5500C
/* 80D54FE4  7F E3 FB 78 */	mr r3, r31
/* 80D54FE8  3C 80 80 D5 */	lis r4, createHeapCallBack__13daTagTWGate_cFP10fopAc_ac_c@ha /* 0x80D55160@ha */
/* 80D54FEC  38 84 51 60 */	addi r4, r4, createHeapCallBack__13daTagTWGate_cFP10fopAc_ac_c@l /* 0x80D55160@l */
/* 80D54FF0  38 A0 31 40 */	li r5, 0x3140
/* 80D54FF4  4B 2C 54 BD */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D54FF8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D54FFC  38 60 FF FF */	li r3, -1
/* 80D55000  41 82 00 18 */	beq lbl_80D55018
/* 80D55004  38 60 00 01 */	li r3, 1
/* 80D55008  48 00 00 10 */	b lbl_80D55018
lbl_80D5500C:
/* 80D5500C  38 03 FF FB */	addi r0, r3, -5
/* 80D55010  30 00 FF FF */	addic r0, r0, -1
/* 80D55014  7C 60 01 10 */	subfe r3, r0, r0
lbl_80D55018:
/* 80D55018  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5501C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D55020  7C 08 03 A6 */	mtlr r0
/* 80D55024  38 21 00 10 */	addi r1, r1, 0x10
/* 80D55028  4E 80 00 20 */	blr 
