lbl_8046AB2C:
/* 8046AB2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046AB30  7C 08 02 A6 */	mflr r0
/* 8046AB34  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046AB38  39 61 00 20 */	addi r11, r1, 0x20
/* 8046AB3C  4B EF 76 99 */	bl _savegpr_27
/* 8046AB40  7C 7F 1B 78 */	mr r31, r3
/* 8046AB44  4B BA E0 21 */	bl __ct__10fopAc_ac_cFv
/* 8046AB48  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8046AB4C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8046AB50  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 8046AB54  38 7F 06 60 */	addi r3, r31, 0x660
/* 8046AB58  4B C1 8C 09 */	bl __ct__10dCcD_GSttsFv
/* 8046AB5C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8046AB60  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8046AB64  90 7F 06 5C */	stw r3, 0x65c(r31)
/* 8046AB68  38 03 00 20 */	addi r0, r3, 0x20
/* 8046AB6C  90 1F 06 60 */	stw r0, 0x660(r31)
/* 8046AB70  3B 9F 06 80 */	addi r28, r31, 0x680
/* 8046AB74  7F 83 E3 78 */	mr r3, r28
/* 8046AB78  4B C1 8E B1 */	bl __ct__12dCcD_GObjInfFv
/* 8046AB7C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8046AB80  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8046AB84  90 1C 01 20 */	stw r0, 0x120(r28)
/* 8046AB88  3C 60 80 47 */	lis r3, __vt__8cM3dGAab@ha /* 0x8046B2D0@ha */
/* 8046AB8C  38 03 B2 D0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8046B2D0@l */
/* 8046AB90  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 8046AB94  3C 60 80 47 */	lis r3, __vt__8cM3dGCyl@ha /* 0x8046B2C4@ha */
/* 8046AB98  38 03 B2 C4 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x8046B2C4@l */
/* 8046AB9C  90 1C 01 38 */	stw r0, 0x138(r28)
/* 8046ABA0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 8046ABA4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 8046ABA8  90 7C 01 20 */	stw r3, 0x120(r28)
/* 8046ABAC  38 03 00 58 */	addi r0, r3, 0x58
/* 8046ABB0  90 1C 01 38 */	stw r0, 0x138(r28)
/* 8046ABB4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 8046ABB8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 8046ABBC  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 8046ABC0  38 03 00 2C */	addi r0, r3, 0x2c
/* 8046ABC4  90 1C 01 20 */	stw r0, 0x120(r28)
/* 8046ABC8  38 03 00 84 */	addi r0, r3, 0x84
/* 8046ABCC  90 1C 01 38 */	stw r0, 0x138(r28)
/* 8046ABD0  3B 7F 07 BC */	addi r27, r31, 0x7bc
/* 8046ABD4  7F 63 DB 78 */	mr r3, r27
/* 8046ABD8  4B C1 8E 51 */	bl __ct__12dCcD_GObjInfFv
/* 8046ABDC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8046ABE0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8046ABE4  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8046ABE8  3C 60 80 47 */	lis r3, __vt__8cM3dGAab@ha /* 0x8046B2D0@ha */
/* 8046ABEC  38 03 B2 D0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8046B2D0@l */
/* 8046ABF0  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 8046ABF4  3C 60 80 47 */	lis r3, __vt__8cM3dGSph@ha /* 0x8046B2B8@ha */
/* 8046ABF8  38 03 B2 B8 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8046B2B8@l */
/* 8046ABFC  90 1B 01 34 */	stw r0, 0x134(r27)
/* 8046AC00  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8046AC04  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 8046AC08  90 7B 01 20 */	stw r3, 0x120(r27)
/* 8046AC0C  3B C3 00 58 */	addi r30, r3, 0x58
/* 8046AC10  93 DB 01 34 */	stw r30, 0x134(r27)
/* 8046AC14  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8046AC18  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 8046AC1C  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 8046AC20  3B A3 00 2C */	addi r29, r3, 0x2c
/* 8046AC24  93 BB 01 20 */	stw r29, 0x120(r27)
/* 8046AC28  3B 83 00 84 */	addi r28, r3, 0x84
/* 8046AC2C  93 9B 01 34 */	stw r28, 0x134(r27)
/* 8046AC30  3B 7F 08 F4 */	addi r27, r31, 0x8f4
/* 8046AC34  7F 63 DB 78 */	mr r3, r27
/* 8046AC38  4B C1 8D F1 */	bl __ct__12dCcD_GObjInfFv
/* 8046AC3C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8046AC40  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8046AC44  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8046AC48  3C 60 80 47 */	lis r3, __vt__8cM3dGAab@ha /* 0x8046B2D0@ha */
/* 8046AC4C  38 03 B2 D0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8046B2D0@l */
/* 8046AC50  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 8046AC54  3C 60 80 47 */	lis r3, __vt__8cM3dGSph@ha /* 0x8046B2B8@ha */
/* 8046AC58  38 03 B2 B8 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8046B2B8@l */
/* 8046AC5C  90 1B 01 34 */	stw r0, 0x134(r27)
/* 8046AC60  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8046AC64  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 8046AC68  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8046AC6C  93 DB 01 34 */	stw r30, 0x134(r27)
/* 8046AC70  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8046AC74  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 8046AC78  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 8046AC7C  93 BB 01 20 */	stw r29, 0x120(r27)
/* 8046AC80  93 9B 01 34 */	stw r28, 0x134(r27)
/* 8046AC84  38 7F 0A 7C */	addi r3, r31, 0xa7c
/* 8046AC88  3C 80 80 47 */	lis r4, __ct__10ep_hahen_sFv@ha /* 0x8046AD44@ha */
/* 8046AC8C  38 84 AD 44 */	addi r4, r4, __ct__10ep_hahen_sFv@l /* 0x8046AD44@l */
/* 8046AC90  3C A0 80 47 */	lis r5, __dt__10ep_hahen_sFv@ha /* 0x8046ACC0@ha */
/* 8046AC94  38 A5 AC C0 */	addi r5, r5, __dt__10ep_hahen_sFv@l /* 0x8046ACC0@l */
/* 8046AC98  38 C0 00 A8 */	li r6, 0xa8
/* 8046AC9C  38 E0 00 06 */	li r7, 6
/* 8046ACA0  4B EF 70 C1 */	bl __construct_array
/* 8046ACA4  7F E3 FB 78 */	mr r3, r31
/* 8046ACA8  39 61 00 20 */	addi r11, r1, 0x20
/* 8046ACAC  4B EF 75 75 */	bl _restgpr_27
/* 8046ACB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046ACB4  7C 08 03 A6 */	mtlr r0
/* 8046ACB8  38 21 00 20 */	addi r1, r1, 0x20
/* 8046ACBC  4E 80 00 20 */	blr 
