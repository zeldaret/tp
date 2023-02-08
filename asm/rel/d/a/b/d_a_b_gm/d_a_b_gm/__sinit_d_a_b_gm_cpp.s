lbl_805F3EAC:
/* 805F3EAC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 805F3EB0  7C 08 02 A6 */	mflr r0
/* 805F3EB4  90 01 00 74 */	stw r0, 0x74(r1)
/* 805F3EB8  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 805F3EBC  93 C1 00 68 */	stw r30, 0x68(r1)
/* 805F3EC0  3C 60 80 5F */	lis r3, lit_1109@ha /* 0x805F4790@ha */
/* 805F3EC4  3B E3 47 90 */	addi r31, r3, lit_1109@l /* 0x805F4790@l */
/* 805F3EC8  3C 60 80 5F */	lis r3, lit_3774@ha /* 0x805F4188@ha */
/* 805F3ECC  3B C3 41 88 */	addi r30, r3, lit_3774@l /* 0x805F4188@l */
/* 805F3ED0  38 7F 00 4C */	addi r3, r31, 0x4c
/* 805F3ED4  4B FF 9A 79 */	bl __ct__12daB_GM_HIO_cFv
/* 805F3ED8  3C 80 80 5F */	lis r4, __dt__12daB_GM_HIO_cFv@ha /* 0x805F3E64@ha */
/* 805F3EDC  38 84 3E 64 */	addi r4, r4, __dt__12daB_GM_HIO_cFv@l /* 0x805F3E64@l */
/* 805F3EE0  38 BF 00 40 */	addi r5, r31, 0x40
/* 805F3EE4  4B FF 99 F5 */	bl __register_global_object
/* 805F3EE8  C0 3E 01 F0 */	lfs f1, 0x1f0(r30)
/* 805F3EEC  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 805F3EF0  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F3EF4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 805F3EF8  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 805F3EFC  D0 3F 00 CC */	stfs f1, 0xcc(r31)
/* 805F3F00  38 7F 00 CC */	addi r3, r31, 0xcc
/* 805F3F04  D0 03 00 04 */	stfs f0, 4(r3)
/* 805F3F08  D0 23 00 08 */	stfs f1, 8(r3)
/* 805F3F0C  3C 80 80 5F */	lis r4, __dt__4cXyzFv@ha /* 0x805EE020@ha */
/* 805F3F10  38 84 E0 20 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805EE020@l */
/* 805F3F14  38 BF 00 9C */	addi r5, r31, 0x9c
/* 805F3F18  4B FF 99 C1 */	bl __register_global_object
/* 805F3F1C  C0 5E 01 F0 */	lfs f2, 0x1f0(r30)
/* 805F3F20  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 805F3F24  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 805F3F28  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 805F3F2C  C0 1E 01 F4 */	lfs f0, 0x1f4(r30)
/* 805F3F30  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 805F3F34  38 7F 00 CC */	addi r3, r31, 0xcc
/* 805F3F38  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 805F3F3C  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 805F3F40  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 805F3F44  38 63 00 0C */	addi r3, r3, 0xc
/* 805F3F48  3C 80 80 5F */	lis r4, __dt__4cXyzFv@ha /* 0x805EE020@ha */
/* 805F3F4C  38 84 E0 20 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805EE020@l */
/* 805F3F50  38 BF 00 A8 */	addi r5, r31, 0xa8
/* 805F3F54  4B FF 99 85 */	bl __register_global_object
/* 805F3F58  C0 5E 01 F4 */	lfs f2, 0x1f4(r30)
/* 805F3F5C  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 805F3F60  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 805F3F64  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 805F3F68  C0 1E 01 F0 */	lfs f0, 0x1f0(r30)
/* 805F3F6C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805F3F70  38 7F 00 CC */	addi r3, r31, 0xcc
/* 805F3F74  D0 43 00 18 */	stfs f2, 0x18(r3)
/* 805F3F78  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 805F3F7C  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 805F3F80  38 63 00 18 */	addi r3, r3, 0x18
/* 805F3F84  3C 80 80 5F */	lis r4, __dt__4cXyzFv@ha /* 0x805EE020@ha */
/* 805F3F88  38 84 E0 20 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805EE020@l */
/* 805F3F8C  38 BF 00 B4 */	addi r5, r31, 0xb4
/* 805F3F90  4B FF 99 49 */	bl __register_global_object
/* 805F3F94  C0 3E 01 F4 */	lfs f1, 0x1f4(r30)
/* 805F3F98  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 805F3F9C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F3FA0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805F3FA4  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 805F3FA8  38 7F 00 CC */	addi r3, r31, 0xcc
/* 805F3FAC  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 805F3FB0  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 805F3FB4  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 805F3FB8  38 63 00 24 */	addi r3, r3, 0x24
/* 805F3FBC  3C 80 80 5F */	lis r4, __dt__4cXyzFv@ha /* 0x805EE020@ha */
/* 805F3FC0  38 84 E0 20 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805EE020@l */
/* 805F3FC4  38 BF 00 C0 */	addi r5, r31, 0xc0
/* 805F3FC8  4B FF 99 11 */	bl __register_global_object
/* 805F3FCC  C0 3E 01 F8 */	lfs f1, 0x1f8(r30)
/* 805F3FD0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 805F3FD4  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F3FD8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805F3FDC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805F3FE0  D0 3F 01 2C */	stfs f1, 0x12c(r31)
/* 805F3FE4  38 7F 01 2C */	addi r3, r31, 0x12c
/* 805F3FE8  D0 03 00 04 */	stfs f0, 4(r3)
/* 805F3FEC  D0 03 00 08 */	stfs f0, 8(r3)
/* 805F3FF0  3C 80 80 5F */	lis r4, __dt__4cXyzFv@ha /* 0x805EE020@ha */
/* 805F3FF4  38 84 E0 20 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805EE020@l */
/* 805F3FF8  38 BF 00 FC */	addi r5, r31, 0xfc
/* 805F3FFC  4B FF 98 DD */	bl __register_global_object
/* 805F4000  C0 3E 01 FC */	lfs f1, 0x1fc(r30)
/* 805F4004  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 805F4008  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F400C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805F4010  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805F4014  38 7F 01 2C */	addi r3, r31, 0x12c
/* 805F4018  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 805F401C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 805F4020  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 805F4024  38 63 00 0C */	addi r3, r3, 0xc
/* 805F4028  3C 80 80 5F */	lis r4, __dt__4cXyzFv@ha /* 0x805EE020@ha */
/* 805F402C  38 84 E0 20 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805EE020@l */
/* 805F4030  38 BF 01 08 */	addi r5, r31, 0x108
/* 805F4034  4B FF 98 A5 */	bl __register_global_object
/* 805F4038  C0 3E 01 68 */	lfs f1, 0x168(r30)
/* 805F403C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805F4040  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F4044  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805F4048  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805F404C  38 7F 01 2C */	addi r3, r31, 0x12c
/* 805F4050  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 805F4054  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 805F4058  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 805F405C  38 63 00 18 */	addi r3, r3, 0x18
/* 805F4060  3C 80 80 5F */	lis r4, __dt__4cXyzFv@ha /* 0x805EE020@ha */
/* 805F4064  38 84 E0 20 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805EE020@l */
/* 805F4068  38 BF 01 14 */	addi r5, r31, 0x114
/* 805F406C  4B FF 98 6D */	bl __register_global_object
/* 805F4070  C0 3E 01 FC */	lfs f1, 0x1fc(r30)
/* 805F4074  D0 21 00 08 */	stfs f1, 8(r1)
/* 805F4078  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 805F407C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805F4080  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805F4084  38 7F 01 2C */	addi r3, r31, 0x12c
/* 805F4088  D0 23 00 24 */	stfs f1, 0x24(r3)
/* 805F408C  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 805F4090  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 805F4094  38 63 00 24 */	addi r3, r3, 0x24
/* 805F4098  3C 80 80 5F */	lis r4, __dt__4cXyzFv@ha /* 0x805EE020@ha */
/* 805F409C  38 84 E0 20 */	addi r4, r4, __dt__4cXyzFv@l /* 0x805EE020@l */
/* 805F40A0  38 BF 01 20 */	addi r5, r31, 0x120
/* 805F40A4  4B FF 98 35 */	bl __register_global_object
/* 805F40A8  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 805F40AC  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 805F40B0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 805F40B4  7C 08 03 A6 */	mtlr r0
/* 805F40B8  38 21 00 70 */	addi r1, r1, 0x70
/* 805F40BC  4E 80 00 20 */	blr 
