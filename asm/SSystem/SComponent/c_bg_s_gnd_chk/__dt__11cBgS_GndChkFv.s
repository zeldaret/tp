lbl_80267C94:
/* 80267C94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80267C98  7C 08 02 A6 */	mflr r0
/* 80267C9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80267CA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80267CA4  93 C1 00 08 */	stw r30, 8(r1)
/* 80267CA8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80267CAC  7C 9F 23 78 */	mr r31, r4
/* 80267CB0  41 82 00 40 */	beq lbl_80267CF0
/* 80267CB4  3C 60 80 3C */	lis r3, __vt__11cBgS_GndChk@ha
/* 80267CB8  38 63 3F 90 */	addi r3, r3, __vt__11cBgS_GndChk@l
/* 80267CBC  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80267CC0  38 03 00 0C */	addi r0, r3, 0xc
/* 80267CC4  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80267CC8  38 7E 00 14 */	addi r3, r30, 0x14
/* 80267CCC  38 80 00 00 */	li r4, 0
/* 80267CD0  48 00 03 E1 */	bl __dt__13cBgS_PolyInfoFv
/* 80267CD4  7F C3 F3 78 */	mr r3, r30
/* 80267CD8  38 80 00 00 */	li r4, 0
/* 80267CDC  4B FF FE 95 */	bl __dt__8cBgS_ChkFv
/* 80267CE0  7F E0 07 35 */	extsh. r0, r31
/* 80267CE4  40 81 00 0C */	ble lbl_80267CF0
/* 80267CE8  7F C3 F3 78 */	mr r3, r30
/* 80267CEC  48 06 70 51 */	bl __dl__FPv
lbl_80267CF0:
/* 80267CF0  7F C3 F3 78 */	mr r3, r30
/* 80267CF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80267CF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80267CFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80267D00  7C 08 03 A6 */	mtlr r0
/* 80267D04  38 21 00 10 */	addi r1, r1, 0x10
/* 80267D08  4E 80 00 20 */	blr 
