lbl_80281DE0:
/* 80281DE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80281DE4  7C 08 02 A6 */	mflr r0
/* 80281DE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80281DEC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80281DF0  7C 7F 1B 78 */	mr r31, r3
/* 80281DF4  38 7F 00 04 */	addi r3, r31, 4
/* 80281DF8  4B FF F8 F1 */	bl refer_initialize__Q27JStudio29TFunctionValueAttribute_referFv
/* 80281DFC  38 00 00 00 */	li r0, 0
/* 80281E00  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80281E04  90 01 00 08 */	stw r0, 8(r1)
/* 80281E08  C8 01 00 08 */	lfd f0, 8(r1)
/* 80281E0C  D8 1F 00 20 */	stfd f0, 0x20(r31)
/* 80281E10  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80281E14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80281E18  7C 08 03 A6 */	mtlr r0
/* 80281E1C  38 21 00 20 */	addi r1, r1, 0x20
/* 80281E20  4E 80 00 20 */	blr 
