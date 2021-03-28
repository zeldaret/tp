lbl_8028C8A4:
/* 8028C8A4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8028C8A8  7C 08 02 A6 */	mflr r0
/* 8028C8AC  90 01 00 74 */	stw r0, 0x74(r1)
/* 8028C8B0  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8028C8B4  93 C1 00 68 */	stw r30, 0x68(r1)
/* 8028C8B8  3C 60 80 43 */	lis r3, lit_848@ha
/* 8028C8BC  3B C3 13 78 */	addi r30, r3, lit_848@l
/* 8028C8C0  3C 60 80 3C */	lis r3, lit_844@ha
/* 8028C8C4  3B E3 59 A0 */	addi r31, r3, lit_844@l
/* 8028C8C8  3C 60 80 3C */	lis r3, __vt__Q37JStudio14TVariableValue7TOutput@ha
/* 8028C8CC  39 43 56 40 */	addi r10, r3, __vt__Q37JStudio14TVariableValue7TOutput@l
/* 8028C8D0  91 41 00 48 */	stw r10, 0x48(r1)
/* 8028C8D4  3C 60 80 3C */	lis r3, data_803C5A10@ha
/* 8028C8D8  38 63 5A 10 */	addi r3, r3, data_803C5A10@l
/* 8028C8DC  90 61 00 48 */	stw r3, 0x48(r1)
/* 8028C8E0  39 20 00 04 */	li r9, 4
/* 8028C8E4  91 21 00 4C */	stw r9, 0x4c(r1)
/* 8028C8E8  81 1F 00 00 */	lwz r8, 0(r31)
/* 8028C8EC  80 FF 00 04 */	lwz r7, 4(r31)
/* 8028C8F0  91 01 00 50 */	stw r8, 0x50(r1)
/* 8028C8F4  90 E1 00 54 */	stw r7, 0x54(r1)
/* 8028C8F8  80 DF 00 08 */	lwz r6, 8(r31)
/* 8028C8FC  90 C1 00 58 */	stw r6, 0x58(r1)
/* 8028C900  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 8028C904  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 8028C908  90 A1 00 5C */	stw r5, 0x5c(r1)
/* 8028C90C  90 81 00 60 */	stw r4, 0x60(r1)
/* 8028C910  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 8028C914  90 01 00 64 */	stw r0, 0x64(r1)
/* 8028C918  91 5E 00 24 */	stw r10, 0x24(r30)
/* 8028C91C  90 7E 00 24 */	stw r3, 0x24(r30)
/* 8028C920  38 7E 00 24 */	addi r3, r30, 0x24
/* 8028C924  91 23 00 04 */	stw r9, 4(r3)
/* 8028C928  91 03 00 08 */	stw r8, 8(r3)
/* 8028C92C  90 E3 00 0C */	stw r7, 0xc(r3)
/* 8028C930  90 C3 00 10 */	stw r6, 0x10(r3)
/* 8028C934  90 A3 00 14 */	stw r5, 0x14(r3)
/* 8028C938  90 83 00 18 */	stw r4, 0x18(r3)
/* 8028C93C  90 03 00 1C */	stw r0, 0x1c(r3)
/* 8028C940  3C 80 80 29 */	lis r4, func_8028CAC0@ha
/* 8028C944  38 84 CA C0 */	addi r4, r4, func_8028CAC0@l
/* 8028C948  38 BE 00 00 */	addi r5, r30, 0
/* 8028C94C  48 0D 52 D9 */	bl __register_global_object
/* 8028C950  3C 60 80 3C */	lis r3, data_803C5A10@ha
/* 8028C954  38 03 5A 10 */	addi r0, r3, data_803C5A10@l
/* 8028C958  90 01 00 48 */	stw r0, 0x48(r1)
/* 8028C95C  38 61 00 48 */	addi r3, r1, 0x48
/* 8028C960  38 80 00 00 */	li r4, 0
/* 8028C964  4B FF 94 A9 */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 8028C968  3C 60 80 3C */	lis r3, __vt__Q37JStudio14TVariableValue7TOutput@ha
/* 8028C96C  39 63 56 40 */	addi r11, r3, __vt__Q37JStudio14TVariableValue7TOutput@l
/* 8028C970  91 61 00 28 */	stw r11, 0x28(r1)
/* 8028C974  3C 60 80 3C */	lis r3, data_803C5A10@ha
/* 8028C978  39 43 5A 10 */	addi r10, r3, data_803C5A10@l
/* 8028C97C  91 41 00 28 */	stw r10, 0x28(r1)
/* 8028C980  39 20 00 05 */	li r9, 5
/* 8028C984  91 21 00 2C */	stw r9, 0x2c(r1)
/* 8028C988  81 1F 00 18 */	lwz r8, 0x18(r31)
/* 8028C98C  80 FF 00 1C */	lwz r7, 0x1c(r31)
/* 8028C990  91 01 00 30 */	stw r8, 0x30(r1)
/* 8028C994  90 E1 00 34 */	stw r7, 0x34(r1)
/* 8028C998  80 DF 00 20 */	lwz r6, 0x20(r31)
/* 8028C99C  90 C1 00 38 */	stw r6, 0x38(r1)
/* 8028C9A0  80 BF 00 24 */	lwz r5, 0x24(r31)
/* 8028C9A4  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8028C9A8  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 8028C9AC  90 81 00 40 */	stw r4, 0x40(r1)
/* 8028C9B0  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8028C9B4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8028C9B8  38 7E 00 24 */	addi r3, r30, 0x24
/* 8028C9BC  91 63 00 20 */	stw r11, 0x20(r3)
/* 8028C9C0  91 43 00 20 */	stw r10, 0x20(r3)
/* 8028C9C4  91 23 00 24 */	stw r9, 0x24(r3)
/* 8028C9C8  91 03 00 28 */	stw r8, 0x28(r3)
/* 8028C9CC  90 E3 00 2C */	stw r7, 0x2c(r3)
/* 8028C9D0  90 C3 00 30 */	stw r6, 0x30(r3)
/* 8028C9D4  90 A3 00 34 */	stw r5, 0x34(r3)
/* 8028C9D8  90 83 00 38 */	stw r4, 0x38(r3)
/* 8028C9DC  90 03 00 3C */	stw r0, 0x3c(r3)
/* 8028C9E0  38 63 00 20 */	addi r3, r3, 0x20
/* 8028C9E4  3C 80 80 29 */	lis r4, func_8028CAC0@ha
/* 8028C9E8  38 84 CA C0 */	addi r4, r4, func_8028CAC0@l
/* 8028C9EC  38 BE 00 0C */	addi r5, r30, 0xc
/* 8028C9F0  48 0D 52 35 */	bl __register_global_object
/* 8028C9F4  3C 60 80 3C */	lis r3, data_803C5A10@ha
/* 8028C9F8  38 03 5A 10 */	addi r0, r3, data_803C5A10@l
/* 8028C9FC  90 01 00 28 */	stw r0, 0x28(r1)
/* 8028CA00  38 61 00 28 */	addi r3, r1, 0x28
/* 8028CA04  38 80 00 00 */	li r4, 0
/* 8028CA08  4B FF 94 05 */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 8028CA0C  3C 60 80 3C */	lis r3, __vt__Q37JStudio14TVariableValue7TOutput@ha
/* 8028CA10  39 03 56 40 */	addi r8, r3, __vt__Q37JStudio14TVariableValue7TOutput@l
/* 8028CA14  91 01 00 08 */	stw r8, 8(r1)
/* 8028CA18  3C 60 80 3C */	lis r3, data_803C5A10@ha
/* 8028CA1C  38 E3 5A 10 */	addi r7, r3, data_803C5A10@l
/* 8028CA20  90 E1 00 08 */	stw r7, 8(r1)
/* 8028CA24  38 C0 FF FF */	li r6, -1
/* 8028CA28  90 C1 00 0C */	stw r6, 0xc(r1)
/* 8028CA2C  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 8028CA30  84 A3 21 80 */	lwzu r5, __ptmf_null@l(r3)
/* 8028CA34  80 83 00 04 */	lwz r4, 4(r3)
/* 8028CA38  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8028CA3C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8028CA40  80 03 00 08 */	lwz r0, 8(r3)
/* 8028CA44  90 01 00 18 */	stw r0, 0x18(r1)
/* 8028CA48  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 8028CA4C  90 81 00 20 */	stw r4, 0x20(r1)
/* 8028CA50  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028CA54  38 7E 00 24 */	addi r3, r30, 0x24
/* 8028CA58  91 03 00 40 */	stw r8, 0x40(r3)
/* 8028CA5C  90 E3 00 40 */	stw r7, 0x40(r3)
/* 8028CA60  90 C3 00 44 */	stw r6, 0x44(r3)
/* 8028CA64  90 A3 00 48 */	stw r5, 0x48(r3)
/* 8028CA68  90 83 00 4C */	stw r4, 0x4c(r3)
/* 8028CA6C  90 03 00 50 */	stw r0, 0x50(r3)
/* 8028CA70  90 A3 00 54 */	stw r5, 0x54(r3)
/* 8028CA74  90 83 00 58 */	stw r4, 0x58(r3)
/* 8028CA78  90 03 00 5C */	stw r0, 0x5c(r3)
/* 8028CA7C  38 63 00 40 */	addi r3, r3, 0x40
/* 8028CA80  3C 80 80 29 */	lis r4, func_8028CAC0@ha
/* 8028CA84  38 84 CA C0 */	addi r4, r4, func_8028CAC0@l
/* 8028CA88  38 BE 00 18 */	addi r5, r30, 0x18
/* 8028CA8C  48 0D 51 99 */	bl __register_global_object
/* 8028CA90  3C 60 80 3C */	lis r3, data_803C5A10@ha
/* 8028CA94  38 03 5A 10 */	addi r0, r3, data_803C5A10@l
/* 8028CA98  90 01 00 08 */	stw r0, 8(r1)
/* 8028CA9C  38 61 00 08 */	addi r3, r1, 8
/* 8028CAA0  38 80 00 00 */	li r4, 0
/* 8028CAA4  4B FF 93 69 */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 8028CAA8  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8028CAAC  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 8028CAB0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8028CAB4  7C 08 03 A6 */	mtlr r0
/* 8028CAB8  38 21 00 70 */	addi r1, r1, 0x70
/* 8028CABC  4E 80 00 20 */	blr 
