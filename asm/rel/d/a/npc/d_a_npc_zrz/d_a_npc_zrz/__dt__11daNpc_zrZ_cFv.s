lbl_80B94014:
/* 80B94014  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B94018  7C 08 02 A6 */	mflr r0
/* 80B9401C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B94020  39 61 00 20 */	addi r11, r1, 0x20
/* 80B94024  4B 7C E1 AD */	bl _savegpr_26
/* 80B94028  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B9402C  7C 9F 23 78 */	mr r31, r4
/* 80B94030  41 82 01 F0 */	beq lbl_80B94220
/* 80B94034  3C 60 80 BA */	lis r3, __vt__11daNpc_zrZ_c@ha /* 0x80B9B770@ha */
/* 80B94038  38 03 B7 70 */	addi r0, r3, __vt__11daNpc_zrZ_c@l /* 0x80B9B770@l */
/* 80B9403C  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80B94040  3B A0 00 00 */	li r29, 0
/* 80B94044  3B 80 00 00 */	li r28, 0
/* 80B94048  3C 60 80 BA */	lis r3, l_resNames@ha /* 0x80B9B394@ha */
/* 80B9404C  3B 43 B3 94 */	addi r26, r3, l_resNames@l /* 0x80B9B394@l */
/* 80B94050  3C 60 80 BA */	lis r3, l_loadRes_list@ha /* 0x80B9B388@ha */
/* 80B94054  3B 63 B3 88 */	addi r27, r3, l_loadRes_list@l /* 0x80B9B388@l */
/* 80B94058  48 00 00 20 */	b lbl_80B94078
lbl_80B9405C:
/* 80B9405C  38 7C 14 18 */	addi r3, r28, 0x1418
/* 80B94060  7C 7E 1A 14 */	add r3, r30, r3
/* 80B94064  54 00 10 3A */	slwi r0, r0, 2
/* 80B94068  7C 9A 00 2E */	lwzx r4, r26, r0
/* 80B9406C  4B 49 8F 9D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80B94070  3B BD 00 04 */	addi r29, r29, 4
/* 80B94074  3B 9C 00 08 */	addi r28, r28, 8
lbl_80B94078:
/* 80B94078  88 1E 14 4C */	lbz r0, 0x144c(r30)
/* 80B9407C  54 00 10 3A */	slwi r0, r0, 2
/* 80B94080  7C 7B 00 2E */	lwzx r3, r27, r0
/* 80B94084  7C 03 E8 2E */	lwzx r0, r3, r29
/* 80B94088  2C 00 00 00 */	cmpwi r0, 0
/* 80B9408C  40 80 FF D0 */	bge lbl_80B9405C
/* 80B94090  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80B94094  28 00 00 00 */	cmplwi r0, 0
/* 80B94098  41 82 00 0C */	beq lbl_80B940A4
/* 80B9409C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B940A0  4B 47 D2 71 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80B940A4:
/* 80B940A4  34 1E 12 C4 */	addic. r0, r30, 0x12c4
/* 80B940A8  41 82 00 84 */	beq lbl_80B9412C
/* 80B940AC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80B940B0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80B940B4  90 7E 13 00 */	stw r3, 0x1300(r30)
/* 80B940B8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B940BC  90 1E 13 E4 */	stw r0, 0x13e4(r30)
/* 80B940C0  38 03 00 84 */	addi r0, r3, 0x84
/* 80B940C4  90 1E 13 FC */	stw r0, 0x13fc(r30)
/* 80B940C8  34 1E 13 C8 */	addic. r0, r30, 0x13c8
/* 80B940CC  41 82 00 54 */	beq lbl_80B94120
/* 80B940D0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80B940D4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80B940D8  90 7E 13 E4 */	stw r3, 0x13e4(r30)
/* 80B940DC  38 03 00 58 */	addi r0, r3, 0x58
/* 80B940E0  90 1E 13 FC */	stw r0, 0x13fc(r30)
/* 80B940E4  34 1E 13 E8 */	addic. r0, r30, 0x13e8
/* 80B940E8  41 82 00 10 */	beq lbl_80B940F8
/* 80B940EC  3C 60 80 BA */	lis r3, __vt__8cM3dGCyl@ha /* 0x80B9B818@ha */
/* 80B940F0  38 03 B8 18 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80B9B818@l */
/* 80B940F4  90 1E 13 FC */	stw r0, 0x13fc(r30)
lbl_80B940F8:
/* 80B940F8  34 1E 13 C8 */	addic. r0, r30, 0x13c8
/* 80B940FC  41 82 00 24 */	beq lbl_80B94120
/* 80B94100  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80B94104  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80B94108  90 1E 13 E4 */	stw r0, 0x13e4(r30)
/* 80B9410C  34 1E 13 C8 */	addic. r0, r30, 0x13c8
/* 80B94110  41 82 00 10 */	beq lbl_80B94120
/* 80B94114  3C 60 80 BA */	lis r3, __vt__8cM3dGAab@ha /* 0x80B9B824@ha */
/* 80B94118  38 03 B8 24 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80B9B824@l */
/* 80B9411C  90 1E 13 E0 */	stw r0, 0x13e0(r30)
lbl_80B94120:
/* 80B94120  38 7E 12 C4 */	addi r3, r30, 0x12c4
/* 80B94124  38 80 00 00 */	li r4, 0
/* 80B94128  4B 4E FF BD */	bl __dt__12dCcD_GObjInfFv
lbl_80B9412C:
/* 80B9412C  34 1E 0C 90 */	addic. r0, r30, 0xc90
/* 80B94130  41 82 00 24 */	beq lbl_80B94154
/* 80B94134  3C 60 80 BA */	lis r3, __vt__13daNpcF_Path_c@ha /* 0x80B9B83C@ha */
/* 80B94138  38 03 B8 3C */	addi r0, r3, __vt__13daNpcF_Path_c@l /* 0x80B9B83C@l */
/* 80B9413C  90 1E 12 BC */	stw r0, 0x12bc(r30)
/* 80B94140  34 1E 0C B0 */	addic. r0, r30, 0xcb0
/* 80B94144  41 82 00 10 */	beq lbl_80B94154
/* 80B94148  3C 60 80 BA */	lis r3, __vt__16daNpcF_SPCurve_c@ha /* 0x80B9B830@ha */
/* 80B9414C  38 03 B8 30 */	addi r0, r3, __vt__16daNpcF_SPCurve_c@l /* 0x80B9B830@l */
/* 80B94150  90 1E 12 B8 */	stw r0, 0x12b8(r30)
lbl_80B94154:
/* 80B94154  38 7E 0C 80 */	addi r3, r30, 0xc80
/* 80B94158  3C 80 80 BA */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80B9A664@ha */
/* 80B9415C  38 84 A6 64 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80B9A664@l */
/* 80B94160  38 A0 00 08 */	li r5, 8
/* 80B94164  38 C0 00 02 */	li r6, 2
/* 80B94168  4B 7C DB 81 */	bl __destroy_arr
/* 80B9416C  34 1E 0B E4 */	addic. r0, r30, 0xbe4
/* 80B94170  41 82 00 88 */	beq lbl_80B941F8
/* 80B94174  3C 60 80 BA */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x80B9B848@ha */
/* 80B94178  38 03 B8 48 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x80B9B848@l */
/* 80B9417C  90 1E 0C 7C */	stw r0, 0xc7c(r30)
/* 80B94180  38 7E 0C 60 */	addi r3, r30, 0xc60
/* 80B94184  3C 80 80 BA */	lis r4, __dt__5csXyzFv@ha /* 0x80B9A7B8@ha */
/* 80B94188  38 84 A7 B8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B9A7B8@l */
/* 80B9418C  38 A0 00 06 */	li r5, 6
/* 80B94190  38 C0 00 04 */	li r6, 4
/* 80B94194  4B 7C DB 55 */	bl __destroy_arr
/* 80B94198  38 7E 0C 48 */	addi r3, r30, 0xc48
/* 80B9419C  3C 80 80 BA */	lis r4, __dt__5csXyzFv@ha /* 0x80B9A7B8@ha */
/* 80B941A0  38 84 A7 B8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B9A7B8@l */
/* 80B941A4  38 A0 00 06 */	li r5, 6
/* 80B941A8  38 C0 00 04 */	li r6, 4
/* 80B941AC  4B 7C DB 3D */	bl __destroy_arr
/* 80B941B0  38 7E 0C 30 */	addi r3, r30, 0xc30
/* 80B941B4  3C 80 80 BA */	lis r4, __dt__5csXyzFv@ha /* 0x80B9A7B8@ha */
/* 80B941B8  38 84 A7 B8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B9A7B8@l */
/* 80B941BC  38 A0 00 06 */	li r5, 6
/* 80B941C0  38 C0 00 04 */	li r6, 4
/* 80B941C4  4B 7C DB 25 */	bl __destroy_arr
/* 80B941C8  38 7E 0C 18 */	addi r3, r30, 0xc18
/* 80B941CC  3C 80 80 BA */	lis r4, __dt__5csXyzFv@ha /* 0x80B9A7B8@ha */
/* 80B941D0  38 84 A7 B8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B9A7B8@l */
/* 80B941D4  38 A0 00 06 */	li r5, 6
/* 80B941D8  38 C0 00 04 */	li r6, 4
/* 80B941DC  4B 7C DB 0D */	bl __destroy_arr
/* 80B941E0  38 7E 0B E4 */	addi r3, r30, 0xbe4
/* 80B941E4  3C 80 80 BA */	lis r4, __dt__4cXyzFv@ha /* 0x80B9A7F8@ha */
/* 80B941E8  38 84 A7 F8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B9A7F8@l */
/* 80B941EC  38 A0 00 0C */	li r5, 0xc
/* 80B941F0  38 C0 00 04 */	li r6, 4
/* 80B941F4  4B 7C DA F5 */	bl __destroy_arr
lbl_80B941F8:
/* 80B941F8  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 80B941FC  38 80 FF FF */	li r4, -1
/* 80B94200  4B 72 C2 21 */	bl __dt__10Z2CreatureFv
/* 80B94204  7F C3 F3 78 */	mr r3, r30
/* 80B94208  38 80 00 00 */	li r4, 0
/* 80B9420C  48 00 66 2D */	bl __dt__8daNpcF_cFv
/* 80B94210  7F E0 07 35 */	extsh. r0, r31
/* 80B94214  40 81 00 0C */	ble lbl_80B94220
/* 80B94218  7F C3 F3 78 */	mr r3, r30
/* 80B9421C  4B 73 AB 21 */	bl __dl__FPv
lbl_80B94220:
/* 80B94220  7F C3 F3 78 */	mr r3, r30
/* 80B94224  39 61 00 20 */	addi r11, r1, 0x20
/* 80B94228  4B 7C DF F5 */	bl _restgpr_26
/* 80B9422C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B94230  7C 08 03 A6 */	mtlr r0
/* 80B94234  38 21 00 20 */	addi r1, r1, 0x20
/* 80B94238  4E 80 00 20 */	blr 
