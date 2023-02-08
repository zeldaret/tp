lbl_805B9B3C:
/* 805B9B3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B9B40  7C 08 02 A6 */	mflr r0
/* 805B9B44  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B9B48  39 61 00 20 */	addi r11, r1, 0x20
/* 805B9B4C  4B DA 86 85 */	bl _savegpr_26
/* 805B9B50  7C 7B 1B 78 */	mr r27, r3
/* 805B9B54  4B A5 F0 11 */	bl __ct__10fopAc_ac_cFv
/* 805B9B58  38 7B 05 E0 */	addi r3, r27, 0x5e0
/* 805B9B5C  4B D0 74 09 */	bl __ct__15Z2CreatureEnemyFv
/* 805B9B60  38 7B 06 84 */	addi r3, r27, 0x684
/* 805B9B64  4B D0 4C E1 */	bl __ct__16Z2SoundObjSimpleFv
/* 805B9B68  38 7B 06 A4 */	addi r3, r27, 0x6a4
/* 805B9B6C  4B D0 4C D9 */	bl __ct__16Z2SoundObjSimpleFv
/* 805B9B70  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 805B9B74  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 805B9B78  90 1B 07 18 */	stw r0, 0x718(r27)
/* 805B9B7C  38 7B 07 1C */	addi r3, r27, 0x71c
/* 805B9B80  4B AC 9B E1 */	bl __ct__10dCcD_GSttsFv
/* 805B9B84  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 805B9B88  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 805B9B8C  90 7B 07 18 */	stw r3, 0x718(r27)
/* 805B9B90  3B E3 00 20 */	addi r31, r3, 0x20
/* 805B9B94  93 FB 07 1C */	stw r31, 0x71c(r27)
/* 805B9B98  3B 5B 07 3C */	addi r26, r27, 0x73c
/* 805B9B9C  7F 43 D3 78 */	mr r3, r26
/* 805B9BA0  4B AC 9E 89 */	bl __ct__12dCcD_GObjInfFv
/* 805B9BA4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 805B9BA8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 805B9BAC  90 1A 01 20 */	stw r0, 0x120(r26)
/* 805B9BB0  3C 60 80 5C */	lis r3, __vt__8cM3dGAab@ha /* 0x805BAD20@ha */
/* 805B9BB4  38 03 AD 20 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x805BAD20@l */
/* 805B9BB8  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 805B9BBC  3C 60 80 5C */	lis r3, __vt__8cM3dGSph@ha /* 0x805BAD14@ha */
/* 805B9BC0  38 03 AD 14 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x805BAD14@l */
/* 805B9BC4  90 1A 01 34 */	stw r0, 0x134(r26)
/* 805B9BC8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 805B9BCC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 805B9BD0  90 7A 01 20 */	stw r3, 0x120(r26)
/* 805B9BD4  3B C3 00 58 */	addi r30, r3, 0x58
/* 805B9BD8  93 DA 01 34 */	stw r30, 0x134(r26)
/* 805B9BDC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 805B9BE0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 805B9BE4  90 7A 00 3C */	stw r3, 0x3c(r26)
/* 805B9BE8  3B A3 00 2C */	addi r29, r3, 0x2c
/* 805B9BEC  93 BA 01 20 */	stw r29, 0x120(r26)
/* 805B9BF0  3B 83 00 84 */	addi r28, r3, 0x84
/* 805B9BF4  93 9A 01 34 */	stw r28, 0x134(r26)
/* 805B9BF8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 805B9BFC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 805B9C00  90 1B 08 8C */	stw r0, 0x88c(r27)
/* 805B9C04  38 7B 08 90 */	addi r3, r27, 0x890
/* 805B9C08  4B AC 9B 59 */	bl __ct__10dCcD_GSttsFv
/* 805B9C0C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 805B9C10  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 805B9C14  90 1B 08 8C */	stw r0, 0x88c(r27)
/* 805B9C18  93 FB 08 90 */	stw r31, 0x890(r27)
/* 805B9C1C  3B 5B 08 B0 */	addi r26, r27, 0x8b0
/* 805B9C20  7F 43 D3 78 */	mr r3, r26
/* 805B9C24  4B AC 9E 05 */	bl __ct__12dCcD_GObjInfFv
/* 805B9C28  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 805B9C2C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 805B9C30  90 1A 01 20 */	stw r0, 0x120(r26)
/* 805B9C34  3C 60 80 5C */	lis r3, __vt__8cM3dGAab@ha /* 0x805BAD20@ha */
/* 805B9C38  38 03 AD 20 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x805BAD20@l */
/* 805B9C3C  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 805B9C40  3C 60 80 5C */	lis r3, __vt__8cM3dGSph@ha /* 0x805BAD14@ha */
/* 805B9C44  38 03 AD 14 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x805BAD14@l */
/* 805B9C48  90 1A 01 34 */	stw r0, 0x134(r26)
/* 805B9C4C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 805B9C50  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 805B9C54  90 1A 01 20 */	stw r0, 0x120(r26)
/* 805B9C58  93 DA 01 34 */	stw r30, 0x134(r26)
/* 805B9C5C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 805B9C60  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 805B9C64  90 1A 00 3C */	stw r0, 0x3c(r26)
/* 805B9C68  93 BA 01 20 */	stw r29, 0x120(r26)
/* 805B9C6C  93 9A 01 34 */	stw r28, 0x134(r26)
/* 805B9C70  3B 5B 09 E8 */	addi r26, r27, 0x9e8
/* 805B9C74  7F 43 D3 78 */	mr r3, r26
/* 805B9C78  4B AC 9D B1 */	bl __ct__12dCcD_GObjInfFv
/* 805B9C7C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 805B9C80  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 805B9C84  90 1A 01 20 */	stw r0, 0x120(r26)
/* 805B9C88  3C 60 80 5C */	lis r3, __vt__8cM3dGAab@ha /* 0x805BAD20@ha */
/* 805B9C8C  38 03 AD 20 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x805BAD20@l */
/* 805B9C90  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 805B9C94  3C 60 80 5C */	lis r3, __vt__8cM3dGSph@ha /* 0x805BAD14@ha */
/* 805B9C98  38 03 AD 14 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x805BAD14@l */
/* 805B9C9C  90 1A 01 34 */	stw r0, 0x134(r26)
/* 805B9CA0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 805B9CA4  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 805B9CA8  90 1A 01 20 */	stw r0, 0x120(r26)
/* 805B9CAC  93 DA 01 34 */	stw r30, 0x134(r26)
/* 805B9CB0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 805B9CB4  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 805B9CB8  90 1A 00 3C */	stw r0, 0x3c(r26)
/* 805B9CBC  93 BA 01 20 */	stw r29, 0x120(r26)
/* 805B9CC0  93 9A 01 34 */	stw r28, 0x134(r26)
/* 805B9CC4  38 7B 0B 20 */	addi r3, r27, 0xb20
/* 805B9CC8  3C 80 80 5C */	lis r4, __ct__8dCcD_SphFv@ha /* 0x805B9D78@ha */
/* 805B9CCC  38 84 9D 78 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x805B9D78@l */
/* 805B9CD0  3C A0 80 5C */	lis r5, __dt__8dCcD_SphFv@ha /* 0x805B9DFC@ha */
/* 805B9CD4  38 A5 9D FC */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x805B9DFC@l */
/* 805B9CD8  38 C0 01 38 */	li r6, 0x138
/* 805B9CDC  38 E0 00 04 */	li r7, 4
/* 805B9CE0  4B DA 80 81 */	bl __construct_array
/* 805B9CE4  3B 5B 10 00 */	addi r26, r27, 0x1000
/* 805B9CE8  7F 43 D3 78 */	mr r3, r26
/* 805B9CEC  4B AC 9D 3D */	bl __ct__12dCcD_GObjInfFv
/* 805B9CF0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 805B9CF4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 805B9CF8  90 1A 01 20 */	stw r0, 0x120(r26)
/* 805B9CFC  3C 60 80 5C */	lis r3, __vt__8cM3dGAab@ha /* 0x805BAD20@ha */
/* 805B9D00  38 03 AD 20 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x805BAD20@l */
/* 805B9D04  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 805B9D08  3C 60 80 5C */	lis r3, __vt__8cM3dGSph@ha /* 0x805BAD14@ha */
/* 805B9D0C  38 03 AD 14 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x805BAD14@l */
/* 805B9D10  90 1A 01 34 */	stw r0, 0x134(r26)
/* 805B9D14  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 805B9D18  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 805B9D1C  90 1A 01 20 */	stw r0, 0x120(r26)
/* 805B9D20  93 DA 01 34 */	stw r30, 0x134(r26)
/* 805B9D24  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 805B9D28  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 805B9D2C  90 1A 00 3C */	stw r0, 0x3c(r26)
/* 805B9D30  93 BA 01 20 */	stw r29, 0x120(r26)
/* 805B9D34  93 9A 01 34 */	stw r28, 0x134(r26)
/* 805B9D38  38 7B 12 C8 */	addi r3, r27, 0x12c8
/* 805B9D3C  3C 80 80 5C */	lis r4, __ct__4cXyzFv@ha /* 0x805B9D74@ha */
/* 805B9D40  38 84 9D 74 */	addi r4, r4, __ct__4cXyzFv@l /* 0x805B9D74@l */
/* 805B9D44  3C A0 80 5B */	lis r5, __dt__4cXyzFv@ha /* 0x805B3C20@ha */
/* 805B9D48  38 A5 3C 20 */	addi r5, r5, __dt__4cXyzFv@l /* 0x805B3C20@l */
/* 805B9D4C  38 C0 00 0C */	li r6, 0xc
/* 805B9D50  38 E0 00 10 */	li r7, 0x10
/* 805B9D54  4B DA 80 0D */	bl __construct_array
/* 805B9D58  7F 63 DB 78 */	mr r3, r27
/* 805B9D5C  39 61 00 20 */	addi r11, r1, 0x20
/* 805B9D60  4B DA 84 BD */	bl _restgpr_26
/* 805B9D64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B9D68  7C 08 03 A6 */	mtlr r0
/* 805B9D6C  38 21 00 20 */	addi r1, r1, 0x20
/* 805B9D70  4E 80 00 20 */	blr 
