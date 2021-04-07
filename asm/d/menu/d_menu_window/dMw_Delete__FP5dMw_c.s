lbl_801FD888:
/* 801FD888  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FD88C  7C 08 02 A6 */	mflr r0
/* 801FD890  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FD894  4B FF FD E9 */	bl _delete__5dMw_cFv
/* 801FD898  2C 03 00 00 */	cmpwi r3, 0
/* 801FD89C  41 82 00 14 */	beq lbl_801FD8B0
/* 801FD8A0  38 00 00 00 */	li r0, 0
/* 801FD8A4  3C 80 80 43 */	lis r4, g_meter2_info@ha /* 0x80430188@ha */
/* 801FD8A8  38 84 01 88 */	addi r4, r4, g_meter2_info@l /* 0x80430188@l */
/* 801FD8AC  90 04 00 24 */	stw r0, 0x24(r4)
lbl_801FD8B0:
/* 801FD8B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FD8B4  7C 08 03 A6 */	mtlr r0
/* 801FD8B8  38 21 00 10 */	addi r1, r1, 0x10
/* 801FD8BC  4E 80 00 20 */	blr 
