lbl_80272EB8:
/* 80272EB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80272EBC  7C 08 02 A6 */	mflr r0
/* 80272EC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80272EC4  3C 60 80 43 */	lis r3, clear_z_tobj@ha /* 0x80430FF0@ha */
/* 80272EC8  38 63 0F F0 */	addi r3, r3, clear_z_tobj@l /* 0x80430FF0@l */
/* 80272ECC  3C 80 80 3C */	lis r4, clear_z_TX@ha /* 0x803C4060@ha */
/* 80272ED0  38 84 40 60 */	addi r4, r4, clear_z_TX@l /* 0x803C4060@l */
/* 80272ED4  38 A0 00 04 */	li r5, 4
/* 80272ED8  38 C0 00 04 */	li r6, 4
/* 80272EDC  38 E0 00 16 */	li r7, 0x16
/* 80272EE0  39 00 00 01 */	li r8, 1
/* 80272EE4  39 20 00 01 */	li r9, 1
/* 80272EE8  39 40 00 00 */	li r10, 0
/* 80272EEC  48 0E AF 55 */	bl GXInitTexObj
/* 80272EF0  3C 60 80 43 */	lis r3, clear_z_tobj@ha /* 0x80430FF0@ha */
/* 80272EF4  38 63 0F F0 */	addi r3, r3, clear_z_tobj@l /* 0x80430FF0@l */
/* 80272EF8  38 80 00 00 */	li r4, 0
/* 80272EFC  38 A0 00 00 */	li r5, 0
/* 80272F00  C0 22 B8 50 */	lfs f1, lit_2198(r2)
/* 80272F04  FC 40 08 90 */	fmr f2, f1
/* 80272F08  FC 60 08 90 */	fmr f3, f1
/* 80272F0C  38 C0 00 00 */	li r6, 0
/* 80272F10  38 E0 00 00 */	li r7, 0
/* 80272F14  39 00 00 00 */	li r8, 0
/* 80272F18  48 0E B1 BD */	bl GXInitTexObjLOD
/* 80272F1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80272F20  7C 08 03 A6 */	mtlr r0
/* 80272F24  38 21 00 10 */	addi r1, r1, 0x10
/* 80272F28  4E 80 00 20 */	blr 
