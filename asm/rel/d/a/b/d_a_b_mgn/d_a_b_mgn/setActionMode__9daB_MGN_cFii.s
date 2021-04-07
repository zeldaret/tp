lbl_80607A2C:
/* 80607A2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80607A30  7C 08 02 A6 */	mflr r0
/* 80607A34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80607A38  7C 66 1B 78 */	mr r6, r3
/* 80607A3C  98 83 0A F9 */	stb r4, 0xaf9(r3)
/* 80607A40  98 A3 0A FA */	stb r5, 0xafa(r3)
/* 80607A44  38 00 00 00 */	li r0, 0
/* 80607A48  98 03 05 CC */	stb r0, 0x5cc(r3)
/* 80607A4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80607A50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80607A54  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80607A58  38 63 02 10 */	addi r3, r3, 0x210
/* 80607A5C  80 86 26 18 */	lwz r4, 0x2618(r6)
/* 80607A60  4B A4 3E B9 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 80607A64  28 03 00 00 */	cmplwi r3, 0
/* 80607A68  41 82 00 08 */	beq lbl_80607A70
/* 80607A6C  4B C7 71 F5 */	bl deleteAllParticle__14JPABaseEmitterFv
lbl_80607A70:
/* 80607A70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80607A74  7C 08 03 A6 */	mtlr r0
/* 80607A78  38 21 00 10 */	addi r1, r1, 0x10
/* 80607A7C  4E 80 00 20 */	blr 
