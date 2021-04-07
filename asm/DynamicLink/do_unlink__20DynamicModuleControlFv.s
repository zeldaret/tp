lbl_80262F28:
/* 80262F28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80262F2C  7C 08 02 A6 */	mflr r0
/* 80262F30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80262F34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80262F38  93 C1 00 08 */	stw r30, 8(r1)
/* 80262F3C  7C 7E 1B 78 */	mr r30, r3
/* 80262F40  48 0D F7 BD */	bl OSGetTime
/* 80262F44  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80262F48  81 83 00 38 */	lwz r12, 0x38(r3)
/* 80262F4C  7D 89 03 A6 */	mtctr r12
/* 80262F50  4E 80 04 21 */	bctrl 
/* 80262F54  48 0D F7 A9 */	bl OSGetTime
/* 80262F58  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80262F5C  48 0D B8 4D */	bl OSUnlink
/* 80262F60  7C 7F 1B 78 */	mr r31, r3
/* 80262F64  48 0D F7 99 */	bl OSGetTime
/* 80262F68  2C 1F 00 00 */	cmpwi r31, 0
/* 80262F6C  40 82 00 28 */	bne lbl_80262F94
/* 80262F70  3C 60 80 3A */	lis r3, DynamicLink__stringBase0@ha /* 0x8039A4A0@ha */
/* 80262F74  38 63 A4 A0 */	addi r3, r3, DynamicLink__stringBase0@l /* 0x8039A4A0@l */
/* 80262F78  38 63 02 97 */	addi r3, r3, 0x297
/* 80262F7C  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 80262F80  80 BE 00 14 */	lwz r5, 0x14(r30)
/* 80262F84  4C C6 31 82 */	crclr 6
/* 80262F88  4B DA 3C 85 */	bl OSReport_Error
/* 80262F8C  38 60 00 00 */	li r3, 0
/* 80262F90  48 00 00 58 */	b lbl_80262FE8
lbl_80262F94:
/* 80262F94  7F C3 F3 78 */	mr r3, r30
/* 80262F98  81 9E 00 0C */	lwz r12, 0xc(r30)
/* 80262F9C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80262FA0  7D 89 03 A6 */	mtctr r12
/* 80262FA4  4E 80 04 21 */	bctrl 
/* 80262FA8  80 0D 8B C0 */	lwz r0, sAllocBytes__20DynamicModuleControl(r13)
/* 80262FAC  7C 03 00 50 */	subf r0, r3, r0
/* 80262FB0  90 0D 8B C0 */	stw r0, sAllocBytes__20DynamicModuleControl(r13)
/* 80262FB4  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 80262FB8  28 03 00 00 */	cmplwi r3, 0
/* 80262FBC  41 82 00 14 */	beq lbl_80262FD0
/* 80262FC0  38 80 00 00 */	li r4, 0
/* 80262FC4  48 06 B5 3D */	bl free__7JKRHeapFPvP7JKRHeap
/* 80262FC8  38 00 00 00 */	li r0, 0
/* 80262FCC  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_80262FD0:
/* 80262FD0  7F C3 F3 78 */	mr r3, r30
/* 80262FD4  81 9E 00 0C */	lwz r12, 0xc(r30)
/* 80262FD8  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80262FDC  7D 89 03 A6 */	mtctr r12
/* 80262FE0  4E 80 04 21 */	bctrl 
/* 80262FE4  38 60 00 01 */	li r3, 1
lbl_80262FE8:
/* 80262FE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80262FEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80262FF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80262FF4  7C 08 03 A6 */	mtlr r0
/* 80262FF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80262FFC  4E 80 00 20 */	blr 
