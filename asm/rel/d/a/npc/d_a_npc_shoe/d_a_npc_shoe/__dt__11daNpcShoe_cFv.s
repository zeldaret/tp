lbl_80AE7B60:
/* 80AE7B60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AE7B64  7C 08 02 A6 */	mflr r0
/* 80AE7B68  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AE7B6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80AE7B70  4B 87 A6 61 */	bl _savegpr_26
/* 80AE7B74  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AE7B78  7C 9F 23 78 */	mr r31, r4
/* 80AE7B7C  41 82 01 B0 */	beq lbl_80AE7D2C
/* 80AE7B80  3C 60 80 AF */	lis r3, __vt__11daNpcShoe_c@ha /* 0x80AEA658@ha */
/* 80AE7B84  38 03 A6 58 */	addi r0, r3, __vt__11daNpcShoe_c@l /* 0x80AEA658@l */
/* 80AE7B88  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80AE7B8C  3B 40 00 00 */	li r26, 0
/* 80AE7B90  3B A0 00 00 */	li r29, 0
/* 80AE7B94  3B 80 00 00 */	li r28, 0
/* 80AE7B98  3C 60 80 AF */	lis r3, l_arcNames@ha /* 0x80AEA5A0@ha */
/* 80AE7B9C  3B 63 A5 A0 */	addi r27, r3, l_arcNames@l /* 0x80AEA5A0@l */
lbl_80AE7BA0:
/* 80AE7BA0  38 7C 0D E8 */	addi r3, r28, 0xde8
/* 80AE7BA4  7C 7E 1A 14 */	add r3, r30, r3
/* 80AE7BA8  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80AE7BAC  4B 54 54 5D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80AE7BB0  3B 5A 00 01 */	addi r26, r26, 1
/* 80AE7BB4  2C 1A 00 03 */	cmpwi r26, 3
/* 80AE7BB8  3B BD 00 04 */	addi r29, r29, 4
/* 80AE7BBC  3B 9C 00 08 */	addi r28, r28, 8
/* 80AE7BC0  41 80 FF E0 */	blt lbl_80AE7BA0
/* 80AE7BC4  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80AE7BC8  28 00 00 00 */	cmplwi r0, 0
/* 80AE7BCC  41 82 00 0C */	beq lbl_80AE7BD8
/* 80AE7BD0  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80AE7BD4  4B 52 97 3D */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80AE7BD8:
/* 80AE7BD8  34 1E 0C A0 */	addic. r0, r30, 0xca0
/* 80AE7BDC  41 82 00 84 */	beq lbl_80AE7C60
/* 80AE7BE0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80AE7BE4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80AE7BE8  90 7E 0C DC */	stw r3, 0xcdc(r30)
/* 80AE7BEC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80AE7BF0  90 1E 0D C0 */	stw r0, 0xdc0(r30)
/* 80AE7BF4  38 03 00 84 */	addi r0, r3, 0x84
/* 80AE7BF8  90 1E 0D D8 */	stw r0, 0xdd8(r30)
/* 80AE7BFC  34 1E 0D A4 */	addic. r0, r30, 0xda4
/* 80AE7C00  41 82 00 54 */	beq lbl_80AE7C54
/* 80AE7C04  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80AE7C08  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80AE7C0C  90 7E 0D C0 */	stw r3, 0xdc0(r30)
/* 80AE7C10  38 03 00 58 */	addi r0, r3, 0x58
/* 80AE7C14  90 1E 0D D8 */	stw r0, 0xdd8(r30)
/* 80AE7C18  34 1E 0D C4 */	addic. r0, r30, 0xdc4
/* 80AE7C1C  41 82 00 10 */	beq lbl_80AE7C2C
/* 80AE7C20  3C 60 80 AF */	lis r3, __vt__8cM3dGCyl@ha /* 0x80AEA700@ha */
/* 80AE7C24  38 03 A7 00 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80AEA700@l */
/* 80AE7C28  90 1E 0D D8 */	stw r0, 0xdd8(r30)
lbl_80AE7C2C:
/* 80AE7C2C  34 1E 0D A4 */	addic. r0, r30, 0xda4
/* 80AE7C30  41 82 00 24 */	beq lbl_80AE7C54
/* 80AE7C34  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80AE7C38  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80AE7C3C  90 1E 0D C0 */	stw r0, 0xdc0(r30)
/* 80AE7C40  34 1E 0D A4 */	addic. r0, r30, 0xda4
/* 80AE7C44  41 82 00 10 */	beq lbl_80AE7C54
/* 80AE7C48  3C 60 80 AF */	lis r3, __vt__8cM3dGAab@ha /* 0x80AEA70C@ha */
/* 80AE7C4C  38 03 A7 0C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80AEA70C@l */
/* 80AE7C50  90 1E 0D BC */	stw r0, 0xdbc(r30)
lbl_80AE7C54:
/* 80AE7C54  38 7E 0C A0 */	addi r3, r30, 0xca0
/* 80AE7C58  38 80 00 00 */	li r4, 0
/* 80AE7C5C  4B 59 C4 89 */	bl __dt__12dCcD_GObjInfFv
lbl_80AE7C60:
/* 80AE7C60  38 7E 0C 94 */	addi r3, r30, 0xc94
/* 80AE7C64  3C 80 80 AF */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80AE9AD8@ha */
/* 80AE7C68  38 84 9A D8 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80AE9AD8@l */
/* 80AE7C6C  38 A0 00 08 */	li r5, 8
/* 80AE7C70  38 C0 00 01 */	li r6, 1
/* 80AE7C74  4B 87 A0 75 */	bl __destroy_arr
/* 80AE7C78  34 1E 0B F8 */	addic. r0, r30, 0xbf8
/* 80AE7C7C  41 82 00 88 */	beq lbl_80AE7D04
/* 80AE7C80  3C 60 80 AF */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x80AEA718@ha */
/* 80AE7C84  38 03 A7 18 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x80AEA718@l */
/* 80AE7C88  90 1E 0C 90 */	stw r0, 0xc90(r30)
/* 80AE7C8C  38 7E 0C 74 */	addi r3, r30, 0xc74
/* 80AE7C90  3C 80 80 AF */	lis r4, __dt__5csXyzFv@ha /* 0x80AE9C2C@ha */
/* 80AE7C94  38 84 9C 2C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AE9C2C@l */
/* 80AE7C98  38 A0 00 06 */	li r5, 6
/* 80AE7C9C  38 C0 00 04 */	li r6, 4
/* 80AE7CA0  4B 87 A0 49 */	bl __destroy_arr
/* 80AE7CA4  38 7E 0C 5C */	addi r3, r30, 0xc5c
/* 80AE7CA8  3C 80 80 AF */	lis r4, __dt__5csXyzFv@ha /* 0x80AE9C2C@ha */
/* 80AE7CAC  38 84 9C 2C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AE9C2C@l */
/* 80AE7CB0  38 A0 00 06 */	li r5, 6
/* 80AE7CB4  38 C0 00 04 */	li r6, 4
/* 80AE7CB8  4B 87 A0 31 */	bl __destroy_arr
/* 80AE7CBC  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80AE7CC0  3C 80 80 AF */	lis r4, __dt__5csXyzFv@ha /* 0x80AE9C2C@ha */
/* 80AE7CC4  38 84 9C 2C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AE9C2C@l */
/* 80AE7CC8  38 A0 00 06 */	li r5, 6
/* 80AE7CCC  38 C0 00 04 */	li r6, 4
/* 80AE7CD0  4B 87 A0 19 */	bl __destroy_arr
/* 80AE7CD4  38 7E 0C 2C */	addi r3, r30, 0xc2c
/* 80AE7CD8  3C 80 80 AF */	lis r4, __dt__5csXyzFv@ha /* 0x80AE9C2C@ha */
/* 80AE7CDC  38 84 9C 2C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AE9C2C@l */
/* 80AE7CE0  38 A0 00 06 */	li r5, 6
/* 80AE7CE4  38 C0 00 04 */	li r6, 4
/* 80AE7CE8  4B 87 A0 01 */	bl __destroy_arr
/* 80AE7CEC  38 7E 0B F8 */	addi r3, r30, 0xbf8
/* 80AE7CF0  3C 80 80 AF */	lis r4, __dt__4cXyzFv@ha /* 0x80AE9C6C@ha */
/* 80AE7CF4  38 84 9C 6C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AE9C6C@l */
/* 80AE7CF8  38 A0 00 0C */	li r5, 0xc
/* 80AE7CFC  38 C0 00 04 */	li r6, 4
/* 80AE7D00  4B 87 9F E9 */	bl __destroy_arr
lbl_80AE7D04:
/* 80AE7D04  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80AE7D08  38 80 FF FF */	li r4, -1
/* 80AE7D0C  4B 7D 8F 61 */	bl __dt__17Z2CreatureCitizenFv
/* 80AE7D10  7F C3 F3 78 */	mr r3, r30
/* 80AE7D14  38 80 00 00 */	li r4, 0
/* 80AE7D18  48 00 1F 95 */	bl __dt__8daNpcF_cFv
/* 80AE7D1C  7F E0 07 35 */	extsh. r0, r31
/* 80AE7D20  40 81 00 0C */	ble lbl_80AE7D2C
/* 80AE7D24  7F C3 F3 78 */	mr r3, r30
/* 80AE7D28  4B 7E 70 15 */	bl __dl__FPv
lbl_80AE7D2C:
/* 80AE7D2C  7F C3 F3 78 */	mr r3, r30
/* 80AE7D30  39 61 00 20 */	addi r11, r1, 0x20
/* 80AE7D34  4B 87 A4 E9 */	bl _restgpr_26
/* 80AE7D38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AE7D3C  7C 08 03 A6 */	mtlr r0
/* 80AE7D40  38 21 00 20 */	addi r1, r1, 0x20
/* 80AE7D44  4E 80 00 20 */	blr 
