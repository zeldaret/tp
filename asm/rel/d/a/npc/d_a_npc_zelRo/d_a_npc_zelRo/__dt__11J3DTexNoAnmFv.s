lbl_80B726D0:
/* 80B726D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B726D4  7C 08 02 A6 */	mflr r0
/* 80B726D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B726DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B726E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B726E4  41 82 00 1C */	beq lbl_80B72700
/* 80B726E8  3C A0 80 B7 */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x80B74EAC@ha */
/* 80B726EC  38 05 4E AC */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x80B74EAC@l */
/* 80B726F0  90 1F 00 00 */	stw r0, 0(r31)
/* 80B726F4  7C 80 07 35 */	extsh. r0, r4
/* 80B726F8  40 81 00 08 */	ble lbl_80B72700
/* 80B726FC  4B 75 C6 41 */	bl __dl__FPv
lbl_80B72700:
/* 80B72700  7F E3 FB 78 */	mr r3, r31
/* 80B72704  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B72708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7270C  7C 08 03 A6 */	mtlr r0
/* 80B72710  38 21 00 10 */	addi r1, r1, 0x10
/* 80B72714  4E 80 00 20 */	blr 
