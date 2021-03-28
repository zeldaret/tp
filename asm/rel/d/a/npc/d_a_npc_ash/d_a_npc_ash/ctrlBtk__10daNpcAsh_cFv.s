lbl_8095C520:
/* 8095C520  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8095C524  7C 08 02 A6 */	mflr r0
/* 8095C528  90 01 00 14 */	stw r0, 0x14(r1)
/* 8095C52C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8095C530  93 C1 00 08 */	stw r30, 8(r1)
/* 8095C534  7C 7E 1B 78 */	mr r30, r3
/* 8095C538  3C 60 80 96 */	lis r3, m__16daNpcAsh_Param_c@ha
/* 8095C53C  3B E3 D6 40 */	addi r31, r3, m__16daNpcAsh_Param_c@l
/* 8095C540  80 1E 0B E0 */	lwz r0, 0xbe0(r30)
/* 8095C544  28 00 00 00 */	cmplwi r0, 0
/* 8095C548  41 82 00 60 */	beq lbl_8095C5A8
/* 8095C54C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8095C550  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8095C554  A8 9E 08 FE */	lha r4, 0x8fe(r30)
/* 8095C558  48 00 07 3D */	bl func_8095CC94
/* 8095C55C  C0 5F 02 44 */	lfs f2, 0x244(r31)
/* 8095C560  C0 1F 02 A0 */	lfs f0, 0x2a0(r31)
/* 8095C564  EC 00 00 72 */	fmuls f0, f0, f1
/* 8095C568  EC 02 00 32 */	fmuls f0, f2, f0
/* 8095C56C  80 7E 0B E0 */	lwz r3, 0xbe0(r30)
/* 8095C570  D0 03 00 FC */	stfs f0, 0xfc(r3)
/* 8095C574  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8095C578  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8095C57C  A8 9E 08 FC */	lha r4, 0x8fc(r30)
/* 8095C580  48 00 07 15 */	bl func_8095CC94
/* 8095C584  C0 1F 02 A4 */	lfs f0, 0x2a4(r31)
/* 8095C588  EC 00 00 72 */	fmuls f0, f0, f1
/* 8095C58C  80 7E 0B E0 */	lwz r3, 0xbe0(r30)
/* 8095C590  D0 03 01 00 */	stfs f0, 0x100(r3)
/* 8095C594  38 00 00 01 */	li r0, 1
/* 8095C598  80 7E 0B E0 */	lwz r3, 0xbe0(r30)
/* 8095C59C  98 03 01 04 */	stb r0, 0x104(r3)
/* 8095C5A0  38 60 00 01 */	li r3, 1
/* 8095C5A4  48 00 00 08 */	b lbl_8095C5AC
lbl_8095C5A8:
/* 8095C5A8  38 60 00 00 */	li r3, 0
lbl_8095C5AC:
/* 8095C5AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8095C5B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8095C5B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8095C5B8  7C 08 03 A6 */	mtlr r0
/* 8095C5BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8095C5C0  4E 80 00 20 */	blr 
