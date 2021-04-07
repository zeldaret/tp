lbl_80712F20:
/* 80712F20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80712F24  7C 08 02 A6 */	mflr r0
/* 80712F28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80712F2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80712F30  4B C4 F2 A5 */	bl _savegpr_27
/* 80712F34  7C 7F 1B 78 */	mr r31, r3
/* 80712F38  4B 90 5C 2D */	bl __ct__10fopAc_ac_cFv
/* 80712F3C  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 80712F40  4B BA E0 25 */	bl __ct__15Z2CreatureEnemyFv
/* 80712F44  38 7F 06 94 */	addi r3, r31, 0x694
/* 80712F48  4B 92 2D 45 */	bl __ct__9dJntCol_cFv
/* 80712F4C  38 7F 07 42 */	addi r3, r31, 0x742
/* 80712F50  3C 80 80 71 */	lis r4, __ct__5csXyzFv@ha /* 0x80713418@ha */
/* 80712F54  38 84 34 18 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80713418@l */
/* 80712F58  3C A0 80 71 */	lis r5, __dt__5csXyzFv@ha /* 0x80713924@ha */
/* 80712F5C  38 A5 39 24 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80713924@l */
/* 80712F60  38 C0 00 06 */	li r6, 6
/* 80712F64  38 E0 00 0B */	li r7, 0xb
/* 80712F68  4B C4 ED F9 */	bl __construct_array
/* 80712F6C  38 7F 07 84 */	addi r3, r31, 0x784
/* 80712F70  3C 80 80 71 */	lis r4, __ct__5csXyzFv@ha /* 0x80713418@ha */
/* 80712F74  38 84 34 18 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80713418@l */
/* 80712F78  3C A0 80 71 */	lis r5, __dt__5csXyzFv@ha /* 0x80713924@ha */
/* 80712F7C  38 A5 39 24 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80713924@l */
/* 80712F80  38 C0 00 06 */	li r6, 6
/* 80712F84  38 E0 00 0B */	li r7, 0xb
/* 80712F88  4B C4 ED D9 */	bl __construct_array
/* 80712F8C  38 7F 07 EE */	addi r3, r31, 0x7ee
/* 80712F90  3C 80 80 71 */	lis r4, __ct__5csXyzFv@ha /* 0x80713418@ha */
/* 80712F94  38 84 34 18 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80713418@l */
/* 80712F98  3C A0 80 71 */	lis r5, __dt__5csXyzFv@ha /* 0x80713924@ha */
/* 80712F9C  38 A5 39 24 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80713924@l */
/* 80712FA0  38 C0 00 06 */	li r6, 6
/* 80712FA4  38 E0 00 04 */	li r7, 4
/* 80712FA8  4B C4 ED B9 */	bl __construct_array
/* 80712FAC  38 7F 08 24 */	addi r3, r31, 0x824
/* 80712FB0  4B 96 2E FD */	bl __ct__12dBgS_AcchCirFv
/* 80712FB4  3B 9F 08 64 */	addi r28, r31, 0x864
/* 80712FB8  7F 83 E3 78 */	mr r3, r28
/* 80712FBC  4B 96 30 E5 */	bl __ct__9dBgS_AcchFv
/* 80712FC0  3C 60 80 71 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80713EC0@ha */
/* 80712FC4  38 63 3E C0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80713EC0@l */
/* 80712FC8  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80712FCC  38 03 00 0C */	addi r0, r3, 0xc
/* 80712FD0  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80712FD4  38 03 00 18 */	addi r0, r3, 0x18
/* 80712FD8  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80712FDC  38 7C 00 14 */	addi r3, r28, 0x14
/* 80712FE0  4B 96 5E 89 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80712FE4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80712FE8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80712FEC  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80712FF0  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80712FF4  4B 97 07 6D */	bl __ct__10dCcD_GSttsFv
/* 80712FF8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80712FFC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80713000  90 7F 0A 58 */	stw r3, 0xa58(r31)
/* 80713004  38 03 00 20 */	addi r0, r3, 0x20
/* 80713008  90 1F 0A 5C */	stw r0, 0xa5c(r31)
/* 8071300C  38 7F 0A 7C */	addi r3, r31, 0xa7c
/* 80713010  3C 80 80 71 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x80713258@ha */
/* 80713014  38 84 32 58 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x80713258@l */
/* 80713018  3C A0 80 71 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x8071318C@ha */
/* 8071301C  38 A5 31 8C */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x8071318C@l */
/* 80713020  38 C0 01 38 */	li r6, 0x138
/* 80713024  38 E0 00 03 */	li r7, 3
/* 80713028  4B C4 ED 39 */	bl __construct_array
/* 8071302C  3B 7F 0E 24 */	addi r27, r31, 0xe24
/* 80713030  7F 63 DB 78 */	mr r3, r27
/* 80713034  4B 97 09 F5 */	bl __ct__12dCcD_GObjInfFv
/* 80713038  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8071303C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80713040  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80713044  3C 60 80 71 */	lis r3, __vt__8cM3dGAab@ha /* 0x80713EB4@ha */
/* 80713048  38 03 3E B4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80713EB4@l */
/* 8071304C  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80713050  3C 60 80 71 */	lis r3, __vt__8cM3dGSph@ha /* 0x80713EA8@ha */
/* 80713054  38 03 3E A8 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80713EA8@l */
/* 80713058  90 1B 01 34 */	stw r0, 0x134(r27)
/* 8071305C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80713060  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80713064  90 7B 01 20 */	stw r3, 0x120(r27)
/* 80713068  3B C3 00 58 */	addi r30, r3, 0x58
/* 8071306C  93 DB 01 34 */	stw r30, 0x134(r27)
/* 80713070  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80713074  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80713078  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 8071307C  3B A3 00 2C */	addi r29, r3, 0x2c
/* 80713080  93 BB 01 20 */	stw r29, 0x120(r27)
/* 80713084  3B 83 00 84 */	addi r28, r3, 0x84
/* 80713088  93 9B 01 34 */	stw r28, 0x134(r27)
/* 8071308C  3B 7F 0F 5C */	addi r27, r31, 0xf5c
/* 80713090  7F 63 DB 78 */	mr r3, r27
/* 80713094  4B 97 09 95 */	bl __ct__12dCcD_GObjInfFv
/* 80713098  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8071309C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 807130A0  90 1B 01 20 */	stw r0, 0x120(r27)
/* 807130A4  3C 60 80 71 */	lis r3, __vt__8cM3dGAab@ha /* 0x80713EB4@ha */
/* 807130A8  38 03 3E B4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80713EB4@l */
/* 807130AC  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 807130B0  3C 60 80 71 */	lis r3, __vt__8cM3dGSph@ha /* 0x80713EA8@ha */
/* 807130B4  38 03 3E A8 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80713EA8@l */
/* 807130B8  90 1B 01 34 */	stw r0, 0x134(r27)
/* 807130BC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 807130C0  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 807130C4  90 1B 01 20 */	stw r0, 0x120(r27)
/* 807130C8  93 DB 01 34 */	stw r30, 0x134(r27)
/* 807130CC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 807130D0  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 807130D4  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 807130D8  93 BB 01 20 */	stw r29, 0x120(r27)
/* 807130DC  93 9B 01 34 */	stw r28, 0x134(r27)
/* 807130E0  7F E3 FB 78 */	mr r3, r31
/* 807130E4  39 61 00 20 */	addi r11, r1, 0x20
/* 807130E8  4B C4 F1 39 */	bl _restgpr_27
/* 807130EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807130F0  7C 08 03 A6 */	mtlr r0
/* 807130F4  38 21 00 20 */	addi r1, r1, 0x20
/* 807130F8  4E 80 00 20 */	blr 
