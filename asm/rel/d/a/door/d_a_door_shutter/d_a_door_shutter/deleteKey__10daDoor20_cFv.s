lbl_80464AE4:
/* 80464AE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80464AE8  7C 08 02 A6 */	mflr r0
/* 80464AEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80464AF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80464AF4  7C 7F 1B 78 */	mr r31, r3
/* 80464AF8  80 63 05 EC */	lwz r3, 0x5ec(r3)
/* 80464AFC  3C 03 00 01 */	addis r0, r3, 1
/* 80464B00  28 00 FF FF */	cmplwi r0, 0xffff
/* 80464B04  41 82 00 20 */	beq lbl_80464B24
/* 80464B08  4B BB D6 31 */	bl fpcM_IsCreating__FUi
/* 80464B0C  2C 03 00 00 */	cmpwi r3, 0
/* 80464B10  40 82 00 14 */	bne lbl_80464B24
/* 80464B14  80 7F 05 EC */	lwz r3, 0x5ec(r31)
/* 80464B18  4B BB 51 A1 */	bl fopAcM_delete__FUi
/* 80464B1C  38 00 FF FF */	li r0, -1
/* 80464B20  90 1F 05 EC */	stw r0, 0x5ec(r31)
lbl_80464B24:
/* 80464B24  38 60 00 01 */	li r3, 1
/* 80464B28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80464B2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80464B30  7C 08 03 A6 */	mtlr r0
/* 80464B34  38 21 00 10 */	addi r1, r1, 0x10
/* 80464B38  4E 80 00 20 */	blr 
