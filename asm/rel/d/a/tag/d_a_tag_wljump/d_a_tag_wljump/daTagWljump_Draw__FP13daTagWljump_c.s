lbl_80D658A4:
/* 80D658A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D658A8  7C 08 02 A6 */	mflr r0
/* 80D658AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D658B0  4B FF FF ED */	bl draw__13daTagWljump_cFv
/* 80D658B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D658B8  7C 08 03 A6 */	mtlr r0
/* 80D658BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D658C0  4E 80 00 20 */	blr 
