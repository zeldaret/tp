lbl_80968B80:
/* 80968B80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80968B84  7C 08 02 A6 */	mflr r0
/* 80968B88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80968B8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80968B90  93 C1 00 08 */	stw r30, 8(r1)
/* 80968B94  7C 7E 1B 79 */	or. r30, r3, r3
/* 80968B98  7C 9F 23 78 */	mr r31, r4
/* 80968B9C  41 82 01 8C */	beq lbl_80968D28
/* 80968BA0  3C 60 80 97 */	lis r3, __vt__13daNpcBlueNS_c@ha /* 0x8096CDA8@ha */
/* 80968BA4  38 03 CD A8 */	addi r0, r3, __vt__13daNpcBlueNS_c@l /* 0x8096CDA8@l */
/* 80968BA8  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80968BAC  3C 60 80 97 */	lis r3, l_arcNames@ha /* 0x8096CC2C@ha */
/* 80968BB0  38 83 CC 2C */	addi r4, r3, l_arcNames@l /* 0x8096CC2C@l */
/* 80968BB4  38 7E 0D D0 */	addi r3, r30, 0xdd0
/* 80968BB8  80 84 00 00 */	lwz r4, 0(r4)
/* 80968BBC  4B 6C 44 4D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80968BC0  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80968BC4  28 00 00 00 */	cmplwi r0, 0
/* 80968BC8  41 82 00 0C */	beq lbl_80968BD4
/* 80968BCC  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80968BD0  4B 6A 87 41 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80968BD4:
/* 80968BD4  34 1E 0C 84 */	addic. r0, r30, 0xc84
/* 80968BD8  41 82 00 84 */	beq lbl_80968C5C
/* 80968BDC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80968BE0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80968BE4  90 7E 0C C0 */	stw r3, 0xcc0(r30)
/* 80968BE8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80968BEC  90 1E 0D A4 */	stw r0, 0xda4(r30)
/* 80968BF0  38 03 00 84 */	addi r0, r3, 0x84
/* 80968BF4  90 1E 0D BC */	stw r0, 0xdbc(r30)
/* 80968BF8  34 1E 0D 88 */	addic. r0, r30, 0xd88
/* 80968BFC  41 82 00 54 */	beq lbl_80968C50
/* 80968C00  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80968C04  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80968C08  90 7E 0D A4 */	stw r3, 0xda4(r30)
/* 80968C0C  38 03 00 58 */	addi r0, r3, 0x58
/* 80968C10  90 1E 0D BC */	stw r0, 0xdbc(r30)
/* 80968C14  34 1E 0D A8 */	addic. r0, r30, 0xda8
/* 80968C18  41 82 00 10 */	beq lbl_80968C28
/* 80968C1C  3C 60 80 97 */	lis r3, __vt__8cM3dGCyl@ha /* 0x8096CE50@ha */
/* 80968C20  38 03 CE 50 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x8096CE50@l */
/* 80968C24  90 1E 0D BC */	stw r0, 0xdbc(r30)
lbl_80968C28:
/* 80968C28  34 1E 0D 88 */	addic. r0, r30, 0xd88
/* 80968C2C  41 82 00 24 */	beq lbl_80968C50
/* 80968C30  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80968C34  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80968C38  90 1E 0D A4 */	stw r0, 0xda4(r30)
/* 80968C3C  34 1E 0D 88 */	addic. r0, r30, 0xd88
/* 80968C40  41 82 00 10 */	beq lbl_80968C50
/* 80968C44  3C 60 80 97 */	lis r3, __vt__8cM3dGAab@ha /* 0x8096CE5C@ha */
/* 80968C48  38 03 CE 5C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8096CE5C@l */
/* 80968C4C  90 1E 0D A0 */	stw r0, 0xda0(r30)
lbl_80968C50:
/* 80968C50  38 7E 0C 84 */	addi r3, r30, 0xc84
/* 80968C54  38 80 00 00 */	li r4, 0
/* 80968C58  4B 71 B4 8D */	bl __dt__12dCcD_GObjInfFv
lbl_80968C5C:
/* 80968C5C  38 7E 0C 78 */	addi r3, r30, 0xc78
/* 80968C60  3C 80 80 97 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x8096BF90@ha */
/* 80968C64  38 84 BF 90 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l /* 0x8096BF90@l */
/* 80968C68  38 A0 00 08 */	li r5, 8
/* 80968C6C  38 C0 00 01 */	li r6, 1
/* 80968C70  4B 9F 90 79 */	bl __destroy_arr
/* 80968C74  34 1E 0B DC */	addic. r0, r30, 0xbdc
/* 80968C78  41 82 00 88 */	beq lbl_80968D00
/* 80968C7C  3C 60 80 97 */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x8096CE68@ha */
/* 80968C80  38 03 CE 68 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x8096CE68@l */
/* 80968C84  90 1E 0C 74 */	stw r0, 0xc74(r30)
/* 80968C88  38 7E 0C 58 */	addi r3, r30, 0xc58
/* 80968C8C  3C 80 80 97 */	lis r4, __dt__5csXyzFv@ha /* 0x8096C0E4@ha */
/* 80968C90  38 84 C0 E4 */	addi r4, r4, __dt__5csXyzFv@l /* 0x8096C0E4@l */
/* 80968C94  38 A0 00 06 */	li r5, 6
/* 80968C98  38 C0 00 04 */	li r6, 4
/* 80968C9C  4B 9F 90 4D */	bl __destroy_arr
/* 80968CA0  38 7E 0C 40 */	addi r3, r30, 0xc40
/* 80968CA4  3C 80 80 97 */	lis r4, __dt__5csXyzFv@ha /* 0x8096C0E4@ha */
/* 80968CA8  38 84 C0 E4 */	addi r4, r4, __dt__5csXyzFv@l /* 0x8096C0E4@l */
/* 80968CAC  38 A0 00 06 */	li r5, 6
/* 80968CB0  38 C0 00 04 */	li r6, 4
/* 80968CB4  4B 9F 90 35 */	bl __destroy_arr
/* 80968CB8  38 7E 0C 28 */	addi r3, r30, 0xc28
/* 80968CBC  3C 80 80 97 */	lis r4, __dt__5csXyzFv@ha /* 0x8096C0E4@ha */
/* 80968CC0  38 84 C0 E4 */	addi r4, r4, __dt__5csXyzFv@l /* 0x8096C0E4@l */
/* 80968CC4  38 A0 00 06 */	li r5, 6
/* 80968CC8  38 C0 00 04 */	li r6, 4
/* 80968CCC  4B 9F 90 1D */	bl __destroy_arr
/* 80968CD0  38 7E 0C 10 */	addi r3, r30, 0xc10
/* 80968CD4  3C 80 80 97 */	lis r4, __dt__5csXyzFv@ha /* 0x8096C0E4@ha */
/* 80968CD8  38 84 C0 E4 */	addi r4, r4, __dt__5csXyzFv@l /* 0x8096C0E4@l */
/* 80968CDC  38 A0 00 06 */	li r5, 6
/* 80968CE0  38 C0 00 04 */	li r6, 4
/* 80968CE4  4B 9F 90 05 */	bl __destroy_arr
/* 80968CE8  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 80968CEC  3C 80 80 97 */	lis r4, __dt__4cXyzFv@ha /* 0x8096C124@ha */
/* 80968CF0  38 84 C1 24 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8096C124@l */
/* 80968CF4  38 A0 00 0C */	li r5, 0xc
/* 80968CF8  38 C0 00 04 */	li r6, 4
/* 80968CFC  4B 9F 8F ED */	bl __destroy_arr
lbl_80968D00:
/* 80968D00  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 80968D04  38 80 FF FF */	li r4, -1
/* 80968D08  4B 95 77 19 */	bl __dt__10Z2CreatureFv
/* 80968D0C  7F C3 F3 78 */	mr r3, r30
/* 80968D10  38 80 00 00 */	li r4, 0
/* 80968D14  48 00 34 51 */	bl __dt__8daNpcF_cFv
/* 80968D18  7F E0 07 35 */	extsh. r0, r31
/* 80968D1C  40 81 00 0C */	ble lbl_80968D28
/* 80968D20  7F C3 F3 78 */	mr r3, r30
/* 80968D24  4B 96 60 19 */	bl __dl__FPv
lbl_80968D28:
/* 80968D28  7F C3 F3 78 */	mr r3, r30
/* 80968D2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80968D30  83 C1 00 08 */	lwz r30, 8(r1)
/* 80968D34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80968D38  7C 08 03 A6 */	mtlr r0
/* 80968D3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80968D40  4E 80 00 20 */	blr 
