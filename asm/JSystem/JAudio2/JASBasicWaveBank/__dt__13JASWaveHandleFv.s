lbl_80298BD0:
/* 80298BD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80298BD4  7C 08 02 A6 */	mflr r0
/* 80298BD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80298BDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80298BE0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80298BE4  41 82 00 1C */	beq lbl_80298C00
/* 80298BE8  3C A0 80 3C */	lis r5, __vt__13JASWaveHandle@ha /* 0x803C7754@ha */
/* 80298BEC  38 05 77 54 */	addi r0, r5, __vt__13JASWaveHandle@l /* 0x803C7754@l */
/* 80298BF0  90 1F 00 00 */	stw r0, 0(r31)
/* 80298BF4  7C 80 07 35 */	extsh. r0, r4
/* 80298BF8  40 81 00 08 */	ble lbl_80298C00
/* 80298BFC  48 03 61 41 */	bl __dl__FPv
lbl_80298C00:
/* 80298C00  7F E3 FB 78 */	mr r3, r31
/* 80298C04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80298C08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80298C0C  7C 08 03 A6 */	mtlr r0
/* 80298C10  38 21 00 10 */	addi r1, r1, 0x10
/* 80298C14  4E 80 00 20 */	blr 
