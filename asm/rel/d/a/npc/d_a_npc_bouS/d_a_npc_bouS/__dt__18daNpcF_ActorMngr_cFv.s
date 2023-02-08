lbl_80977BC0:
/* 80977BC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80977BC4  7C 08 02 A6 */	mflr r0
/* 80977BC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80977BCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80977BD0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80977BD4  41 82 00 1C */	beq lbl_80977BF0
/* 80977BD8  3C A0 80 98 */	lis r5, __vt__18daNpcF_ActorMngr_c@ha /* 0x80978B34@ha */
/* 80977BDC  38 05 8B 34 */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l /* 0x80978B34@l */
/* 80977BE0  90 1F 00 04 */	stw r0, 4(r31)
/* 80977BE4  7C 80 07 35 */	extsh. r0, r4
/* 80977BE8  40 81 00 08 */	ble lbl_80977BF0
/* 80977BEC  4B 95 71 51 */	bl __dl__FPv
lbl_80977BF0:
/* 80977BF0  7F E3 FB 78 */	mr r3, r31
/* 80977BF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80977BF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80977BFC  7C 08 03 A6 */	mtlr r0
/* 80977C00  38 21 00 10 */	addi r1, r1, 0x10
/* 80977C04  4E 80 00 20 */	blr 
