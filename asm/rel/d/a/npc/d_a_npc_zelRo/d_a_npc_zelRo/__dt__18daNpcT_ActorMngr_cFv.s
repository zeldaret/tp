lbl_80B74470:
/* 80B74470  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B74474  7C 08 02 A6 */	mflr r0
/* 80B74478  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7447C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B74480  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B74484  41 82 00 1C */	beq lbl_80B744A0
/* 80B74488  3C A0 80 B7 */	lis r5, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B74F18@ha */
/* 80B7448C  38 05 4F 18 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l /* 0x80B74F18@l */
/* 80B74490  90 1F 00 04 */	stw r0, 4(r31)
/* 80B74494  7C 80 07 35 */	extsh. r0, r4
/* 80B74498  40 81 00 08 */	ble lbl_80B744A0
/* 80B7449C  4B 75 A8 A1 */	bl __dl__FPv
lbl_80B744A0:
/* 80B744A0  7F E3 FB 78 */	mr r3, r31
/* 80B744A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B744A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B744AC  7C 08 03 A6 */	mtlr r0
/* 80B744B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B744B4  4E 80 00 20 */	blr 
