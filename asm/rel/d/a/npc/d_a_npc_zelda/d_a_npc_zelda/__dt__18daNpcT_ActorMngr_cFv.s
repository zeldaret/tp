lbl_80B77768:
/* 80B77768  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7776C  7C 08 02 A6 */	mflr r0
/* 80B77770  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B77774  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B77778  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B7777C  41 82 00 1C */	beq lbl_80B77798
/* 80B77780  3C A0 80 B8 */	lis r5, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B782FC@ha */
/* 80B77784  38 05 82 FC */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l /* 0x80B782FC@l */
/* 80B77788  90 1F 00 04 */	stw r0, 4(r31)
/* 80B7778C  7C 80 07 35 */	extsh. r0, r4
/* 80B77790  40 81 00 08 */	ble lbl_80B77798
/* 80B77794  4B 75 75 A9 */	bl __dl__FPv
lbl_80B77798:
/* 80B77798  7F E3 FB 78 */	mr r3, r31
/* 80B7779C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B777A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B777A4  7C 08 03 A6 */	mtlr r0
/* 80B777A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B777AC  4E 80 00 20 */	blr 
