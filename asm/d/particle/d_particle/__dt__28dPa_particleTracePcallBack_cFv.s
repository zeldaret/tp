lbl_8004FC68:
/* 8004FC68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004FC6C  7C 08 02 A6 */	mflr r0
/* 8004FC70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004FC74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004FC78  93 C1 00 08 */	stw r30, 8(r1)
/* 8004FC7C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8004FC80  7C 9F 23 78 */	mr r31, r4
/* 8004FC84  41 82 00 28 */	beq lbl_8004FCAC
/* 8004FC88  3C 80 80 3B */	lis r4, __vt__28dPa_particleTracePcallBack_c@ha
/* 8004FC8C  38 04 83 8C */	addi r0, r4, __vt__28dPa_particleTracePcallBack_c@l
/* 8004FC90  90 1E 00 00 */	stw r0, 0(r30)
/* 8004FC94  38 80 00 00 */	li r4, 0
/* 8004FC98  48 22 F3 0D */	bl __dt__19JPAParticleCallBackFv
/* 8004FC9C  7F E0 07 35 */	extsh. r0, r31
/* 8004FCA0  40 81 00 0C */	ble lbl_8004FCAC
/* 8004FCA4  7F C3 F3 78 */	mr r3, r30
/* 8004FCA8  48 27 F0 95 */	bl __dl__FPv
lbl_8004FCAC:
/* 8004FCAC  7F C3 F3 78 */	mr r3, r30
/* 8004FCB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004FCB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8004FCB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004FCBC  7C 08 03 A6 */	mtlr r0
/* 8004FCC0  38 21 00 10 */	addi r1, r1, 0x10
/* 8004FCC4  4E 80 00 20 */	blr 
