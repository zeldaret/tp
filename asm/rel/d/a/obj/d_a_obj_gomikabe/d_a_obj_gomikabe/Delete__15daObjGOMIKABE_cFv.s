lbl_80BFFB1C:
/* 80BFFB1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFFB20  7C 08 02 A6 */	mflr r0
/* 80BFFB24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFFB28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFFB2C  7C 7F 1B 78 */	mr r31, r3
/* 80BFFB30  38 7F 0F B0 */	addi r3, r31, 0xfb0
/* 80BFFB34  3C 80 80 C0 */	lis r4, l_arcName@ha
/* 80BFFB38  38 84 FD 30 */	addi r4, r4, l_arcName@l
/* 80BFFB3C  80 84 00 00 */	lwz r4, 0(r4)
/* 80BFFB40  4B 42 D4 C8 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BFFB44  88 1F 13 C0 */	lbz r0, 0x13c0(r31)
/* 80BFFB48  28 00 00 00 */	cmplwi r0, 0
/* 80BFFB4C  41 82 00 10 */	beq lbl_80BFFB5C
/* 80BFFB50  38 00 00 00 */	li r0, 0
/* 80BFFB54  3C 60 80 C0 */	lis r3, data_80BFFE08@ha
/* 80BFFB58  98 03 FE 08 */	stb r0, data_80BFFE08@l(r3)
lbl_80BFFB5C:
/* 80BFFB5C  38 60 00 01 */	li r3, 1
/* 80BFFB60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFFB64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFFB68  7C 08 03 A6 */	mtlr r0
/* 80BFFB6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFFB70  4E 80 00 20 */	blr 
