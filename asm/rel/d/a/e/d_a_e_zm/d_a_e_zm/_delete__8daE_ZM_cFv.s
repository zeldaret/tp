lbl_80831E9C:
/* 80831E9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80831EA0  7C 08 02 A6 */	mflr r0
/* 80831EA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80831EA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80831EAC  7C 7F 1B 78 */	mr r31, r3
/* 80831EB0  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80831EB4  3C 80 80 83 */	lis r4, stringBase0@ha
/* 80831EB8  38 84 2D B8 */	addi r4, r4, stringBase0@l
/* 80831EBC  4B 7F B1 4C */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80831EC0  88 1F 07 26 */	lbz r0, 0x726(r31)
/* 80831EC4  28 00 00 0A */	cmplwi r0, 0xa
/* 80831EC8  41 82 00 0C */	beq lbl_80831ED4
/* 80831ECC  28 00 00 14 */	cmplwi r0, 0x14
/* 80831ED0  40 82 00 0C */	bne lbl_80831EDC
lbl_80831ED4:
/* 80831ED4  38 60 00 01 */	li r3, 1
/* 80831ED8  48 00 00 40 */	b lbl_80831F18
lbl_80831EDC:
/* 80831EDC  88 1F 0C 28 */	lbz r0, 0xc28(r31)
/* 80831EE0  28 00 00 00 */	cmplwi r0, 0
/* 80831EE4  41 82 00 10 */	beq lbl_80831EF4
/* 80831EE8  38 00 00 00 */	li r0, 0
/* 80831EEC  3C 60 80 83 */	lis r3, data_80832F80@ha
/* 80831EF0  98 03 2F 80 */	stb r0, data_80832F80@l(r3)
lbl_80831EF4:
/* 80831EF4  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80831EF8  28 00 00 00 */	cmplwi r0, 0
/* 80831EFC  41 82 00 18 */	beq lbl_80831F14
/* 80831F00  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 80831F04  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 80831F08  81 8C 00 08 */	lwz r12, 8(r12)
/* 80831F0C  7D 89 03 A6 */	mtctr r12
/* 80831F10  4E 80 04 21 */	bctrl 
lbl_80831F14:
/* 80831F14  38 60 00 01 */	li r3, 1
lbl_80831F18:
/* 80831F18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80831F1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80831F20  7C 08 03 A6 */	mtlr r0
/* 80831F24  38 21 00 10 */	addi r1, r1, 0x10
/* 80831F28  4E 80 00 20 */	blr 
