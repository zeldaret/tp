lbl_80D249D0:
/* 80D249D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D249D4  7C 08 02 A6 */	mflr r0
/* 80D249D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D249DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D249E0  93 C1 00 08 */	stw r30, 8(r1)
/* 80D249E4  7C 7E 1B 78 */	mr r30, r3
/* 80D249E8  7C 9F 23 78 */	mr r31, r4
/* 80D249EC  48 00 00 41 */	bl mode_proc_call__14daObjVolcBom_cFv
/* 80D249F0  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80D249F4  90 1F 00 00 */	stw r0, 0(r31)
/* 80D249F8  7F C3 F3 78 */	mr r3, r30
/* 80D249FC  4B FF F8 3D */	bl setBaseMtx__14daObjVolcBom_cFv
/* 80D24A00  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80D24A04  4B 2E 8A 24 */	b play__14mDoExt_baseAnmFv
/* 80D24A08  80 7E 05 B0 */	lwz r3, 0x5b0(r30)
/* 80D24A0C  4B 2E 8A 1C */	b play__14mDoExt_baseAnmFv
/* 80D24A10  38 60 00 01 */	li r3, 1
/* 80D24A14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D24A18  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D24A1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D24A20  7C 08 03 A6 */	mtlr r0
/* 80D24A24  38 21 00 10 */	addi r1, r1, 0x10
/* 80D24A28  4E 80 00 20 */	blr 
