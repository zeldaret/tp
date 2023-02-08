lbl_80705004:
/* 80705004  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80705008  7C 08 02 A6 */	mflr r0
/* 8070500C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80705010  39 61 00 20 */	addi r11, r1, 0x20
/* 80705014  4B C5 D1 C1 */	bl _savegpr_27
/* 80705018  7C 7C 1B 78 */	mr r28, r3
/* 8070501C  4B 91 3B 49 */	bl __ct__10fopAc_ac_cFv
/* 80705020  38 7C 05 C0 */	addi r3, r28, 0x5c0
/* 80705024  4B BB BF 41 */	bl __ct__15Z2CreatureEnemyFv
/* 80705028  38 7C 07 04 */	addi r3, r28, 0x704
/* 8070502C  4B 97 0E 81 */	bl __ct__12dBgS_AcchCirFv
/* 80705030  3B BC 07 44 */	addi r29, r28, 0x744
/* 80705034  7F A3 EB 78 */	mr r3, r29
/* 80705038  4B 97 10 69 */	bl __ct__9dBgS_AcchFv
/* 8070503C  3C 60 80 70 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80705F94@ha */
/* 80705040  38 63 5F 94 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80705F94@l */
/* 80705044  90 7D 00 10 */	stw r3, 0x10(r29)
/* 80705048  38 03 00 0C */	addi r0, r3, 0xc
/* 8070504C  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80705050  38 03 00 18 */	addi r0, r3, 0x18
/* 80705054  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80705058  38 7D 00 14 */	addi r3, r29, 0x14
/* 8070505C  4B 97 3E 0D */	bl SetObj__16dBgS_PolyPassChkFv
/* 80705060  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80705064  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80705068  90 1C 09 3C */	stw r0, 0x93c(r28)
/* 8070506C  38 7C 09 40 */	addi r3, r28, 0x940
/* 80705070  4B 97 E6 F1 */	bl __ct__10dCcD_GSttsFv
/* 80705074  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80705078  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8070507C  90 7C 09 3C */	stw r3, 0x93c(r28)
/* 80705080  38 03 00 20 */	addi r0, r3, 0x20
/* 80705084  90 1C 09 40 */	stw r0, 0x940(r28)
/* 80705088  3B 7C 09 60 */	addi r27, r28, 0x960
/* 8070508C  7F 63 DB 78 */	mr r3, r27
/* 80705090  4B 97 E9 99 */	bl __ct__12dCcD_GObjInfFv
/* 80705094  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80705098  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8070509C  90 1B 01 20 */	stw r0, 0x120(r27)
/* 807050A0  3C 60 80 70 */	lis r3, __vt__8cM3dGAab@ha /* 0x80705F88@ha */
/* 807050A4  38 03 5F 88 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80705F88@l */
/* 807050A8  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 807050AC  3C 60 80 70 */	lis r3, __vt__8cM3dGSph@ha /* 0x80705F7C@ha */
/* 807050B0  38 03 5F 7C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80705F7C@l */
/* 807050B4  90 1B 01 34 */	stw r0, 0x134(r27)
/* 807050B8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 807050BC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 807050C0  90 7B 01 20 */	stw r3, 0x120(r27)
/* 807050C4  3B E3 00 58 */	addi r31, r3, 0x58
/* 807050C8  93 FB 01 34 */	stw r31, 0x134(r27)
/* 807050CC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 807050D0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 807050D4  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 807050D8  3B C3 00 2C */	addi r30, r3, 0x2c
/* 807050DC  93 DB 01 20 */	stw r30, 0x120(r27)
/* 807050E0  3B A3 00 84 */	addi r29, r3, 0x84
/* 807050E4  93 BB 01 34 */	stw r29, 0x134(r27)
/* 807050E8  3B 7C 0A 98 */	addi r27, r28, 0xa98
/* 807050EC  7F 63 DB 78 */	mr r3, r27
/* 807050F0  4B 97 E9 39 */	bl __ct__12dCcD_GObjInfFv
/* 807050F4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 807050F8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 807050FC  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80705100  3C 60 80 70 */	lis r3, __vt__8cM3dGAab@ha /* 0x80705F88@ha */
/* 80705104  38 03 5F 88 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80705F88@l */
/* 80705108  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 8070510C  3C 60 80 70 */	lis r3, __vt__8cM3dGSph@ha /* 0x80705F7C@ha */
/* 80705110  38 03 5F 7C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80705F7C@l */
/* 80705114  90 1B 01 34 */	stw r0, 0x134(r27)
/* 80705118  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8070511C  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80705120  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80705124  93 FB 01 34 */	stw r31, 0x134(r27)
/* 80705128  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8070512C  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80705130  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 80705134  93 DB 01 20 */	stw r30, 0x120(r27)
/* 80705138  93 BB 01 34 */	stw r29, 0x134(r27)
/* 8070513C  3B 7C 0B D0 */	addi r27, r28, 0xbd0
/* 80705140  7F 63 DB 78 */	mr r3, r27
/* 80705144  4B 97 E8 E5 */	bl __ct__12dCcD_GObjInfFv
/* 80705148  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8070514C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80705150  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80705154  3C 60 80 70 */	lis r3, __vt__8cM3dGAab@ha /* 0x80705F88@ha */
/* 80705158  38 03 5F 88 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80705F88@l */
/* 8070515C  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80705160  3C 60 80 70 */	lis r3, __vt__8cM3dGSph@ha /* 0x80705F7C@ha */
/* 80705164  38 03 5F 7C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80705F7C@l */
/* 80705168  90 1B 01 34 */	stw r0, 0x134(r27)
/* 8070516C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80705170  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80705174  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80705178  93 FB 01 34 */	stw r31, 0x134(r27)
/* 8070517C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80705180  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80705184  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 80705188  93 DB 01 20 */	stw r30, 0x120(r27)
/* 8070518C  93 BB 01 34 */	stw r29, 0x134(r27)
/* 80705190  3B 7C 0D 08 */	addi r27, r28, 0xd08
/* 80705194  7F 63 DB 78 */	mr r3, r27
/* 80705198  4B 97 E8 91 */	bl __ct__12dCcD_GObjInfFv
/* 8070519C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 807051A0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 807051A4  90 1B 01 20 */	stw r0, 0x120(r27)
/* 807051A8  3C 60 80 70 */	lis r3, __vt__8cM3dGAab@ha /* 0x80705F88@ha */
/* 807051AC  38 03 5F 88 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80705F88@l */
/* 807051B0  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 807051B4  3C 60 80 70 */	lis r3, __vt__8cM3dGSph@ha /* 0x80705F7C@ha */
/* 807051B8  38 03 5F 7C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80705F7C@l */
/* 807051BC  90 1B 01 34 */	stw r0, 0x134(r27)
/* 807051C0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 807051C4  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 807051C8  90 1B 01 20 */	stw r0, 0x120(r27)
/* 807051CC  93 FB 01 34 */	stw r31, 0x134(r27)
/* 807051D0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 807051D4  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 807051D8  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 807051DC  93 DB 01 20 */	stw r30, 0x120(r27)
/* 807051E0  93 BB 01 34 */	stw r29, 0x134(r27)
/* 807051E4  38 7C 0E 64 */	addi r3, r28, 0xe64
/* 807051E8  3C 80 80 70 */	lis r4, __ct__4cXyzFv@ha /* 0x80705220@ha */
/* 807051EC  38 84 52 20 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80705220@l */
/* 807051F0  3C A0 80 70 */	lis r5, __dt__4cXyzFv@ha /* 0x80705AA8@ha */
/* 807051F4  38 A5 5A A8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80705AA8@l */
/* 807051F8  38 C0 00 0C */	li r6, 0xc
/* 807051FC  38 E0 00 02 */	li r7, 2
/* 80705200  4B C5 CB 61 */	bl __construct_array
/* 80705204  7F 83 E3 78 */	mr r3, r28
/* 80705208  39 61 00 20 */	addi r11, r1, 0x20
/* 8070520C  4B C5 D0 15 */	bl _restgpr_27
/* 80705210  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80705214  7C 08 03 A6 */	mtlr r0
/* 80705218  38 21 00 20 */	addi r1, r1, 0x20
/* 8070521C  4E 80 00 20 */	blr 
