lbl_807B2DEC:
/* 807B2DEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807B2DF0  7C 08 02 A6 */	mflr r0
/* 807B2DF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 807B2DF8  39 61 00 20 */	addi r11, r1, 0x20
/* 807B2DFC  4B BA F3 DD */	bl _savegpr_28
/* 807B2E00  7C 7D 1B 78 */	mr r29, r3
/* 807B2E04  3C 60 80 7B */	lis r3, lit_3906@ha /* 0x807B449C@ha */
/* 807B2E08  3B 83 44 9C */	addi r28, r3, lit_3906@l /* 0x807B449C@l */
/* 807B2E0C  3B E0 00 00 */	li r31, 0
/* 807B2E10  3B C0 00 00 */	li r30, 0
/* 807B2E14  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 807B2E18  2C 00 00 05 */	cmpwi r0, 5
/* 807B2E1C  40 82 00 28 */	bne lbl_807B2E44
/* 807B2E20  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807B2E24  38 63 00 0C */	addi r3, r3, 0xc
/* 807B2E28  C0 3C 00 40 */	lfs f1, 0x40(r28)
/* 807B2E2C  4B B7 56 01 */	bl checkPass__12J3DFrameCtrlFf
/* 807B2E30  2C 03 00 00 */	cmpwi r3, 0
/* 807B2E34  41 82 00 10 */	beq lbl_807B2E44
/* 807B2E38  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070391@ha */
/* 807B2E3C  3B E3 03 91 */	addi r31, r3, 0x0391 /* 0x00070391@l */
/* 807B2E40  48 00 01 60 */	b lbl_807B2FA0
lbl_807B2E44:
/* 807B2E44  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 807B2E48  2C 00 00 07 */	cmpwi r0, 7
/* 807B2E4C  41 82 00 0C */	beq lbl_807B2E58
/* 807B2E50  2C 00 00 08 */	cmpwi r0, 8
/* 807B2E54  40 82 00 28 */	bne lbl_807B2E7C
lbl_807B2E58:
/* 807B2E58  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807B2E5C  38 63 00 0C */	addi r3, r3, 0xc
/* 807B2E60  C0 3C 00 08 */	lfs f1, 8(r28)
/* 807B2E64  4B B7 55 C9 */	bl checkPass__12J3DFrameCtrlFf
/* 807B2E68  2C 03 00 00 */	cmpwi r3, 0
/* 807B2E6C  41 82 00 10 */	beq lbl_807B2E7C
/* 807B2E70  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070392@ha */
/* 807B2E74  3B C3 03 92 */	addi r30, r3, 0x0392 /* 0x00070392@l */
/* 807B2E78  48 00 01 28 */	b lbl_807B2FA0
lbl_807B2E7C:
/* 807B2E7C  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 807B2E80  2C 00 00 0E */	cmpwi r0, 0xe
/* 807B2E84  40 82 00 28 */	bne lbl_807B2EAC
/* 807B2E88  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807B2E8C  38 63 00 0C */	addi r3, r3, 0xc
/* 807B2E90  C0 3C 00 08 */	lfs f1, 8(r28)
/* 807B2E94  4B B7 55 99 */	bl checkPass__12J3DFrameCtrlFf
/* 807B2E98  2C 03 00 00 */	cmpwi r3, 0
/* 807B2E9C  41 82 00 10 */	beq lbl_807B2EAC
/* 807B2EA0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070393@ha */
/* 807B2EA4  3B C3 03 93 */	addi r30, r3, 0x0393 /* 0x00070393@l */
/* 807B2EA8  48 00 00 F8 */	b lbl_807B2FA0
lbl_807B2EAC:
/* 807B2EAC  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 807B2EB0  2C 00 00 12 */	cmpwi r0, 0x12
/* 807B2EB4  40 82 00 40 */	bne lbl_807B2EF4
/* 807B2EB8  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807B2EBC  38 63 00 0C */	addi r3, r3, 0xc
/* 807B2EC0  C0 3C 00 08 */	lfs f1, 8(r28)
/* 807B2EC4  4B B7 55 69 */	bl checkPass__12J3DFrameCtrlFf
/* 807B2EC8  2C 03 00 00 */	cmpwi r3, 0
/* 807B2ECC  40 82 00 1C */	bne lbl_807B2EE8
/* 807B2ED0  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807B2ED4  38 63 00 0C */	addi r3, r3, 0xc
/* 807B2ED8  C0 3C 01 7C */	lfs f1, 0x17c(r28)
/* 807B2EDC  4B B7 55 51 */	bl checkPass__12J3DFrameCtrlFf
/* 807B2EE0  2C 03 00 00 */	cmpwi r3, 0
/* 807B2EE4  41 82 00 10 */	beq lbl_807B2EF4
lbl_807B2EE8:
/* 807B2EE8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070394@ha */
/* 807B2EEC  3B C3 03 94 */	addi r30, r3, 0x0394 /* 0x00070394@l */
/* 807B2EF0  48 00 00 B0 */	b lbl_807B2FA0
lbl_807B2EF4:
/* 807B2EF4  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 807B2EF8  2C 00 00 17 */	cmpwi r0, 0x17
/* 807B2EFC  40 82 00 28 */	bne lbl_807B2F24
/* 807B2F00  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807B2F04  38 63 00 0C */	addi r3, r3, 0xc
/* 807B2F08  C0 3C 01 80 */	lfs f1, 0x180(r28)
/* 807B2F0C  4B B7 55 21 */	bl checkPass__12J3DFrameCtrlFf
/* 807B2F10  2C 03 00 00 */	cmpwi r3, 0
/* 807B2F14  41 82 00 10 */	beq lbl_807B2F24
/* 807B2F18  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070395@ha */
/* 807B2F1C  3B C3 03 95 */	addi r30, r3, 0x0395 /* 0x00070395@l */
/* 807B2F20  48 00 00 80 */	b lbl_807B2FA0
lbl_807B2F24:
/* 807B2F24  80 1D 05 D0 */	lwz r0, 0x5d0(r29)
/* 807B2F28  2C 00 00 18 */	cmpwi r0, 0x18
/* 807B2F2C  40 82 00 4C */	bne lbl_807B2F78
/* 807B2F30  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807B2F34  38 63 00 0C */	addi r3, r3, 0xc
/* 807B2F38  C0 3C 00 08 */	lfs f1, 8(r28)
/* 807B2F3C  4B B7 54 F1 */	bl checkPass__12J3DFrameCtrlFf
/* 807B2F40  2C 03 00 00 */	cmpwi r3, 0
/* 807B2F44  41 82 00 10 */	beq lbl_807B2F54
/* 807B2F48  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070390@ha */
/* 807B2F4C  3B E3 03 90 */	addi r31, r3, 0x0390 /* 0x00070390@l */
/* 807B2F50  48 00 00 50 */	b lbl_807B2FA0
lbl_807B2F54:
/* 807B2F54  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807B2F58  38 63 00 0C */	addi r3, r3, 0xc
/* 807B2F5C  C0 3C 01 84 */	lfs f1, 0x184(r28)
/* 807B2F60  4B B7 54 CD */	bl checkPass__12J3DFrameCtrlFf
/* 807B2F64  2C 03 00 00 */	cmpwi r3, 0
/* 807B2F68  41 82 00 38 */	beq lbl_807B2FA0
/* 807B2F6C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070396@ha */
/* 807B2F70  3B C3 03 96 */	addi r30, r3, 0x0396 /* 0x00070396@l */
/* 807B2F74  48 00 00 2C */	b lbl_807B2FA0
lbl_807B2F78:
/* 807B2F78  2C 00 00 1A */	cmpwi r0, 0x1a
/* 807B2F7C  40 82 00 24 */	bne lbl_807B2FA0
/* 807B2F80  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 807B2F84  38 63 00 0C */	addi r3, r3, 0xc
/* 807B2F88  C0 3C 00 08 */	lfs f1, 8(r28)
/* 807B2F8C  4B B7 54 A1 */	bl checkPass__12J3DFrameCtrlFf
/* 807B2F90  2C 03 00 00 */	cmpwi r3, 0
/* 807B2F94  41 82 00 0C */	beq lbl_807B2FA0
/* 807B2F98  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070397@ha */
/* 807B2F9C  3B C3 03 97 */	addi r30, r3, 0x0397 /* 0x00070397@l */
lbl_807B2FA0:
/* 807B2FA0  28 1F 00 00 */	cmplwi r31, 0
/* 807B2FA4  41 82 00 28 */	beq lbl_807B2FCC
/* 807B2FA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807B2FAC  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 807B2FB0  38 81 00 0C */	addi r4, r1, 0xc
/* 807B2FB4  38 A0 00 00 */	li r5, 0
/* 807B2FB8  38 C0 FF FF */	li r6, -1
/* 807B2FBC  81 9D 05 E0 */	lwz r12, 0x5e0(r29)
/* 807B2FC0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807B2FC4  7D 89 03 A6 */	mtctr r12
/* 807B2FC8  4E 80 04 21 */	bctrl 
lbl_807B2FCC:
/* 807B2FCC  28 1E 00 00 */	cmplwi r30, 0
/* 807B2FD0  41 82 00 24 */	beq lbl_807B2FF4
/* 807B2FD4  93 C1 00 08 */	stw r30, 8(r1)
/* 807B2FD8  38 7D 05 E0 */	addi r3, r29, 0x5e0
/* 807B2FDC  38 81 00 08 */	addi r4, r1, 8
/* 807B2FE0  38 A0 FF FF */	li r5, -1
/* 807B2FE4  81 9D 05 E0 */	lwz r12, 0x5e0(r29)
/* 807B2FE8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807B2FEC  7D 89 03 A6 */	mtctr r12
/* 807B2FF0  4E 80 04 21 */	bctrl 
lbl_807B2FF4:
/* 807B2FF4  39 61 00 20 */	addi r11, r1, 0x20
/* 807B2FF8  4B BA F2 2D */	bl _restgpr_28
/* 807B2FFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807B3000  7C 08 03 A6 */	mtlr r0
/* 807B3004  38 21 00 20 */	addi r1, r1, 0x20
/* 807B3008  4E 80 00 20 */	blr 
