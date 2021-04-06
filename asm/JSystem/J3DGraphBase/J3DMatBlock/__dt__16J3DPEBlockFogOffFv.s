lbl_80321BC4:
/* 80321BC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80321BC8  7C 08 02 A6 */	mflr r0
/* 80321BCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80321BD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80321BD4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80321BD8  41 82 00 30 */	beq lbl_80321C08
/* 80321BDC  3C 60 80 3D */	lis r3, __vt__16J3DPEBlockFogOff@ha /* 0x803CE06C@ha */
/* 80321BE0  38 03 E0 6C */	addi r0, r3, __vt__16J3DPEBlockFogOff@l /* 0x803CE06C@l */
/* 80321BE4  90 1F 00 00 */	stw r0, 0(r31)
/* 80321BE8  41 82 00 10 */	beq lbl_80321BF8
/* 80321BEC  3C 60 80 3D */	lis r3, __vt__10J3DPEBlock@ha /* 0x803CDD20@ha */
/* 80321BF0  38 03 DD 20 */	addi r0, r3, __vt__10J3DPEBlock@l /* 0x803CDD20@l */
/* 80321BF4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80321BF8:
/* 80321BF8  7C 80 07 35 */	extsh. r0, r4
/* 80321BFC  40 81 00 0C */	ble lbl_80321C08
/* 80321C00  7F E3 FB 78 */	mr r3, r31
/* 80321C04  4B FA D1 39 */	bl __dl__FPv
lbl_80321C08:
/* 80321C08  7F E3 FB 78 */	mr r3, r31
/* 80321C0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80321C10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80321C14  7C 08 03 A6 */	mtlr r0
/* 80321C18  38 21 00 10 */	addi r1, r1, 0x10
/* 80321C1C  4E 80 00 20 */	blr 
