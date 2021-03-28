lbl_80476B68:
/* 80476B68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80476B6C  7C 08 02 A6 */	mflr r0
/* 80476B70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80476B74  4B FF FF 91 */	bl cc_damage_proc_kotubo__12daObjCarry_cFv
/* 80476B78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80476B7C  7C 08 03 A6 */	mtlr r0
/* 80476B80  38 21 00 10 */	addi r1, r1, 0x10
/* 80476B84  4E 80 00 20 */	blr 
