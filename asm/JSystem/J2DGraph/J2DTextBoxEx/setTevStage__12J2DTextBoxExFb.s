lbl_80307EF0:
/* 80307EF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80307EF4  7C 08 02 A6 */	mflr r0
/* 80307EF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80307EFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80307F00  93 C1 00 08 */	stw r30, 8(r1)
/* 80307F04  7C 7E 1B 78 */	mr r30, r3
/* 80307F08  7C 9F 23 78 */	mr r31, r4
/* 80307F0C  80 63 01 38 */	lwz r3, 0x138(r3)
/* 80307F10  80 63 00 70 */	lwz r3, 0x70(r3)
/* 80307F14  38 80 00 00 */	li r4, 0
/* 80307F18  81 83 00 00 */	lwz r12, 0(r3)
/* 80307F1C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80307F20  7D 89 03 A6 */	mtctr r12
/* 80307F24  4E 80 04 21 */	bctrl 
/* 80307F28  7C 64 1B 78 */	mr r4, r3
/* 80307F2C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80307F30  40 82 00 14 */	bne lbl_80307F44
/* 80307F34  7F C3 F3 78 */	mr r3, r30
/* 80307F38  38 A0 00 00 */	li r5, 0
/* 80307F3C  48 00 00 59 */	bl setStage__12J2DTextBoxExFP11J2DTevStageQ212J2DTextBoxEx10stage_enum
/* 80307F40  48 00 00 3C */	b lbl_80307F7C
lbl_80307F44:
/* 80307F44  7F C3 F3 78 */	mr r3, r30
/* 80307F48  38 A0 00 01 */	li r5, 1
/* 80307F4C  48 00 00 49 */	bl setStage__12J2DTextBoxExFP11J2DTevStageQ212J2DTextBoxEx10stage_enum
/* 80307F50  80 7E 01 38 */	lwz r3, 0x138(r30)
/* 80307F54  80 63 00 70 */	lwz r3, 0x70(r3)
/* 80307F58  38 80 00 01 */	li r4, 1
/* 80307F5C  81 83 00 00 */	lwz r12, 0(r3)
/* 80307F60  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80307F64  7D 89 03 A6 */	mtctr r12
/* 80307F68  4E 80 04 21 */	bctrl 
/* 80307F6C  7C 64 1B 78 */	mr r4, r3
/* 80307F70  7F C3 F3 78 */	mr r3, r30
/* 80307F74  38 A0 00 02 */	li r5, 2
/* 80307F78  48 00 00 1D */	bl setStage__12J2DTextBoxExFP11J2DTevStageQ212J2DTextBoxEx10stage_enum
lbl_80307F7C:
/* 80307F7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80307F80  83 C1 00 08 */	lwz r30, 8(r1)
/* 80307F84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80307F88  7C 08 03 A6 */	mtlr r0
/* 80307F8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80307F90  4E 80 00 20 */	blr 
