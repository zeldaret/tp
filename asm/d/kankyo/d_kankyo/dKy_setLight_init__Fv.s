lbl_801A5E54:
/* 801A5E54  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 801A5E58  7C 08 02 A6 */	mflr r0
/* 801A5E5C  90 01 01 04 */	stw r0, 0x104(r1)
/* 801A5E60  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 801A5E64  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, 0 /* qr0 */
/* 801A5E68  DB C1 00 E0 */	stfd f30, 0xe0(r1)
/* 801A5E6C  F3 C1 00 E8 */	psq_st f30, 232(r1), 0, 0 /* qr0 */
/* 801A5E70  DB A1 00 D0 */	stfd f29, 0xd0(r1)
/* 801A5E74  F3 A1 00 D8 */	psq_st f29, 216(r1), 0, 0 /* qr0 */
/* 801A5E78  39 61 00 D0 */	addi r11, r1, 0xd0
/* 801A5E7C  48 1B C3 45 */	bl _savegpr_22
/* 801A5E80  38 A0 00 00 */	li r5, 0
/* 801A5E84  38 C0 00 00 */	li r6, 0
/* 801A5E88  3C 60 80 3C */	lis r3, lightStatusBase@ha /* 0x803BBDC4@ha */
/* 801A5E8C  38 E3 BD C4 */	addi r7, r3, lightStatusBase@l /* 0x803BBDC4@l */
/* 801A5E90  80 67 00 00 */	lwz r3, 0(r7)
/* 801A5E94  80 07 00 04 */	lwz r0, 4(r7)
/* 801A5E98  90 61 00 24 */	stw r3, 0x24(r1)
/* 801A5E9C  90 01 00 28 */	stw r0, 0x28(r1)
/* 801A5EA0  80 07 00 08 */	lwz r0, 8(r7)
/* 801A5EA4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801A5EA8  80 67 00 0C */	lwz r3, 0xc(r7)
/* 801A5EAC  80 07 00 10 */	lwz r0, 0x10(r7)
/* 801A5EB0  90 61 00 18 */	stw r3, 0x18(r1)
/* 801A5EB4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801A5EB8  80 07 00 14 */	lwz r0, 0x14(r7)
/* 801A5EBC  90 01 00 20 */	stw r0, 0x20(r1)
/* 801A5EC0  80 07 00 18 */	lwz r0, 0x18(r7)
/* 801A5EC4  90 01 00 08 */	stw r0, 8(r1)
/* 801A5EC8  80 07 00 1C */	lwz r0, 0x1c(r7)
/* 801A5ECC  C0 07 00 20 */	lfs f0, 0x20(r7)
/* 801A5ED0  C0 27 00 24 */	lfs f1, 0x24(r7)
/* 801A5ED4  C0 47 00 28 */	lfs f2, 0x28(r7)
/* 801A5ED8  C0 67 00 2C */	lfs f3, 0x2c(r7)
/* 801A5EDC  C0 87 00 30 */	lfs f4, 0x30(r7)
/* 801A5EE0  C0 A7 00 34 */	lfs f5, 0x34(r7)
/* 801A5EE4  80 87 00 38 */	lwz r4, 0x38(r7)
/* 801A5EE8  80 67 00 3C */	lwz r3, 0x3c(r7)
/* 801A5EEC  90 81 00 0C */	stw r4, 0xc(r1)
/* 801A5EF0  90 61 00 10 */	stw r3, 0x10(r1)
/* 801A5EF4  80 67 00 40 */	lwz r3, 0x40(r7)
/* 801A5EF8  90 61 00 14 */	stw r3, 0x14(r1)
/* 801A5EFC  C0 C7 00 44 */	lfs f6, 0x44(r7)
/* 801A5F00  80 67 00 48 */	lwz r3, 0x48(r7)
/* 801A5F04  C0 E7 00 4C */	lfs f7, 0x4c(r7)
/* 801A5F08  C1 07 00 50 */	lfs f8, 0x50(r7)
/* 801A5F0C  80 87 00 54 */	lwz r4, 0x54(r7)
/* 801A5F10  39 41 00 6C */	addi r10, r1, 0x6c
/* 801A5F14  39 27 00 54 */	addi r9, r7, 0x54
/* 801A5F18  38 E0 00 06 */	li r7, 6
/* 801A5F1C  7C E9 03 A6 */	mtctr r7
lbl_801A5F20:
/* 801A5F20  81 09 00 04 */	lwz r8, 4(r9)
/* 801A5F24  84 E9 00 08 */	lwzu r7, 8(r9)
/* 801A5F28  91 0A 00 04 */	stw r8, 4(r10)
/* 801A5F2C  94 EA 00 08 */	stwu r7, 8(r10)
/* 801A5F30  42 00 FF F0 */	bdnz lbl_801A5F20
/* 801A5F34  3C E0 80 3C */	lis r7, lightStatusBase@ha /* 0x803BBDC4@ha */
/* 801A5F38  38 E7 BD C4 */	addi r7, r7, lightStatusBase@l /* 0x803BBDC4@l */
/* 801A5F3C  C1 27 00 88 */	lfs f9, 0x88(r7)
/* 801A5F40  C1 47 00 8C */	lfs f10, 0x8c(r7)
/* 801A5F44  C1 67 00 90 */	lfs f11, 0x90(r7)
/* 801A5F48  C1 87 00 94 */	lfs f12, 0x94(r7)
/* 801A5F4C  39 41 00 2C */	addi r10, r1, 0x2c
/* 801A5F50  39 27 00 94 */	addi r9, r7, 0x94
/* 801A5F54  38 E0 00 08 */	li r7, 8
/* 801A5F58  7C E9 03 A6 */	mtctr r7
lbl_801A5F5C:
/* 801A5F5C  81 09 00 04 */	lwz r8, 4(r9)
/* 801A5F60  84 E9 00 08 */	lwzu r7, 8(r9)
/* 801A5F64  91 0A 00 04 */	stw r8, 4(r10)
/* 801A5F68  94 EA 00 08 */	stwu r7, 8(r10)
/* 801A5F6C  42 00 FF F0 */	bdnz lbl_801A5F5C
/* 801A5F70  3C E0 80 3C */	lis r7, lightStatusBase@ha /* 0x803BBDC4@ha */
/* 801A5F74  38 E7 BD C4 */	addi r7, r7, lightStatusBase@l /* 0x803BBDC4@l */
/* 801A5F78  C1 A7 00 D8 */	lfs f13, 0xd8(r7)
/* 801A5F7C  C3 E7 00 DC */	lfs f31, 0xdc(r7)
/* 801A5F80  C3 C7 00 E0 */	lfs f30, 0xe0(r7)
/* 801A5F84  C3 A7 00 E4 */	lfs f29, 0xe4(r7)
/* 801A5F88  3C E0 80 43 */	lis r7, lightStatusData@ha /* 0x8042E07C@ha */
/* 801A5F8C  3A E7 E0 7C */	addi r23, r7, lightStatusData@l /* 0x8042E07C@l */
/* 801A5F90  83 01 00 24 */	lwz r24, 0x24(r1)
/* 801A5F94  83 21 00 28 */	lwz r25, 0x28(r1)
/* 801A5F98  83 41 00 2C */	lwz r26, 0x2c(r1)
/* 801A5F9C  83 61 00 18 */	lwz r27, 0x18(r1)
/* 801A5FA0  83 81 00 1C */	lwz r28, 0x1c(r1)
/* 801A5FA4  83 A1 00 20 */	lwz r29, 0x20(r1)
/* 801A5FA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 801A5FAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801A5FB0  81 81 00 10 */	lwz r12, 0x10(r1)
/* 801A5FB4  81 61 00 14 */	lwz r11, 0x14(r1)
lbl_801A5FB8:
/* 801A5FB8  7E D7 32 14 */	add r22, r23, r6
/* 801A5FBC  93 16 00 00 */	stw r24, 0(r22)
/* 801A5FC0  93 36 00 04 */	stw r25, 4(r22)
/* 801A5FC4  93 56 00 08 */	stw r26, 8(r22)
/* 801A5FC8  93 76 00 0C */	stw r27, 0xc(r22)
/* 801A5FCC  93 96 00 10 */	stw r28, 0x10(r22)
/* 801A5FD0  93 B6 00 14 */	stw r29, 0x14(r22)
/* 801A5FD4  93 D6 00 18 */	stw r30, 0x18(r22)
/* 801A5FD8  90 16 00 1C */	stw r0, 0x1c(r22)
/* 801A5FDC  D0 16 00 20 */	stfs f0, 0x20(r22)
/* 801A5FE0  D0 36 00 24 */	stfs f1, 0x24(r22)
/* 801A5FE4  D0 56 00 28 */	stfs f2, 0x28(r22)
/* 801A5FE8  D0 76 00 2C */	stfs f3, 0x2c(r22)
/* 801A5FEC  D0 96 00 30 */	stfs f4, 0x30(r22)
/* 801A5FF0  D0 B6 00 34 */	stfs f5, 0x34(r22)
/* 801A5FF4  93 F6 00 38 */	stw r31, 0x38(r22)
/* 801A5FF8  91 96 00 3C */	stw r12, 0x3c(r22)
/* 801A5FFC  91 76 00 40 */	stw r11, 0x40(r22)
/* 801A6000  D0 D6 00 44 */	stfs f6, 0x44(r22)
/* 801A6004  90 76 00 48 */	stw r3, 0x48(r22)
/* 801A6008  D0 F6 00 4C */	stfs f7, 0x4c(r22)
/* 801A600C  D1 16 00 50 */	stfs f8, 0x50(r22)
/* 801A6010  90 96 00 54 */	stw r4, 0x54(r22)
/* 801A6014  39 56 00 54 */	addi r10, r22, 0x54
/* 801A6018  39 21 00 6C */	addi r9, r1, 0x6c
/* 801A601C  38 E0 00 06 */	li r7, 6
/* 801A6020  7C E9 03 A6 */	mtctr r7
lbl_801A6024:
/* 801A6024  81 09 00 04 */	lwz r8, 4(r9)
/* 801A6028  84 E9 00 08 */	lwzu r7, 8(r9)
/* 801A602C  91 0A 00 04 */	stw r8, 4(r10)
/* 801A6030  94 EA 00 08 */	stwu r7, 8(r10)
/* 801A6034  42 00 FF F0 */	bdnz lbl_801A6024
/* 801A6038  D1 36 00 88 */	stfs f9, 0x88(r22)
/* 801A603C  D1 56 00 8C */	stfs f10, 0x8c(r22)
/* 801A6040  D1 76 00 90 */	stfs f11, 0x90(r22)
/* 801A6044  D1 96 00 94 */	stfs f12, 0x94(r22)
/* 801A6048  39 56 00 94 */	addi r10, r22, 0x94
/* 801A604C  39 21 00 2C */	addi r9, r1, 0x2c
/* 801A6050  38 E0 00 08 */	li r7, 8
/* 801A6054  7C E9 03 A6 */	mtctr r7
lbl_801A6058:
/* 801A6058  81 09 00 04 */	lwz r8, 4(r9)
/* 801A605C  84 E9 00 08 */	lwzu r7, 8(r9)
/* 801A6060  91 0A 00 04 */	stw r8, 4(r10)
/* 801A6064  94 EA 00 08 */	stwu r7, 8(r10)
/* 801A6068  42 00 FF F0 */	bdnz lbl_801A6058
/* 801A606C  D1 B6 00 D8 */	stfs f13, 0xd8(r22)
/* 801A6070  D3 F6 00 DC */	stfs f31, 0xdc(r22)
/* 801A6074  D3 D6 00 E0 */	stfs f30, 0xe0(r22)
/* 801A6078  D3 B6 00 E4 */	stfs f29, 0xe4(r22)
/* 801A607C  38 A5 00 01 */	addi r5, r5, 1
/* 801A6080  2C 05 00 08 */	cmpwi r5, 8
/* 801A6084  38 C6 00 E8 */	addi r6, r6, 0xe8
/* 801A6088  41 80 FF 30 */	blt lbl_801A5FB8
/* 801A608C  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, 0 /* qr0 */
/* 801A6090  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 801A6094  E3 C1 00 E8 */	psq_l f30, 232(r1), 0, 0 /* qr0 */
/* 801A6098  CB C1 00 E0 */	lfd f30, 0xe0(r1)
/* 801A609C  E3 A1 00 D8 */	psq_l f29, 216(r1), 0, 0 /* qr0 */
/* 801A60A0  CB A1 00 D0 */	lfd f29, 0xd0(r1)
/* 801A60A4  39 61 00 D0 */	addi r11, r1, 0xd0
/* 801A60A8  48 1B C1 65 */	bl _restgpr_22
/* 801A60AC  80 01 01 04 */	lwz r0, 0x104(r1)
/* 801A60B0  7C 08 03 A6 */	mtlr r0
/* 801A60B4  38 21 01 00 */	addi r1, r1, 0x100
/* 801A60B8  4E 80 00 20 */	blr 
