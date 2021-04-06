lbl_803317D4:
/* 803317D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803317D8  7C 08 02 A6 */	mflr r0
/* 803317DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803317E0  39 61 00 20 */	addi r11, r1, 0x20
/* 803317E4  48 03 09 F5 */	bl _savegpr_28
/* 803317E8  7C 7C 1B 78 */	mr r28, r3
/* 803317EC  7C 9D 23 79 */	or. r29, r4, r4
/* 803317F0  7C BE 2B 78 */	mr r30, r5
/* 803317F4  40 82 01 40 */	bne lbl_80331934
/* 803317F8  38 60 00 4C */	li r3, 0x4c
/* 803317FC  4B F9 D4 51 */	bl __nw__FUl
/* 80331800  7C 7D 1B 79 */	or. r29, r3, r3
/* 80331804  41 82 00 40 */	beq lbl_80331844
/* 80331808  3C 80 80 3D */	lis r4, __vt__11J3DMaterial@ha /* 0x803CDCF0@ha */
/* 8033180C  38 04 DC F0 */	addi r0, r4, __vt__11J3DMaterial@l /* 0x803CDCF0@l */
/* 80331810  90 1D 00 00 */	stw r0, 0(r29)
/* 80331814  3C 80 3C F4 */	lis r4, 0x3CF4 /* 0x3CF3CF00@ha */
/* 80331818  38 04 CF 00 */	addi r0, r4, 0xCF00 /* 0x3CF3CF00@l */
/* 8033181C  90 1D 00 40 */	stw r0, 0x40(r29)
/* 80331820  3C 80 00 F4 */	lis r4, 0x00F4 /* 0x00F3CF3C@ha */
/* 80331824  38 04 CF 3C */	addi r0, r4, 0xCF3C /* 0x00F3CF3C@l */
/* 80331828  90 1D 00 44 */	stw r0, 0x44(r29)
/* 8033182C  4B FE 4A 15 */	bl initialize__11J3DMaterialFv
/* 80331830  3C 60 80 3D */	lis r3, __vt__17J3DLockedMaterial@ha /* 0x803CDC90@ha */
/* 80331834  38 03 DC 90 */	addi r0, r3, __vt__17J3DLockedMaterial@l /* 0x803CDC90@l */
/* 80331838  90 1D 00 00 */	stw r0, 0(r29)
/* 8033183C  7F A3 EB 78 */	mr r3, r29
/* 80331840  4B FE 58 05 */	bl initialize__17J3DLockedMaterialFv
lbl_80331844:
/* 80331844  38 60 00 04 */	li r3, 4
/* 80331848  4B F9 D4 05 */	bl __nw__FUl
/* 8033184C  28 03 00 00 */	cmplwi r3, 0
/* 80331850  41 82 00 1C */	beq lbl_8033186C
/* 80331854  3C 80 80 3D */	lis r4, __vt__13J3DColorBlock@ha /* 0x803CDEA0@ha */
/* 80331858  38 04 DE A0 */	addi r0, r4, __vt__13J3DColorBlock@l /* 0x803CDEA0@l */
/* 8033185C  90 03 00 00 */	stw r0, 0(r3)
/* 80331860  3C 80 80 3D */	lis r4, __vt__17J3DColorBlockNull@ha /* 0x803CF054@ha */
/* 80331864  38 04 F0 54 */	addi r0, r4, __vt__17J3DColorBlockNull@l /* 0x803CF054@l */
/* 80331868  90 03 00 00 */	stw r0, 0(r3)
lbl_8033186C:
/* 8033186C  90 7D 00 24 */	stw r3, 0x24(r29)
/* 80331870  38 60 00 04 */	li r3, 4
/* 80331874  4B F9 D3 D9 */	bl __nw__FUl
/* 80331878  28 03 00 00 */	cmplwi r3, 0
/* 8033187C  41 82 00 1C */	beq lbl_80331898
/* 80331880  3C 80 80 3D */	lis r4, __vt__14J3DTexGenBlock@ha /* 0x803CDE34@ha */
/* 80331884  38 04 DE 34 */	addi r0, r4, __vt__14J3DTexGenBlock@l /* 0x803CDE34@l */
/* 80331888  90 03 00 00 */	stw r0, 0(r3)
/* 8033188C  3C 80 80 3D */	lis r4, __vt__18J3DTexGenBlockNull@ha /* 0x803CEFE8@ha */
/* 80331890  38 04 EF E8 */	addi r0, r4, __vt__18J3DTexGenBlockNull@l /* 0x803CEFE8@l */
/* 80331894  90 03 00 00 */	stw r0, 0(r3)
lbl_80331898:
/* 80331898  90 7D 00 28 */	stw r3, 0x28(r29)
/* 8033189C  38 60 00 08 */	li r3, 8
/* 803318A0  4B F9 D3 AD */	bl __nw__FUl
/* 803318A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 803318A8  41 82 00 20 */	beq lbl_803318C8
/* 803318AC  3C 80 80 3D */	lis r4, __vt__11J3DTevBlock@ha /* 0x803CE958@ha */
/* 803318B0  38 04 E9 58 */	addi r0, r4, __vt__11J3DTevBlock@l /* 0x803CE958@l */
/* 803318B4  90 1F 00 00 */	stw r0, 0(r31)
/* 803318B8  3C 80 80 3D */	lis r4, __vt__15J3DTevBlockNull@ha /* 0x803CEF0C@ha */
/* 803318BC  38 04 EF 0C */	addi r0, r4, __vt__15J3DTevBlockNull@l /* 0x803CEF0C@l */
/* 803318C0  90 1F 00 00 */	stw r0, 0(r31)
/* 803318C4  4B FE 5E 11 */	bl initialize__15J3DTevBlockNullFv
lbl_803318C8:
/* 803318C8  93 FD 00 2C */	stw r31, 0x2c(r29)
/* 803318CC  38 60 00 04 */	li r3, 4
/* 803318D0  4B F9 D3 7D */	bl __nw__FUl
/* 803318D4  28 03 00 00 */	cmplwi r3, 0
/* 803318D8  41 82 00 1C */	beq lbl_803318F4
/* 803318DC  3C 80 80 3D */	lis r4, __vt__11J3DIndBlock@ha /* 0x803CDDE8@ha */
/* 803318E0  38 04 DD E8 */	addi r0, r4, __vt__11J3DIndBlock@l /* 0x803CDDE8@l */
/* 803318E4  90 03 00 00 */	stw r0, 0(r3)
/* 803318E8  3C 80 80 3D */	lis r4, __vt__15J3DIndBlockNull@ha /* 0x803CDD9C@ha */
/* 803318EC  38 04 DD 9C */	addi r0, r4, __vt__15J3DIndBlockNull@l /* 0x803CDD9C@l */
/* 803318F0  90 03 00 00 */	stw r0, 0(r3)
lbl_803318F4:
/* 803318F4  90 7D 00 30 */	stw r3, 0x30(r29)
/* 803318F8  38 60 00 04 */	li r3, 4
/* 803318FC  4B F9 D3 51 */	bl __nw__FUl
/* 80331900  28 03 00 00 */	cmplwi r3, 0
/* 80331904  41 82 00 1C */	beq lbl_80331920
/* 80331908  3C 80 80 3D */	lis r4, __vt__10J3DPEBlock@ha /* 0x803CDD20@ha */
/* 8033190C  38 04 DD 20 */	addi r0, r4, __vt__10J3DPEBlock@l /* 0x803CDD20@l */
/* 80331910  90 03 00 00 */	stw r0, 0(r3)
/* 80331914  3C 80 80 3D */	lis r4, __vt__14J3DPEBlockNull@ha /* 0x803CEE90@ha */
/* 80331918  38 04 EE 90 */	addi r0, r4, __vt__14J3DPEBlockNull@l /* 0x803CEE90@l */
/* 8033191C  90 03 00 00 */	stw r0, 0(r3)
lbl_80331920:
/* 80331920  90 7D 00 34 */	stw r3, 0x34(r29)
/* 80331924  B3 DD 00 14 */	sth r30, 0x14(r29)
/* 80331928  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 8033192C  7C 03 F0 AE */	lbzx r0, r3, r30
/* 80331930  90 1D 00 10 */	stw r0, 0x10(r29)
lbl_80331934:
/* 80331934  80 1C 00 80 */	lwz r0, 0x80(r28)
/* 80331938  57 DF 18 38 */	slwi r31, r30, 3
/* 8033193C  7C 60 FA 14 */	add r3, r0, r31
/* 80331940  80 03 00 00 */	lwz r0, 0(r3)
/* 80331944  90 1D 00 40 */	stw r0, 0x40(r29)
/* 80331948  80 03 00 04 */	lwz r0, 4(r3)
/* 8033194C  90 1D 00 44 */	stw r0, 0x44(r29)
/* 80331950  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 80331954  80 9C 00 7C */	lwz r4, 0x7c(r28)
/* 80331958  57 DE 20 36 */	slwi r30, r30, 4
/* 8033195C  7C 84 F2 2E */	lhzx r4, r4, r30
/* 80331960  81 83 00 00 */	lwz r12, 0(r3)
/* 80331964  81 8C 00 84 */	lwz r12, 0x84(r12)
/* 80331968  7D 89 03 A6 */	mtctr r12
/* 8033196C  4E 80 04 21 */	bctrl 
/* 80331970  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 80331974  80 1C 00 7C */	lwz r0, 0x7c(r28)
/* 80331978  7C 80 F2 14 */	add r4, r0, r30
/* 8033197C  A0 84 00 02 */	lhz r4, 2(r4)
/* 80331980  81 83 00 00 */	lwz r12, 0(r3)
/* 80331984  81 8C 00 88 */	lwz r12, 0x88(r12)
/* 80331988  7D 89 03 A6 */	mtctr r12
/* 8033198C  4E 80 04 21 */	bctrl 
/* 80331990  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 80331994  80 1C 00 7C */	lwz r0, 0x7c(r28)
/* 80331998  7C 80 F2 14 */	add r4, r0, r30
/* 8033199C  A0 84 00 04 */	lhz r4, 4(r4)
/* 803319A0  81 83 00 00 */	lwz r12, 0(r3)
/* 803319A4  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 803319A8  7D 89 03 A6 */	mtctr r12
/* 803319AC  4E 80 04 21 */	bctrl 
/* 803319B0  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 803319B4  80 1C 00 7C */	lwz r0, 0x7c(r28)
/* 803319B8  7C 80 F2 14 */	add r4, r0, r30
/* 803319BC  A0 84 00 06 */	lhz r4, 6(r4)
/* 803319C0  81 83 00 00 */	lwz r12, 0(r3)
/* 803319C4  81 8C 00 D0 */	lwz r12, 0xd0(r12)
/* 803319C8  7D 89 03 A6 */	mtctr r12
/* 803319CC  4E 80 04 21 */	bctrl 
/* 803319D0  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 803319D4  80 1C 00 7C */	lwz r0, 0x7c(r28)
/* 803319D8  7C 80 F2 14 */	add r4, r0, r30
/* 803319DC  A0 84 00 08 */	lhz r4, 8(r4)
/* 803319E0  81 83 00 00 */	lwz r12, 0(r3)
/* 803319E4  81 8C 00 D4 */	lwz r12, 0xd4(r12)
/* 803319E8  7D 89 03 A6 */	mtctr r12
/* 803319EC  4E 80 04 21 */	bctrl 
/* 803319F0  80 7D 00 34 */	lwz r3, 0x34(r29)
/* 803319F4  80 1C 00 7C */	lwz r0, 0x7c(r28)
/* 803319F8  7C 80 F2 14 */	add r4, r0, r30
/* 803319FC  A0 84 00 0A */	lhz r4, 0xa(r4)
/* 80331A00  81 83 00 00 */	lwz r12, 0(r3)
/* 80331A04  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 80331A08  7D 89 03 A6 */	mtctr r12
/* 80331A0C  4E 80 04 21 */	bctrl 
/* 80331A10  80 1D 00 48 */	lwz r0, 0x48(r29)
/* 80331A14  28 00 00 00 */	cmplwi r0, 0
/* 80331A18  40 82 00 48 */	bne lbl_80331A60
/* 80331A1C  38 60 00 10 */	li r3, 0x10
/* 80331A20  4B F9 D2 2D */	bl __nw__FUl
/* 80331A24  28 03 00 00 */	cmplwi r3, 0
/* 80331A28  41 82 00 18 */	beq lbl_80331A40
/* 80331A2C  38 00 00 00 */	li r0, 0
/* 80331A30  90 03 00 00 */	stw r0, 0(r3)
/* 80331A34  90 03 00 04 */	stw r0, 4(r3)
/* 80331A38  90 03 00 08 */	stw r0, 8(r3)
/* 80331A3C  90 03 00 0C */	stw r0, 0xc(r3)
lbl_80331A40:
/* 80331A40  90 7D 00 48 */	stw r3, 0x48(r29)
/* 80331A44  80 1C 00 78 */	lwz r0, 0x78(r28)
/* 80331A48  80 7D 00 48 */	lwz r3, 0x48(r29)
/* 80331A4C  7C A0 FA 14 */	add r5, r0, r31
/* 80331A50  80 05 00 00 */	lwz r0, 0(r5)
/* 80331A54  7C 80 2A 14 */	add r4, r0, r5
/* 80331A58  80 A5 00 04 */	lwz r5, 4(r5)
/* 80331A5C  4B FE 0B 89 */	bl setSingleDisplayList__17J3DDisplayListObjFPvUl
lbl_80331A60:
/* 80331A60  7F A3 EB 78 */	mr r3, r29
/* 80331A64  39 61 00 20 */	addi r11, r1, 0x20
/* 80331A68  48 03 07 BD */	bl _restgpr_28
/* 80331A6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80331A70  7C 08 03 A6 */	mtlr r0
/* 80331A74  38 21 00 20 */	addi r1, r1, 0x20
/* 80331A78  4E 80 00 20 */	blr 
