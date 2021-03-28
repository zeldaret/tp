lbl_80BC2000:
/* 80BC2000  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC2004  7C 08 02 A6 */	mflr r0
/* 80BC2008  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC200C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC2010  93 C1 00 08 */	stw r30, 8(r1)
/* 80BC2014  7C 7F 1B 78 */	mr r31, r3
/* 80BC2018  3C 60 80 BC */	lis r3, __vt__18mDoExt_3DlineMat_c@ha
/* 80BC201C  38 03 24 C8 */	addi r0, r3, __vt__18mDoExt_3DlineMat_c@l
/* 80BC2020  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80BC2024  3C 60 80 3A */	lis r3, __vt__19mDoExt_3DlineMat1_c@ha
/* 80BC2028  38 03 32 48 */	addi r0, r3, __vt__19mDoExt_3DlineMat1_c@l
/* 80BC202C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80BC2030  38 7F 00 50 */	addi r3, r31, 0x50
/* 80BC2034  3C 80 80 BC */	lis r4, __ct__4cXyzFv@ha
/* 80BC2038  38 84 21 34 */	addi r4, r4, __ct__4cXyzFv@l
/* 80BC203C  3C A0 80 BC */	lis r5, __dt__4cXyzFv@ha
/* 80BC2040  38 A5 CC FC */	addi r5, r5, __dt__4cXyzFv@l
/* 80BC2044  38 C0 00 0C */	li r6, 0xc
/* 80BC2048  38 E0 00 03 */	li r7, 3
/* 80BC204C  4B 79 FD 14 */	b __construct_array
/* 80BC2050  38 7F 00 74 */	addi r3, r31, 0x74
/* 80BC2054  3C 80 80 BC */	lis r4, __ct__4cXyzFv@ha
/* 80BC2058  38 84 21 34 */	addi r4, r4, __ct__4cXyzFv@l
/* 80BC205C  3C A0 80 BC */	lis r5, __dt__4cXyzFv@ha
/* 80BC2060  38 A5 CC FC */	addi r5, r5, __dt__4cXyzFv@l
/* 80BC2064  38 C0 00 0C */	li r6, 0xc
/* 80BC2068  38 E0 00 03 */	li r7, 3
/* 80BC206C  4B 79 FC F4 */	b __construct_array
/* 80BC2070  38 7F 00 98 */	addi r3, r31, 0x98
/* 80BC2074  3C 80 80 BC */	lis r4, __ct__4cXyzFv@ha
/* 80BC2078  38 84 21 34 */	addi r4, r4, __ct__4cXyzFv@l
/* 80BC207C  3C A0 80 BC */	lis r5, __dt__4cXyzFv@ha
/* 80BC2080  38 A5 CC FC */	addi r5, r5, __dt__4cXyzFv@l
/* 80BC2084  38 C0 00 0C */	li r6, 0xc
/* 80BC2088  38 E0 00 02 */	li r7, 2
/* 80BC208C  4B 79 FC D4 */	b __construct_array
/* 80BC2090  38 7F 01 04 */	addi r3, r31, 0x104
/* 80BC2094  3C 80 80 BC */	lis r4, __ct__8dCcD_CylFv@ha
/* 80BC2098  38 84 1E 40 */	addi r4, r4, __ct__8dCcD_CylFv@l
/* 80BC209C  3C A0 80 BC */	lis r5, __dt__8dCcD_CylFv@ha
/* 80BC20A0  38 A5 1D 74 */	addi r5, r5, __dt__8dCcD_CylFv@l
/* 80BC20A4  38 C0 01 3C */	li r6, 0x13c
/* 80BC20A8  38 E0 00 02 */	li r7, 2
/* 80BC20AC  4B 79 FC B4 */	b __construct_array
/* 80BC20B0  3B DF 03 7C */	addi r30, r31, 0x37c
/* 80BC20B4  7F C3 F3 78 */	mr r3, r30
/* 80BC20B8  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha
/* 80BC20BC  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l
/* 80BC20C0  4B 76 36 04 */	b __as__12J3DLightInfoFRC12J3DLightInfo
/* 80BC20C4  38 7E 00 74 */	addi r3, r30, 0x74
/* 80BC20C8  3C 80 80 BC */	lis r4, __ct__11J3DLightObjFv@ha
/* 80BC20CC  38 84 20 FC */	addi r4, r4, __ct__11J3DLightObjFv@l
/* 80BC20D0  38 A0 00 00 */	li r5, 0
/* 80BC20D4  38 C0 00 74 */	li r6, 0x74
/* 80BC20D8  38 E0 00 06 */	li r7, 6
/* 80BC20DC  4B 79 FC 84 */	b __construct_array
/* 80BC20E0  7F E3 FB 78 */	mr r3, r31
/* 80BC20E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC20E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BC20EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC20F0  7C 08 03 A6 */	mtlr r0
/* 80BC20F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC20F8  4E 80 00 20 */	blr 
