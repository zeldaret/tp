lbl_80B2BF98:
/* 80B2BF98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2BF9C  7C 08 02 A6 */	mflr r0
/* 80B2BFA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2BFA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B2BFA8  7C 7F 1B 78 */	mr r31, r3
/* 80B2BFAC  3C 80 80 B3 */	lis r4, __vt__18daNpcT_ActorMngr_c@ha
/* 80B2BFB0  38 04 DC 00 */	addi r0, r4, __vt__18daNpcT_ActorMngr_c@l
/* 80B2BFB4  90 03 00 04 */	stw r0, 4(r3)
/* 80B2BFB8  4B 61 97 1C */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B2BFBC  7F E3 FB 78 */	mr r3, r31
/* 80B2BFC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B2BFC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2BFC8  7C 08 03 A6 */	mtlr r0
/* 80B2BFCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2BFD0  4E 80 00 20 */	blr 
