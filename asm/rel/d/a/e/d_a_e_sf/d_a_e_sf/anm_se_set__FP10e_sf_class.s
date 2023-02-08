lbl_80787DD8:
/* 80787DD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80787DDC  7C 08 02 A6 */	mflr r0
/* 80787DE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80787DE4  39 61 00 20 */	addi r11, r1, 0x20
/* 80787DE8  4B BD A3 F5 */	bl _savegpr_29
/* 80787DEC  7C 7F 1B 78 */	mr r31, r3
/* 80787DF0  3C 60 80 79 */	lis r3, lit_3908@ha /* 0x80789C38@ha */
/* 80787DF4  3B C3 9C 38 */	addi r30, r3, lit_3908@l /* 0x80789C38@l */
/* 80787DF8  3B A0 00 00 */	li r29, 0
/* 80787DFC  80 1F 05 D8 */	lwz r0, 0x5d8(r31)
/* 80787E00  2C 00 00 04 */	cmpwi r0, 4
/* 80787E04  40 82 00 24 */	bne lbl_80787E28
/* 80787E08  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80787E0C  38 63 00 0C */	addi r3, r3, 0xc
/* 80787E10  C0 3E 00 D8 */	lfs f1, 0xd8(r30)
/* 80787E14  4B BA 06 19 */	bl checkPass__12J3DFrameCtrlFf
/* 80787E18  2C 03 00 00 */	cmpwi r3, 0
/* 80787E1C  41 82 01 78 */	beq lbl_80787F94
/* 80787E20  3B A0 00 01 */	li r29, 1
/* 80787E24  48 00 01 70 */	b lbl_80787F94
lbl_80787E28:
/* 80787E28  2C 00 00 06 */	cmpwi r0, 6
/* 80787E2C  40 82 00 24 */	bne lbl_80787E50
/* 80787E30  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80787E34  38 63 00 0C */	addi r3, r3, 0xc
/* 80787E38  C0 3E 00 DC */	lfs f1, 0xdc(r30)
/* 80787E3C  4B BA 05 F1 */	bl checkPass__12J3DFrameCtrlFf
/* 80787E40  2C 03 00 00 */	cmpwi r3, 0
/* 80787E44  41 82 01 50 */	beq lbl_80787F94
/* 80787E48  3B A0 00 01 */	li r29, 1
/* 80787E4C  48 00 01 48 */	b lbl_80787F94
lbl_80787E50:
/* 80787E50  2C 00 00 08 */	cmpwi r0, 8
/* 80787E54  40 82 00 84 */	bne lbl_80787ED8
/* 80787E58  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80787E5C  38 63 00 0C */	addi r3, r3, 0xc
/* 80787E60  C0 3E 00 E0 */	lfs f1, 0xe0(r30)
/* 80787E64  4B BA 05 C9 */	bl checkPass__12J3DFrameCtrlFf
/* 80787E68  2C 03 00 00 */	cmpwi r3, 0
/* 80787E6C  40 82 00 64 */	bne lbl_80787ED0
/* 80787E70  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80787E74  38 63 00 0C */	addi r3, r3, 0xc
/* 80787E78  C0 3E 00 E4 */	lfs f1, 0xe4(r30)
/* 80787E7C  4B BA 05 B1 */	bl checkPass__12J3DFrameCtrlFf
/* 80787E80  2C 03 00 00 */	cmpwi r3, 0
/* 80787E84  40 82 00 4C */	bne lbl_80787ED0
/* 80787E88  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80787E8C  38 63 00 0C */	addi r3, r3, 0xc
/* 80787E90  C0 3E 00 E8 */	lfs f1, 0xe8(r30)
/* 80787E94  4B BA 05 99 */	bl checkPass__12J3DFrameCtrlFf
/* 80787E98  2C 03 00 00 */	cmpwi r3, 0
/* 80787E9C  40 82 00 34 */	bne lbl_80787ED0
/* 80787EA0  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80787EA4  38 63 00 0C */	addi r3, r3, 0xc
/* 80787EA8  C0 3E 00 EC */	lfs f1, 0xec(r30)
/* 80787EAC  4B BA 05 81 */	bl checkPass__12J3DFrameCtrlFf
/* 80787EB0  2C 03 00 00 */	cmpwi r3, 0
/* 80787EB4  40 82 00 1C */	bne lbl_80787ED0
/* 80787EB8  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80787EBC  38 63 00 0C */	addi r3, r3, 0xc
/* 80787EC0  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 80787EC4  4B BA 05 69 */	bl checkPass__12J3DFrameCtrlFf
/* 80787EC8  2C 03 00 00 */	cmpwi r3, 0
/* 80787ECC  41 82 00 C8 */	beq lbl_80787F94
lbl_80787ED0:
/* 80787ED0  3B A0 00 01 */	li r29, 1
/* 80787ED4  48 00 00 C0 */	b lbl_80787F94
lbl_80787ED8:
/* 80787ED8  2C 00 00 0E */	cmpwi r0, 0xe
/* 80787EDC  40 82 00 3C */	bne lbl_80787F18
/* 80787EE0  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80787EE4  38 63 00 0C */	addi r3, r3, 0xc
/* 80787EE8  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80787EEC  4B BA 05 41 */	bl checkPass__12J3DFrameCtrlFf
/* 80787EF0  2C 03 00 00 */	cmpwi r3, 0
/* 80787EF4  40 82 00 1C */	bne lbl_80787F10
/* 80787EF8  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80787EFC  38 63 00 0C */	addi r3, r3, 0xc
/* 80787F00  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 80787F04  4B BA 05 29 */	bl checkPass__12J3DFrameCtrlFf
/* 80787F08  2C 03 00 00 */	cmpwi r3, 0
/* 80787F0C  41 82 00 88 */	beq lbl_80787F94
lbl_80787F10:
/* 80787F10  3B A0 00 01 */	li r29, 1
/* 80787F14  48 00 00 80 */	b lbl_80787F94
lbl_80787F18:
/* 80787F18  2C 00 00 0F */	cmpwi r0, 0xf
/* 80787F1C  40 82 00 3C */	bne lbl_80787F58
/* 80787F20  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80787F24  38 63 00 0C */	addi r3, r3, 0xc
/* 80787F28  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 80787F2C  4B BA 05 01 */	bl checkPass__12J3DFrameCtrlFf
/* 80787F30  2C 03 00 00 */	cmpwi r3, 0
/* 80787F34  40 82 00 1C */	bne lbl_80787F50
/* 80787F38  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80787F3C  38 63 00 0C */	addi r3, r3, 0xc
/* 80787F40  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 80787F44  4B BA 04 E9 */	bl checkPass__12J3DFrameCtrlFf
/* 80787F48  2C 03 00 00 */	cmpwi r3, 0
/* 80787F4C  41 82 00 48 */	beq lbl_80787F94
lbl_80787F50:
/* 80787F50  3B A0 00 01 */	li r29, 1
/* 80787F54  48 00 00 40 */	b lbl_80787F94
lbl_80787F58:
/* 80787F58  2C 00 00 10 */	cmpwi r0, 0x10
/* 80787F5C  40 82 00 38 */	bne lbl_80787F94
/* 80787F60  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80787F64  38 63 00 0C */	addi r3, r3, 0xc
/* 80787F68  C0 3E 00 88 */	lfs f1, 0x88(r30)
/* 80787F6C  4B BA 04 C1 */	bl checkPass__12J3DFrameCtrlFf
/* 80787F70  2C 03 00 00 */	cmpwi r3, 0
/* 80787F74  40 82 00 1C */	bne lbl_80787F90
/* 80787F78  80 7F 05 D4 */	lwz r3, 0x5d4(r31)
/* 80787F7C  38 63 00 0C */	addi r3, r3, 0xc
/* 80787F80  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 80787F84  4B BA 04 A9 */	bl checkPass__12J3DFrameCtrlFf
/* 80787F88  2C 03 00 00 */	cmpwi r3, 0
/* 80787F8C  41 82 00 08 */	beq lbl_80787F94
lbl_80787F90:
/* 80787F90  3B A0 00 01 */	li r29, 1
lbl_80787F94:
/* 80787F94  7F A0 07 75 */	extsb. r0, r29
/* 80787F98  41 82 00 30 */	beq lbl_80787FC8
/* 80787F9C  3C 60 00 03 */	lis r3, 0x0003 /* 0x00030039@ha */
/* 80787FA0  38 03 00 39 */	addi r0, r3, 0x0039 /* 0x00030039@l */
/* 80787FA4  90 01 00 08 */	stw r0, 8(r1)
/* 80787FA8  38 7F 05 E4 */	addi r3, r31, 0x5e4
/* 80787FAC  38 81 00 08 */	addi r4, r1, 8
/* 80787FB0  38 A0 00 00 */	li r5, 0
/* 80787FB4  38 C0 FF FF */	li r6, -1
/* 80787FB8  81 9F 05 E4 */	lwz r12, 0x5e4(r31)
/* 80787FBC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80787FC0  7D 89 03 A6 */	mtctr r12
/* 80787FC4  4E 80 04 21 */	bctrl 
lbl_80787FC8:
/* 80787FC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80787FCC  4B BD A2 5D */	bl _restgpr_29
/* 80787FD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80787FD4  7C 08 03 A6 */	mtlr r0
/* 80787FD8  38 21 00 20 */	addi r1, r1, 0x20
/* 80787FDC  4E 80 00 20 */	blr 
