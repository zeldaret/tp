lbl_800F6EFC:
/* 800F6EFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F6F00  7C 08 02 A6 */	mflr r0
/* 800F6F04  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F6F08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F6F0C  7C 7F 1B 78 */	mr r31, r3
/* 800F6F10  4B FF D8 C9 */	bl canoeCommon__9daAlink_cFv
/* 800F6F14  2C 03 00 00 */	cmpwi r3, 0
/* 800F6F18  41 82 00 0C */	beq lbl_800F6F24
/* 800F6F1C  38 60 00 01 */	li r3, 1
/* 800F6F20  48 00 00 70 */	b lbl_800F6F90
lbl_800F6F24:
/* 800F6F24  80 1F 28 30 */	lwz r0, 0x2830(r31)
/* 800F6F28  28 00 00 00 */	cmplwi r0, 0
/* 800F6F2C  40 82 00 24 */	bne lbl_800F6F50
/* 800F6F30  7F E3 FB 78 */	mr r3, r31
/* 800F6F34  4B FE CD 39 */	bl checkGrabAnime__9daAlink_cCFv
/* 800F6F38  2C 03 00 00 */	cmpwi r3, 0
/* 800F6F3C  41 82 00 14 */	beq lbl_800F6F50
/* 800F6F40  7F E3 FB 78 */	mr r3, r31
/* 800F6F44  38 80 00 02 */	li r4, 2
/* 800F6F48  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800F6F4C  4B FB 67 D9 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_800F6F50:
/* 800F6F50  7F E3 FB 78 */	mr r3, r31
/* 800F6F54  4B FE CC C9 */	bl checkGrabThrowAnime__9daAlink_cCFv
/* 800F6F58  2C 03 00 00 */	cmpwi r3, 0
/* 800F6F5C  41 82 00 28 */	beq lbl_800F6F84
/* 800F6F60  7F E3 FB 78 */	mr r3, r31
/* 800F6F64  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800F6F68  4B FE E8 45 */	bl checkUpperGrabItemThrow__9daAlink_cFf
/* 800F6F6C  2C 03 00 00 */	cmpwi r3, 0
/* 800F6F70  41 82 00 1C */	beq lbl_800F6F8C
/* 800F6F74  7F E3 FB 78 */	mr r3, r31
/* 800F6F78  38 80 00 00 */	li r4, 0
/* 800F6F7C  4B FF E2 69 */	bl procCanoeWaitInit__9daAlink_cFi
/* 800F6F80  48 00 00 0C */	b lbl_800F6F8C
lbl_800F6F84:
/* 800F6F84  7F E3 FB 78 */	mr r3, r31
/* 800F6F88  4B FF D9 9D */	bl checkNextActionCanoe__9daAlink_cFv
lbl_800F6F8C:
/* 800F6F8C  38 60 00 01 */	li r3, 1
lbl_800F6F90:
/* 800F6F90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F6F94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F6F98  7C 08 03 A6 */	mtlr r0
/* 800F6F9C  38 21 00 10 */	addi r1, r1, 0x10
/* 800F6FA0  4E 80 00 20 */	blr 
