lbl_80BFFF70:
/* 80BFFF70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFFF74  7C 08 02 A6 */	mflr r0
/* 80BFFF78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFFF7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFFF80  93 C1 00 08 */	stw r30, 8(r1)
/* 80BFFF84  7C 7F 1B 78 */	mr r31, r3
/* 80BFFF88  4B 54 F5 2C */	b __ct__23daBaseNpc_moveBgActor_cFv
/* 80BFFF8C  3C 60 80 C1 */	lis r3, __vt__11daObj_GrA_c@ha
/* 80BFFF90  38 03 07 84 */	addi r0, r3, __vt__11daObj_GrA_c@l
/* 80BFFF94  90 1F 05 68 */	stw r0, 0x568(r31)
/* 80BFFF98  38 7F 0A B0 */	addi r3, r31, 0xab0
/* 80BFFF9C  4B 54 D8 68 */	b __ct__18daBaseNpc_acMngr_cFv
/* 80BFFFA0  38 7F 0A B8 */	addi r3, r31, 0xab8
/* 80BFFFA4  3C 80 80 C0 */	lis r4, __ct__Q211daObj_GrA_c21daObj_GrA_prtclMngr_cFv@ha
/* 80BFFFA8  38 84 4E 50 */	addi r4, r4, __ct__Q211daObj_GrA_c21daObj_GrA_prtclMngr_cFv@l
/* 80BFFFAC  3C A0 80 C0 */	lis r5, __dt__Q211daObj_GrA_c21daObj_GrA_prtclMngr_cFv@ha
/* 80BFFFB0  38 A5 4E 14 */	addi r5, r5, __dt__Q211daObj_GrA_c21daObj_GrA_prtclMngr_cFv@l
/* 80BFFFB4  38 C0 00 5C */	li r6, 0x5c
/* 80BFFFB8  38 E0 00 06 */	li r7, 6
/* 80BFFFBC  4B 76 1D A4 */	b __construct_array
/* 80BFFFC0  38 7F 0C E0 */	addi r3, r31, 0xce0
/* 80BFFFC4  3C 80 80 C0 */	lis r4, __ct__8dCcD_SphFv@ha
/* 80BFFFC8  38 84 4D 48 */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 80BFFFCC  3C A0 80 C0 */	lis r5, __dt__8dCcD_SphFv@ha
/* 80BFFFD0  38 A5 4C 7C */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 80BFFFD4  38 C0 01 38 */	li r6, 0x138
/* 80BFFFD8  38 E0 00 02 */	li r7, 2
/* 80BFFFDC  4B 76 1D 84 */	b __construct_array
/* 80BFFFE0  3B DF 0F 50 */	addi r30, r31, 0xf50
/* 80BFFFE4  7F C3 F3 78 */	mr r3, r30
/* 80BFFFE8  4B 48 3A 40 */	b __ct__12dCcD_GObjInfFv
/* 80BFFFEC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80BFFFF0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80BFFFF4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BFFFF8  3C 60 80 C1 */	lis r3, __vt__8cM3dGAab@ha
/* 80BFFFFC  38 03 08 7C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C00000  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80C00004  3C 60 80 C1 */	lis r3, __vt__8cM3dGCyl@ha
/* 80C00008  38 03 08 70 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80C0000C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C00010  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80C00014  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80C00018  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80C0001C  38 03 00 58 */	addi r0, r3, 0x58
/* 80C00020  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C00024  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80C00028  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80C0002C  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80C00030  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C00034  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C00038  38 03 00 84 */	addi r0, r3, 0x84
/* 80C0003C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80C00040  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 80C00044  3C 80 80 26 */	lis r4, __ct__11cBgS_GndChkFv@ha
/* 80C00048  38 84 7C 1C */	addi r4, r4, __ct__11cBgS_GndChkFv@l
/* 80C0004C  3C A0 80 26 */	lis r5, __dt__11cBgS_GndChkFv@ha
/* 80C00050  38 A5 7C 94 */	addi r5, r5, __dt__11cBgS_GndChkFv@l
/* 80C00054  38 C0 00 3C */	li r6, 0x3c
/* 80C00058  38 E0 00 05 */	li r7, 5
/* 80C0005C  4B 76 1D 04 */	b __construct_array
/* 80C00060  38 7F 11 F4 */	addi r3, r31, 0x11f4
/* 80C00064  3C 80 80 08 */	lis r4, __ct__15dBgS_LinkLinChkFv@ha
/* 80C00068  38 84 80 30 */	addi r4, r4, __ct__15dBgS_LinkLinChkFv@l
/* 80C0006C  3C A0 80 08 */	lis r5, __dt__15dBgS_LinkLinChkFv@ha
/* 80C00070  38 A5 80 8C */	addi r5, r5, __dt__15dBgS_LinkLinChkFv@l
/* 80C00074  38 C0 00 70 */	li r6, 0x70
/* 80C00078  38 E0 00 05 */	li r7, 5
/* 80C0007C  4B 76 1C E4 */	b __construct_array
/* 80C00080  38 7F 14 24 */	addi r3, r31, 0x1424
/* 80C00084  3C 80 80 C0 */	lis r4, __ct__4cXyzFv@ha
/* 80C00088  38 84 4B AC */	addi r4, r4, __ct__4cXyzFv@l
/* 80C0008C  3C A0 80 C0 */	lis r5, __dt__4cXyzFv@ha
/* 80C00090  38 A5 4C 40 */	addi r5, r5, __dt__4cXyzFv@l
/* 80C00094  38 C0 00 0C */	li r6, 0xc
/* 80C00098  38 E0 00 05 */	li r7, 5
/* 80C0009C  4B 76 1C C4 */	b __construct_array
/* 80C000A0  38 7F 14 60 */	addi r3, r31, 0x1460
/* 80C000A4  3C 80 80 C0 */	lis r4, __ct__4cXyzFv@ha
/* 80C000A8  38 84 4B AC */	addi r4, r4, __ct__4cXyzFv@l
/* 80C000AC  3C A0 80 C0 */	lis r5, __dt__4cXyzFv@ha
/* 80C000B0  38 A5 4C 40 */	addi r5, r5, __dt__4cXyzFv@l
/* 80C000B4  38 C0 00 0C */	li r6, 0xc
/* 80C000B8  38 E0 00 05 */	li r7, 5
/* 80C000BC  4B 76 1C A4 */	b __construct_array
/* 80C000C0  38 7F 14 B4 */	addi r3, r31, 0x14b4
/* 80C000C4  3C 80 80 C0 */	lis r4, __ct__4cXyzFv@ha
/* 80C000C8  38 84 4B AC */	addi r4, r4, __ct__4cXyzFv@l
/* 80C000CC  3C A0 80 C0 */	lis r5, __dt__4cXyzFv@ha
/* 80C000D0  38 A5 4C 40 */	addi r5, r5, __dt__4cXyzFv@l
/* 80C000D4  38 C0 00 0C */	li r6, 0xc
/* 80C000D8  38 E0 00 05 */	li r7, 5
/* 80C000DC  4B 76 1C 84 */	b __construct_array
/* 80C000E0  38 7F 14 F8 */	addi r3, r31, 0x14f8
/* 80C000E4  4B 54 D7 20 */	b __ct__18daBaseNpc_acMngr_cFv
/* 80C000E8  38 7F 15 28 */	addi r3, r31, 0x1528
/* 80C000EC  4B 54 D8 AC */	b __ct__16daBaseNpc_path_cFv
/* 80C000F0  38 7F 1F 4C */	addi r3, r31, 0x1f4c
/* 80C000F4  4B 47 7F 3C */	b __ct__15dBgS_LinkLinChkFv
/* 80C000F8  38 7F 20 4C */	addi r3, r31, 0x204c
/* 80C000FC  4B 54 D7 08 */	b __ct__18daBaseNpc_acMngr_cFv
/* 80C00100  7F E3 FB 78 */	mr r3, r31
/* 80C00104  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C00108  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C0010C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C00110  7C 08 03 A6 */	mtlr r0
/* 80C00114  38 21 00 10 */	addi r1, r1, 0x10
/* 80C00118  4E 80 00 20 */	blr 
