lbl_80B45200:
/* 80B45200  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B45204  7C 08 02 A6 */	mflr r0
/* 80B45208  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4520C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B45210  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B45214  41 82 00 1C */	beq lbl_80B45230
/* 80B45218  3C A0 80 B4 */	lis r5, __vt__13daNpcT_Path_c@ha
/* 80B4521C  38 05 63 8C */	addi r0, r5, __vt__13daNpcT_Path_c@l
/* 80B45220  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80B45224  7C 80 07 35 */	extsh. r0, r4
/* 80B45228  40 81 00 08 */	ble lbl_80B45230
/* 80B4522C  4B 78 9B 10 */	b __dl__FPv
lbl_80B45230:
/* 80B45230  7F E3 FB 78 */	mr r3, r31
/* 80B45234  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B45238  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4523C  7C 08 03 A6 */	mtlr r0
/* 80B45240  38 21 00 10 */	addi r1, r1, 0x10
/* 80B45244  4E 80 00 20 */	blr 
