lbl_80325EC8:
/* 80325EC8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80325ECC  7C 08 02 A6 */	mflr r0
/* 80325ED0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80325ED4  39 61 00 30 */	addi r11, r1, 0x30
/* 80325ED8  48 03 C2 FD */	bl _savegpr_27
/* 80325EDC  7C 7B 1B 78 */	mr r27, r3
/* 80325EE0  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 80325EE4  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80325EE8  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80325EEC  90 03 00 58 */	stw r0, 0x58(r3)
/* 80325EF0  88 0D 90 6C */	lbz r0, data_804515EC(r13)
/* 80325EF4  7C 00 07 75 */	extsb. r0, r0
/* 80325EF8  40 82 00 14 */	bne lbl_80325F0C
/* 80325EFC  48 01 77 F9 */	bl OSDisableInterrupts
/* 80325F00  90 6D 90 68 */	stw r3, sInterruptFlag(r13)
/* 80325F04  38 00 00 01 */	li r0, 1
/* 80325F08  98 0D 90 6C */	stb r0, data_804515EC(r13)
lbl_80325F0C:
/* 80325F0C  48 01 AD B9 */	bl OSDisableScheduler
/* 80325F10  A3 FB 00 5C */	lhz r31, 0x5c(r27)
/* 80325F14  3B 80 00 00 */	li r28, 0
/* 80325F18  3B C1 00 08 */	addi r30, r1, 8
/* 80325F1C  48 00 00 40 */	b lbl_80325F5C
lbl_80325F20:
/* 80325F20  80 7B 00 60 */	lwz r3, 0x60(r27)
/* 80325F24  57 80 13 BA */	rlwinm r0, r28, 2, 0xe, 0x1d
/* 80325F28  7F A3 00 2E */	lwzx r29, r3, r0
/* 80325F2C  80 BD 00 48 */	lwz r5, 0x48(r29)
/* 80325F30  38 61 00 08 */	addi r3, r1, 8
/* 80325F34  80 85 00 00 */	lwz r4, 0(r5)
/* 80325F38  80 A5 00 08 */	lwz r5, 8(r5)
/* 80325F3C  48 03 B0 5D */	bl GDInitGDLObj
/* 80325F40  93 CD 94 00 */	stw r30, __GDCurrentDL(r13)
/* 80325F44  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 80325F48  81 83 00 00 */	lwz r12, 0(r3)
/* 80325F4C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80325F50  7D 89 03 A6 */	mtctr r12
/* 80325F54  4E 80 04 21 */	bctrl 
/* 80325F58  3B 9C 00 01 */	addi r28, r28, 1
lbl_80325F5C:
/* 80325F5C  57 80 04 3E */	clrlwi r0, r28, 0x10
/* 80325F60  7C 00 F8 40 */	cmplw r0, r31
/* 80325F64  41 80 FF BC */	blt lbl_80325F20
/* 80325F68  38 00 00 00 */	li r0, 0
/* 80325F6C  90 0D 94 00 */	stw r0, __GDCurrentDL(r13)
/* 80325F70  48 01 AD 95 */	bl OSEnableScheduler
/* 80325F74  80 6D 90 68 */	lwz r3, sInterruptFlag(r13)
/* 80325F78  48 01 77 A5 */	bl OSRestoreInterrupts
/* 80325F7C  39 61 00 30 */	addi r11, r1, 0x30
/* 80325F80  48 03 C2 A1 */	bl _restgpr_27
/* 80325F84  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80325F88  7C 08 03 A6 */	mtlr r0
/* 80325F8C  38 21 00 30 */	addi r1, r1, 0x30
/* 80325F90  4E 80 00 20 */	blr 
