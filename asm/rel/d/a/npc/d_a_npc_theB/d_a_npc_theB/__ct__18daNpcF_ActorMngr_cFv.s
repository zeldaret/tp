lbl_80B00474:
/* 80B00474  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B00478  7C 08 02 A6 */	mflr r0
/* 80B0047C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B00480  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B00484  7C 7F 1B 78 */	mr r31, r3
/* 80B00488  3C 80 80 B0 */	lis r4, __vt__18daNpcF_ActorMngr_c@ha /* 0x80B012CC@ha */
/* 80B0048C  38 04 12 CC */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l /* 0x80B012CC@l */
/* 80B00490  90 03 00 04 */	stw r0, 4(r3)
/* 80B00494  4B 65 02 1D */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80B00498  7F E3 FB 78 */	mr r3, r31
/* 80B0049C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B004A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B004A4  7C 08 03 A6 */	mtlr r0
/* 80B004A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B004AC  4E 80 00 20 */	blr 
