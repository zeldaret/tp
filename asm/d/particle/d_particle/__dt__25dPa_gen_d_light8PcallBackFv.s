lbl_8004FD4C:
/* 8004FD4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004FD50  7C 08 02 A6 */	mflr r0
/* 8004FD54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004FD58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004FD5C  93 C1 00 08 */	stw r30, 8(r1)
/* 8004FD60  7C 7E 1B 79 */	or. r30, r3, r3
/* 8004FD64  7C 9F 23 78 */	mr r31, r4
/* 8004FD68  41 82 00 28 */	beq lbl_8004FD90
/* 8004FD6C  3C 80 80 3B */	lis r4, __vt__25dPa_gen_d_light8PcallBack@ha
/* 8004FD70  38 04 83 C4 */	addi r0, r4, __vt__25dPa_gen_d_light8PcallBack@l
/* 8004FD74  90 1E 00 00 */	stw r0, 0(r30)
/* 8004FD78  38 80 00 00 */	li r4, 0
/* 8004FD7C  48 22 F2 29 */	bl __dt__19JPAParticleCallBackFv
/* 8004FD80  7F E0 07 35 */	extsh. r0, r31
/* 8004FD84  40 81 00 0C */	ble lbl_8004FD90
/* 8004FD88  7F C3 F3 78 */	mr r3, r30
/* 8004FD8C  48 27 EF B1 */	bl __dl__FPv
lbl_8004FD90:
/* 8004FD90  7F C3 F3 78 */	mr r3, r30
/* 8004FD94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004FD98  83 C1 00 08 */	lwz r30, 8(r1)
/* 8004FD9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004FDA0  7C 08 03 A6 */	mtlr r0
/* 8004FDA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8004FDA8  4E 80 00 20 */	blr 
