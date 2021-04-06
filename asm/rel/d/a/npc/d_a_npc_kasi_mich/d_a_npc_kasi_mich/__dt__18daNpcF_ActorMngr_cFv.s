lbl_80A29774:
/* 80A29774  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A29778  7C 08 02 A6 */	mflr r0
/* 80A2977C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A29780  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A29784  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A29788  41 82 00 1C */	beq lbl_80A297A4
/* 80A2978C  3C A0 80 A3 */	lis r5, __vt__18daNpcF_ActorMngr_c@ha /* 0x80A2A740@ha */
/* 80A29790  38 05 A7 40 */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l /* 0x80A2A740@l */
/* 80A29794  90 1F 00 04 */	stw r0, 4(r31)
/* 80A29798  7C 80 07 35 */	extsh. r0, r4
/* 80A2979C  40 81 00 08 */	ble lbl_80A297A4
/* 80A297A0  4B 8A 55 9D */	bl __dl__FPv
lbl_80A297A4:
/* 80A297A4  7F E3 FB 78 */	mr r3, r31
/* 80A297A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A297AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A297B0  7C 08 03 A6 */	mtlr r0
/* 80A297B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A297B8  4E 80 00 20 */	blr 
