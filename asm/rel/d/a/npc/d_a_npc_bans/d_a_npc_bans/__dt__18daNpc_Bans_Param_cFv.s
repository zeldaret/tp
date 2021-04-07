lbl_80967C24:
/* 80967C24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80967C28  7C 08 02 A6 */	mflr r0
/* 80967C2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80967C30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80967C34  7C 7F 1B 79 */	or. r31, r3, r3
/* 80967C38  41 82 00 1C */	beq lbl_80967C54
/* 80967C3C  3C A0 80 97 */	lis r5, __vt__18daNpc_Bans_Param_c@ha /* 0x80968840@ha */
/* 80967C40  38 05 88 40 */	addi r0, r5, __vt__18daNpc_Bans_Param_c@l /* 0x80968840@l */
/* 80967C44  90 1F 00 00 */	stw r0, 0(r31)
/* 80967C48  7C 80 07 35 */	extsh. r0, r4
/* 80967C4C  40 81 00 08 */	ble lbl_80967C54
/* 80967C50  4B 96 70 ED */	bl __dl__FPv
lbl_80967C54:
/* 80967C54  7F E3 FB 78 */	mr r3, r31
/* 80967C58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80967C5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80967C60  7C 08 03 A6 */	mtlr r0
/* 80967C64  38 21 00 10 */	addi r1, r1, 0x10
/* 80967C68  4E 80 00 20 */	blr 
