lbl_80A1C0A4:
/* 80A1C0A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A1C0A8  7C 08 02 A6 */	mflr r0
/* 80A1C0AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A1C0B0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A1C0B4  4B 94 61 1D */	bl _savegpr_26
/* 80A1C0B8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A1C0BC  7C 9F 23 78 */	mr r31, r4
/* 80A1C0C0  41 82 02 58 */	beq lbl_80A1C318
/* 80A1C0C4  3C 60 80 A2 */	lis r3, __vt__15daNpcKasiHana_c@ha /* 0x80A21710@ha */
/* 80A1C0C8  38 03 17 10 */	addi r0, r3, __vt__15daNpcKasiHana_c@l /* 0x80A21710@l */
/* 80A1C0CC  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80A1C0D0  3B 40 00 00 */	li r26, 0
/* 80A1C0D4  3B A0 00 00 */	li r29, 0
/* 80A1C0D8  3B 80 00 00 */	li r28, 0
/* 80A1C0DC  3C 60 80 A2 */	lis r3, l_arcNames@ha /* 0x80A214B4@ha */
/* 80A1C0E0  3B 63 14 B4 */	addi r27, r3, l_arcNames@l /* 0x80A214B4@l */
lbl_80A1C0E4:
/* 80A1C0E4  38 7C 14 14 */	addi r3, r28, 0x1414
/* 80A1C0E8  7C 7E 1A 14 */	add r3, r30, r3
/* 80A1C0EC  7C 9B E8 2E */	lwzx r4, r27, r29
/* 80A1C0F0  4B 61 0F 19 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80A1C0F4  3B 5A 00 01 */	addi r26, r26, 1
/* 80A1C0F8  2C 1A 00 03 */	cmpwi r26, 3
/* 80A1C0FC  3B BD 00 04 */	addi r29, r29, 4
/* 80A1C100  3B 9C 00 08 */	addi r28, r28, 8
/* 80A1C104  41 80 FF E0 */	blt lbl_80A1C0E4
/* 80A1C108  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80A1C10C  28 00 00 00 */	cmplwi r0, 0
/* 80A1C110  41 82 00 0C */	beq lbl_80A1C11C
/* 80A1C114  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A1C118  4B 5F 51 F9 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80A1C11C:
/* 80A1C11C  34 1E 14 48 */	addic. r0, r30, 0x1448
/* 80A1C120  41 82 00 7C */	beq lbl_80A1C19C
/* 80A1C124  34 9E 14 98 */	addic. r4, r30, 0x1498
/* 80A1C128  41 82 00 24 */	beq lbl_80A1C14C
/* 80A1C12C  3C 60 80 A2 */	lis r3, __vt__13daNpcF_Path_c@ha /* 0x80A217DC@ha */
/* 80A1C130  38 03 17 DC */	addi r0, r3, __vt__13daNpcF_Path_c@l /* 0x80A217DC@l */
/* 80A1C134  90 1E 1A C4 */	stw r0, 0x1ac4(r30)
/* 80A1C138  34 04 00 20 */	addic. r0, r4, 0x20
/* 80A1C13C  41 82 00 10 */	beq lbl_80A1C14C
/* 80A1C140  3C 60 80 A2 */	lis r3, __vt__16daNpcF_SPCurve_c@ha /* 0x80A217D0@ha */
/* 80A1C144  38 03 17 D0 */	addi r0, r3, __vt__16daNpcF_SPCurve_c@l /* 0x80A217D0@l */
/* 80A1C148  90 1E 1A C0 */	stw r0, 0x1ac0(r30)
lbl_80A1C14C:
/* 80A1C14C  34 1E 14 60 */	addic. r0, r30, 0x1460
/* 80A1C150  41 82 00 10 */	beq lbl_80A1C160
/* 80A1C154  3C 60 80 A2 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x80A217AC@ha */
/* 80A1C158  38 03 17 AC */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x80A217AC@l */
/* 80A1C15C  90 1E 14 64 */	stw r0, 0x1464(r30)
lbl_80A1C160:
/* 80A1C160  34 1E 14 58 */	addic. r0, r30, 0x1458
/* 80A1C164  41 82 00 10 */	beq lbl_80A1C174
/* 80A1C168  3C 60 80 A2 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x80A217AC@ha */
/* 80A1C16C  38 03 17 AC */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x80A217AC@l */
/* 80A1C170  90 1E 14 5C */	stw r0, 0x145c(r30)
lbl_80A1C174:
/* 80A1C174  34 1E 14 50 */	addic. r0, r30, 0x1450
/* 80A1C178  41 82 00 10 */	beq lbl_80A1C188
/* 80A1C17C  3C 60 80 A2 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x80A217AC@ha */
/* 80A1C180  38 03 17 AC */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x80A217AC@l */
/* 80A1C184  90 1E 14 54 */	stw r0, 0x1454(r30)
lbl_80A1C188:
/* 80A1C188  34 1E 14 48 */	addic. r0, r30, 0x1448
/* 80A1C18C  41 82 00 10 */	beq lbl_80A1C19C
/* 80A1C190  3C 60 80 A2 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x80A217AC@ha */
/* 80A1C194  38 03 17 AC */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x80A217AC@l */
/* 80A1C198  90 1E 14 4C */	stw r0, 0x144c(r30)
lbl_80A1C19C:
/* 80A1C19C  34 1E 12 C8 */	addic. r0, r30, 0x12c8
/* 80A1C1A0  41 82 00 84 */	beq lbl_80A1C224
/* 80A1C1A4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80A1C1A8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80A1C1AC  90 7E 13 04 */	stw r3, 0x1304(r30)
/* 80A1C1B0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A1C1B4  90 1E 13 E8 */	stw r0, 0x13e8(r30)
/* 80A1C1B8  38 03 00 84 */	addi r0, r3, 0x84
/* 80A1C1BC  90 1E 14 00 */	stw r0, 0x1400(r30)
/* 80A1C1C0  34 1E 13 CC */	addic. r0, r30, 0x13cc
/* 80A1C1C4  41 82 00 54 */	beq lbl_80A1C218
/* 80A1C1C8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80A1C1CC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80A1C1D0  90 7E 13 E8 */	stw r3, 0x13e8(r30)
/* 80A1C1D4  38 03 00 58 */	addi r0, r3, 0x58
/* 80A1C1D8  90 1E 14 00 */	stw r0, 0x1400(r30)
/* 80A1C1DC  34 1E 13 EC */	addic. r0, r30, 0x13ec
/* 80A1C1E0  41 82 00 10 */	beq lbl_80A1C1F0
/* 80A1C1E4  3C 60 80 A2 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80A217B8@ha */
/* 80A1C1E8  38 03 17 B8 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80A217B8@l */
/* 80A1C1EC  90 1E 14 00 */	stw r0, 0x1400(r30)
lbl_80A1C1F0:
/* 80A1C1F0  34 1E 13 CC */	addic. r0, r30, 0x13cc
/* 80A1C1F4  41 82 00 24 */	beq lbl_80A1C218
/* 80A1C1F8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80A1C1FC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80A1C200  90 1E 13 E8 */	stw r0, 0x13e8(r30)
/* 80A1C204  34 1E 13 CC */	addic. r0, r30, 0x13cc
/* 80A1C208  41 82 00 10 */	beq lbl_80A1C218
/* 80A1C20C  3C 60 80 A2 */	lis r3, __vt__8cM3dGAab@ha /* 0x80A217C4@ha */
/* 80A1C210  38 03 17 C4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80A217C4@l */
/* 80A1C214  90 1E 13 E4 */	stw r0, 0x13e4(r30)
lbl_80A1C218:
/* 80A1C218  38 7E 12 C8 */	addi r3, r30, 0x12c8
/* 80A1C21C  38 80 00 00 */	li r4, 0
/* 80A1C220  4B 66 7E C5 */	bl __dt__12dCcD_GObjInfFv
lbl_80A1C224:
/* 80A1C224  34 1E 0C 94 */	addic. r0, r30, 0xc94
/* 80A1C228  41 82 00 24 */	beq lbl_80A1C24C
/* 80A1C22C  3C 60 80 A2 */	lis r3, __vt__13daNpcF_Path_c@ha /* 0x80A217DC@ha */
/* 80A1C230  38 03 17 DC */	addi r0, r3, __vt__13daNpcF_Path_c@l /* 0x80A217DC@l */
/* 80A1C234  90 1E 12 C0 */	stw r0, 0x12c0(r30)
/* 80A1C238  34 1E 0C B4 */	addic. r0, r30, 0xcb4
/* 80A1C23C  41 82 00 10 */	beq lbl_80A1C24C
/* 80A1C240  3C 60 80 A2 */	lis r3, __vt__16daNpcF_SPCurve_c@ha /* 0x80A217D0@ha */
/* 80A1C244  38 03 17 D0 */	addi r0, r3, __vt__16daNpcF_SPCurve_c@l /* 0x80A217D0@l */
/* 80A1C248  90 1E 12 BC */	stw r0, 0x12bc(r30)
lbl_80A1C24C:
/* 80A1C24C  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80A1C250  3C 80 80 A2 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80A2077C@ha */
/* 80A1C254  38 84 07 7C */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80A2077C@l */
/* 80A1C258  38 A0 00 08 */	li r5, 8
/* 80A1C25C  38 C0 00 01 */	li r6, 1
/* 80A1C260  4B 94 5A 89 */	bl __destroy_arr
/* 80A1C264  34 1E 0B F0 */	addic. r0, r30, 0xbf0
/* 80A1C268  41 82 00 88 */	beq lbl_80A1C2F0
/* 80A1C26C  3C 60 80 A2 */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x80A217E8@ha */
/* 80A1C270  38 03 17 E8 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x80A217E8@l */
/* 80A1C274  90 1E 0C 88 */	stw r0, 0xc88(r30)
/* 80A1C278  38 7E 0C 6C */	addi r3, r30, 0xc6c
/* 80A1C27C  3C 80 80 A2 */	lis r4, __dt__5csXyzFv@ha /* 0x80A1B3D4@ha */
/* 80A1C280  38 84 B3 D4 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A1B3D4@l */
/* 80A1C284  38 A0 00 06 */	li r5, 6
/* 80A1C288  38 C0 00 04 */	li r6, 4
/* 80A1C28C  4B 94 5A 5D */	bl __destroy_arr
/* 80A1C290  38 7E 0C 54 */	addi r3, r30, 0xc54
/* 80A1C294  3C 80 80 A2 */	lis r4, __dt__5csXyzFv@ha /* 0x80A1B3D4@ha */
/* 80A1C298  38 84 B3 D4 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A1B3D4@l */
/* 80A1C29C  38 A0 00 06 */	li r5, 6
/* 80A1C2A0  38 C0 00 04 */	li r6, 4
/* 80A1C2A4  4B 94 5A 45 */	bl __destroy_arr
/* 80A1C2A8  38 7E 0C 3C */	addi r3, r30, 0xc3c
/* 80A1C2AC  3C 80 80 A2 */	lis r4, __dt__5csXyzFv@ha /* 0x80A1B3D4@ha */
/* 80A1C2B0  38 84 B3 D4 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A1B3D4@l */
/* 80A1C2B4  38 A0 00 06 */	li r5, 6
/* 80A1C2B8  38 C0 00 04 */	li r6, 4
/* 80A1C2BC  4B 94 5A 2D */	bl __destroy_arr
/* 80A1C2C0  38 7E 0C 24 */	addi r3, r30, 0xc24
/* 80A1C2C4  3C 80 80 A2 */	lis r4, __dt__5csXyzFv@ha /* 0x80A1B3D4@ha */
/* 80A1C2C8  38 84 B3 D4 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A1B3D4@l */
/* 80A1C2CC  38 A0 00 06 */	li r5, 6
/* 80A1C2D0  38 C0 00 04 */	li r6, 4
/* 80A1C2D4  4B 94 5A 15 */	bl __destroy_arr
/* 80A1C2D8  38 7E 0B F0 */	addi r3, r30, 0xbf0
/* 80A1C2DC  3C 80 80 A2 */	lis r4, __dt__4cXyzFv@ha /* 0x80A1B09C@ha */
/* 80A1C2E0  38 84 B0 9C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A1B09C@l */
/* 80A1C2E4  38 A0 00 0C */	li r5, 0xc
/* 80A1C2E8  38 C0 00 04 */	li r6, 4
/* 80A1C2EC  4B 94 59 FD */	bl __destroy_arr
lbl_80A1C2F0:
/* 80A1C2F0  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 80A1C2F4  38 80 FF FF */	li r4, -1
/* 80A1C2F8  4B 8A 49 75 */	bl __dt__17Z2CreatureCitizenFv
/* 80A1C2FC  7F C3 F3 78 */	mr r3, r30
/* 80A1C300  38 80 00 00 */	li r4, 0
/* 80A1C304  48 00 45 D5 */	bl __dt__8daNpcF_cFv
/* 80A1C308  7F E0 07 35 */	extsh. r0, r31
/* 80A1C30C  40 81 00 0C */	ble lbl_80A1C318
/* 80A1C310  7F C3 F3 78 */	mr r3, r30
/* 80A1C314  4B 8B 2A 29 */	bl __dl__FPv
lbl_80A1C318:
/* 80A1C318  7F C3 F3 78 */	mr r3, r30
/* 80A1C31C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A1C320  4B 94 5E FD */	bl _restgpr_26
/* 80A1C324  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A1C328  7C 08 03 A6 */	mtlr r0
/* 80A1C32C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A1C330  4E 80 00 20 */	blr 
