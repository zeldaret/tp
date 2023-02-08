lbl_80BB2EB8:
/* 80BB2EB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BB2EBC  7C 08 02 A6 */	mflr r0
/* 80BB2EC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BB2EC4  39 61 00 20 */	addi r11, r1, 0x20
/* 80BB2EC8  4B 7A F3 15 */	bl _savegpr_29
/* 80BB2ECC  7C 7F 1B 78 */	mr r31, r3
/* 80BB2ED0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BB2ED4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BB2ED8  40 82 01 80 */	bne lbl_80BB3058
/* 80BB2EDC  7F E0 FB 79 */	or. r0, r31, r31
/* 80BB2EE0  41 82 01 6C */	beq lbl_80BB304C
/* 80BB2EE4  7C 1E 03 78 */	mr r30, r0
/* 80BB2EE8  4B 4C 57 3D */	bl __ct__16dBgS_MoveBgActorFv
/* 80BB2EEC  3C 60 80 BB */	lis r3, __vt__9daObjBm_c@ha /* 0x80BB3E58@ha */
/* 80BB2EF0  38 03 3E 58 */	addi r0, r3, __vt__9daObjBm_c@l /* 0x80BB3E58@l */
/* 80BB2EF4  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80BB2EF8  3B BE 05 CC */	addi r29, r30, 0x5cc
/* 80BB2EFC  7F A3 EB 78 */	mr r3, r29
/* 80BB2F00  4B 4C 31 A1 */	bl __ct__9dBgS_AcchFv
/* 80BB2F04  3C 60 80 BB */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80BB3E1C@ha */
/* 80BB2F08  38 63 3E 1C */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80BB3E1C@l */
/* 80BB2F0C  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80BB2F10  38 03 00 0C */	addi r0, r3, 0xc
/* 80BB2F14  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80BB2F18  38 03 00 18 */	addi r0, r3, 0x18
/* 80BB2F1C  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80BB2F20  38 7D 00 14 */	addi r3, r29, 0x14
/* 80BB2F24  4B 4C 5F 45 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80BB2F28  38 7E 07 A4 */	addi r3, r30, 0x7a4
/* 80BB2F2C  4B 4C 2F 81 */	bl __ct__12dBgS_AcchCirFv
/* 80BB2F30  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80BB2F34  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80BB2F38  90 1E 07 FC */	stw r0, 0x7fc(r30)
/* 80BB2F3C  38 7E 08 00 */	addi r3, r30, 0x800
/* 80BB2F40  4B 4D 08 21 */	bl __ct__10dCcD_GSttsFv
/* 80BB2F44  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80BB2F48  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80BB2F4C  90 7E 07 FC */	stw r3, 0x7fc(r30)
/* 80BB2F50  38 03 00 20 */	addi r0, r3, 0x20
/* 80BB2F54  90 1E 08 00 */	stw r0, 0x800(r30)
/* 80BB2F58  3B BE 08 20 */	addi r29, r30, 0x820
/* 80BB2F5C  7F A3 EB 78 */	mr r3, r29
/* 80BB2F60  4B 4D 0A C9 */	bl __ct__12dCcD_GObjInfFv
/* 80BB2F64  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BB2F68  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BB2F6C  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80BB2F70  3C 60 80 BB */	lis r3, __vt__8cM3dGAab@ha /* 0x80BB3E10@ha */
/* 80BB2F74  38 03 3E 10 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BB3E10@l */
/* 80BB2F78  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80BB2F7C  3C 60 80 BB */	lis r3, __vt__8cM3dGSph@ha /* 0x80BB3E04@ha */
/* 80BB2F80  38 03 3E 04 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80BB3E04@l */
/* 80BB2F84  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80BB2F88  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80BB2F8C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80BB2F90  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80BB2F94  38 03 00 58 */	addi r0, r3, 0x58
/* 80BB2F98  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80BB2F9C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80BB2FA0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80BB2FA4  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80BB2FA8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BB2FAC  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80BB2FB0  38 03 00 84 */	addi r0, r3, 0x84
/* 80BB2FB4  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80BB2FB8  3B BE 09 58 */	addi r29, r30, 0x958
/* 80BB2FBC  7F A3 EB 78 */	mr r3, r29
/* 80BB2FC0  4B 4D 0A 69 */	bl __ct__12dCcD_GObjInfFv
/* 80BB2FC4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BB2FC8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BB2FCC  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80BB2FD0  3C 60 80 BB */	lis r3, __vt__8cM3dGAab@ha /* 0x80BB3E10@ha */
/* 80BB2FD4  38 03 3E 10 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BB3E10@l */
/* 80BB2FD8  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80BB2FDC  38 7D 01 24 */	addi r3, r29, 0x124
/* 80BB2FE0  4B 6B BF A9 */	bl __ct__8cM3dGCpsFv
/* 80BB2FE4  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha /* 0x803C3608@ha */
/* 80BB2FE8  38 63 36 08 */	addi r3, r3, __vt__12cCcD_CpsAttr@l /* 0x803C3608@l */
/* 80BB2FEC  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80BB2FF0  38 03 00 58 */	addi r0, r3, 0x58
/* 80BB2FF4  90 1D 01 3C */	stw r0, 0x13c(r29)
/* 80BB2FF8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cps@ha /* 0x803AC170@ha */
/* 80BB2FFC  38 63 C1 70 */	addi r3, r3, __vt__8dCcD_Cps@l /* 0x803AC170@l */
/* 80BB3000  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80BB3004  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BB3008  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80BB300C  38 03 00 84 */	addi r0, r3, 0x84
/* 80BB3010  90 1D 01 3C */	stw r0, 0x13c(r29)
/* 80BB3014  38 7E 0A 9C */	addi r3, r30, 0xa9c
/* 80BB3018  3C 80 80 BB */	lis r4, __ct__8dCcD_CylFv@ha /* 0x80BB3144@ha */
/* 80BB301C  38 84 31 44 */	addi r4, r4, __ct__8dCcD_CylFv@l /* 0x80BB3144@l */
/* 80BB3020  3C A0 80 BB */	lis r5, __dt__8dCcD_CylFv@ha /* 0x80BB3078@ha */
/* 80BB3024  38 A5 30 78 */	addi r5, r5, __dt__8dCcD_CylFv@l /* 0x80BB3078@l */
/* 80BB3028  38 C0 01 3C */	li r6, 0x13c
/* 80BB302C  38 E0 00 04 */	li r7, 4
/* 80BB3030  4B 7A ED 31 */	bl __construct_array
/* 80BB3034  38 7E 10 60 */	addi r3, r30, 0x1060
/* 80BB3038  4B 70 B8 0D */	bl __ct__16Z2SoundObjSimpleFv
/* 80BB303C  38 7E 10 80 */	addi r3, r30, 0x1080
/* 80BB3040  4B 70 B8 05 */	bl __ct__16Z2SoundObjSimpleFv
/* 80BB3044  38 7E 10 D4 */	addi r3, r30, 0x10d4
/* 80BB3048  4B FF DD C5 */	bl __ct__Q29daObjBm_c5Bgc_cFv
lbl_80BB304C:
/* 80BB304C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80BB3050  60 00 00 08 */	ori r0, r0, 8
/* 80BB3054  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80BB3058:
/* 80BB3058  7F E3 FB 78 */	mr r3, r31
/* 80BB305C  4B FF BF 7D */	bl create1st__9daObjBm_cFv
/* 80BB3060  39 61 00 20 */	addi r11, r1, 0x20
/* 80BB3064  4B 7A F1 C5 */	bl _restgpr_29
/* 80BB3068  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BB306C  7C 08 03 A6 */	mtlr r0
/* 80BB3070  38 21 00 20 */	addi r1, r1, 0x20
/* 80BB3074  4E 80 00 20 */	blr 
