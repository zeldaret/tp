lbl_8096BF90:
/* 8096BF90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096BF94  7C 08 02 A6 */	mflr r0
/* 8096BF98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096BF9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8096BFA0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8096BFA4  41 82 00 1C */	beq lbl_8096BFC0
/* 8096BFA8  3C A0 80 97 */	lis r5, __vt__18daNpcF_ActorMngr_c@ha
/* 8096BFAC  38 05 CE 44 */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l
/* 8096BFB0  90 1F 00 04 */	stw r0, 4(r31)
/* 8096BFB4  7C 80 07 35 */	extsh. r0, r4
/* 8096BFB8  40 81 00 08 */	ble lbl_8096BFC0
/* 8096BFBC  4B 96 2D 80 */	b __dl__FPv
lbl_8096BFC0:
/* 8096BFC0  7F E3 FB 78 */	mr r3, r31
/* 8096BFC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8096BFC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096BFCC  7C 08 03 A6 */	mtlr r0
/* 8096BFD0  38 21 00 10 */	addi r1, r1, 0x10
/* 8096BFD4  4E 80 00 20 */	blr 
