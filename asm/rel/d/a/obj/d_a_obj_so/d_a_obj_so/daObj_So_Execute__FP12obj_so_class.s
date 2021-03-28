lbl_80CE2EAC:
/* 80CE2EAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE2EB0  7C 08 02 A6 */	mflr r0
/* 80CE2EB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE2EB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE2EBC  7C 7F 1B 78 */	mr r31, r3
/* 80CE2EC0  A8 63 0D AC */	lha r3, 0xdac(r3)
/* 80CE2EC4  38 03 00 01 */	addi r0, r3, 1
/* 80CE2EC8  B0 1F 0D AC */	sth r0, 0xdac(r31)
/* 80CE2ECC  3C 60 80 CE */	lis r3, l_HIO@ha
/* 80CE2ED0  38 63 3C A0 */	addi r3, r3, l_HIO@l
/* 80CE2ED4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CE2ED8  D0 1F 04 EC */	stfs f0, 0x4ec(r31)
/* 80CE2EDC  38 60 00 00 */	li r3, 0
/* 80CE2EE0  38 00 00 02 */	li r0, 2
/* 80CE2EE4  7C 09 03 A6 */	mtctr r0
lbl_80CE2EE8:
/* 80CE2EE8  38 A3 0D B2 */	addi r5, r3, 0xdb2
/* 80CE2EEC  7C 9F 2A AE */	lhax r4, r31, r5
/* 80CE2EF0  2C 04 00 00 */	cmpwi r4, 0
/* 80CE2EF4  41 82 00 0C */	beq lbl_80CE2F00
/* 80CE2EF8  38 04 FF FF */	addi r0, r4, -1
/* 80CE2EFC  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_80CE2F00:
/* 80CE2F00  38 63 00 02 */	addi r3, r3, 2
/* 80CE2F04  42 00 FF E4 */	bdnz lbl_80CE2EE8
/* 80CE2F08  7F E3 FB 78 */	mr r3, r31
/* 80CE2F0C  4B FF E3 CD */	bl action__FP12obj_so_class
/* 80CE2F10  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CE2F14  7C 03 07 74 */	extsb r3, r0
/* 80CE2F18  4B 34 A1 54 */	b dComIfGp_getReverb__Fi
/* 80CE2F1C  7C 65 1B 78 */	mr r5, r3
/* 80CE2F20  38 7F 0D 1C */	addi r3, r31, 0xd1c
/* 80CE2F24  38 80 00 00 */	li r4, 0
/* 80CE2F28  81 9F 0D 1C */	lwz r12, 0xd1c(r31)
/* 80CE2F2C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80CE2F30  7D 89 03 A6 */	mtctr r12
/* 80CE2F34  4E 80 04 21 */	bctrl 
/* 80CE2F38  7F E3 FB 78 */	mr r3, r31
/* 80CE2F3C  4B FF E5 A1 */	bl part_move__FP12obj_so_class
/* 80CE2F40  7F E3 FB 78 */	mr r3, r31
/* 80CE2F44  4B FF FB 99 */	bl demo_camera__FP12obj_so_class
/* 80CE2F48  38 60 00 01 */	li r3, 1
/* 80CE2F4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE2F50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE2F54  7C 08 03 A6 */	mtlr r0
/* 80CE2F58  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE2F5C  4E 80 00 20 */	blr 
