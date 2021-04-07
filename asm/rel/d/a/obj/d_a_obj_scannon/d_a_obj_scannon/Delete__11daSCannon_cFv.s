lbl_80CC747C:
/* 80CC747C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC7480  7C 08 02 A6 */	mflr r0
/* 80CC7484  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC7488  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC748C  7C 7F 1B 78 */	mr r31, r3
/* 80CC7490  80 63 05 E0 */	lwz r3, 0x5e0(r3)
/* 80CC7494  28 03 00 00 */	cmplwi r3, 0
/* 80CC7498  41 82 00 24 */	beq lbl_80CC74BC
/* 80CC749C  4B 5A 0D 39 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80CC74A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CC74A4  41 82 00 18 */	beq lbl_80CC74BC
/* 80CC74A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC74AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC74B0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CC74B4  80 9F 05 E0 */	lwz r4, 0x5e0(r31)
/* 80CC74B8  4B 3A CD 99 */	bl Release__4cBgSFP9dBgW_Base
lbl_80CC74BC:
/* 80CC74BC  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 80CC74C0  2C 00 00 03 */	cmpwi r0, 3
/* 80CC74C4  41 82 00 0C */	beq lbl_80CC74D0
/* 80CC74C8  2C 00 00 0A */	cmpwi r0, 0xa
/* 80CC74CC  40 82 00 0C */	bne lbl_80CC74D8
lbl_80CC74D0:
/* 80CC74D0  7F E3 FB 78 */	mr r3, r31
/* 80CC74D4  48 00 18 CD */	bl delEmtAll__11daSCannon_cFv
lbl_80CC74D8:
/* 80CC74D8  7F E3 FB 78 */	mr r3, r31
/* 80CC74DC  38 80 FF FF */	li r4, -1
/* 80CC74E0  81 9F 05 70 */	lwz r12, 0x570(r31)
/* 80CC74E4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80CC74E8  7D 89 03 A6 */	mtctr r12
/* 80CC74EC  4E 80 04 21 */	bctrl 
/* 80CC74F0  38 60 00 01 */	li r3, 1
/* 80CC74F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC74F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC74FC  7C 08 03 A6 */	mtlr r0
/* 80CC7500  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC7504  4E 80 00 20 */	blr 
