lbl_80779340:
/* 80779340  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80779344  7C 08 02 A6 */	mflr r0
/* 80779348  90 01 00 14 */	stw r0, 0x14(r1)
/* 8077934C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80779350  93 C1 00 08 */	stw r30, 8(r1)
/* 80779354  7C 7F 1B 78 */	mr r31, r3
/* 80779358  4B 89 F8 0D */	bl __ct__10fopAc_ac_cFv
/* 8077935C  38 7F 05 D0 */	addi r3, r31, 0x5d0
/* 80779360  4B B4 7C 05 */	bl __ct__15Z2CreatureEnemyFv
/* 80779364  38 7F 06 80 */	addi r3, r31, 0x680
/* 80779368  4B 8B C9 25 */	bl __ct__9dJntCol_cFv
/* 8077936C  3B DF 06 A0 */	addi r30, r31, 0x6a0
/* 80779370  7F C3 F3 78 */	mr r3, r30
/* 80779374  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha /* 0x803A1EC8@ha */
/* 80779378  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l /* 0x803A1EC8@l */
/* 8077937C  4B BA C3 49 */	bl __as__12J3DLightInfoFRC12J3DLightInfo
/* 80779380  38 7E 00 74 */	addi r3, r30, 0x74
/* 80779384  3C 80 80 78 */	lis r4, __ct__11J3DLightObjFv@ha /* 0x80779800@ha */
/* 80779388  38 84 98 00 */	addi r4, r4, __ct__11J3DLightObjFv@l /* 0x80779800@l */
/* 8077938C  38 A0 00 00 */	li r5, 0
/* 80779390  38 C0 00 74 */	li r6, 0x74
/* 80779394  38 E0 00 06 */	li r7, 6
/* 80779398  4B BE 89 C9 */	bl __construct_array
/* 8077939C  38 7F 0B 02 */	addi r3, r31, 0xb02
/* 807793A0  3C 80 80 78 */	lis r4, __ct__5csXyzFv@ha /* 0x807797FC@ha */
/* 807793A4  38 84 97 FC */	addi r4, r4, __ct__5csXyzFv@l /* 0x807797FC@l */
/* 807793A8  3C A0 80 78 */	lis r5, __dt__5csXyzFv@ha /* 0x80779D5C@ha */
/* 807793AC  38 A5 9D 5C */	addi r5, r5, __dt__5csXyzFv@l /* 0x80779D5C@l */
/* 807793B0  38 C0 00 06 */	li r6, 6
/* 807793B4  38 E0 00 0B */	li r7, 0xb
/* 807793B8  4B BE 89 A9 */	bl __construct_array
/* 807793BC  38 7F 0B 44 */	addi r3, r31, 0xb44
/* 807793C0  3C 80 80 78 */	lis r4, __ct__5csXyzFv@ha /* 0x807797FC@ha */
/* 807793C4  38 84 97 FC */	addi r4, r4, __ct__5csXyzFv@l /* 0x807797FC@l */
/* 807793C8  3C A0 80 78 */	lis r5, __dt__5csXyzFv@ha /* 0x80779D5C@ha */
/* 807793CC  38 A5 9D 5C */	addi r5, r5, __dt__5csXyzFv@l /* 0x80779D5C@l */
/* 807793D0  38 C0 00 06 */	li r6, 6
/* 807793D4  38 E0 00 0B */	li r7, 0xb
/* 807793D8  4B BE 89 89 */	bl __construct_array
/* 807793DC  38 7F 0B D4 */	addi r3, r31, 0xbd4
/* 807793E0  4B 8F CA CD */	bl __ct__12dBgS_AcchCirFv
/* 807793E4  3B DF 0C 14 */	addi r30, r31, 0xc14
/* 807793E8  7F C3 F3 78 */	mr r3, r30
/* 807793EC  4B 8F CC B5 */	bl __ct__9dBgS_AcchFv
/* 807793F0  3C 60 80 78 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x8077A7C8@ha */
/* 807793F4  38 63 A7 C8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x8077A7C8@l */
/* 807793F8  90 7E 00 10 */	stw r3, 0x10(r30)
/* 807793FC  38 03 00 0C */	addi r0, r3, 0xc
/* 80779400  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80779404  38 03 00 18 */	addi r0, r3, 0x18
/* 80779408  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8077940C  38 7E 00 14 */	addi r3, r30, 0x14
/* 80779410  4B 8F FA 59 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80779414  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80779418  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8077941C  90 1F 0E 04 */	stw r0, 0xe04(r31)
/* 80779420  38 7F 0E 08 */	addi r3, r31, 0xe08
/* 80779424  4B 90 A3 3D */	bl __ct__10dCcD_GSttsFv
/* 80779428  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8077942C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80779430  90 7F 0E 04 */	stw r3, 0xe04(r31)
/* 80779434  38 03 00 20 */	addi r0, r3, 0x20
/* 80779438  90 1F 0E 08 */	stw r0, 0xe08(r31)
/* 8077943C  38 7F 0E 28 */	addi r3, r31, 0xe28
/* 80779440  3C 80 80 78 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x8077963C@ha */
/* 80779444  38 84 96 3C */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x8077963C@l */
/* 80779448  3C A0 80 78 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x80779570@ha */
/* 8077944C  38 A5 95 70 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x80779570@l */
/* 80779450  38 C0 01 38 */	li r6, 0x138
/* 80779454  38 E0 00 03 */	li r7, 3
/* 80779458  4B BE 89 09 */	bl __construct_array
/* 8077945C  3B DF 11 D0 */	addi r30, r31, 0x11d0
/* 80779460  7F C3 F3 78 */	mr r3, r30
/* 80779464  4B 90 A5 C5 */	bl __ct__12dCcD_GObjInfFv
/* 80779468  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8077946C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80779470  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80779474  3C 60 80 78 */	lis r3, __vt__8cM3dGAab@ha /* 0x8077A7BC@ha */
/* 80779478  38 03 A7 BC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8077A7BC@l */
/* 8077947C  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80779480  3C 60 80 78 */	lis r3, __vt__8cM3dGSph@ha /* 0x8077A7B0@ha */
/* 80779484  38 03 A7 B0 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8077A7B0@l */
/* 80779488  90 1E 01 34 */	stw r0, 0x134(r30)
/* 8077948C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80779490  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80779494  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80779498  38 03 00 58 */	addi r0, r3, 0x58
/* 8077949C  90 1E 01 34 */	stw r0, 0x134(r30)
/* 807794A0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 807794A4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 807794A8  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 807794AC  38 03 00 2C */	addi r0, r3, 0x2c
/* 807794B0  90 1E 01 20 */	stw r0, 0x120(r30)
/* 807794B4  38 03 00 84 */	addi r0, r3, 0x84
/* 807794B8  90 1E 01 34 */	stw r0, 0x134(r30)
/* 807794BC  38 7F 13 E0 */	addi r3, r31, 0x13e0
/* 807794C0  4B AD 0A 41 */	bl __ct__10dMsgFlow_cFv
/* 807794C4  7F E3 FB 78 */	mr r3, r31
/* 807794C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807794CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 807794D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807794D4  7C 08 03 A6 */	mtlr r0
/* 807794D8  38 21 00 10 */	addi r1, r1, 0x10
/* 807794DC  4E 80 00 20 */	blr 
