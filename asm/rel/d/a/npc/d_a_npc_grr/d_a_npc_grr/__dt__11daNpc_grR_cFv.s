lbl_809DFAE0:
/* 809DFAE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809DFAE4  7C 08 02 A6 */	mflr r0
/* 809DFAE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 809DFAEC  39 61 00 20 */	addi r11, r1, 0x20
/* 809DFAF0  4B 98 26 E0 */	b _savegpr_26
/* 809DFAF4  7C 7E 1B 79 */	or. r30, r3, r3
/* 809DFAF8  7C 9F 23 78 */	mr r31, r4
/* 809DFAFC  41 82 01 C8 */	beq lbl_809DFCC4
/* 809DFB00  3C 60 80 9E */	lis r3, __vt__11daNpc_grR_c@ha
/* 809DFB04  38 03 3E 14 */	addi r0, r3, __vt__11daNpc_grR_c@l
/* 809DFB08  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 809DFB0C  3B A0 00 00 */	li r29, 0
/* 809DFB10  3B 80 00 00 */	li r28, 0
/* 809DFB14  3C 60 80 9E */	lis r3, l_resNames@ha
/* 809DFB18  3B 43 3D 30 */	addi r26, r3, l_resNames@l
/* 809DFB1C  3C 60 80 9E */	lis r3, l_loadRes_list@ha
/* 809DFB20  3B 63 3D 20 */	addi r27, r3, l_loadRes_list@l
/* 809DFB24  48 00 00 20 */	b lbl_809DFB44
lbl_809DFB28:
/* 809DFB28  38 7C 0D E0 */	addi r3, r28, 0xde0
/* 809DFB2C  7C 7E 1A 14 */	add r3, r30, r3
/* 809DFB30  54 00 10 3A */	slwi r0, r0, 2
/* 809DFB34  7C 9A 00 2E */	lwzx r4, r26, r0
/* 809DFB38  4B 64 D4 D0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 809DFB3C  3B BD 00 04 */	addi r29, r29, 4
/* 809DFB40  3B 9C 00 08 */	addi r28, r28, 8
lbl_809DFB44:
/* 809DFB44  88 1E 0E 10 */	lbz r0, 0xe10(r30)
/* 809DFB48  54 00 10 3A */	slwi r0, r0, 2
/* 809DFB4C  7C 7B 00 2E */	lwzx r3, r27, r0
/* 809DFB50  7C 03 E8 2E */	lwzx r0, r3, r29
/* 809DFB54  2C 00 00 00 */	cmpwi r0, 0
/* 809DFB58  40 80 FF D0 */	bge lbl_809DFB28
/* 809DFB5C  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 809DFB60  28 00 00 00 */	cmplwi r0, 0
/* 809DFB64  41 82 00 0C */	beq lbl_809DFB70
/* 809DFB68  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809DFB6C  4B 63 17 A4 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_809DFB70:
/* 809DFB70  34 1E 0C 8C */	addic. r0, r30, 0xc8c
/* 809DFB74  41 82 00 84 */	beq lbl_809DFBF8
/* 809DFB78  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 809DFB7C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 809DFB80  90 7E 0C C8 */	stw r3, 0xcc8(r30)
/* 809DFB84  38 03 00 2C */	addi r0, r3, 0x2c
/* 809DFB88  90 1E 0D AC */	stw r0, 0xdac(r30)
/* 809DFB8C  38 03 00 84 */	addi r0, r3, 0x84
/* 809DFB90  90 1E 0D C4 */	stw r0, 0xdc4(r30)
/* 809DFB94  34 1E 0D 90 */	addic. r0, r30, 0xd90
/* 809DFB98  41 82 00 54 */	beq lbl_809DFBEC
/* 809DFB9C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 809DFBA0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 809DFBA4  90 7E 0D AC */	stw r3, 0xdac(r30)
/* 809DFBA8  38 03 00 58 */	addi r0, r3, 0x58
/* 809DFBAC  90 1E 0D C4 */	stw r0, 0xdc4(r30)
/* 809DFBB0  34 1E 0D B0 */	addic. r0, r30, 0xdb0
/* 809DFBB4  41 82 00 10 */	beq lbl_809DFBC4
/* 809DFBB8  3C 60 80 9E */	lis r3, __vt__8cM3dGCyl@ha
/* 809DFBBC  38 03 3E BC */	addi r0, r3, __vt__8cM3dGCyl@l
/* 809DFBC0  90 1E 0D C4 */	stw r0, 0xdc4(r30)
lbl_809DFBC4:
/* 809DFBC4  34 1E 0D 90 */	addic. r0, r30, 0xd90
/* 809DFBC8  41 82 00 24 */	beq lbl_809DFBEC
/* 809DFBCC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 809DFBD0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 809DFBD4  90 1E 0D AC */	stw r0, 0xdac(r30)
/* 809DFBD8  34 1E 0D 90 */	addic. r0, r30, 0xd90
/* 809DFBDC  41 82 00 10 */	beq lbl_809DFBEC
/* 809DFBE0  3C 60 80 9E */	lis r3, __vt__8cM3dGAab@ha
/* 809DFBE4  38 03 3E C8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 809DFBE8  90 1E 0D A8 */	stw r0, 0xda8(r30)
lbl_809DFBEC:
/* 809DFBEC  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 809DFBF0  38 80 00 00 */	li r4, 0
/* 809DFBF4  4B 6A 44 F0 */	b __dt__12dCcD_GObjInfFv
lbl_809DFBF8:
/* 809DFBF8  38 7E 0C 78 */	addi r3, r30, 0xc78
/* 809DFBFC  3C 80 80 9E */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 809DFC00  38 84 30 20 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 809DFC04  38 A0 00 08 */	li r5, 8
/* 809DFC08  38 C0 00 02 */	li r6, 2
/* 809DFC0C  4B 98 20 DC */	b __destroy_arr
/* 809DFC10  34 1E 0B DC */	addic. r0, r30, 0xbdc
/* 809DFC14  41 82 00 88 */	beq lbl_809DFC9C
/* 809DFC18  3C 60 80 9E */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 809DFC1C  38 03 3E D4 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 809DFC20  90 1E 0C 74 */	stw r0, 0xc74(r30)
/* 809DFC24  38 7E 0C 58 */	addi r3, r30, 0xc58
/* 809DFC28  3C 80 80 9E */	lis r4, __dt__5csXyzFv@ha
/* 809DFC2C  38 84 31 74 */	addi r4, r4, __dt__5csXyzFv@l
/* 809DFC30  38 A0 00 06 */	li r5, 6
/* 809DFC34  38 C0 00 04 */	li r6, 4
/* 809DFC38  4B 98 20 B0 */	b __destroy_arr
/* 809DFC3C  38 7E 0C 40 */	addi r3, r30, 0xc40
/* 809DFC40  3C 80 80 9E */	lis r4, __dt__5csXyzFv@ha
/* 809DFC44  38 84 31 74 */	addi r4, r4, __dt__5csXyzFv@l
/* 809DFC48  38 A0 00 06 */	li r5, 6
/* 809DFC4C  38 C0 00 04 */	li r6, 4
/* 809DFC50  4B 98 20 98 */	b __destroy_arr
/* 809DFC54  38 7E 0C 28 */	addi r3, r30, 0xc28
/* 809DFC58  3C 80 80 9E */	lis r4, __dt__5csXyzFv@ha
/* 809DFC5C  38 84 31 74 */	addi r4, r4, __dt__5csXyzFv@l
/* 809DFC60  38 A0 00 06 */	li r5, 6
/* 809DFC64  38 C0 00 04 */	li r6, 4
/* 809DFC68  4B 98 20 80 */	b __destroy_arr
/* 809DFC6C  38 7E 0C 10 */	addi r3, r30, 0xc10
/* 809DFC70  3C 80 80 9E */	lis r4, __dt__5csXyzFv@ha
/* 809DFC74  38 84 31 74 */	addi r4, r4, __dt__5csXyzFv@l
/* 809DFC78  38 A0 00 06 */	li r5, 6
/* 809DFC7C  38 C0 00 04 */	li r6, 4
/* 809DFC80  4B 98 20 68 */	b __destroy_arr
/* 809DFC84  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 809DFC88  3C 80 80 9E */	lis r4, __dt__4cXyzFv@ha
/* 809DFC8C  38 84 31 B4 */	addi r4, r4, __dt__4cXyzFv@l
/* 809DFC90  38 A0 00 0C */	li r5, 0xc
/* 809DFC94  38 C0 00 04 */	li r6, 4
/* 809DFC98  4B 98 20 50 */	b __destroy_arr
lbl_809DFC9C:
/* 809DFC9C  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 809DFCA0  38 80 FF FF */	li r4, -1
/* 809DFCA4  4B 8E 07 7C */	b __dt__10Z2CreatureFv
/* 809DFCA8  7F C3 F3 78 */	mr r3, r30
/* 809DFCAC  38 80 00 00 */	li r4, 0
/* 809DFCB0  48 00 35 45 */	bl __dt__8daNpcF_cFv
/* 809DFCB4  7F E0 07 35 */	extsh. r0, r31
/* 809DFCB8  40 81 00 0C */	ble lbl_809DFCC4
/* 809DFCBC  7F C3 F3 78 */	mr r3, r30
/* 809DFCC0  4B 8E F0 7C */	b __dl__FPv
lbl_809DFCC4:
/* 809DFCC4  7F C3 F3 78 */	mr r3, r30
/* 809DFCC8  39 61 00 20 */	addi r11, r1, 0x20
/* 809DFCCC  4B 98 25 50 */	b _restgpr_26
/* 809DFCD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809DFCD4  7C 08 03 A6 */	mtlr r0
/* 809DFCD8  38 21 00 20 */	addi r1, r1, 0x20
/* 809DFCDC  4E 80 00 20 */	blr 
