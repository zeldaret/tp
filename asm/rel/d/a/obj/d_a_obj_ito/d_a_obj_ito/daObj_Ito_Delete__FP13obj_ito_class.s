lbl_8047CFB0:
/* 8047CFB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047CFB4  7C 08 02 A6 */	mflr r0
/* 8047CFB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047CFBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8047CFC0  7C 7F 1B 78 */	mr r31, r3
/* 8047CFC4  38 7F 05 68 */	addi r3, r31, 0x568
/* 8047CFC8  3C 80 80 48 */	lis r4, d_a_obj_ito__stringBase0@ha /* 0x8047D8D4@ha */
/* 8047CFCC  38 84 D8 D4 */	addi r4, r4, d_a_obj_ito__stringBase0@l /* 0x8047D8D4@l */
/* 8047CFD0  4B BB 00 39 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8047CFD4  88 1F 15 0B */	lbz r0, 0x150b(r31)
/* 8047CFD8  28 00 00 00 */	cmplwi r0, 0
/* 8047CFDC  41 82 00 10 */	beq lbl_8047CFEC
/* 8047CFE0  38 00 00 00 */	li r0, 0
/* 8047CFE4  3C 60 80 48 */	lis r3, data_8047D9C8@ha /* 0x8047D9C8@ha */
/* 8047CFE8  98 03 D9 C8 */	stb r0, data_8047D9C8@l(r3)  /* 0x8047D9C8@l */
lbl_8047CFEC:
/* 8047CFEC  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 8047CFF0  28 00 00 00 */	cmplwi r0, 0
/* 8047CFF4  41 82 00 18 */	beq lbl_8047D00C
/* 8047CFF8  38 7F 05 7C */	addi r3, r31, 0x57c
/* 8047CFFC  81 9F 05 7C */	lwz r12, 0x57c(r31)
/* 8047D000  81 8C 00 08 */	lwz r12, 8(r12)
/* 8047D004  7D 89 03 A6 */	mtctr r12
/* 8047D008  4E 80 04 21 */	bctrl 
lbl_8047D00C:
/* 8047D00C  38 60 00 01 */	li r3, 1
/* 8047D010  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047D014  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047D018  7C 08 03 A6 */	mtlr r0
/* 8047D01C  38 21 00 10 */	addi r1, r1, 0x10
/* 8047D020  4E 80 00 20 */	blr 
