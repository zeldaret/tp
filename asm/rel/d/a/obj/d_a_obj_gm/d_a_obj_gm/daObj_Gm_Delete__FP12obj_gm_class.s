lbl_80BFCB00:
/* 80BFCB00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFCB04  7C 08 02 A6 */	mflr r0
/* 80BFCB08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFCB0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFCB10  7C 7F 1B 78 */	mr r31, r3
/* 80BFCB14  38 7F 05 68 */	addi r3, r31, 0x568
/* 80BFCB18  3C 80 80 C0 */	lis r4, d_a_obj_gm__stringBase0@ha /* 0x80BFD3C0@ha */
/* 80BFCB1C  38 84 D3 C0 */	addi r4, r4, d_a_obj_gm__stringBase0@l /* 0x80BFD3C0@l */
/* 80BFCB20  4B 43 04 E9 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BFCB24  88 1F 0A F0 */	lbz r0, 0xaf0(r31)
/* 80BFCB28  28 00 00 00 */	cmplwi r0, 0
/* 80BFCB2C  41 82 00 10 */	beq lbl_80BFCB3C
/* 80BFCB30  38 00 00 00 */	li r0, 0
/* 80BFCB34  3C 60 80 C0 */	lis r3, data_80BFD598@ha /* 0x80BFD598@ha */
/* 80BFCB38  98 03 D5 98 */	stb r0, data_80BFD598@l(r3)  /* 0x80BFD598@l */
lbl_80BFCB3C:
/* 80BFCB3C  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80BFCB40  28 00 00 00 */	cmplwi r0, 0
/* 80BFCB44  41 82 00 18 */	beq lbl_80BFCB5C
/* 80BFCB48  38 7F 05 78 */	addi r3, r31, 0x578
/* 80BFCB4C  81 9F 05 78 */	lwz r12, 0x578(r31)
/* 80BFCB50  81 8C 00 08 */	lwz r12, 8(r12)
/* 80BFCB54  7D 89 03 A6 */	mtctr r12
/* 80BFCB58  4E 80 04 21 */	bctrl 
lbl_80BFCB5C:
/* 80BFCB5C  38 60 00 01 */	li r3, 1
/* 80BFCB60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFCB64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFCB68  7C 08 03 A6 */	mtlr r0
/* 80BFCB6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFCB70  4E 80 00 20 */	blr 
