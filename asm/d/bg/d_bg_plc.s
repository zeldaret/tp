.include "macros.inc"

.section .text, "ax" # 80074074


.global dBgPlc
dBgPlc:
/* 80074074 00070FB4  38 00 00 00 */	li r0, 0
/* 80074078 00070FB8  90 03 00 00 */	stw r0, 0(r3)
/* 8007407C 00070FBC  4E 80 00 20 */	blr 

.global dBgPlc_NS_dtor
dBgPlc_NS_dtor:
/* 80074080 00070FC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80074084 00070FC4  7C 08 02 A6 */	mflr r0
/* 80074088 00070FC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007408C 00070FCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80074090 00070FD0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80074094 00070FD4  41 82 00 10 */	beq lbl_800740A4
/* 80074098 00070FD8  7C 80 07 35 */	extsh. r0, r4
/* 8007409C 00070FDC  40 81 00 08 */	ble lbl_800740A4
/* 800740A0 00070FE0  48 25 AC 9D */	bl __dl
lbl_800740A4:
/* 800740A4 00070FE4  7F E3 FB 78 */	mr r3, r31
/* 800740A8 00070FE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800740AC 00070FEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800740B0 00070FF0  7C 08 03 A6 */	mtlr r0
/* 800740B4 00070FF4  38 21 00 10 */	addi r1, r1, 0x10
/* 800740B8 00070FF8  4E 80 00 20 */	blr 

.global dBgPlc_NS_setBase
dBgPlc_NS_setBase:
/* 800740BC 00070FFC  90 83 00 00 */	stw r4, 0(r3)
/* 800740C0 00071000  4E 80 00 20 */	blr 

.global dBgPlc_NS_getCode
dBgPlc_NS_getCode:
/* 800740C4 00071004  80 63 00 00 */	lwz r3, 0(r3)
/* 800740C8 00071008  38 63 00 08 */	addi r3, r3, 8
/* 800740CC 0007100C  1C 04 00 14 */	mulli r0, r4, 0x14
/* 800740D0 00071010  7C 63 02 14 */	add r3, r3, r0
/* 800740D4 00071014  90 65 00 00 */	stw r3, 0(r5)
/* 800740D8 00071018  4E 80 00 20 */	blr 

.global dBgPlc_NS_getGrpCode
dBgPlc_NS_getGrpCode:
/* 800740DC 0007101C  80 63 00 00 */	lwz r3, 0(r3)
/* 800740E0 00071020  38 63 00 08 */	addi r3, r3, 8
/* 800740E4 00071024  1C 04 00 14 */	mulli r0, r4, 0x14
/* 800740E8 00071028  7C 63 02 14 */	add r3, r3, r0
/* 800740EC 0007102C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 800740F0 00071030  4E 80 00 20 */	blr 

