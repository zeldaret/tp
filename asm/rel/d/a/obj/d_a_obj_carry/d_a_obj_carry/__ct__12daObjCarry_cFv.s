lbl_8046FB78:
/* 8046FB78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046FB7C  7C 08 02 A6 */	mflr r0
/* 8046FB80  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046FB84  39 61 00 20 */	addi r11, r1, 0x20
/* 8046FB88  4B EF 26 4C */	b _savegpr_27
/* 8046FB8C  7C 7C 1B 78 */	mr r28, r3
/* 8046FB90  4B BA 8F D4 */	b __ct__10fopAc_ac_cFv
/* 8046FB94  3B BC 05 74 */	addi r29, r28, 0x574
/* 8046FB98  7F A3 EB 78 */	mr r3, r29
/* 8046FB9C  4B C0 65 04 */	b __ct__9dBgS_AcchFv
/* 8046FBA0  3C 60 80 48 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 8046FBA4  38 63 B1 A8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 8046FBA8  90 7D 00 10 */	stw r3, 0x10(r29)
/* 8046FBAC  38 03 00 0C */	addi r0, r3, 0xc
/* 8046FBB0  90 1D 00 14 */	stw r0, 0x14(r29)
/* 8046FBB4  38 03 00 18 */	addi r0, r3, 0x18
/* 8046FBB8  90 1D 00 24 */	stw r0, 0x24(r29)
/* 8046FBBC  38 7D 00 14 */	addi r3, r29, 0x14
/* 8046FBC0  4B C0 92 A8 */	b SetObj__16dBgS_PolyPassChkFv
/* 8046FBC4  38 7C 07 4C */	addi r3, r28, 0x74c
/* 8046FBC8  4B C0 62 E4 */	b __ct__12dBgS_AcchCirFv
/* 8046FBCC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8046FBD0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8046FBD4  90 1C 07 A4 */	stw r0, 0x7a4(r28)
/* 8046FBD8  38 7C 07 A8 */	addi r3, r28, 0x7a8
/* 8046FBDC  4B C1 3B 84 */	b __ct__10dCcD_GSttsFv
/* 8046FBE0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8046FBE4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8046FBE8  90 7C 07 A4 */	stw r3, 0x7a4(r28)
/* 8046FBEC  38 03 00 20 */	addi r0, r3, 0x20
/* 8046FBF0  90 1C 07 A8 */	stw r0, 0x7a8(r28)
/* 8046FBF4  3B 7C 07 C8 */	addi r27, r28, 0x7c8
/* 8046FBF8  7F 63 DB 78 */	mr r3, r27
/* 8046FBFC  4B C1 3E 2C */	b __ct__12dCcD_GObjInfFv
/* 8046FC00  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8046FC04  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8046FC08  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8046FC0C  3C 60 80 48 */	lis r3, __vt__8cM3dGAab@ha
/* 8046FC10  38 03 B1 9C */	addi r0, r3, __vt__8cM3dGAab@l
/* 8046FC14  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 8046FC18  3C 60 80 48 */	lis r3, __vt__8cM3dGCyl@ha
/* 8046FC1C  38 03 B1 90 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 8046FC20  90 1B 01 38 */	stw r0, 0x138(r27)
/* 8046FC24  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 8046FC28  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 8046FC2C  90 7B 01 20 */	stw r3, 0x120(r27)
/* 8046FC30  3B E3 00 58 */	addi r31, r3, 0x58
/* 8046FC34  93 FB 01 38 */	stw r31, 0x138(r27)
/* 8046FC38  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 8046FC3C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 8046FC40  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 8046FC44  3B C3 00 2C */	addi r30, r3, 0x2c
/* 8046FC48  93 DB 01 20 */	stw r30, 0x120(r27)
/* 8046FC4C  3B A3 00 84 */	addi r29, r3, 0x84
/* 8046FC50  93 BB 01 38 */	stw r29, 0x138(r27)
/* 8046FC54  3B 7C 09 04 */	addi r27, r28, 0x904
/* 8046FC58  7F 63 DB 78 */	mr r3, r27
/* 8046FC5C  4B C1 3D CC */	b __ct__12dCcD_GObjInfFv
/* 8046FC60  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8046FC64  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8046FC68  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8046FC6C  3C 60 80 48 */	lis r3, __vt__8cM3dGAab@ha
/* 8046FC70  38 03 B1 9C */	addi r0, r3, __vt__8cM3dGAab@l
/* 8046FC74  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 8046FC78  3C 60 80 48 */	lis r3, __vt__8cM3dGSph@ha
/* 8046FC7C  38 03 B1 84 */	addi r0, r3, __vt__8cM3dGSph@l
/* 8046FC80  90 1B 01 34 */	stw r0, 0x134(r27)
/* 8046FC84  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 8046FC88  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 8046FC8C  90 7B 01 20 */	stw r3, 0x120(r27)
/* 8046FC90  38 03 00 58 */	addi r0, r3, 0x58
/* 8046FC94  90 1B 01 34 */	stw r0, 0x134(r27)
/* 8046FC98  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 8046FC9C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 8046FCA0  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 8046FCA4  38 03 00 2C */	addi r0, r3, 0x2c
/* 8046FCA8  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8046FCAC  38 03 00 84 */	addi r0, r3, 0x84
/* 8046FCB0  90 1B 01 34 */	stw r0, 0x134(r27)
/* 8046FCB4  3B 7C 0A 3C */	addi r27, r28, 0xa3c
/* 8046FCB8  7F 63 DB 78 */	mr r3, r27
/* 8046FCBC  4B C1 3D 6C */	b __ct__12dCcD_GObjInfFv
/* 8046FCC0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8046FCC4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8046FCC8  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8046FCCC  3C 60 80 48 */	lis r3, __vt__8cM3dGAab@ha
/* 8046FCD0  38 03 B1 9C */	addi r0, r3, __vt__8cM3dGAab@l
/* 8046FCD4  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 8046FCD8  38 7B 01 24 */	addi r3, r27, 0x124
/* 8046FCDC  4B DF F2 AC */	b __ct__8cM3dGCpsFv
/* 8046FCE0  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha
/* 8046FCE4  38 63 36 08 */	addi r3, r3, __vt__12cCcD_CpsAttr@l
/* 8046FCE8  90 7B 01 20 */	stw r3, 0x120(r27)
/* 8046FCEC  38 03 00 58 */	addi r0, r3, 0x58
/* 8046FCF0  90 1B 01 3C */	stw r0, 0x13c(r27)
/* 8046FCF4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cps@ha
/* 8046FCF8  38 63 C1 70 */	addi r3, r3, __vt__8dCcD_Cps@l
/* 8046FCFC  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 8046FD00  38 03 00 2C */	addi r0, r3, 0x2c
/* 8046FD04  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8046FD08  38 03 00 84 */	addi r0, r3, 0x84
/* 8046FD0C  90 1B 01 3C */	stw r0, 0x13c(r27)
/* 8046FD10  3B 7C 0B 80 */	addi r27, r28, 0xb80
/* 8046FD14  7F 63 DB 78 */	mr r3, r27
/* 8046FD18  4B C1 3D 10 */	b __ct__12dCcD_GObjInfFv
/* 8046FD1C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8046FD20  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8046FD24  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8046FD28  3C 60 80 48 */	lis r3, __vt__8cM3dGAab@ha
/* 8046FD2C  38 03 B1 9C */	addi r0, r3, __vt__8cM3dGAab@l
/* 8046FD30  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 8046FD34  3C 60 80 48 */	lis r3, __vt__8cM3dGCyl@ha
/* 8046FD38  38 03 B1 90 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 8046FD3C  90 1B 01 38 */	stw r0, 0x138(r27)
/* 8046FD40  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 8046FD44  38 03 35 A4 */	addi r0, r3, __vt__12cCcD_CylAttr@l
/* 8046FD48  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8046FD4C  93 FB 01 38 */	stw r31, 0x138(r27)
/* 8046FD50  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 8046FD54  38 03 C0 50 */	addi r0, r3, __vt__8dCcD_Cyl@l
/* 8046FD58  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 8046FD5C  93 DB 01 20 */	stw r30, 0x120(r27)
/* 8046FD60  93 BB 01 38 */	stw r29, 0x138(r27)
/* 8046FD64  38 7C 0D 88 */	addi r3, r28, 0xd88
/* 8046FD68  4B E4 EA DC */	b __ct__16Z2SoundObjSimpleFv
/* 8046FD6C  38 7C 0E 10 */	addi r3, r28, 0xe10
/* 8046FD70  4B BC 5F 1C */	b __ct__9dJntCol_cFv
/* 8046FD74  7F 83 E3 78 */	mr r3, r28
/* 8046FD78  39 61 00 20 */	addi r11, r1, 0x20
/* 8046FD7C  4B EF 24 A4 */	b _restgpr_27
/* 8046FD80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046FD84  7C 08 03 A6 */	mtlr r0
/* 8046FD88  38 21 00 20 */	addi r1, r1, 0x20
/* 8046FD8C  4E 80 00 20 */	blr 
