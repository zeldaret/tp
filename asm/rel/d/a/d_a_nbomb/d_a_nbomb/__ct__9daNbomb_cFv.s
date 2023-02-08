lbl_804C7B44:
/* 804C7B44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C7B48  7C 08 02 A6 */	mflr r0
/* 804C7B4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C7B50  39 61 00 20 */	addi r11, r1, 0x20
/* 804C7B54  4B E9 A6 81 */	bl _savegpr_27
/* 804C7B58  7C 7F 1B 78 */	mr r31, r3
/* 804C7B5C  7F E0 FB 78 */	mr r0, r31
/* 804C7B60  7C 1C 03 78 */	mr r28, r0
/* 804C7B64  4B B5 10 01 */	bl __ct__10fopAc_ac_cFv
/* 804C7B68  3C 60 80 4D */	lis r3, __vt__7dBomb_c@ha /* 0x804CC660@ha */
/* 804C7B6C  38 03 C6 60 */	addi r0, r3, __vt__7dBomb_c@l /* 0x804CC660@l */
/* 804C7B70  90 1C 05 68 */	stw r0, 0x568(r28)
/* 804C7B74  3C 60 80 4D */	lis r3, __vt__9daNbomb_c@ha /* 0x804CC64C@ha */
/* 804C7B78  38 03 C6 4C */	addi r0, r3, __vt__9daNbomb_c@l /* 0x804CC64C@l */
/* 804C7B7C  90 1F 05 68 */	stw r0, 0x568(r31)
/* 804C7B80  3B 9F 05 78 */	addi r28, r31, 0x578
/* 804C7B84  7F 83 E3 78 */	mr r3, r28
/* 804C7B88  4B BA E5 19 */	bl __ct__9dBgS_AcchFv
/* 804C7B8C  3C 60 80 4D */	lis r3, __vt__13dBgS_BombAcch@ha /* 0x804CC628@ha */
/* 804C7B90  38 63 C6 28 */	addi r3, r3, __vt__13dBgS_BombAcch@l /* 0x804CC628@l */
/* 804C7B94  90 7C 00 10 */	stw r3, 0x10(r28)
/* 804C7B98  38 03 00 0C */	addi r0, r3, 0xc
/* 804C7B9C  90 1C 00 14 */	stw r0, 0x14(r28)
/* 804C7BA0  38 03 00 18 */	addi r0, r3, 0x18
/* 804C7BA4  90 1C 00 24 */	stw r0, 0x24(r28)
/* 804C7BA8  38 7C 00 14 */	addi r3, r28, 0x14
/* 804C7BAC  4B BB 13 11 */	bl SetBomb__16dBgS_PolyPassChkFv
/* 804C7BB0  38 7F 07 50 */	addi r3, r31, 0x750
/* 804C7BB4  4B BA E2 F9 */	bl __ct__12dBgS_AcchCirFv
/* 804C7BB8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 804C7BBC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 804C7BC0  90 1F 07 A8 */	stw r0, 0x7a8(r31)
/* 804C7BC4  38 7F 07 AC */	addi r3, r31, 0x7ac
/* 804C7BC8  4B BB BB 99 */	bl __ct__10dCcD_GSttsFv
/* 804C7BCC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 804C7BD0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 804C7BD4  90 7F 07 A8 */	stw r3, 0x7a8(r31)
/* 804C7BD8  38 03 00 20 */	addi r0, r3, 0x20
/* 804C7BDC  90 1F 07 AC */	stw r0, 0x7ac(r31)
/* 804C7BE0  3B 7F 07 CC */	addi r27, r31, 0x7cc
/* 804C7BE4  7F 63 DB 78 */	mr r3, r27
/* 804C7BE8  4B BB BE 41 */	bl __ct__12dCcD_GObjInfFv
/* 804C7BEC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 804C7BF0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 804C7BF4  90 1B 01 20 */	stw r0, 0x120(r27)
/* 804C7BF8  3C 60 80 4D */	lis r3, __vt__8cM3dGAab@ha /* 0x804CC61C@ha */
/* 804C7BFC  38 03 C6 1C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x804CC61C@l */
/* 804C7C00  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 804C7C04  3C 60 80 4D */	lis r3, __vt__8cM3dGSph@ha /* 0x804CC610@ha */
/* 804C7C08  38 03 C6 10 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x804CC610@l */
/* 804C7C0C  90 1B 01 34 */	stw r0, 0x134(r27)
/* 804C7C10  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 804C7C14  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 804C7C18  90 7B 01 20 */	stw r3, 0x120(r27)
/* 804C7C1C  3B C3 00 58 */	addi r30, r3, 0x58
/* 804C7C20  93 DB 01 34 */	stw r30, 0x134(r27)
/* 804C7C24  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 804C7C28  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 804C7C2C  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 804C7C30  3B A3 00 2C */	addi r29, r3, 0x2c
/* 804C7C34  93 BB 01 20 */	stw r29, 0x120(r27)
/* 804C7C38  3B 83 00 84 */	addi r28, r3, 0x84
/* 804C7C3C  93 9B 01 34 */	stw r28, 0x134(r27)
/* 804C7C40  3B 7F 09 04 */	addi r27, r31, 0x904
/* 804C7C44  7F 63 DB 78 */	mr r3, r27
/* 804C7C48  4B BB BD E1 */	bl __ct__12dCcD_GObjInfFv
/* 804C7C4C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 804C7C50  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 804C7C54  90 1B 01 20 */	stw r0, 0x120(r27)
/* 804C7C58  3C 60 80 4D */	lis r3, __vt__8cM3dGAab@ha /* 0x804CC61C@ha */
/* 804C7C5C  38 03 C6 1C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x804CC61C@l */
/* 804C7C60  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 804C7C64  3C 60 80 4D */	lis r3, __vt__8cM3dGSph@ha /* 0x804CC610@ha */
/* 804C7C68  38 03 C6 10 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x804CC610@l */
/* 804C7C6C  90 1B 01 34 */	stw r0, 0x134(r27)
/* 804C7C70  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 804C7C74  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 804C7C78  90 1B 01 20 */	stw r0, 0x120(r27)
/* 804C7C7C  93 DB 01 34 */	stw r30, 0x134(r27)
/* 804C7C80  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 804C7C84  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 804C7C88  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 804C7C8C  93 BB 01 20 */	stw r29, 0x120(r27)
/* 804C7C90  93 9B 01 34 */	stw r28, 0x134(r27)
/* 804C7C94  38 7F 0A A0 */	addi r3, r31, 0xaa0
/* 804C7C98  4B BB 04 6D */	bl __ct__15dBgS_BombLinChkFv
/* 804C7C9C  38 7F 0B 10 */	addi r3, r31, 0xb10
/* 804C7CA0  4B DA 03 D5 */	bl __ct__13cBgS_PolyInfoFv
/* 804C7CA4  38 7F 0B 20 */	addi r3, r31, 0xb20
/* 804C7CA8  4B DF 6B 9D */	bl __ct__16Z2SoundObjSimpleFv
/* 804C7CAC  7F E3 FB 78 */	mr r3, r31
/* 804C7CB0  39 61 00 20 */	addi r11, r1, 0x20
/* 804C7CB4  4B E9 A5 6D */	bl _restgpr_27
/* 804C7CB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C7CBC  7C 08 03 A6 */	mtlr r0
/* 804C7CC0  38 21 00 20 */	addi r1, r1, 0x20
/* 804C7CC4  4E 80 00 20 */	blr 
