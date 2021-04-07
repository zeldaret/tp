lbl_80755C0C:
/* 80755C0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80755C10  7C 08 02 A6 */	mflr r0
/* 80755C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80755C18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80755C1C  7C 7F 1B 78 */	mr r31, r3
/* 80755C20  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80755C24  3C 80 80 75 */	lis r4, d_a_e_po__stringBase0@ha /* 0x80757A88@ha */
/* 80755C28  38 84 7A 88 */	addi r4, r4, d_a_e_po__stringBase0@l /* 0x80757A88@l */
/* 80755C2C  4B 8D 73 DD */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80755C30  88 1F 0E CC */	lbz r0, 0xecc(r31)
/* 80755C34  28 00 00 00 */	cmplwi r0, 0
/* 80755C38  41 82 00 10 */	beq lbl_80755C48
/* 80755C3C  38 00 00 00 */	li r0, 0
/* 80755C40  3C 60 80 75 */	lis r3, struct_80757E4C+0x1@ha /* 0x80757E4D@ha */
/* 80755C44  98 03 7E 4D */	stb r0, struct_80757E4C+0x1@l(r3)  /* 0x80757E4D@l */
lbl_80755C48:
/* 80755C48  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80755C4C  28 00 00 00 */	cmplwi r0, 0
/* 80755C50  41 82 00 2C */	beq lbl_80755C7C
/* 80755C54  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 80755C58  81 9F 05 F8 */	lwz r12, 0x5f8(r31)
/* 80755C5C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80755C60  7D 89 03 A6 */	mtctr r12
/* 80755C64  4E 80 04 21 */	bctrl 
/* 80755C68  38 7F 06 9C */	addi r3, r31, 0x69c
/* 80755C6C  81 9F 06 9C */	lwz r12, 0x69c(r31)
/* 80755C70  81 8C 00 08 */	lwz r12, 8(r12)
/* 80755C74  7D 89 03 A6 */	mtctr r12
/* 80755C78  4E 80 04 21 */	bctrl 
lbl_80755C7C:
/* 80755C7C  38 60 00 01 */	li r3, 1
/* 80755C80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80755C84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80755C88  7C 08 03 A6 */	mtlr r0
/* 80755C8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80755C90  4E 80 00 20 */	blr 
