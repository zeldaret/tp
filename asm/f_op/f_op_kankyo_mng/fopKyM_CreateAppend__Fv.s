lbl_8001F660:
/* 8001F660  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001F664  7C 08 02 A6 */	mflr r0
/* 8001F668  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001F66C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001F670  38 60 FF FC */	li r3, -4
/* 8001F674  38 80 00 1C */	li r4, 0x1c
/* 8001F678  48 24 3B B1 */	bl memalignB__3cMlFiUl
/* 8001F67C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8001F680  41 82 00 20 */	beq lbl_8001F6A0
/* 8001F684  38 80 00 00 */	li r4, 0
/* 8001F688  38 A0 00 1C */	li r5, 0x1c
/* 8001F68C  48 25 02 D1 */	bl cLib_memSet__FPviUl
/* 8001F690  C0 02 82 68 */	lfs f0, lit_3713(r2)
/* 8001F694  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8001F698  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 8001F69C  D0 1F 00 14 */	stfs f0, 0x14(r31)
lbl_8001F6A0:
/* 8001F6A0  7F E3 FB 78 */	mr r3, r31
/* 8001F6A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001F6A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001F6AC  7C 08 03 A6 */	mtlr r0
/* 8001F6B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8001F6B4  4E 80 00 20 */	blr 
