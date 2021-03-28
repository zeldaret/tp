lbl_80267DBC:
/* 80267DBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80267DC0  7C 08 02 A6 */	mflr r0
/* 80267DC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80267DC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80267DCC  93 C1 00 08 */	stw r30, 8(r1)
/* 80267DD0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80267DD4  7C 9F 23 78 */	mr r31, r4
/* 80267DD8  41 82 00 54 */	beq lbl_80267E2C
/* 80267DDC  3C 60 80 3C */	lis r3, __vt__11cBgS_LinChk@ha
/* 80267DE0  38 63 3F A8 */	addi r3, r3, __vt__11cBgS_LinChk@l
/* 80267DE4  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80267DE8  38 03 00 0C */	addi r0, r3, 0xc
/* 80267DEC  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80267DF0  34 1E 00 24 */	addic. r0, r30, 0x24
/* 80267DF4  41 82 00 10 */	beq lbl_80267E04
/* 80267DF8  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha
/* 80267DFC  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l
/* 80267E00  90 1E 00 3C */	stw r0, 0x3c(r30)
lbl_80267E04:
/* 80267E04  38 7E 00 14 */	addi r3, r30, 0x14
/* 80267E08  38 80 00 00 */	li r4, 0
/* 80267E0C  48 00 02 A5 */	bl __dt__13cBgS_PolyInfoFv
/* 80267E10  7F C3 F3 78 */	mr r3, r30
/* 80267E14  38 80 00 00 */	li r4, 0
/* 80267E18  4B FF FD 59 */	bl __dt__8cBgS_ChkFv
/* 80267E1C  7F E0 07 35 */	extsh. r0, r31
/* 80267E20  40 81 00 0C */	ble lbl_80267E2C
/* 80267E24  7F C3 F3 78 */	mr r3, r30
/* 80267E28  48 06 6F 15 */	bl __dl__FPv
lbl_80267E2C:
/* 80267E2C  7F C3 F3 78 */	mr r3, r30
/* 80267E30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80267E34  83 C1 00 08 */	lwz r30, 8(r1)
/* 80267E38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80267E3C  7C 08 03 A6 */	mtlr r0
/* 80267E40  38 21 00 10 */	addi r1, r1, 0x10
/* 80267E44  4E 80 00 20 */	blr 
