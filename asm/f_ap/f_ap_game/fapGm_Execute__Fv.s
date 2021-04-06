lbl_80018A6C:
/* 80018A6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80018A70  7C 08 02 A6 */	mflr r0
/* 80018A74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80018A78  38 60 00 00 */	li r3, 0
/* 80018A7C  3C 80 80 02 */	lis r4, fapGm_After__Fv@ha /* 0x80018A44@ha */
/* 80018A80  38 84 8A 44 */	addi r4, r4, fapGm_After__Fv@l /* 0x80018A44@l */
/* 80018A84  48 00 96 D5 */	bl fpcM_Management__FPFv_vPFv_v
/* 80018A88  38 60 00 00 */	li r3, 0
/* 80018A8C  48 24 D3 91 */	bl cCt_Counter__Fi
/* 80018A90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80018A94  7C 08 03 A6 */	mtlr r0
/* 80018A98  38 21 00 10 */	addi r1, r1, 0x10
/* 80018A9C  4E 80 00 20 */	blr 
