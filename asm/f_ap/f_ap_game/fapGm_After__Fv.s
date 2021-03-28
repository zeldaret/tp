lbl_80018A44:
/* 80018A44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80018A48  7C 08 02 A6 */	mflr r0
/* 80018A4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80018A50  48 00 63 C1 */	bl fopScnM_Management__Fv
/* 80018A54  48 00 5B FD */	bl fopOvlpM_Management__Fv
/* 80018A58  48 00 59 1D */	bl fopCamM_Management__Fv
/* 80018A5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80018A60  7C 08 03 A6 */	mtlr r0
/* 80018A64  38 21 00 10 */	addi r1, r1, 0x10
/* 80018A68  4E 80 00 20 */	blr 
