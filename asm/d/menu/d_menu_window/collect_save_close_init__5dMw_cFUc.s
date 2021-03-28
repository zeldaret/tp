lbl_801FA5E8:
/* 801FA5E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FA5EC  7C 08 02 A6 */	mflr r0
/* 801FA5F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FA5F4  48 00 28 15 */	bl dMw_fade_out__5dMw_cFv
/* 801FA5F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FA5FC  7C 08 03 A6 */	mtlr r0
/* 801FA600  38 21 00 10 */	addi r1, r1, 0x10
/* 801FA604  4E 80 00 20 */	blr 
