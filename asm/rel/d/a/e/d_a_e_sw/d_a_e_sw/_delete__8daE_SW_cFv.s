lbl_807AC170:
/* 807AC170  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807AC174  7C 08 02 A6 */	mflr r0
/* 807AC178  90 01 00 14 */	stw r0, 0x14(r1)
/* 807AC17C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807AC180  7C 7F 1B 78 */	mr r31, r3
/* 807AC184  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 807AC188  3C 80 80 7B */	lis r4, d_a_e_sw__stringBase0@ha /* 0x807AFE70@ha */
/* 807AC18C  38 84 FE 70 */	addi r4, r4, d_a_e_sw__stringBase0@l /* 0x807AFE70@l */
/* 807AC190  4B 88 0E 79 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 807AC194  88 1F 0A F9 */	lbz r0, 0xaf9(r31)
/* 807AC198  28 00 00 00 */	cmplwi r0, 0
/* 807AC19C  41 82 00 10 */	beq lbl_807AC1AC
/* 807AC1A0  38 00 00 00 */	li r0, 0
/* 807AC1A4  3C 60 80 7B */	lis r3, struct_807B0200+0x3@ha /* 0x807B0203@ha */
/* 807AC1A8  98 03 02 03 */	stb r0, struct_807B0200+0x3@l(r3)  /* 0x807B0203@l */
lbl_807AC1AC:
/* 807AC1AC  88 1F 0A F8 */	lbz r0, 0xaf8(r31)
/* 807AC1B0  28 00 00 00 */	cmplwi r0, 0
/* 807AC1B4  41 82 00 18 */	beq lbl_807AC1CC
/* 807AC1B8  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 807AC1BC  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 807AC1C0  81 8C 00 08 */	lwz r12, 8(r12)
/* 807AC1C4  7D 89 03 A6 */	mtctr r12
/* 807AC1C8  4E 80 04 21 */	bctrl 
lbl_807AC1CC:
/* 807AC1CC  38 60 00 01 */	li r3, 1
/* 807AC1D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807AC1D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807AC1D8  7C 08 03 A6 */	mtlr r0
/* 807AC1DC  38 21 00 10 */	addi r1, r1, 0x10
/* 807AC1E0  4E 80 00 20 */	blr 
