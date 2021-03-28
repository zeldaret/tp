lbl_80A07C00:
/* 80A07C00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A07C04  7C 08 02 A6 */	mflr r0
/* 80A07C08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A07C0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A07C10  93 C1 00 08 */	stw r30, 8(r1)
/* 80A07C14  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A07C18  7C 9F 23 78 */	mr r31, r4
/* 80A07C1C  41 82 01 8C */	beq lbl_80A07DA8
/* 80A07C20  3C 60 80 A1 */	lis r3, __vt__12daNpcImpal_c@ha
/* 80A07C24  38 03 C8 14 */	addi r0, r3, __vt__12daNpcImpal_c@l
/* 80A07C28  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80A07C2C  3C 60 80 A1 */	lis r3, l_arcNames@ha
/* 80A07C30  38 83 C6 C4 */	addi r4, r3, l_arcNames@l
/* 80A07C34  38 7E 0D CC */	addi r3, r30, 0xdcc
/* 80A07C38  80 84 00 00 */	lwz r4, 0(r4)
/* 80A07C3C  4B 62 53 CC */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80A07C40  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80A07C44  28 00 00 00 */	cmplwi r0, 0
/* 80A07C48  41 82 00 0C */	beq lbl_80A07C54
/* 80A07C4C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A07C50  4B 60 96 C0 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80A07C54:
/* 80A07C54  34 1E 0C 84 */	addic. r0, r30, 0xc84
/* 80A07C58  41 82 00 84 */	beq lbl_80A07CDC
/* 80A07C5C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80A07C60  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80A07C64  90 7E 0C C0 */	stw r3, 0xcc0(r30)
/* 80A07C68  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A07C6C  90 1E 0D A4 */	stw r0, 0xda4(r30)
/* 80A07C70  38 03 00 84 */	addi r0, r3, 0x84
/* 80A07C74  90 1E 0D BC */	stw r0, 0xdbc(r30)
/* 80A07C78  34 1E 0D 88 */	addic. r0, r30, 0xd88
/* 80A07C7C  41 82 00 54 */	beq lbl_80A07CD0
/* 80A07C80  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80A07C84  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80A07C88  90 7E 0D A4 */	stw r3, 0xda4(r30)
/* 80A07C8C  38 03 00 58 */	addi r0, r3, 0x58
/* 80A07C90  90 1E 0D BC */	stw r0, 0xdbc(r30)
/* 80A07C94  34 1E 0D A8 */	addic. r0, r30, 0xda8
/* 80A07C98  41 82 00 10 */	beq lbl_80A07CA8
/* 80A07C9C  3C 60 80 A1 */	lis r3, __vt__8cM3dGCyl@ha
/* 80A07CA0  38 03 C8 BC */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80A07CA4  90 1E 0D BC */	stw r0, 0xdbc(r30)
lbl_80A07CA8:
/* 80A07CA8  34 1E 0D 88 */	addic. r0, r30, 0xd88
/* 80A07CAC  41 82 00 24 */	beq lbl_80A07CD0
/* 80A07CB0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80A07CB4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80A07CB8  90 1E 0D A4 */	stw r0, 0xda4(r30)
/* 80A07CBC  34 1E 0D 88 */	addic. r0, r30, 0xd88
/* 80A07CC0  41 82 00 10 */	beq lbl_80A07CD0
/* 80A07CC4  3C 60 80 A1 */	lis r3, __vt__8cM3dGAab@ha
/* 80A07CC8  38 03 C8 C8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80A07CCC  90 1E 0D A0 */	stw r0, 0xda0(r30)
lbl_80A07CD0:
/* 80A07CD0  38 7E 0C 84 */	addi r3, r30, 0xc84
/* 80A07CD4  38 80 00 00 */	li r4, 0
/* 80A07CD8  4B 67 C4 0C */	b __dt__12dCcD_GObjInfFv
lbl_80A07CDC:
/* 80A07CDC  38 7E 0C 78 */	addi r3, r30, 0xc78
/* 80A07CE0  3C 80 80 A1 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 80A07CE4  38 84 BA 1C */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 80A07CE8  38 A0 00 08 */	li r5, 8
/* 80A07CEC  38 C0 00 01 */	li r6, 1
/* 80A07CF0  4B 95 9F F8 */	b __destroy_arr
/* 80A07CF4  34 1E 0B DC */	addic. r0, r30, 0xbdc
/* 80A07CF8  41 82 00 88 */	beq lbl_80A07D80
/* 80A07CFC  3C 60 80 A1 */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 80A07D00  38 03 C8 D4 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 80A07D04  90 1E 0C 74 */	stw r0, 0xc74(r30)
/* 80A07D08  38 7E 0C 58 */	addi r3, r30, 0xc58
/* 80A07D0C  3C 80 80 A1 */	lis r4, __dt__5csXyzFv@ha
/* 80A07D10  38 84 BB 70 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A07D14  38 A0 00 06 */	li r5, 6
/* 80A07D18  38 C0 00 04 */	li r6, 4
/* 80A07D1C  4B 95 9F CC */	b __destroy_arr
/* 80A07D20  38 7E 0C 40 */	addi r3, r30, 0xc40
/* 80A07D24  3C 80 80 A1 */	lis r4, __dt__5csXyzFv@ha
/* 80A07D28  38 84 BB 70 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A07D2C  38 A0 00 06 */	li r5, 6
/* 80A07D30  38 C0 00 04 */	li r6, 4
/* 80A07D34  4B 95 9F B4 */	b __destroy_arr
/* 80A07D38  38 7E 0C 28 */	addi r3, r30, 0xc28
/* 80A07D3C  3C 80 80 A1 */	lis r4, __dt__5csXyzFv@ha
/* 80A07D40  38 84 BB 70 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A07D44  38 A0 00 06 */	li r5, 6
/* 80A07D48  38 C0 00 04 */	li r6, 4
/* 80A07D4C  4B 95 9F 9C */	b __destroy_arr
/* 80A07D50  38 7E 0C 10 */	addi r3, r30, 0xc10
/* 80A07D54  3C 80 80 A1 */	lis r4, __dt__5csXyzFv@ha
/* 80A07D58  38 84 BB 70 */	addi r4, r4, __dt__5csXyzFv@l
/* 80A07D5C  38 A0 00 06 */	li r5, 6
/* 80A07D60  38 C0 00 04 */	li r6, 4
/* 80A07D64  4B 95 9F 84 */	b __destroy_arr
/* 80A07D68  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 80A07D6C  3C 80 80 A1 */	lis r4, __dt__4cXyzFv@ha
/* 80A07D70  38 84 BB B0 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A07D74  38 A0 00 0C */	li r5, 0xc
/* 80A07D78  38 C0 00 04 */	li r6, 4
/* 80A07D7C  4B 95 9F 6C */	b __destroy_arr
lbl_80A07D80:
/* 80A07D80  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 80A07D84  38 80 FF FF */	li r4, -1
/* 80A07D88  4B 8B 86 98 */	b __dt__10Z2CreatureFv
/* 80A07D8C  7F C3 F3 78 */	mr r3, r30
/* 80A07D90  38 80 00 00 */	li r4, 0
/* 80A07D94  48 00 3E 5D */	bl __dt__8daNpcF_cFv
/* 80A07D98  7F E0 07 35 */	extsh. r0, r31
/* 80A07D9C  40 81 00 0C */	ble lbl_80A07DA8
/* 80A07DA0  7F C3 F3 78 */	mr r3, r30
/* 80A07DA4  4B 8C 6F 98 */	b __dl__FPv
lbl_80A07DA8:
/* 80A07DA8  7F C3 F3 78 */	mr r3, r30
/* 80A07DAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A07DB0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A07DB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A07DB8  7C 08 03 A6 */	mtlr r0
/* 80A07DBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A07DC0  4E 80 00 20 */	blr 
