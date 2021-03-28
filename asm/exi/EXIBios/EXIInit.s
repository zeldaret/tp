lbl_80343E54:
/* 80343E54  7C 08 02 A6 */	mflr r0
/* 80343E58  90 01 00 04 */	stw r0, 4(r1)
/* 80343E5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80343E60  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80343E64  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80343E68  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80343E6C  93 81 00 10 */	stw r28, 0x10(r1)
/* 80343E70  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC006800@ha */
/* 80343E74  38 63 68 00 */	addi r3, r3, 0x6800 /* 0xCC006800@l */
lbl_80343E78:
/* 80343E78  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80343E7C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80343E80  28 00 00 01 */	cmplwi r0, 1
/* 80343E84  41 82 FF F4 */	beq lbl_80343E78
/* 80343E88  80 03 00 20 */	lwz r0, 0x20(r3)
/* 80343E8C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80343E90  28 00 00 01 */	cmplwi r0, 1
/* 80343E94  41 82 FF E4 */	beq lbl_80343E78
/* 80343E98  80 03 00 34 */	lwz r0, 0x34(r3)
/* 80343E9C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80343EA0  28 00 00 01 */	cmplwi r0, 1
/* 80343EA4  41 82 FF D4 */	beq lbl_80343E78
/* 80343EA8  3C 60 00 80 */	lis r3, 0x0080 /* 0x007F8000@ha */
/* 80343EAC  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x007F8000@l */
/* 80343EB0  4B FF 9C 0D */	bl __OSMaskInterrupts
/* 80343EB4  3B E0 00 00 */	li r31, 0
/* 80343EB8  3C 80 CC 00 */	lis r4, 0xCC00 /* 0xCC006800@ha */
/* 80343EBC  93 E4 68 00 */	stw r31, 0x6800(r4)
/* 80343EC0  93 E4 68 14 */	stw r31, 0x6814(r4)
/* 80343EC4  93 E4 68 28 */	stw r31, 0x6828(r4)
/* 80343EC8  38 00 20 00 */	li r0, 0x2000
/* 80343ECC  90 04 68 00 */	stw r0, 0x6800(r4)
/* 80343ED0  38 60 00 09 */	li r3, 9
/* 80343ED4  3C 80 80 34 */	lis r4, EXIIntrruptHandler@ha
/* 80343ED8  3B 84 3A A4 */	addi r28, r4, EXIIntrruptHandler@l
/* 80343EDC  38 9C 00 00 */	addi r4, r28, 0
/* 80343EE0  4B FF 98 61 */	bl __OSSetInterruptHandler
/* 80343EE4  38 60 00 0A */	li r3, 0xa
/* 80343EE8  3C 80 80 34 */	lis r4, TCIntrruptHandler@ha
/* 80343EEC  3B A4 3B 6C */	addi r29, r4, TCIntrruptHandler@l
/* 80343EF0  38 9D 00 00 */	addi r4, r29, 0
/* 80343EF4  4B FF 98 4D */	bl __OSSetInterruptHandler
/* 80343EF8  38 60 00 0B */	li r3, 0xb
/* 80343EFC  3C 80 80 34 */	lis r4, EXTIntrruptHandler@ha
/* 80343F00  3B C4 3D 84 */	addi r30, r4, EXTIntrruptHandler@l
/* 80343F04  38 9E 00 00 */	addi r4, r30, 0
/* 80343F08  4B FF 98 39 */	bl __OSSetInterruptHandler
/* 80343F0C  38 60 00 0C */	li r3, 0xc
/* 80343F10  38 9C 00 00 */	addi r4, r28, 0
/* 80343F14  4B FF 98 2D */	bl __OSSetInterruptHandler
/* 80343F18  38 60 00 0D */	li r3, 0xd
/* 80343F1C  38 9D 00 00 */	addi r4, r29, 0
/* 80343F20  4B FF 98 21 */	bl __OSSetInterruptHandler
/* 80343F24  38 60 00 0E */	li r3, 0xe
/* 80343F28  38 9E 00 00 */	addi r4, r30, 0
/* 80343F2C  4B FF 98 15 */	bl __OSSetInterruptHandler
/* 80343F30  38 60 00 0F */	li r3, 0xf
/* 80343F34  38 9C 00 00 */	addi r4, r28, 0
/* 80343F38  4B FF 98 09 */	bl __OSSetInterruptHandler
/* 80343F3C  38 60 00 10 */	li r3, 0x10
/* 80343F40  38 9D 00 00 */	addi r4, r29, 0
/* 80343F44  4B FF 97 FD */	bl __OSSetInterruptHandler
/* 80343F48  38 60 00 00 */	li r3, 0
/* 80343F4C  38 80 00 02 */	li r4, 2
/* 80343F50  38 AD 91 58 */	la r5, IDSerialPort1(r13) /* 804516D8-_SDA_BASE_ */
/* 80343F54  48 00 02 E5 */	bl EXIGetID
/* 80343F58  80 0D 90 A8 */	lwz r0, __OSInIPL(r13)
/* 80343F5C  2C 00 00 00 */	cmpwi r0, 0
/* 80343F60  41 82 00 34 */	beq lbl_80343F94
/* 80343F64  3C 80 80 00 */	lis r4, 0x8000 /* 0x800030C4@ha */
/* 80343F68  93 E4 30 C4 */	stw r31, 0x30C4(r4)
/* 80343F6C  93 E4 30 C0 */	stw r31, 0x30c0(r4)
/* 80343F70  3C 60 80 45 */	lis r3, Ecb@ha
/* 80343F74  38 63 C5 70 */	addi r3, r3, Ecb@l
/* 80343F78  93 E3 00 60 */	stw r31, 0x60(r3)
/* 80343F7C  93 E3 00 20 */	stw r31, 0x20(r3)
/* 80343F80  38 60 00 00 */	li r3, 0
/* 80343F84  4B FF F4 75 */	bl __EXIProbe
/* 80343F88  38 60 00 01 */	li r3, 1
/* 80343F8C  4B FF F4 6D */	bl __EXIProbe
/* 80343F90  48 00 00 70 */	b lbl_80344000
lbl_80343F94:
/* 80343F94  38 60 00 00 */	li r3, 0
/* 80343F98  38 80 00 00 */	li r4, 0
/* 80343F9C  38 A1 00 08 */	addi r5, r1, 8
/* 80343FA0  48 00 02 99 */	bl EXIGetID
/* 80343FA4  2C 03 00 00 */	cmpwi r3, 0
/* 80343FA8  41 82 00 24 */	beq lbl_80343FCC
/* 80343FAC  80 61 00 08 */	lwz r3, 8(r1)
/* 80343FB0  3C 03 F8 FF */	addis r0, r3, 0xf8ff
/* 80343FB4  28 00 00 00 */	cmplwi r0, 0
/* 80343FB8  40 82 00 14 */	bne lbl_80343FCC
/* 80343FBC  38 60 00 01 */	li r3, 1
/* 80343FC0  38 80 00 00 */	li r4, 0
/* 80343FC4  48 00 07 B1 */	bl __OSEnableBarnacle
/* 80343FC8  48 00 00 38 */	b lbl_80344000
lbl_80343FCC:
/* 80343FCC  38 60 00 01 */	li r3, 1
/* 80343FD0  38 80 00 00 */	li r4, 0
/* 80343FD4  38 A1 00 08 */	addi r5, r1, 8
/* 80343FD8  48 00 02 61 */	bl EXIGetID
/* 80343FDC  2C 03 00 00 */	cmpwi r3, 0
/* 80343FE0  41 82 00 20 */	beq lbl_80344000
/* 80343FE4  80 61 00 08 */	lwz r3, 8(r1)
/* 80343FE8  3C 03 F8 FF */	addis r0, r3, 0xf8ff
/* 80343FEC  28 00 00 00 */	cmplwi r0, 0
/* 80343FF0  40 82 00 10 */	bne lbl_80344000
/* 80343FF4  38 60 00 00 */	li r3, 0
/* 80343FF8  38 80 00 02 */	li r4, 2
/* 80343FFC  48 00 07 79 */	bl __OSEnableBarnacle
lbl_80344000:
/* 80344000  80 6D 84 40 */	lwz r3, __EXIVersion(r13)
/* 80344004  4B FF 68 71 */	bl OSRegisterVersion
/* 80344008  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8034400C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80344010  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80344014  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80344018  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8034401C  38 21 00 20 */	addi r1, r1, 0x20
/* 80344020  7C 08 03 A6 */	mtlr r0
/* 80344024  4E 80 00 20 */	blr 
