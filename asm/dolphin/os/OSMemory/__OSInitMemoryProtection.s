lbl_8033EEF0:
/* 8033EEF0  7C 08 02 A6 */	mflr r0
/* 8033EEF4  90 01 00 04 */	stw r0, 4(r1)
/* 8033EEF8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8033EEFC  BF 61 00 3C */	stmw r27, 0x3c(r1)
/* 8033EF00  3F 60 80 00 */	lis r27, 0x8000 /* 0x800000F0@ha */
/* 8033EF04  83 FB 00 F0 */	lwz r31, 0x00F0(r27)  /* 0x800000F0@l */
/* 8033EF08  4B FF E7 ED */	bl OSDisableInterrupts
/* 8033EF0C  3C 80 CC 00 */	lis r4, 0xCC00 /* 0xCC004000@ha */
/* 8033EF10  3B 84 40 00 */	addi r28, r4, 0x4000 /* 0xCC004000@l */
/* 8033EF14  38 00 00 00 */	li r0, 0
/* 8033EF18  B0 1C 00 20 */	sth r0, 0x20(r28)
/* 8033EF1C  38 00 00 FF */	li r0, 0xff
/* 8033EF20  7C 7E 1B 78 */	mr r30, r3
/* 8033EF24  B0 1C 00 10 */	sth r0, 0x10(r28)
/* 8033EF28  3C 60 F0 00 */	lis r3, 0xf000
/* 8033EF2C  4B FF EB 91 */	bl __OSMaskInterrupts
/* 8033EF30  3C 60 80 34 */	lis r3, MEMIntrruptHandler@ha /* 0x8033ECA8@ha */
/* 8033EF34  3B A3 EC A8 */	addi r29, r3, MEMIntrruptHandler@l /* 0x8033ECA8@l */
/* 8033EF38  7F A4 EB 78 */	mr r4, r29
/* 8033EF3C  38 60 00 00 */	li r3, 0
/* 8033EF40  4B FF E8 01 */	bl __OSSetInterruptHandler
/* 8033EF44  7F A4 EB 78 */	mr r4, r29
/* 8033EF48  38 60 00 01 */	li r3, 1
/* 8033EF4C  4B FF E7 F5 */	bl __OSSetInterruptHandler
/* 8033EF50  7F A4 EB 78 */	mr r4, r29
/* 8033EF54  38 60 00 02 */	li r3, 2
/* 8033EF58  4B FF E7 E9 */	bl __OSSetInterruptHandler
/* 8033EF5C  7F A4 EB 78 */	mr r4, r29
/* 8033EF60  38 60 00 03 */	li r3, 3
/* 8033EF64  4B FF E7 DD */	bl __OSSetInterruptHandler
/* 8033EF68  7F A4 EB 78 */	mr r4, r29
/* 8033EF6C  38 60 00 04 */	li r3, 4
/* 8033EF70  4B FF E7 D1 */	bl __OSSetInterruptHandler
/* 8033EF74  3C 60 80 3D */	lis r3, ResetFunctionInfo@ha /* 0x803D07D8@ha */
/* 8033EF78  38 63 07 D8 */	addi r3, r3, ResetFunctionInfo@l /* 0x803D07D8@l */
/* 8033EF7C  48 00 06 E5 */	bl OSRegisterResetFunction
/* 8033EF80  80 7B 00 F0 */	lwz r3, 0xf0(r27)
/* 8033EF84  80 1B 00 28 */	lwz r0, 0x28(r27)
/* 8033EF88  7C 03 00 40 */	cmplw r3, r0
/* 8033EF8C  40 80 00 24 */	bge lbl_8033EFB0
/* 8033EF90  3C 03 FE 80 */	addis r0, r3, 0xfe80
/* 8033EF94  28 00 00 00 */	cmplwi r0, 0
/* 8033EF98  40 82 00 18 */	bne lbl_8033EFB0
/* 8033EF9C  3C 60 81 80 */	lis r3, 0x8180
/* 8033EFA0  3C 80 01 80 */	lis r4, 0x180
/* 8033EFA4  4B FF C5 DD */	bl DCInvalidateRange
/* 8033EFA8  38 00 00 02 */	li r0, 2
/* 8033EFAC  B0 1C 00 28 */	sth r0, 0x28(r28)
lbl_8033EFB0:
/* 8033EFB0  3C 00 01 80 */	lis r0, 0x180
/* 8033EFB4  7C 1F 00 40 */	cmplw r31, r0
/* 8033EFB8  41 81 00 14 */	bgt lbl_8033EFCC
/* 8033EFBC  3C 60 80 34 */	lis r3, Config24MB@ha /* 0x8033EDD8@ha */
/* 8033EFC0  38 63 ED D8 */	addi r3, r3, Config24MB@l /* 0x8033EDD8@l */
/* 8033EFC4  4B FF FF 15 */	bl RealMode
/* 8033EFC8  48 00 00 1C */	b lbl_8033EFE4
lbl_8033EFCC:
/* 8033EFCC  3C 00 03 00 */	lis r0, 0x300
/* 8033EFD0  7C 1F 00 40 */	cmplw r31, r0
/* 8033EFD4  41 81 00 10 */	bgt lbl_8033EFE4
/* 8033EFD8  3C 60 80 34 */	lis r3, Config48MB@ha /* 0x8033EE58@ha */
/* 8033EFDC  38 63 EE 58 */	addi r3, r3, Config48MB@l /* 0x8033EE58@l */
/* 8033EFE0  4B FF FE F9 */	bl RealMode
lbl_8033EFE4:
/* 8033EFE4  3C 60 08 00 */	lis r3, 0x800
/* 8033EFE8  4B FF EB 5D */	bl __OSUnmaskInterrupts
/* 8033EFEC  7F C3 F3 78 */	mr r3, r30
/* 8033EFF0  4B FF E7 2D */	bl OSRestoreInterrupts
/* 8033EFF4  BB 61 00 3C */	lmw r27, 0x3c(r1)
/* 8033EFF8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8033EFFC  38 21 00 50 */	addi r1, r1, 0x50
/* 8033F000  7C 08 03 A6 */	mtlr r0
/* 8033F004  4E 80 00 20 */	blr 
