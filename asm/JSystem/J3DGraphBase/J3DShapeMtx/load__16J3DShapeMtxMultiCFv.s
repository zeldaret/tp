lbl_80313E4C:
/* 80313E4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80313E50  7C 08 02 A6 */	mflr r0
/* 80313E54  90 01 00 34 */	stw r0, 0x34(r1)
/* 80313E58  39 61 00 30 */	addi r11, r1, 0x30
/* 80313E5C  48 04 E3 79 */	bl _savegpr_27
/* 80313E60  7C 7B 1B 78 */	mr r27, r3
/* 80313E64  80 0D 90 28 */	lwz r0, sCurrentPipeline__11J3DShapeMtx(r13)
/* 80313E68  1C 80 00 0C */	mulli r4, r0, 0xc
/* 80313E6C  3C 60 80 3D */	lis r3, sMtxLoadPipeline__11J3DShapeMtx@ha
/* 80313E70  38 03 D9 C0 */	addi r0, r3, sMtxLoadPipeline__11J3DShapeMtx@l
/* 80313E74  7C 80 22 14 */	add r4, r0, r4
/* 80313E78  80 64 00 00 */	lwz r3, 0(r4)
/* 80313E7C  80 04 00 04 */	lwz r0, 4(r4)
/* 80313E80  90 61 00 08 */	stw r3, 8(r1)
/* 80313E84  90 01 00 0C */	stw r0, 0xc(r1)
/* 80313E88  80 04 00 08 */	lwz r0, 8(r4)
/* 80313E8C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80313E90  A3 BB 00 08 */	lhz r29, 8(r27)
/* 80313E94  3B 80 00 00 */	li r28, 0
/* 80313E98  3B E0 00 00 */	li r31, 0
/* 80313E9C  83 DB 00 0C */	lwz r30, 0xc(r27)
/* 80313EA0  48 00 00 2C */	b lbl_80313ECC
lbl_80313EA4:
/* 80313EA4  7C BE FA 2E */	lhzx r5, r30, r31
/* 80313EA8  28 05 FF FF */	cmplwi r5, 0xffff
/* 80313EAC  41 82 00 18 */	beq lbl_80313EC4
/* 80313EB0  7F 63 DB 78 */	mr r3, r27
/* 80313EB4  7F 84 E3 78 */	mr r4, r28
/* 80313EB8  39 81 00 08 */	addi r12, r1, 8
/* 80313EBC  48 04 E1 C9 */	bl __ptmf_scall
/* 80313EC0  60 00 00 00 */	nop 
lbl_80313EC4:
/* 80313EC4  3B 9C 00 01 */	addi r28, r28, 1
/* 80313EC8  3B FF 00 02 */	addi r31, r31, 2
lbl_80313ECC:
/* 80313ECC  7C 1C E8 00 */	cmpw r28, r29
/* 80313ED0  41 80 FF D4 */	blt lbl_80313EA4
/* 80313ED4  39 61 00 30 */	addi r11, r1, 0x30
/* 80313ED8  48 04 E3 49 */	bl _restgpr_27
/* 80313EDC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80313EE0  7C 08 03 A6 */	mtlr r0
/* 80313EE4  38 21 00 30 */	addi r1, r1, 0x30
/* 80313EE8  4E 80 00 20 */	blr 
