lbl_80820A40:
/* 80820A40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80820A44  7C 08 02 A6 */	mflr r0
/* 80820A48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80820A4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80820A50  7C 7F 1B 78 */	mr r31, r3
/* 80820A54  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80820A58  3C 80 80 82 */	lis r4, d_a_e_ymb__stringBase0@ha /* 0x80821B04@ha */
/* 80820A5C  38 84 1B 04 */	addi r4, r4, d_a_e_ymb__stringBase0@l /* 0x80821B04@l */
/* 80820A60  4B 80 C5 A9 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80820A64  88 1F 15 20 */	lbz r0, 0x1520(r31)
/* 80820A68  28 00 00 00 */	cmplwi r0, 0
/* 80820A6C  41 82 00 10 */	beq lbl_80820A7C
/* 80820A70  38 00 00 00 */	li r0, 0
/* 80820A74  3C 60 80 82 */	lis r3, struct_80821E54+0x1@ha /* 0x80821E55@ha */
/* 80820A78  98 03 1E 55 */	stb r0, struct_80821E54+0x1@l(r3)  /* 0x80821E55@l */
lbl_80820A7C:
/* 80820A7C  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80820A80  28 00 00 00 */	cmplwi r0, 0
/* 80820A84  41 82 00 18 */	beq lbl_80820A9C
/* 80820A88  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 80820A8C  81 9F 05 C4 */	lwz r12, 0x5c4(r31)
/* 80820A90  81 8C 00 08 */	lwz r12, 8(r12)
/* 80820A94  7D 89 03 A6 */	mtctr r12
/* 80820A98  4E 80 04 21 */	bctrl 
lbl_80820A9C:
/* 80820A9C  80 9F 07 98 */	lwz r4, 0x798(r31)
/* 80820AA0  28 04 00 00 */	cmplwi r4, 0
/* 80820AA4  41 82 00 14 */	beq lbl_80820AB8
/* 80820AA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80820AAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80820AB0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80820AB4  4B 85 37 9D */	bl Release__4cBgSFP9dBgW_Base
lbl_80820AB8:
/* 80820AB8  38 60 00 01 */	li r3, 1
/* 80820ABC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80820AC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80820AC4  7C 08 03 A6 */	mtlr r0
/* 80820AC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80820ACC  4E 80 00 20 */	blr 
