lbl_806C6B94:
/* 806C6B94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C6B98  7C 08 02 A6 */	mflr r0
/* 806C6B9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C6BA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806C6BA4  93 C1 00 08 */	stw r30, 8(r1)
/* 806C6BA8  7C 7F 1B 78 */	mr r31, r3
/* 806C6BAC  4B 95 1F B9 */	bl __ct__10fopAc_ac_cFv
/* 806C6BB0  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 806C6BB4  4B BF A3 B1 */	bl __ct__15Z2CreatureEnemyFv
/* 806C6BB8  38 7F 06 E4 */	addi r3, r31, 0x6e4
/* 806C6BBC  3C 80 80 6C */	lis r4, __ct__4cXyzFv@ha /* 0x806C6F4C@ha */
/* 806C6BC0  38 84 6F 4C */	addi r4, r4, __ct__4cXyzFv@l /* 0x806C6F4C@l */
/* 806C6BC4  3C A0 80 6C */	lis r5, __dt__4cXyzFv@ha /* 0x806C747C@ha */
/* 806C6BC8  38 A5 74 7C */	addi r5, r5, __dt__4cXyzFv@l /* 0x806C747C@l */
/* 806C6BCC  38 C0 00 0C */	li r6, 0xc
/* 806C6BD0  38 E0 00 12 */	li r7, 0x12
/* 806C6BD4  4B C9 B1 8D */	bl __construct_array
/* 806C6BD8  38 7F 07 BC */	addi r3, r31, 0x7bc
/* 806C6BDC  3C 80 80 6C */	lis r4, __ct__5csXyzFv@ha /* 0x806C6F48@ha */
/* 806C6BE0  38 84 6F 48 */	addi r4, r4, __ct__5csXyzFv@l /* 0x806C6F48@l */
/* 806C6BE4  3C A0 80 6C */	lis r5, __dt__5csXyzFv@ha /* 0x806C7440@ha */
/* 806C6BE8  38 A5 74 40 */	addi r5, r5, __dt__5csXyzFv@l /* 0x806C7440@l */
/* 806C6BEC  38 C0 00 06 */	li r6, 6
/* 806C6BF0  38 E0 00 12 */	li r7, 0x12
/* 806C6BF4  4B C9 B1 6D */	bl __construct_array
/* 806C6BF8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 806C6BFC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 806C6C00  90 1F 09 88 */	stw r0, 0x988(r31)
/* 806C6C04  38 7F 09 8C */	addi r3, r31, 0x98c
/* 806C6C08  4B 9B CB 59 */	bl __ct__10dCcD_GSttsFv
/* 806C6C0C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 806C6C10  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 806C6C14  90 7F 09 88 */	stw r3, 0x988(r31)
/* 806C6C18  38 03 00 20 */	addi r0, r3, 0x20
/* 806C6C1C  90 1F 09 8C */	stw r0, 0x98c(r31)
/* 806C6C20  3B DF 09 AC */	addi r30, r31, 0x9ac
/* 806C6C24  7F C3 F3 78 */	mr r3, r30
/* 806C6C28  4B 9B CE 01 */	bl __ct__12dCcD_GObjInfFv
/* 806C6C2C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 806C6C30  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 806C6C34  90 1E 01 20 */	stw r0, 0x120(r30)
/* 806C6C38  3C 60 80 6C */	lis r3, __vt__8cM3dGAab@ha /* 0x806C78FC@ha */
/* 806C6C3C  38 03 78 FC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806C78FC@l */
/* 806C6C40  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 806C6C44  3C 60 80 6C */	lis r3, __vt__8cM3dGSph@ha /* 0x806C78F0@ha */
/* 806C6C48  38 03 78 F0 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x806C78F0@l */
/* 806C6C4C  90 1E 01 34 */	stw r0, 0x134(r30)
/* 806C6C50  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 806C6C54  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 806C6C58  90 7E 01 20 */	stw r3, 0x120(r30)
/* 806C6C5C  38 03 00 58 */	addi r0, r3, 0x58
/* 806C6C60  90 1E 01 34 */	stw r0, 0x134(r30)
/* 806C6C64  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 806C6C68  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 806C6C6C  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 806C6C70  38 03 00 2C */	addi r0, r3, 0x2c
/* 806C6C74  90 1E 01 20 */	stw r0, 0x120(r30)
/* 806C6C78  38 03 00 84 */	addi r0, r3, 0x84
/* 806C6C7C  90 1E 01 34 */	stw r0, 0x134(r30)
/* 806C6C80  3B DF 0A E4 */	addi r30, r31, 0xae4
/* 806C6C84  7F C3 F3 78 */	mr r3, r30
/* 806C6C88  4B 9B CD A1 */	bl __ct__12dCcD_GObjInfFv
/* 806C6C8C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 806C6C90  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 806C6C94  90 1E 01 20 */	stw r0, 0x120(r30)
/* 806C6C98  3C 60 80 6C */	lis r3, __vt__8cM3dGAab@ha /* 0x806C78FC@ha */
/* 806C6C9C  38 03 78 FC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806C78FC@l */
/* 806C6CA0  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 806C6CA4  3C 60 80 6C */	lis r3, __vt__8cM3dGCyl@ha /* 0x806C78E4@ha */
/* 806C6CA8  38 03 78 E4 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x806C78E4@l */
/* 806C6CAC  90 1E 01 38 */	stw r0, 0x138(r30)
/* 806C6CB0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 806C6CB4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 806C6CB8  90 7E 01 20 */	stw r3, 0x120(r30)
/* 806C6CBC  38 03 00 58 */	addi r0, r3, 0x58
/* 806C6CC0  90 1E 01 38 */	stw r0, 0x138(r30)
/* 806C6CC4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 806C6CC8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 806C6CCC  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 806C6CD0  38 03 00 2C */	addi r0, r3, 0x2c
/* 806C6CD4  90 1E 01 20 */	stw r0, 0x120(r30)
/* 806C6CD8  38 03 00 84 */	addi r0, r3, 0x84
/* 806C6CDC  90 1E 01 38 */	stw r0, 0x138(r30)
/* 806C6CE0  38 7F 0C 48 */	addi r3, r31, 0xc48
/* 806C6CE4  4B 9A F1 C9 */	bl __ct__12dBgS_AcchCirFv
/* 806C6CE8  3B DF 0C 88 */	addi r30, r31, 0xc88
/* 806C6CEC  7F C3 F3 78 */	mr r3, r30
/* 806C6CF0  4B 9A F3 B1 */	bl __ct__9dBgS_AcchFv
/* 806C6CF4  3C 60 80 6C */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x806C78C0@ha */
/* 806C6CF8  38 63 78 C0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x806C78C0@l */
/* 806C6CFC  90 7E 00 10 */	stw r3, 0x10(r30)
/* 806C6D00  38 03 00 0C */	addi r0, r3, 0xc
/* 806C6D04  90 1E 00 14 */	stw r0, 0x14(r30)
/* 806C6D08  38 03 00 18 */	addi r0, r3, 0x18
/* 806C6D0C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 806C6D10  38 7E 00 14 */	addi r3, r30, 0x14
/* 806C6D14  4B 9B 21 55 */	bl SetObj__16dBgS_PolyPassChkFv
/* 806C6D18  7F E3 FB 78 */	mr r3, r31
/* 806C6D1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806C6D20  83 C1 00 08 */	lwz r30, 8(r1)
/* 806C6D24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C6D28  7C 08 03 A6 */	mtlr r0
/* 806C6D2C  38 21 00 10 */	addi r1, r1, 0x10
/* 806C6D30  4E 80 00 20 */	blr 
