lbl_80BED7A4:
/* 80BED7A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BED7A8  7C 08 02 A6 */	mflr r0
/* 80BED7AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BED7B0  39 61 00 20 */	addi r11, r1, 0x20
/* 80BED7B4  4B 77 4A 29 */	bl _savegpr_29
/* 80BED7B8  7C 7E 1B 78 */	mr r30, r3
/* 80BED7BC  4B 42 B3 A9 */	bl __ct__10fopAc_ac_cFv
/* 80BED7C0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80BED7C4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80BED7C8  90 1E 05 94 */	stw r0, 0x594(r30)
/* 80BED7CC  38 7E 05 98 */	addi r3, r30, 0x598
/* 80BED7D0  4B 49 5F 91 */	bl __ct__10dCcD_GSttsFv
/* 80BED7D4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80BED7D8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80BED7DC  90 7E 05 94 */	stw r3, 0x594(r30)
/* 80BED7E0  3B E3 00 20 */	addi r31, r3, 0x20
/* 80BED7E4  93 FE 05 98 */	stw r31, 0x598(r30)
/* 80BED7E8  3B BE 05 B8 */	addi r29, r30, 0x5b8
/* 80BED7EC  7F A3 EB 78 */	mr r3, r29
/* 80BED7F0  4B 49 62 39 */	bl __ct__12dCcD_GObjInfFv
/* 80BED7F4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BED7F8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BED7FC  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80BED800  3C 60 80 BF */	lis r3, __vt__8cM3dGAab@ha /* 0x80BEE9DC@ha */
/* 80BED804  38 03 E9 DC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BEE9DC@l */
/* 80BED808  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80BED80C  3C 60 80 BF */	lis r3, __vt__8cM3dGCyl@ha /* 0x80BEE9D0@ha */
/* 80BED810  38 03 E9 D0 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80BEE9D0@l */
/* 80BED814  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80BED818  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80BED81C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80BED820  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80BED824  38 03 00 58 */	addi r0, r3, 0x58
/* 80BED828  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80BED82C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80BED830  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80BED834  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80BED838  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BED83C  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80BED840  38 03 00 84 */	addi r0, r3, 0x84
/* 80BED844  90 1D 01 38 */	stw r0, 0x138(r29)
/* 80BED848  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha /* 0x803CD97C@ha */
/* 80BED84C  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l /* 0x803CD97C@l */
/* 80BED850  90 1E 07 00 */	stw r0, 0x700(r30)
/* 80BED854  38 00 00 00 */	li r0, 0
/* 80BED858  90 1E 07 04 */	stw r0, 0x704(r30)
/* 80BED85C  90 1E 07 08 */	stw r0, 0x708(r30)
/* 80BED860  90 1E 07 0C */	stw r0, 0x70c(r30)
/* 80BED864  3C 60 80 BF */	lis r3, __vt__11FlagCloth_c@ha /* 0x80BEE9E8@ha */
/* 80BED868  38 03 E9 E8 */	addi r0, r3, __vt__11FlagCloth_c@l /* 0x80BEE9E8@l */
/* 80BED86C  90 1E 07 00 */	stw r0, 0x700(r30)
/* 80BED870  3B BE 07 10 */	addi r29, r30, 0x710
/* 80BED874  7F A3 EB 78 */	mr r3, r29
/* 80BED878  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha /* 0x803A1EC8@ha */
/* 80BED87C  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l /* 0x803A1EC8@l */
/* 80BED880  4B 73 7E 45 */	bl __as__12J3DLightInfoFRC12J3DLightInfo
/* 80BED884  38 7D 00 74 */	addi r3, r29, 0x74
/* 80BED888  3C 80 80 BF */	lis r4, __ct__11J3DLightObjFv@ha /* 0x80BEDBBC@ha */
/* 80BED88C  38 84 DB BC */	addi r4, r4, __ct__11J3DLightObjFv@l /* 0x80BEDBBC@l */
/* 80BED890  38 A0 00 00 */	li r5, 0
/* 80BED894  38 C0 00 74 */	li r6, 0x74
/* 80BED898  38 E0 00 06 */	li r7, 6
/* 80BED89C  4B 77 44 C5 */	bl __construct_array
/* 80BED8A0  3B BE 0A B8 */	addi r29, r30, 0xab8
/* 80BED8A4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80BED8A8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80BED8AC  90 1E 0A D0 */	stw r0, 0xad0(r30)
/* 80BED8B0  38 7D 00 1C */	addi r3, r29, 0x1c
/* 80BED8B4  4B 49 5E AD */	bl __ct__10dCcD_GSttsFv
/* 80BED8B8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80BED8BC  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80BED8C0  90 1D 00 18 */	stw r0, 0x18(r29)
/* 80BED8C4  93 FD 00 1C */	stw r31, 0x1c(r29)
/* 80BED8C8  3B BE 0A F4 */	addi r29, r30, 0xaf4
/* 80BED8CC  7F A3 EB 78 */	mr r3, r29
/* 80BED8D0  4B 49 61 59 */	bl __ct__12dCcD_GObjInfFv
/* 80BED8D4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BED8D8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BED8DC  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80BED8E0  3C 60 80 BF */	lis r3, __vt__8cM3dGAab@ha /* 0x80BEE9DC@ha */
/* 80BED8E4  38 03 E9 DC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BEE9DC@l */
/* 80BED8E8  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 80BED8EC  3C 60 80 BF */	lis r3, __vt__8cM3dGSph@ha /* 0x80BEE9C4@ha */
/* 80BED8F0  38 03 E9 C4 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80BEE9C4@l */
/* 80BED8F4  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80BED8F8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80BED8FC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80BED900  90 7D 01 20 */	stw r3, 0x120(r29)
/* 80BED904  38 03 00 58 */	addi r0, r3, 0x58
/* 80BED908  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80BED90C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80BED910  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80BED914  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 80BED918  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BED91C  90 1D 01 20 */	stw r0, 0x120(r29)
/* 80BED920  38 03 00 84 */	addi r0, r3, 0x84
/* 80BED924  90 1D 01 34 */	stw r0, 0x134(r29)
/* 80BED928  38 7E 0C 40 */	addi r3, r30, 0xc40
/* 80BED92C  3C 80 80 BF */	lis r4, __ct__4cXyzFv@ha /* 0x80BEDB70@ha */
/* 80BED930  38 84 DB 70 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80BEDB70@l */
/* 80BED934  3C A0 80 BF */	lis r5, __dt__4cXyzFv@ha /* 0x80BEC790@ha */
/* 80BED938  38 A5 C7 90 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80BEC790@l */
/* 80BED93C  38 C0 00 0C */	li r6, 0xc
/* 80BED940  38 E0 00 15 */	li r7, 0x15
/* 80BED944  4B 77 44 1D */	bl __construct_array
/* 80BED948  38 7E 0D 40 */	addi r3, r30, 0xd40
/* 80BED94C  3C 80 80 BF */	lis r4, __ct__4cXyzFv@ha /* 0x80BEDB70@ha */
/* 80BED950  38 84 DB 70 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80BEDB70@l */
/* 80BED954  3C A0 80 BF */	lis r5, __dt__4cXyzFv@ha /* 0x80BEC790@ha */
/* 80BED958  38 A5 C7 90 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80BEC790@l */
/* 80BED95C  38 C0 00 0C */	li r6, 0xc
/* 80BED960  38 E0 00 15 */	li r7, 0x15
/* 80BED964  4B 77 43 FD */	bl __construct_array
/* 80BED968  38 7E 0E 40 */	addi r3, r30, 0xe40
/* 80BED96C  3C 80 80 BF */	lis r4, __ct__4cXyzFv@ha /* 0x80BEDB70@ha */
/* 80BED970  38 84 DB 70 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80BEDB70@l */
/* 80BED974  3C A0 80 BF */	lis r5, __dt__4cXyzFv@ha /* 0x80BEC790@ha */
/* 80BED978  38 A5 C7 90 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80BEC790@l */
/* 80BED97C  38 C0 00 0C */	li r6, 0xc
/* 80BED980  38 E0 00 15 */	li r7, 0x15
/* 80BED984  4B 77 43 DD */	bl __construct_array
/* 80BED988  38 7E 0F 3C */	addi r3, r30, 0xf3c
/* 80BED98C  3C 80 80 BF */	lis r4, __ct__4cXyzFv@ha /* 0x80BEDB70@ha */
/* 80BED990  38 84 DB 70 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80BEDB70@l */
/* 80BED994  3C A0 80 BF */	lis r5, __dt__4cXyzFv@ha /* 0x80BEC790@ha */
/* 80BED998  38 A5 C7 90 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80BEC790@l */
/* 80BED99C  38 C0 00 0C */	li r6, 0xc
/* 80BED9A0  38 E0 00 15 */	li r7, 0x15
/* 80BED9A4  4B 77 43 BD */	bl __construct_array
/* 80BED9A8  7F C3 F3 78 */	mr r3, r30
/* 80BED9AC  39 61 00 20 */	addi r11, r1, 0x20
/* 80BED9B0  4B 77 48 79 */	bl _restgpr_29
/* 80BED9B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BED9B8  7C 08 03 A6 */	mtlr r0
/* 80BED9BC  38 21 00 20 */	addi r1, r1, 0x20
/* 80BED9C0  4E 80 00 20 */	blr 
