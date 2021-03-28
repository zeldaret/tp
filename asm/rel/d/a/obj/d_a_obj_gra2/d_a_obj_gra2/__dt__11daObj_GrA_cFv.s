lbl_80C0011C:
/* 80C0011C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C00120  7C 08 02 A6 */	mflr r0
/* 80C00124  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C00128  39 61 00 20 */	addi r11, r1, 0x20
/* 80C0012C  4B 76 20 A4 */	b _savegpr_26
/* 80C00130  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C00134  7C 9F 23 78 */	mr r31, r4
/* 80C00138  41 82 02 78 */	beq lbl_80C003B0
/* 80C0013C  3C 80 80 C1 */	lis r4, __vt__11daObj_GrA_c@ha
/* 80C00140  38 04 07 84 */	addi r0, r4, __vt__11daObj_GrA_c@l
/* 80C00144  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80C00148  81 83 05 68 */	lwz r12, 0x568(r3)
/* 80C0014C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C00150  7D 89 03 A6 */	mtctr r12
/* 80C00154  4E 80 04 21 */	bctrl 
/* 80C00158  7C 64 1B 78 */	mr r4, r3
/* 80C0015C  38 7E 07 4C */	addi r3, r30, 0x74c
/* 80C00160  4B 42 CE A8 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C00164  3B A0 00 00 */	li r29, 0
/* 80C00168  3B 80 00 00 */	li r28, 0
/* 80C0016C  3C 60 80 C1 */	lis r3, l_resNames@ha
/* 80C00170  3B 43 FE D8 */	addi r26, r3, l_resNames@l
/* 80C00174  3C 60 80 C1 */	lis r3, l_exloadRes_list@ha
/* 80C00178  3B 63 FE C8 */	addi r27, r3, l_exloadRes_list@l
/* 80C0017C  48 00 00 20 */	b lbl_80C0019C
lbl_80C00180:
/* 80C00180  38 7C 0A 5C */	addi r3, r28, 0xa5c
/* 80C00184  7C 7E 1A 14 */	add r3, r30, r3
/* 80C00188  54 00 10 3A */	slwi r0, r0, 2
/* 80C0018C  7C 9A 00 2E */	lwzx r4, r26, r0
/* 80C00190  4B 42 CE 78 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C00194  3B BD 00 04 */	addi r29, r29, 4
/* 80C00198  3B 9C 00 08 */	addi r28, r28, 8
lbl_80C0019C:
/* 80C0019C  88 1E 0A 7E */	lbz r0, 0xa7e(r30)
/* 80C001A0  54 00 10 3A */	slwi r0, r0, 2
/* 80C001A4  7C 7B 00 2E */	lwzx r3, r27, r0
/* 80C001A8  7C 03 E8 2E */	lwzx r0, r3, r29
/* 80C001AC  2C 00 00 00 */	cmpwi r0, 0
/* 80C001B0  40 80 FF D0 */	bge lbl_80C00180
/* 80C001B4  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80C001B8  28 00 00 00 */	cmplwi r0, 0
/* 80C001BC  41 82 00 0C */	beq lbl_80C001C8
/* 80C001C0  80 7E 07 54 */	lwz r3, 0x754(r30)
/* 80C001C4  4B 41 11 4C */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80C001C8:
/* 80C001C8  80 7E 0A 14 */	lwz r3, 0xa14(r30)
/* 80C001CC  28 03 00 00 */	cmplwi r3, 0
/* 80C001D0  41 82 00 24 */	beq lbl_80C001F4
/* 80C001D4  4B 66 80 00 */	b ChkUsed__9cBgW_BgIdCFv
/* 80C001D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C001DC  41 82 00 18 */	beq lbl_80C001F4
/* 80C001E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C001E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C001E8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C001EC  80 9E 0A 14 */	lwz r4, 0xa14(r30)
/* 80C001F0  4B 47 40 60 */	b Release__4cBgSFP9dBgW_Base
lbl_80C001F4:
/* 80C001F4  34 1E 20 4C */	addic. r0, r30, 0x204c
/* 80C001F8  41 82 00 10 */	beq lbl_80C00208
/* 80C001FC  3C 60 80 C1 */	lis r3, __vt__18daBaseNpc_acMngr_c@ha
/* 80C00200  38 03 08 4C */	addi r0, r3, __vt__18daBaseNpc_acMngr_c@l
/* 80C00204  90 1E 20 4C */	stw r0, 0x204c(r30)
lbl_80C00208:
/* 80C00208  38 7E 1F 4C */	addi r3, r30, 0x1f4c
/* 80C0020C  38 80 FF FF */	li r4, -1
/* 80C00210  4B 47 7E 7C */	b __dt__15dBgS_LinkLinChkFv
/* 80C00214  34 1E 15 28 */	addic. r0, r30, 0x1528
/* 80C00218  41 82 00 10 */	beq lbl_80C00228
/* 80C0021C  3C 60 80 C1 */	lis r3, __vt__16daBaseNpc_path_c@ha
/* 80C00220  38 03 08 64 */	addi r0, r3, __vt__16daBaseNpc_path_c@l
/* 80C00224  90 1E 15 28 */	stw r0, 0x1528(r30)
lbl_80C00228:
/* 80C00228  34 1E 14 F8 */	addic. r0, r30, 0x14f8
/* 80C0022C  41 82 00 10 */	beq lbl_80C0023C
/* 80C00230  3C 60 80 C1 */	lis r3, __vt__18daBaseNpc_acMngr_c@ha
/* 80C00234  38 03 08 4C */	addi r0, r3, __vt__18daBaseNpc_acMngr_c@l
/* 80C00238  90 1E 14 F8 */	stw r0, 0x14f8(r30)
lbl_80C0023C:
/* 80C0023C  38 7E 14 B4 */	addi r3, r30, 0x14b4
/* 80C00240  3C 80 80 C0 */	lis r4, __dt__4cXyzFv@ha
/* 80C00244  38 84 4C 40 */	addi r4, r4, __dt__4cXyzFv@l
/* 80C00248  38 A0 00 0C */	li r5, 0xc
/* 80C0024C  38 C0 00 05 */	li r6, 5
/* 80C00250  4B 76 1A 98 */	b __destroy_arr
/* 80C00254  38 7E 14 60 */	addi r3, r30, 0x1460
/* 80C00258  3C 80 80 C0 */	lis r4, __dt__4cXyzFv@ha
/* 80C0025C  38 84 4C 40 */	addi r4, r4, __dt__4cXyzFv@l
/* 80C00260  38 A0 00 0C */	li r5, 0xc
/* 80C00264  38 C0 00 05 */	li r6, 5
/* 80C00268  4B 76 1A 80 */	b __destroy_arr
/* 80C0026C  38 7E 14 24 */	addi r3, r30, 0x1424
/* 80C00270  3C 80 80 C0 */	lis r4, __dt__4cXyzFv@ha
/* 80C00274  38 84 4C 40 */	addi r4, r4, __dt__4cXyzFv@l
/* 80C00278  38 A0 00 0C */	li r5, 0xc
/* 80C0027C  38 C0 00 05 */	li r6, 5
/* 80C00280  4B 76 1A 68 */	b __destroy_arr
/* 80C00284  38 7E 11 F4 */	addi r3, r30, 0x11f4
/* 80C00288  3C 80 80 08 */	lis r4, __dt__15dBgS_LinkLinChkFv@ha
/* 80C0028C  38 84 80 8C */	addi r4, r4, __dt__15dBgS_LinkLinChkFv@l
/* 80C00290  38 A0 00 70 */	li r5, 0x70
/* 80C00294  38 C0 00 05 */	li r6, 5
/* 80C00298  4B 76 1A 50 */	b __destroy_arr
/* 80C0029C  38 7E 10 C8 */	addi r3, r30, 0x10c8
/* 80C002A0  3C 80 80 26 */	lis r4, __dt__11cBgS_GndChkFv@ha
/* 80C002A4  38 84 7C 94 */	addi r4, r4, __dt__11cBgS_GndChkFv@l
/* 80C002A8  38 A0 00 3C */	li r5, 0x3c
/* 80C002AC  38 C0 00 05 */	li r6, 5
/* 80C002B0  4B 76 1A 38 */	b __destroy_arr
/* 80C002B4  34 1E 0F 50 */	addic. r0, r30, 0xf50
/* 80C002B8  41 82 00 84 */	beq lbl_80C0033C
/* 80C002BC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80C002C0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80C002C4  90 7E 0F 8C */	stw r3, 0xf8c(r30)
/* 80C002C8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C002CC  90 1E 10 70 */	stw r0, 0x1070(r30)
/* 80C002D0  38 03 00 84 */	addi r0, r3, 0x84
/* 80C002D4  90 1E 10 88 */	stw r0, 0x1088(r30)
/* 80C002D8  34 1E 10 54 */	addic. r0, r30, 0x1054
/* 80C002DC  41 82 00 54 */	beq lbl_80C00330
/* 80C002E0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80C002E4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80C002E8  90 7E 10 70 */	stw r3, 0x1070(r30)
/* 80C002EC  38 03 00 58 */	addi r0, r3, 0x58
/* 80C002F0  90 1E 10 88 */	stw r0, 0x1088(r30)
/* 80C002F4  34 1E 10 74 */	addic. r0, r30, 0x1074
/* 80C002F8  41 82 00 10 */	beq lbl_80C00308
/* 80C002FC  3C 60 80 C1 */	lis r3, __vt__8cM3dGCyl@ha
/* 80C00300  38 03 08 70 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80C00304  90 1E 10 88 */	stw r0, 0x1088(r30)
lbl_80C00308:
/* 80C00308  34 1E 10 54 */	addic. r0, r30, 0x1054
/* 80C0030C  41 82 00 24 */	beq lbl_80C00330
/* 80C00310  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C00314  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C00318  90 1E 10 70 */	stw r0, 0x1070(r30)
/* 80C0031C  34 1E 10 54 */	addic. r0, r30, 0x1054
/* 80C00320  41 82 00 10 */	beq lbl_80C00330
/* 80C00324  3C 60 80 C1 */	lis r3, __vt__8cM3dGAab@ha
/* 80C00328  38 03 08 7C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C0032C  90 1E 10 6C */	stw r0, 0x106c(r30)
lbl_80C00330:
/* 80C00330  38 7E 0F 50 */	addi r3, r30, 0xf50
/* 80C00334  38 80 00 00 */	li r4, 0
/* 80C00338  4B 48 3D AC */	b __dt__12dCcD_GObjInfFv
lbl_80C0033C:
/* 80C0033C  38 7E 0C E0 */	addi r3, r30, 0xce0
/* 80C00340  3C 80 80 C0 */	lis r4, __dt__8dCcD_SphFv@ha
/* 80C00344  38 84 4C 7C */	addi r4, r4, __dt__8dCcD_SphFv@l
/* 80C00348  38 A0 01 38 */	li r5, 0x138
/* 80C0034C  38 C0 00 02 */	li r6, 2
/* 80C00350  4B 76 19 98 */	b __destroy_arr
/* 80C00354  38 7E 0A B8 */	addi r3, r30, 0xab8
/* 80C00358  3C 80 80 C0 */	lis r4, __dt__Q211daObj_GrA_c21daObj_GrA_prtclMngr_cFv@ha
/* 80C0035C  38 84 4E 14 */	addi r4, r4, __dt__Q211daObj_GrA_c21daObj_GrA_prtclMngr_cFv@l
/* 80C00360  38 A0 00 5C */	li r5, 0x5c
/* 80C00364  38 C0 00 06 */	li r6, 6
/* 80C00368  4B 76 19 80 */	b __destroy_arr
/* 80C0036C  34 1E 0A B0 */	addic. r0, r30, 0xab0
/* 80C00370  41 82 00 10 */	beq lbl_80C00380
/* 80C00374  3C 60 80 C1 */	lis r3, __vt__18daBaseNpc_acMngr_c@ha
/* 80C00378  38 03 08 4C */	addi r0, r3, __vt__18daBaseNpc_acMngr_c@l
/* 80C0037C  90 1E 0A B0 */	stw r0, 0xab0(r30)
lbl_80C00380:
/* 80C00380  28 1E 00 00 */	cmplwi r30, 0
/* 80C00384  41 82 00 1C */	beq lbl_80C003A0
/* 80C00388  3C 60 80 C1 */	lis r3, __vt__23daBaseNpc_moveBgActor_c@ha
/* 80C0038C  38 03 07 E8 */	addi r0, r3, __vt__23daBaseNpc_moveBgActor_c@l
/* 80C00390  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80C00394  7F C3 F3 78 */	mr r3, r30
/* 80C00398  38 80 00 00 */	li r4, 0
/* 80C0039C  4B 54 E5 00 */	b __dt__11daBaseNpc_cFv
lbl_80C003A0:
/* 80C003A0  7F E0 07 35 */	extsh. r0, r31
/* 80C003A4  40 81 00 0C */	ble lbl_80C003B0
/* 80C003A8  7F C3 F3 78 */	mr r3, r30
/* 80C003AC  4B 6C E9 90 */	b __dl__FPv
lbl_80C003B0:
/* 80C003B0  7F C3 F3 78 */	mr r3, r30
/* 80C003B4  39 61 00 20 */	addi r11, r1, 0x20
/* 80C003B8  4B 76 1E 64 */	b _restgpr_26
/* 80C003BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C003C0  7C 08 03 A6 */	mtlr r0
/* 80C003C4  38 21 00 20 */	addi r1, r1, 0x20
/* 80C003C8  4E 80 00 20 */	blr 
