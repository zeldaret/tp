lbl_80D23B24:
/* 80D23B24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D23B28  7C 08 02 A6 */	mflr r0
/* 80D23B2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D23B30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D23B34  93 C1 00 08 */	stw r30, 8(r1)
/* 80D23B38  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D23B3C  7C 9F 23 78 */	mr r31, r4
/* 80D23B40  41 82 00 E4 */	beq lbl_80D23C24
/* 80D23B44  3C 60 80 D2 */	lis r3, __vt__15daObjVolcBall_c@ha /* 0x80D24038@ha */
/* 80D23B48  38 63 40 38 */	addi r3, r3, __vt__15daObjVolcBall_c@l /* 0x80D24038@l */
/* 80D23B4C  90 7E 05 78 */	stw r3, 0x578(r30)
/* 80D23B50  38 03 00 08 */	addi r0, r3, 8
/* 80D23B54  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80D23B58  38 7E 06 0C */	addi r3, r30, 0x60c
/* 80D23B5C  3C 80 80 D2 */	lis r4, __dt__Q215daObjVolcBall_c7vball_sFv@ha /* 0x80D21FA8@ha */
/* 80D23B60  38 84 1F A8 */	addi r4, r4, __dt__Q215daObjVolcBall_c7vball_sFv@l /* 0x80D21FA8@l */
/* 80D23B64  38 A0 03 E0 */	li r5, 0x3e0
/* 80D23B68  38 C0 00 09 */	li r6, 9
/* 80D23B6C  4B 63 E1 7D */	bl __destroy_arr
/* 80D23B70  34 1E 05 C4 */	addic. r0, r30, 0x5c4
/* 80D23B74  41 82 00 54 */	beq lbl_80D23BC8
/* 80D23B78  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80D23B7C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80D23B80  90 7E 05 DC */	stw r3, 0x5dc(r30)
/* 80D23B84  38 03 00 20 */	addi r0, r3, 0x20
/* 80D23B88  90 1E 05 E0 */	stw r0, 0x5e0(r30)
/* 80D23B8C  34 1E 05 E0 */	addic. r0, r30, 0x5e0
/* 80D23B90  41 82 00 24 */	beq lbl_80D23BB4
/* 80D23B94  3C 60 80 D2 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80D24078@ha */
/* 80D23B98  38 03 40 78 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80D24078@l */
/* 80D23B9C  90 1E 05 E0 */	stw r0, 0x5e0(r30)
/* 80D23BA0  34 1E 05 E0 */	addic. r0, r30, 0x5e0
/* 80D23BA4  41 82 00 10 */	beq lbl_80D23BB4
/* 80D23BA8  3C 60 80 D2 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80D2406C@ha */
/* 80D23BAC  38 03 40 6C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80D2406C@l */
/* 80D23BB0  90 1E 05 E0 */	stw r0, 0x5e0(r30)
lbl_80D23BB4:
/* 80D23BB4  34 1E 05 C4 */	addic. r0, r30, 0x5c4
/* 80D23BB8  41 82 00 10 */	beq lbl_80D23BC8
/* 80D23BBC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80D23BC0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80D23BC4  90 1E 05 DC */	stw r0, 0x5dc(r30)
lbl_80D23BC8:
/* 80D23BC8  34 1E 05 84 */	addic. r0, r30, 0x584
/* 80D23BCC  41 82 00 28 */	beq lbl_80D23BF4
/* 80D23BD0  3C 60 80 D2 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80D24060@ha */
/* 80D23BD4  38 03 40 60 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80D24060@l */
/* 80D23BD8  90 1E 05 90 */	stw r0, 0x590(r30)
/* 80D23BDC  38 7E 05 98 */	addi r3, r30, 0x598
/* 80D23BE0  38 80 FF FF */	li r4, -1
/* 80D23BE4  4B 54 B3 35 */	bl __dt__8cM3dGCirFv
/* 80D23BE8  38 7E 05 84 */	addi r3, r30, 0x584
/* 80D23BEC  38 80 00 00 */	li r4, 0
/* 80D23BF0  4B 54 44 C1 */	bl __dt__13cBgS_PolyInfoFv
lbl_80D23BF4:
/* 80D23BF4  34 1E 05 68 */	addic. r0, r30, 0x568
/* 80D23BF8  41 82 00 10 */	beq lbl_80D23C08
/* 80D23BFC  3C 60 80 D2 */	lis r3, __vt__17dEvLib_callback_c@ha /* 0x80D240E4@ha */
/* 80D23C00  38 03 40 E4 */	addi r0, r3, __vt__17dEvLib_callback_c@l /* 0x80D240E4@l */
/* 80D23C04  90 1E 05 68 */	stw r0, 0x568(r30)
lbl_80D23C08:
/* 80D23C08  7F C3 F3 78 */	mr r3, r30
/* 80D23C0C  38 80 00 00 */	li r4, 0
/* 80D23C10  4B 2F 50 7D */	bl __dt__10fopAc_ac_cFv
/* 80D23C14  7F E0 07 35 */	extsh. r0, r31
/* 80D23C18  40 81 00 0C */	ble lbl_80D23C24
/* 80D23C1C  7F C3 F3 78 */	mr r3, r30
/* 80D23C20  4B 5A B1 1D */	bl __dl__FPv
lbl_80D23C24:
/* 80D23C24  7F C3 F3 78 */	mr r3, r30
/* 80D23C28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D23C2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D23C30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D23C34  7C 08 03 A6 */	mtlr r0
/* 80D23C38  38 21 00 10 */	addi r1, r1, 0x10
/* 80D23C3C  4E 80 00 20 */	blr 
