lbl_80813A38:
/* 80813A38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80813A3C  7C 08 02 A6 */	mflr r0
/* 80813A40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80813A44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80813A48  7C 7F 1B 78 */	mr r31, r3
/* 80813A4C  88 03 06 CA */	lbz r0, 0x6ca(r3)
/* 80813A50  28 00 00 01 */	cmplwi r0, 1
/* 80813A54  40 82 00 18 */	bne lbl_80813A6C
/* 80813A58  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80813A5C  3C 80 80 81 */	lis r4, d_a_e_ym__stringBase0@ha /* 0x80815AEC@ha */
/* 80813A60  38 84 5A EC */	addi r4, r4, d_a_e_ym__stringBase0@l /* 0x80815AEC@l */
/* 80813A64  4B 81 95 A5 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80813A68  48 00 00 18 */	b lbl_80813A80
lbl_80813A6C:
/* 80813A6C  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80813A70  3C 80 80 81 */	lis r4, d_a_e_ym__stringBase0@ha /* 0x80815AEC@ha */
/* 80813A74  38 84 5A EC */	addi r4, r4, d_a_e_ym__stringBase0@l /* 0x80815AEC@l */
/* 80813A78  38 84 00 05 */	addi r4, r4, 5
/* 80813A7C  4B 81 95 8D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
lbl_80813A80:
/* 80813A80  88 1F 0A F4 */	lbz r0, 0xaf4(r31)
/* 80813A84  28 00 00 00 */	cmplwi r0, 0
/* 80813A88  41 82 00 10 */	beq lbl_80813A98
/* 80813A8C  38 00 00 00 */	li r0, 0
/* 80813A90  3C 60 80 81 */	lis r3, data_80815D28@ha /* 0x80815D28@ha */
/* 80813A94  98 03 5D 28 */	stb r0, data_80815D28@l(r3)  /* 0x80815D28@l */
lbl_80813A98:
/* 80813A98  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80813A9C  28 00 00 00 */	cmplwi r0, 0
/* 80813AA0  41 82 00 18 */	beq lbl_80813AB8
/* 80813AA4  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 80813AA8  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 80813AAC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80813AB0  7D 89 03 A6 */	mtctr r12
/* 80813AB4  4E 80 04 21 */	bctrl 
lbl_80813AB8:
/* 80813AB8  38 60 00 01 */	li r3, 1
/* 80813ABC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80813AC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80813AC4  7C 08 03 A6 */	mtlr r0
/* 80813AC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80813ACC  4E 80 00 20 */	blr 
