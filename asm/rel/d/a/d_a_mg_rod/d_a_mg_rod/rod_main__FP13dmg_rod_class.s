lbl_804AAB78:
/* 804AAB78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AAB7C  7C 08 02 A6 */	mflr r0
/* 804AAB80  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AAB84  4B FF F3 29 */	bl rod_control__FP13dmg_rod_class
/* 804AAB88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AAB8C  7C 08 03 A6 */	mtlr r0
/* 804AAB90  38 21 00 10 */	addi r1, r1, 0x10
/* 804AAB94  4E 80 00 20 */	blr 
