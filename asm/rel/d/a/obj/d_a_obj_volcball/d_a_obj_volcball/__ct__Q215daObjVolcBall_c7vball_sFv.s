lbl_80D2214C:
/* 80D2214C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D22150  7C 08 02 A6 */	mflr r0
/* 80D22154  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D22158  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2215C  93 C1 00 08 */	stw r30, 8(r1)
/* 80D22160  7C 7F 1B 78 */	mr r31, r3
/* 80D22164  3B DF 00 54 */	addi r30, r31, 0x54
/* 80D22168  7F C3 F3 78 */	mr r3, r30
/* 80D2216C  4B 35 3F 35 */	bl __ct__9dBgS_AcchFv
/* 80D22170  3C 60 80 D2 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80D240A8@ha */
/* 80D22174  38 63 40 A8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80D240A8@l */
/* 80D22178  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80D2217C  38 03 00 0C */	addi r0, r3, 0xc
/* 80D22180  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80D22184  38 03 00 18 */	addi r0, r3, 0x18
/* 80D22188  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80D2218C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80D22190  4B 35 6C D9 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80D22194  3B DF 02 2C */	addi r30, r31, 0x22c
/* 80D22198  7F C3 F3 78 */	mr r3, r30
/* 80D2219C  4B 36 18 8D */	bl __ct__12dCcD_GObjInfFv
/* 80D221A0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80D221A4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80D221A8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D221AC  3C 60 80 D2 */	lis r3, __vt__8cM3dGAab@ha /* 0x80D240CC@ha */
/* 80D221B0  38 03 40 CC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80D240CC@l */
/* 80D221B4  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80D221B8  3C 60 80 D2 */	lis r3, __vt__8cM3dGSph@ha /* 0x80D240D8@ha */
/* 80D221BC  38 03 40 D8 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80D240D8@l */
/* 80D221C0  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80D221C4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80D221C8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80D221CC  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80D221D0  38 03 00 58 */	addi r0, r3, 0x58
/* 80D221D4  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80D221D8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80D221DC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80D221E0  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80D221E4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80D221E8  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80D221EC  38 03 00 84 */	addi r0, r3, 0x84
/* 80D221F0  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80D221F4  38 7F 03 90 */	addi r3, r31, 0x390
/* 80D221F8  3C 80 80 D2 */	lis r4, __defctor__19dPa_followEcallBackFv@ha /* 0x80D22230@ha */
/* 80D221FC  38 84 22 30 */	addi r4, r4, __defctor__19dPa_followEcallBackFv@l /* 0x80D22230@l */
/* 80D22200  3C A0 80 D2 */	lis r5, __dt__19dPa_followEcallBackFv@ha /* 0x80D220C4@ha */
/* 80D22204  38 A5 20 C4 */	addi r5, r5, __dt__19dPa_followEcallBackFv@l /* 0x80D220C4@l */
/* 80D22208  38 C0 00 14 */	li r6, 0x14
/* 80D2220C  38 E0 00 04 */	li r7, 4
/* 80D22210  4B 63 FB 51 */	bl __construct_array
/* 80D22214  7F E3 FB 78 */	mr r3, r31
/* 80D22218  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2221C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D22220  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D22224  7C 08 03 A6 */	mtlr r0
/* 80D22228  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2222C  4E 80 00 20 */	blr 
