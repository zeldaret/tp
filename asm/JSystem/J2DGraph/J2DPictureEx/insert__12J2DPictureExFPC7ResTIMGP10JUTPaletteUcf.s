lbl_80303F34:
/* 80303F34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80303F38  7C 08 02 A6 */	mflr r0
/* 80303F3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80303F40  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 80303F44  39 61 00 18 */	addi r11, r1, 0x18
/* 80303F48  48 05 E2 91 */	bl _savegpr_28
/* 80303F4C  7C 7C 1B 78 */	mr r28, r3
/* 80303F50  7C 9D 23 79 */	or. r29, r4, r4
/* 80303F54  7C BE 2B 78 */	mr r30, r5
/* 80303F58  7C DF 33 78 */	mr r31, r6
/* 80303F5C  FF E0 08 90 */	fmr f31, f1
/* 80303F60  40 82 00 0C */	bne lbl_80303F6C
/* 80303F64  38 60 00 00 */	li r3, 0
/* 80303F68  48 00 00 54 */	b lbl_80303FBC
lbl_80303F6C:
/* 80303F6C  7F E4 FB 78 */	mr r4, r31
/* 80303F70  48 00 04 0D */	bl isInsert__12J2DPictureExCFUc
/* 80303F74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80303F78  40 82 00 0C */	bne lbl_80303F84
/* 80303F7C  38 60 00 00 */	li r3, 0
/* 80303F80  48 00 00 3C */	b lbl_80303FBC
lbl_80303F84:
/* 80303F84  7F 83 E3 78 */	mr r3, r28
/* 80303F88  7F E4 FB 78 */	mr r4, r31
/* 80303F8C  FC 20 F8 90 */	fmr f1, f31
/* 80303F90  48 00 01 55 */	bl insertCommon__12J2DPictureExFUcf
/* 80303F94  80 7C 01 50 */	lwz r3, 0x150(r28)
/* 80303F98  80 63 00 70 */	lwz r3, 0x70(r3)
/* 80303F9C  57 E4 06 3E */	clrlwi r4, r31, 0x18
/* 80303FA0  7F A5 EB 78 */	mr r5, r29
/* 80303FA4  7F C6 F3 78 */	mr r6, r30
/* 80303FA8  81 83 00 00 */	lwz r12, 0(r3)
/* 80303FAC  81 8C 00 7C */	lwz r12, 0x7c(r12)
/* 80303FB0  7D 89 03 A6 */	mtctr r12
/* 80303FB4  4E 80 04 21 */	bctrl 
/* 80303FB8  38 60 00 01 */	li r3, 1
lbl_80303FBC:
/* 80303FBC  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 80303FC0  39 61 00 18 */	addi r11, r1, 0x18
/* 80303FC4  48 05 E2 61 */	bl _restgpr_28
/* 80303FC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80303FCC  7C 08 03 A6 */	mtlr r0
/* 80303FD0  38 21 00 20 */	addi r1, r1, 0x20
/* 80303FD4  4E 80 00 20 */	blr 
