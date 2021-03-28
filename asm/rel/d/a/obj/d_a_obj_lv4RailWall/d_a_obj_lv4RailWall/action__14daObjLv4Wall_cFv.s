lbl_80C60E90:
/* 80C60E90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C60E94  7C 08 02 A6 */	mflr r0
/* 80C60E98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C60E9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C60EA0  7C 7F 1B 78 */	mr r31, r3
/* 80C60EA4  3C 60 80 C6 */	lis r3, cNullVec__6Z2Calc@ha
/* 80C60EA8  38 C3 1B BC */	addi r6, r3, cNullVec__6Z2Calc@l
/* 80C60EAC  3C 60 80 C6 */	lis r3, data_80C61D38@ha
/* 80C60EB0  38 A3 1D 38 */	addi r5, r3, data_80C61D38@l
/* 80C60EB4  88 05 00 00 */	lbz r0, 0(r5)
/* 80C60EB8  7C 00 07 75 */	extsb. r0, r0
/* 80C60EBC  40 82 00 58 */	bne lbl_80C60F14
/* 80C60EC0  80 66 00 24 */	lwz r3, 0x24(r6)
/* 80C60EC4  80 06 00 28 */	lwz r0, 0x28(r6)
/* 80C60EC8  90 66 00 48 */	stw r3, 0x48(r6)
/* 80C60ECC  90 06 00 4C */	stw r0, 0x4c(r6)
/* 80C60ED0  80 06 00 2C */	lwz r0, 0x2c(r6)
/* 80C60ED4  90 06 00 50 */	stw r0, 0x50(r6)
/* 80C60ED8  38 86 00 48 */	addi r4, r6, 0x48
/* 80C60EDC  80 66 00 30 */	lwz r3, 0x30(r6)
/* 80C60EE0  80 06 00 34 */	lwz r0, 0x34(r6)
/* 80C60EE4  90 64 00 0C */	stw r3, 0xc(r4)
/* 80C60EE8  90 04 00 10 */	stw r0, 0x10(r4)
/* 80C60EEC  80 06 00 38 */	lwz r0, 0x38(r6)
/* 80C60EF0  90 04 00 14 */	stw r0, 0x14(r4)
/* 80C60EF4  80 66 00 3C */	lwz r3, 0x3c(r6)
/* 80C60EF8  80 06 00 40 */	lwz r0, 0x40(r6)
/* 80C60EFC  90 64 00 18 */	stw r3, 0x18(r4)
/* 80C60F00  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80C60F04  80 06 00 44 */	lwz r0, 0x44(r6)
/* 80C60F08  90 04 00 20 */	stw r0, 0x20(r4)
/* 80C60F0C  38 00 00 01 */	li r0, 1
/* 80C60F10  98 05 00 00 */	stb r0, 0(r5)
lbl_80C60F14:
/* 80C60F14  7F E3 FB 78 */	mr r3, r31
/* 80C60F18  88 1F 09 5A */	lbz r0, 0x95a(r31)
/* 80C60F1C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C60F20  39 86 00 48 */	addi r12, r6, 0x48
/* 80C60F24  7D 8C 02 14 */	add r12, r12, r0
/* 80C60F28  4B 70 11 5C */	b __ptmf_scall
/* 80C60F2C  60 00 00 00 */	nop 
/* 80C60F30  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C60F34  4B 3E 79 38 */	b eventUpdate__17dEvLib_callback_cFv
/* 80C60F38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C60F3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C60F40  7C 08 03 A6 */	mtlr r0
/* 80C60F44  38 21 00 10 */	addi r1, r1, 0x10
/* 80C60F48  4E 80 00 20 */	blr 
