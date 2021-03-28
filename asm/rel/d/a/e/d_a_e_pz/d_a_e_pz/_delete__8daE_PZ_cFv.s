lbl_8075FA88:
/* 8075FA88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8075FA8C  7C 08 02 A6 */	mflr r0
/* 8075FA90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8075FA94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8075FA98  7C 7F 1B 78 */	mr r31, r3
/* 8075FA9C  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8075FAA0  3C 80 80 76 */	lis r4, stringBase0@ha
/* 8075FAA4  38 84 17 B4 */	addi r4, r4, stringBase0@l
/* 8075FAA8  4B 8C D5 60 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8075FAAC  88 1F 07 D4 */	lbz r0, 0x7d4(r31)
/* 8075FAB0  28 00 00 0A */	cmplwi r0, 0xa
/* 8075FAB4  40 82 00 0C */	bne lbl_8075FAC0
/* 8075FAB8  38 60 00 01 */	li r3, 1
/* 8075FABC  48 00 00 5C */	b lbl_8075FB18
lbl_8075FAC0:
/* 8075FAC0  88 1F 0E E4 */	lbz r0, 0xee4(r31)
/* 8075FAC4  28 00 00 00 */	cmplwi r0, 0
/* 8075FAC8  41 82 00 10 */	beq lbl_8075FAD8
/* 8075FACC  38 00 00 00 */	li r0, 0
/* 8075FAD0  3C 60 80 76 */	lis r3, struct_80761DFC+0x1@ha
/* 8075FAD4  98 03 1D FD */	stb r0, struct_80761DFC+0x1@l(r3)
lbl_8075FAD8:
/* 8075FAD8  88 1F 07 D4 */	lbz r0, 0x7d4(r31)
/* 8075FADC  28 00 00 1E */	cmplwi r0, 0x1e
/* 8075FAE0  41 82 00 0C */	beq lbl_8075FAEC
/* 8075FAE4  28 00 00 28 */	cmplwi r0, 0x28
/* 8075FAE8  40 82 00 0C */	bne lbl_8075FAF4
lbl_8075FAEC:
/* 8075FAEC  38 60 00 01 */	li r3, 1
/* 8075FAF0  48 00 00 28 */	b lbl_8075FB18
lbl_8075FAF4:
/* 8075FAF4  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 8075FAF8  28 00 00 00 */	cmplwi r0, 0
/* 8075FAFC  41 82 00 18 */	beq lbl_8075FB14
/* 8075FB00  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 8075FB04  81 9F 05 DC */	lwz r12, 0x5dc(r31)
/* 8075FB08  81 8C 00 08 */	lwz r12, 8(r12)
/* 8075FB0C  7D 89 03 A6 */	mtctr r12
/* 8075FB10  4E 80 04 21 */	bctrl 
lbl_8075FB14:
/* 8075FB14  38 60 00 01 */	li r3, 1
lbl_8075FB18:
/* 8075FB18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8075FB1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8075FB20  7C 08 03 A6 */	mtlr r0
/* 8075FB24  38 21 00 10 */	addi r1, r1, 0x10
/* 8075FB28  4E 80 00 20 */	blr 
