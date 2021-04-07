lbl_80AD5C18:
/* 80AD5C18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AD5C1C  7C 08 02 A6 */	mflr r0
/* 80AD5C20  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AD5C24  39 61 00 20 */	addi r11, r1, 0x20
/* 80AD5C28  4B 88 C5 B5 */	bl _savegpr_29
/* 80AD5C2C  7C 7D 1B 78 */	mr r29, r3
/* 80AD5C30  88 03 0E 45 */	lbz r0, 0xe45(r3)
/* 80AD5C34  28 00 00 00 */	cmplwi r0, 0
/* 80AD5C38  41 82 00 6C */	beq lbl_80AD5CA4
/* 80AD5C3C  83 DD 09 6C */	lwz r30, 0x96c(r29)
/* 80AD5C40  28 1E 00 00 */	cmplwi r30, 0
/* 80AD5C44  41 82 00 30 */	beq lbl_80AD5C74
/* 80AD5C48  80 9D 05 78 */	lwz r4, 0x578(r29)
/* 80AD5C4C  80 84 00 04 */	lwz r4, 4(r4)
/* 80AD5C50  83 E4 00 04 */	lwz r31, 4(r4)
/* 80AD5C54  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80AD5C58  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80AD5C5C  7D 89 03 A6 */	mtctr r12
/* 80AD5C60  4E 80 04 21 */	bctrl 
/* 80AD5C64  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 80AD5C68  54 60 13 BA */	rlwinm r0, r3, 2, 0xe, 0x1d
/* 80AD5C6C  7C 64 00 2E */	lwzx r3, r4, r0
/* 80AD5C70  93 C3 00 3C */	stw r30, 0x3c(r3)
lbl_80AD5C74:
/* 80AD5C74  7F A3 EB 78 */	mr r3, r29
/* 80AD5C78  38 80 00 00 */	li r4, 0
/* 80AD5C7C  38 A0 00 01 */	li r5, 1
/* 80AD5C80  C0 3D 0D E8 */	lfs f1, 0xde8(r29)
/* 80AD5C84  38 C0 00 00 */	li r6, 0
/* 80AD5C88  3C E0 80 AD */	lis r7, lit_4294@ha /* 0x80AD7D50@ha */
/* 80AD5C8C  C0 47 7D 50 */	lfs f2, lit_4294@l(r7)  /* 0x80AD7D50@l */
/* 80AD5C90  38 E0 00 00 */	li r7, 0
/* 80AD5C94  39 00 00 00 */	li r8, 0
/* 80AD5C98  39 20 00 00 */	li r9, 0
/* 80AD5C9C  4B 67 2B D1 */	bl draw__8daNpcT_cFiifP11_GXColorS10fiii
/* 80AD5CA0  48 00 00 08 */	b lbl_80AD5CA8
lbl_80AD5CA4:
/* 80AD5CA4  38 60 00 01 */	li r3, 1
lbl_80AD5CA8:
/* 80AD5CA8  39 61 00 20 */	addi r11, r1, 0x20
/* 80AD5CAC  4B 88 C5 7D */	bl _restgpr_29
/* 80AD5CB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AD5CB4  7C 08 03 A6 */	mtlr r0
/* 80AD5CB8  38 21 00 20 */	addi r1, r1, 0x20
/* 80AD5CBC  4E 80 00 20 */	blr 
