lbl_809CFD2C:
/* 809CFD2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CFD30  7C 08 02 A6 */	mflr r0
/* 809CFD34  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CFD38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809CFD3C  93 C1 00 08 */	stw r30, 8(r1)
/* 809CFD40  7C 7F 1B 78 */	mr r31, r3
/* 809CFD44  48 00 37 ED */	bl __ct__8daNpcF_cFv
/* 809CFD48  3C 60 80 9D */	lis r3, __vt__11daNpc_Grd_c@ha /* 0x809D3DD0@ha */
/* 809CFD4C  38 03 3D D0 */	addi r0, r3, __vt__11daNpc_Grd_c@l /* 0x809D3DD0@l */
/* 809CFD50  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 809CFD54  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 809CFD58  4B 8F 06 71 */	bl __ct__10Z2CreatureFv
/* 809CFD5C  3B DF 0B DC */	addi r30, r31, 0xbdc
/* 809CFD60  3C 60 80 9D */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x809D3E90@ha */
/* 809CFD64  38 03 3E 90 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x809D3E90@l */
/* 809CFD68  90 1F 0C 74 */	stw r0, 0xc74(r31)
/* 809CFD6C  7F C3 F3 78 */	mr r3, r30
/* 809CFD70  3C 80 80 9D */	lis r4, __ct__4cXyzFv@ha /* 0x809D32E0@ha */
/* 809CFD74  38 84 32 E0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x809D32E0@l */
/* 809CFD78  3C A0 80 9D */	lis r5, __dt__4cXyzFv@ha /* 0x809D32A4@ha */
/* 809CFD7C  38 A5 32 A4 */	addi r5, r5, __dt__4cXyzFv@l /* 0x809D32A4@l */
/* 809CFD80  38 C0 00 0C */	li r6, 0xc
/* 809CFD84  38 E0 00 04 */	li r7, 4
/* 809CFD88  4B 99 1F D9 */	bl __construct_array
/* 809CFD8C  38 7E 00 34 */	addi r3, r30, 0x34
/* 809CFD90  3C 80 80 9D */	lis r4, __ct__5csXyzFv@ha /* 0x809D32A0@ha */
/* 809CFD94  38 84 32 A0 */	addi r4, r4, __ct__5csXyzFv@l /* 0x809D32A0@l */
/* 809CFD98  3C A0 80 9D */	lis r5, __dt__5csXyzFv@ha /* 0x809D3264@ha */
/* 809CFD9C  38 A5 32 64 */	addi r5, r5, __dt__5csXyzFv@l /* 0x809D3264@l */
/* 809CFDA0  38 C0 00 06 */	li r6, 6
/* 809CFDA4  38 E0 00 04 */	li r7, 4
/* 809CFDA8  4B 99 1F B9 */	bl __construct_array
/* 809CFDAC  38 7E 00 4C */	addi r3, r30, 0x4c
/* 809CFDB0  3C 80 80 9D */	lis r4, __ct__5csXyzFv@ha /* 0x809D32A0@ha */
/* 809CFDB4  38 84 32 A0 */	addi r4, r4, __ct__5csXyzFv@l /* 0x809D32A0@l */
/* 809CFDB8  3C A0 80 9D */	lis r5, __dt__5csXyzFv@ha /* 0x809D3264@ha */
/* 809CFDBC  38 A5 32 64 */	addi r5, r5, __dt__5csXyzFv@l /* 0x809D3264@l */
/* 809CFDC0  38 C0 00 06 */	li r6, 6
/* 809CFDC4  38 E0 00 04 */	li r7, 4
/* 809CFDC8  4B 99 1F 99 */	bl __construct_array
/* 809CFDCC  38 7E 00 64 */	addi r3, r30, 0x64
/* 809CFDD0  3C 80 80 9D */	lis r4, __ct__5csXyzFv@ha /* 0x809D32A0@ha */
/* 809CFDD4  38 84 32 A0 */	addi r4, r4, __ct__5csXyzFv@l /* 0x809D32A0@l */
/* 809CFDD8  3C A0 80 9D */	lis r5, __dt__5csXyzFv@ha /* 0x809D3264@ha */
/* 809CFDDC  38 A5 32 64 */	addi r5, r5, __dt__5csXyzFv@l /* 0x809D3264@l */
/* 809CFDE0  38 C0 00 06 */	li r6, 6
/* 809CFDE4  38 E0 00 04 */	li r7, 4
/* 809CFDE8  4B 99 1F 79 */	bl __construct_array
/* 809CFDEC  38 7E 00 7C */	addi r3, r30, 0x7c
/* 809CFDF0  3C 80 80 9D */	lis r4, __ct__5csXyzFv@ha /* 0x809D32A0@ha */
/* 809CFDF4  38 84 32 A0 */	addi r4, r4, __ct__5csXyzFv@l /* 0x809D32A0@l */
/* 809CFDF8  3C A0 80 9D */	lis r5, __dt__5csXyzFv@ha /* 0x809D3264@ha */
/* 809CFDFC  38 A5 32 64 */	addi r5, r5, __dt__5csXyzFv@l /* 0x809D3264@l */
/* 809CFE00  38 C0 00 06 */	li r6, 6
/* 809CFE04  38 E0 00 04 */	li r7, 4
/* 809CFE08  4B 99 1F 59 */	bl __construct_array
/* 809CFE0C  7F C3 F3 78 */	mr r3, r30
/* 809CFE10  4B 78 12 29 */	bl initialize__15daNpcF_Lookat_cFv
/* 809CFE14  38 7F 0C 78 */	addi r3, r31, 0xc78
/* 809CFE18  3C 80 80 9D */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha /* 0x809D3158@ha */
/* 809CFE1C  38 84 31 58 */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l /* 0x809D3158@l */
/* 809CFE20  3C A0 80 9D */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x809D3110@ha */
/* 809CFE24  38 A5 31 10 */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l /* 0x809D3110@l */
/* 809CFE28  38 C0 00 08 */	li r6, 8
/* 809CFE2C  38 E0 00 03 */	li r7, 3
/* 809CFE30  4B 99 1F 31 */	bl __construct_array
/* 809CFE34  3B DF 0C 94 */	addi r30, r31, 0xc94
/* 809CFE38  7F C3 F3 78 */	mr r3, r30
/* 809CFE3C  4B 6B 3B ED */	bl __ct__12dCcD_GObjInfFv
/* 809CFE40  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 809CFE44  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 809CFE48  90 1E 01 20 */	stw r0, 0x120(r30)
/* 809CFE4C  3C 60 80 9D */	lis r3, __vt__8cM3dGAab@ha /* 0x809D3E84@ha */
/* 809CFE50  38 03 3E 84 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x809D3E84@l */
/* 809CFE54  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 809CFE58  3C 60 80 9D */	lis r3, __vt__8cM3dGCyl@ha /* 0x809D3E78@ha */
/* 809CFE5C  38 03 3E 78 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x809D3E78@l */
/* 809CFE60  90 1E 01 38 */	stw r0, 0x138(r30)
/* 809CFE64  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 809CFE68  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 809CFE6C  90 7E 01 20 */	stw r3, 0x120(r30)
/* 809CFE70  38 03 00 58 */	addi r0, r3, 0x58
/* 809CFE74  90 1E 01 38 */	stw r0, 0x138(r30)
/* 809CFE78  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 809CFE7C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 809CFE80  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 809CFE84  38 03 00 2C */	addi r0, r3, 0x2c
/* 809CFE88  90 1E 01 20 */	stw r0, 0x120(r30)
/* 809CFE8C  38 03 00 84 */	addi r0, r3, 0x84
/* 809CFE90  90 1E 01 38 */	stw r0, 0x138(r30)
/* 809CFE94  7F E3 FB 78 */	mr r3, r31
/* 809CFE98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809CFE9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809CFEA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CFEA4  7C 08 03 A6 */	mtlr r0
/* 809CFEA8  38 21 00 10 */	addi r1, r1, 0x10
/* 809CFEAC  4E 80 00 20 */	blr 
