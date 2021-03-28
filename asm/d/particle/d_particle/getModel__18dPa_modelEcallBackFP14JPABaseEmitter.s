lbl_8004AD58:
/* 8004AD58  80 8D 89 18 */	lwz r4, mModel__18dPa_modelEcallBack(r13)
/* 8004AD5C  28 04 00 00 */	cmplwi r4, 0
/* 8004AD60  41 82 00 28 */	beq lbl_8004AD88
/* 8004AD64  28 03 00 00 */	cmplwi r3, 0
/* 8004AD68  41 82 00 20 */	beq lbl_8004AD88
/* 8004AD6C  80 63 00 C0 */	lwz r3, 0xc0(r3)
/* 8004AD70  3C 03 00 01 */	addis r0, r3, 1
/* 8004AD74  28 00 FF FF */	cmplwi r0, 0xffff
/* 8004AD78  41 82 00 10 */	beq lbl_8004AD88
/* 8004AD7C  1C 03 03 94 */	mulli r0, r3, 0x394
/* 8004AD80  7C 64 02 14 */	add r3, r4, r0
/* 8004AD84  4E 80 00 20 */	blr 
lbl_8004AD88:
/* 8004AD88  38 60 00 00 */	li r3, 0
/* 8004AD8C  4E 80 00 20 */	blr 
