lbl_800843A8:
/* 800843A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800843AC  7C 08 02 A6 */	mflr r0
/* 800843B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800843B4  4B FF FF A5 */	bl GetAtHitObj__12dCcD_GObjInfFv
/* 800843B8  28 03 00 00 */	cmplwi r3, 0
/* 800843BC  40 82 00 0C */	bne lbl_800843C8
/* 800843C0  38 60 00 00 */	li r3, 0
/* 800843C4  48 00 00 08 */	b lbl_800843CC
lbl_800843C8:
/* 800843C8  48 00 03 D5 */	bl dCcD_GetGObjInf__FP8cCcD_Obj
lbl_800843CC:
/* 800843CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800843D0  7C 08 03 A6 */	mtlr r0
/* 800843D4  38 21 00 10 */	addi r1, r1, 0x10
/* 800843D8  4E 80 00 20 */	blr 
