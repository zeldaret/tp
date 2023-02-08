lbl_80B45FE0:
/* 80B45FE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B45FE4  7C 08 02 A6 */	mflr r0
/* 80B45FE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B45FEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B45FF0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B45FF4  41 82 00 1C */	beq lbl_80B46010
/* 80B45FF8  3C A0 80 B4 */	lis r5, __vt__19daNpc_yamiD_Param_c@ha /* 0x80B4645C@ha */
/* 80B45FFC  38 05 64 5C */	addi r0, r5, __vt__19daNpc_yamiD_Param_c@l /* 0x80B4645C@l */
/* 80B46000  90 1F 00 00 */	stw r0, 0(r31)
/* 80B46004  7C 80 07 35 */	extsh. r0, r4
/* 80B46008  40 81 00 08 */	ble lbl_80B46010
/* 80B4600C  4B 78 8D 31 */	bl __dl__FPv
lbl_80B46010:
/* 80B46010  7F E3 FB 78 */	mr r3, r31
/* 80B46014  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B46018  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4601C  7C 08 03 A6 */	mtlr r0
/* 80B46020  38 21 00 10 */	addi r1, r1, 0x10
/* 80B46024  4E 80 00 20 */	blr 
