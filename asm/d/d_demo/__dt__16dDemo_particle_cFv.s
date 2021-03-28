lbl_80039F9C:
/* 80039F9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80039FA0  7C 08 02 A6 */	mflr r0
/* 80039FA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80039FA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80039FAC  93 C1 00 08 */	stw r30, 8(r1)
/* 80039FB0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80039FB4  7C 9F 23 78 */	mr r31, r4
/* 80039FB8  41 82 00 28 */	beq lbl_80039FE0
/* 80039FBC  3C 80 80 3A */	lis r4, __vt__16dDemo_particle_c@ha
/* 80039FC0  38 04 79 10 */	addi r0, r4, __vt__16dDemo_particle_c@l
/* 80039FC4  90 1E 00 00 */	stw r0, 0(r30)
/* 80039FC8  38 80 00 00 */	li r4, 0
/* 80039FCC  48 25 43 D5 */	bl __dt__Q217JStudio_JParticle13TCreateObjectFv
/* 80039FD0  7F E0 07 35 */	extsh. r0, r31
/* 80039FD4  40 81 00 0C */	ble lbl_80039FE0
/* 80039FD8  7F C3 F3 78 */	mr r3, r30
/* 80039FDC  48 29 4D 61 */	bl __dl__FPv
lbl_80039FE0:
/* 80039FE0  7F C3 F3 78 */	mr r3, r30
/* 80039FE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80039FE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80039FEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80039FF0  7C 08 03 A6 */	mtlr r0
/* 80039FF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80039FF8  4E 80 00 20 */	blr 
