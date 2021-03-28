lbl_80AB2DEC:
/* 80AB2DEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB2DF0  7C 08 02 A6 */	mflr r0
/* 80AB2DF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB2DF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB2DFC  93 C1 00 08 */	stw r30, 8(r1)
/* 80AB2E00  7C 7F 1B 78 */	mr r31, r3
/* 80AB2E04  48 00 25 2D */	bl __ct__8daNpcF_cFv
/* 80AB2E08  3C 60 80 AB */	lis r3, __vt__11daNpcPray_c@ha
/* 80AB2E0C  38 03 5A C8 */	addi r0, r3, __vt__11daNpcPray_c@l
/* 80AB2E10  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 80AB2E14  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80AB2E18  4B 80 DD F8 */	b __ct__17Z2CreatureCitizenFv
/* 80AB2E1C  3B DF 0B F0 */	addi r30, r31, 0xbf0
/* 80AB2E20  3C 60 80 AB */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 80AB2E24  38 03 5B 88 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 80AB2E28  90 1F 0C 88 */	stw r0, 0xc88(r31)
/* 80AB2E2C  7F C3 F3 78 */	mr r3, r30
/* 80AB2E30  3C 80 80 AB */	lis r4, __ct__4cXyzFv@ha
/* 80AB2E34  38 84 50 E0 */	addi r4, r4, __ct__4cXyzFv@l
/* 80AB2E38  3C A0 80 AB */	lis r5, __dt__4cXyzFv@ha
/* 80AB2E3C  38 A5 50 A4 */	addi r5, r5, __dt__4cXyzFv@l
/* 80AB2E40  38 C0 00 0C */	li r6, 0xc
/* 80AB2E44  38 E0 00 04 */	li r7, 4
/* 80AB2E48  4B 8A EF 18 */	b __construct_array
/* 80AB2E4C  38 7E 00 34 */	addi r3, r30, 0x34
/* 80AB2E50  3C 80 80 AB */	lis r4, __ct__5csXyzFv@ha
/* 80AB2E54  38 84 50 A0 */	addi r4, r4, __ct__5csXyzFv@l
/* 80AB2E58  3C A0 80 AB */	lis r5, __dt__5csXyzFv@ha
/* 80AB2E5C  38 A5 50 64 */	addi r5, r5, __dt__5csXyzFv@l
/* 80AB2E60  38 C0 00 06 */	li r6, 6
/* 80AB2E64  38 E0 00 04 */	li r7, 4
/* 80AB2E68  4B 8A EE F8 */	b __construct_array
/* 80AB2E6C  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80AB2E70  3C 80 80 AB */	lis r4, __ct__5csXyzFv@ha
/* 80AB2E74  38 84 50 A0 */	addi r4, r4, __ct__5csXyzFv@l
/* 80AB2E78  3C A0 80 AB */	lis r5, __dt__5csXyzFv@ha
/* 80AB2E7C  38 A5 50 64 */	addi r5, r5, __dt__5csXyzFv@l
/* 80AB2E80  38 C0 00 06 */	li r6, 6
/* 80AB2E84  38 E0 00 04 */	li r7, 4
/* 80AB2E88  4B 8A EE D8 */	b __construct_array
/* 80AB2E8C  38 7E 00 64 */	addi r3, r30, 0x64
/* 80AB2E90  3C 80 80 AB */	lis r4, __ct__5csXyzFv@ha
/* 80AB2E94  38 84 50 A0 */	addi r4, r4, __ct__5csXyzFv@l
/* 80AB2E98  3C A0 80 AB */	lis r5, __dt__5csXyzFv@ha
/* 80AB2E9C  38 A5 50 64 */	addi r5, r5, __dt__5csXyzFv@l
/* 80AB2EA0  38 C0 00 06 */	li r6, 6
/* 80AB2EA4  38 E0 00 04 */	li r7, 4
/* 80AB2EA8  4B 8A EE B8 */	b __construct_array
/* 80AB2EAC  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80AB2EB0  3C 80 80 AB */	lis r4, __ct__5csXyzFv@ha
/* 80AB2EB4  38 84 50 A0 */	addi r4, r4, __ct__5csXyzFv@l
/* 80AB2EB8  3C A0 80 AB */	lis r5, __dt__5csXyzFv@ha
/* 80AB2EBC  38 A5 50 64 */	addi r5, r5, __dt__5csXyzFv@l
/* 80AB2EC0  38 C0 00 06 */	li r6, 6
/* 80AB2EC4  38 E0 00 04 */	li r7, 4
/* 80AB2EC8  4B 8A EE 98 */	b __construct_array
/* 80AB2ECC  7F C3 F3 78 */	mr r3, r30
/* 80AB2ED0  4B 69 E1 68 */	b initialize__15daNpcF_Lookat_cFv
/* 80AB2ED4  38 7F 0C 8C */	addi r3, r31, 0xc8c
/* 80AB2ED8  3C 80 80 AB */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha
/* 80AB2EDC  38 84 4F 58 */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l
/* 80AB2EE0  3C A0 80 AB */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha
/* 80AB2EE4  38 A5 4F 10 */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l
/* 80AB2EE8  38 C0 00 08 */	li r6, 8
/* 80AB2EEC  38 E0 00 02 */	li r7, 2
/* 80AB2EF0  4B 8A EE 70 */	b __construct_array
/* 80AB2EF4  3B DF 0C A0 */	addi r30, r31, 0xca0
/* 80AB2EF8  7F C3 F3 78 */	mr r3, r30
/* 80AB2EFC  4B 5D 0B 2C */	b __ct__12dCcD_GObjInfFv
/* 80AB2F00  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80AB2F04  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80AB2F08  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80AB2F0C  3C 60 80 AB */	lis r3, __vt__8cM3dGAab@ha
/* 80AB2F10  38 03 5B 7C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80AB2F14  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80AB2F18  3C 60 80 AB */	lis r3, __vt__8cM3dGCyl@ha
/* 80AB2F1C  38 03 5B 70 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80AB2F20  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80AB2F24  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80AB2F28  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80AB2F2C  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80AB2F30  38 03 00 58 */	addi r0, r3, 0x58
/* 80AB2F34  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80AB2F38  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80AB2F3C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80AB2F40  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80AB2F44  38 03 00 2C */	addi r0, r3, 0x2c
/* 80AB2F48  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80AB2F4C  38 03 00 84 */	addi r0, r3, 0x84
/* 80AB2F50  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80AB2F54  7F E3 FB 78 */	mr r3, r31
/* 80AB2F58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB2F5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AB2F60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB2F64  7C 08 03 A6 */	mtlr r0
/* 80AB2F68  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB2F6C  4E 80 00 20 */	blr 
