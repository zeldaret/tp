lbl_80015544:
/* 80015544  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80015548  7C 08 02 A6 */	mflr r0
/* 8001554C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80015550  3C 60 80 3A */	lis r3, __vt__11J3DUClipper@ha
/* 80015554  38 03 34 98 */	addi r0, r3, __vt__11J3DUClipper@l
/* 80015558  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha
/* 8001555C  94 03 D8 E4 */	stwu r0, mClipper__14mDoLib_clipper@l(r3)
/* 80015560  48 25 E2 19 */	bl init__11J3DUClipperFv
/* 80015564  3C 60 80 3E */	lis r3, mClipper__14mDoLib_clipper@ha
/* 80015568  38 63 D8 E4 */	addi r3, r3, mClipper__14mDoLib_clipper@l
/* 8001556C  3C 80 80 01 */	lis r4, __dt__11J3DUClipperFv@ha
/* 80015570  38 84 55 90 */	addi r4, r4, __dt__11J3DUClipperFv@l
/* 80015574  3C A0 80 3E */	lis r5, lit_3727@ha
/* 80015578  38 A5 D8 D8 */	addi r5, r5, lit_3727@l
/* 8001557C  48 34 C6 A9 */	bl __register_global_object
/* 80015580  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80015584  7C 08 03 A6 */	mtlr r0
/* 80015588  38 21 00 10 */	addi r1, r1, 0x10
/* 8001558C  4E 80 00 20 */	blr 
