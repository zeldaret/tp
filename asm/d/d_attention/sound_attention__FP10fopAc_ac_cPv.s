lbl_80071D6C:
/* 80071D6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80071D70  7C 08 02 A6 */	mflr r0
/* 80071D74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80071D78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80071D7C  93 C1 00 08 */	stw r30, 8(r1)
/* 80071D80  7C 7E 1B 78 */	mr r30, r3
/* 80071D84  7C 9F 23 78 */	mr r31, r4
/* 80071D88  7F E3 FB 78 */	mr r3, r31
/* 80071D8C  7F C4 F3 78 */	mr r4, r30
/* 80071D90  4B FF FF 31 */	bl EnemyDistance__12dAttention_cFP10fopAc_ac_c
/* 80071D94  C0 02 8C 50 */	lfs f0, lit_4071(r2)
/* 80071D98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80071D9C  40 80 00 0C */	bge lbl_80071DA8
/* 80071DA0  38 60 00 00 */	li r3, 0
/* 80071DA4  48 00 00 30 */	b lbl_80071DD4
lbl_80071DA8:
/* 80071DA8  C0 1F 05 18 */	lfs f0, 0x518(r31)
/* 80071DAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80071DB0  40 80 00 20 */	bge lbl_80071DD0
/* 80071DB4  28 1E 00 00 */	cmplwi r30, 0
/* 80071DB8  41 82 00 0C */	beq lbl_80071DC4
/* 80071DBC  80 1E 00 04 */	lwz r0, 4(r30)
/* 80071DC0  48 00 00 08 */	b lbl_80071DC8
lbl_80071DC4:
/* 80071DC4  38 00 FF FF */	li r0, -1
lbl_80071DC8:
/* 80071DC8  90 1F 05 14 */	stw r0, 0x514(r31)
/* 80071DCC  D0 3F 05 18 */	stfs f1, 0x518(r31)
lbl_80071DD0:
/* 80071DD0  38 60 00 00 */	li r3, 0
lbl_80071DD4:
/* 80071DD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80071DD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80071DDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80071DE0  7C 08 03 A6 */	mtlr r0
/* 80071DE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80071DE8  4E 80 00 20 */	blr 
