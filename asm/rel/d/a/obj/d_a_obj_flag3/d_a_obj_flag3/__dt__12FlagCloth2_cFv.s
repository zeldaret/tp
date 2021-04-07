lbl_80BEF790:
/* 80BEF790  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEF794  7C 08 02 A6 */	mflr r0
/* 80BEF798  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEF79C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BEF7A0  93 C1 00 08 */	stw r30, 8(r1)
/* 80BEF7A4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BEF7A8  7C 9F 23 78 */	mr r31, r4
/* 80BEF7AC  41 82 01 74 */	beq lbl_80BEF920
/* 80BEF7B0  3C 60 80 BF */	lis r3, __vt__12FlagCloth2_c@ha /* 0x80BF060C@ha */
/* 80BEF7B4  38 03 06 0C */	addi r0, r3, __vt__12FlagCloth2_c@l /* 0x80BF060C@l */
/* 80BEF7B8  90 1E 00 00 */	stw r0, 0(r30)
/* 80BEF7BC  38 7E 0B A0 */	addi r3, r30, 0xba0
/* 80BEF7C0  3C 80 80 BF */	lis r4, __dt__4cXyzFv@ha /* 0x80BEEDA8@ha */
/* 80BEF7C4  38 84 ED A8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80BEEDA8@l */
/* 80BEF7C8  38 A0 00 0C */	li r5, 0xc
/* 80BEF7CC  38 C0 00 24 */	li r6, 0x24
/* 80BEF7D0  4B 77 25 19 */	bl __destroy_arr
/* 80BEF7D4  38 7E 08 C0 */	addi r3, r30, 0x8c0
/* 80BEF7D8  3C 80 80 BF */	lis r4, __dt__4cXyzFv@ha /* 0x80BEEDA8@ha */
/* 80BEF7DC  38 84 ED A8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80BEEDA8@l */
/* 80BEF7E0  38 A0 00 0C */	li r5, 0xc
/* 80BEF7E4  38 C0 00 24 */	li r6, 0x24
/* 80BEF7E8  4B 77 25 01 */	bl __destroy_arr
/* 80BEF7EC  38 7E 07 00 */	addi r3, r30, 0x700
/* 80BEF7F0  3C 80 80 BF */	lis r4, __dt__4cXyzFv@ha /* 0x80BEEDA8@ha */
/* 80BEF7F4  38 84 ED A8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80BEEDA8@l */
/* 80BEF7F8  38 A0 00 0C */	li r5, 0xc
/* 80BEF7FC  38 C0 00 24 */	li r6, 0x24
/* 80BEF800  4B 77 24 E9 */	bl __destroy_arr
/* 80BEF804  38 7E 05 40 */	addi r3, r30, 0x540
/* 80BEF808  3C 80 80 BF */	lis r4, __dt__4cXyzFv@ha /* 0x80BEEDA8@ha */
/* 80BEF80C  38 84 ED A8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80BEEDA8@l */
/* 80BEF810  38 A0 00 0C */	li r5, 0xc
/* 80BEF814  38 C0 00 24 */	li r6, 0x24
/* 80BEF818  4B 77 24 D1 */	bl __destroy_arr
/* 80BEF81C  34 1E 03 F4 */	addic. r0, r30, 0x3f4
/* 80BEF820  41 82 00 84 */	beq lbl_80BEF8A4
/* 80BEF824  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80BEF828  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80BEF82C  90 7E 04 30 */	stw r3, 0x430(r30)
/* 80BEF830  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BEF834  90 1E 05 14 */	stw r0, 0x514(r30)
/* 80BEF838  38 03 00 84 */	addi r0, r3, 0x84
/* 80BEF83C  90 1E 05 28 */	stw r0, 0x528(r30)
/* 80BEF840  34 1E 04 F8 */	addic. r0, r30, 0x4f8
/* 80BEF844  41 82 00 54 */	beq lbl_80BEF898
/* 80BEF848  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80BEF84C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80BEF850  90 7E 05 14 */	stw r3, 0x514(r30)
/* 80BEF854  38 03 00 58 */	addi r0, r3, 0x58
/* 80BEF858  90 1E 05 28 */	stw r0, 0x528(r30)
/* 80BEF85C  34 1E 05 18 */	addic. r0, r30, 0x518
/* 80BEF860  41 82 00 10 */	beq lbl_80BEF870
/* 80BEF864  3C 60 80 BF */	lis r3, __vt__8cM3dGSph@ha /* 0x80BF0600@ha */
/* 80BEF868  38 03 06 00 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80BF0600@l */
/* 80BEF86C  90 1E 05 28 */	stw r0, 0x528(r30)
lbl_80BEF870:
/* 80BEF870  34 1E 04 F8 */	addic. r0, r30, 0x4f8
/* 80BEF874  41 82 00 24 */	beq lbl_80BEF898
/* 80BEF878  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80BEF87C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80BEF880  90 1E 05 14 */	stw r0, 0x514(r30)
/* 80BEF884  34 1E 04 F8 */	addic. r0, r30, 0x4f8
/* 80BEF888  41 82 00 10 */	beq lbl_80BEF898
/* 80BEF88C  3C 60 80 BF */	lis r3, __vt__8cM3dGAab@ha /* 0x80BF05F4@ha */
/* 80BEF890  38 03 05 F4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80BF05F4@l */
/* 80BEF894  90 1E 05 10 */	stw r0, 0x510(r30)
lbl_80BEF898:
/* 80BEF898  38 7E 03 F4 */	addi r3, r30, 0x3f4
/* 80BEF89C  38 80 00 00 */	li r4, 0
/* 80BEF8A0  4B 49 48 45 */	bl __dt__12dCcD_GObjInfFv
lbl_80BEF8A4:
/* 80BEF8A4  34 1E 03 B8 */	addic. r0, r30, 0x3b8
/* 80BEF8A8  41 82 00 54 */	beq lbl_80BEF8FC
/* 80BEF8AC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80BEF8B0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80BEF8B4  90 7E 03 D0 */	stw r3, 0x3d0(r30)
/* 80BEF8B8  38 03 00 20 */	addi r0, r3, 0x20
/* 80BEF8BC  90 1E 03 D4 */	stw r0, 0x3d4(r30)
/* 80BEF8C0  34 1E 03 D4 */	addic. r0, r30, 0x3d4
/* 80BEF8C4  41 82 00 24 */	beq lbl_80BEF8E8
/* 80BEF8C8  3C 60 80 BF */	lis r3, __vt__10dCcD_GStts@ha /* 0x80BF05E8@ha */
/* 80BEF8CC  38 03 05 E8 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80BF05E8@l */
/* 80BEF8D0  90 1E 03 D4 */	stw r0, 0x3d4(r30)
/* 80BEF8D4  34 1E 03 D4 */	addic. r0, r30, 0x3d4
/* 80BEF8D8  41 82 00 10 */	beq lbl_80BEF8E8
/* 80BEF8DC  3C 60 80 BF */	lis r3, __vt__10cCcD_GStts@ha /* 0x80BF05DC@ha */
/* 80BEF8E0  38 03 05 DC */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80BF05DC@l */
/* 80BEF8E4  90 1E 03 D4 */	stw r0, 0x3d4(r30)
lbl_80BEF8E8:
/* 80BEF8E8  34 1E 03 B8 */	addic. r0, r30, 0x3b8
/* 80BEF8EC  41 82 00 10 */	beq lbl_80BEF8FC
/* 80BEF8F0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80BEF8F4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80BEF8F8  90 1E 03 D0 */	stw r0, 0x3d0(r30)
lbl_80BEF8FC:
/* 80BEF8FC  28 1E 00 00 */	cmplwi r30, 0
/* 80BEF900  41 82 00 10 */	beq lbl_80BEF910
/* 80BEF904  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha /* 0x803CD97C@ha */
/* 80BEF908  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l /* 0x803CD97C@l */
/* 80BEF90C  90 1E 00 00 */	stw r0, 0(r30)
lbl_80BEF910:
/* 80BEF910  7F E0 07 35 */	extsh. r0, r31
/* 80BEF914  40 81 00 0C */	ble lbl_80BEF920
/* 80BEF918  7F C3 F3 78 */	mr r3, r30
/* 80BEF91C  4B 6D F4 21 */	bl __dl__FPv
lbl_80BEF920:
/* 80BEF920  7F C3 F3 78 */	mr r3, r30
/* 80BEF924  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BEF928  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BEF92C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEF930  7C 08 03 A6 */	mtlr r0
/* 80BEF934  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEF938  4E 80 00 20 */	blr 
