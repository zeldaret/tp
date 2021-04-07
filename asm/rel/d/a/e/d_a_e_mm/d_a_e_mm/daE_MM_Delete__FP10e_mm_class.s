lbl_8072200C:
/* 8072200C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80722010  7C 08 02 A6 */	mflr r0
/* 80722014  90 01 00 14 */	stw r0, 0x14(r1)
/* 80722018  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8072201C  7C 7F 1B 78 */	mr r31, r3
/* 80722020  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80722024  3C 80 80 72 */	lis r4, d_a_e_mm__stringBase0@ha /* 0x80722CE8@ha */
/* 80722028  38 84 2C E8 */	addi r4, r4, d_a_e_mm__stringBase0@l /* 0x80722CE8@l */
/* 8072202C  4B 90 AF DD */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80722030  88 1F 0C 00 */	lbz r0, 0xc00(r31)
/* 80722034  28 00 00 00 */	cmplwi r0, 0
/* 80722038  41 82 00 10 */	beq lbl_80722048
/* 8072203C  38 00 00 00 */	li r0, 0
/* 80722040  3C 60 80 72 */	lis r3, data_80722EB0@ha /* 0x80722EB0@ha */
/* 80722044  98 03 2E B0 */	stb r0, data_80722EB0@l(r3)  /* 0x80722EB0@l */
lbl_80722048:
/* 80722048  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 8072204C  28 00 00 00 */	cmplwi r0, 0
/* 80722050  41 82 00 18 */	beq lbl_80722068
/* 80722054  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 80722058  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 8072205C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80722060  7D 89 03 A6 */	mtctr r12
/* 80722064  4E 80 04 21 */	bctrl 
lbl_80722068:
/* 80722068  38 60 00 01 */	li r3, 1
/* 8072206C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80722070  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80722074  7C 08 03 A6 */	mtlr r0
/* 80722078  38 21 00 10 */	addi r1, r1, 0x10
/* 8072207C  4E 80 00 20 */	blr 
