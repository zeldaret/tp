lbl_809824CC:
/* 809824CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809824D0  7C 08 02 A6 */	mflr r0
/* 809824D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809824D8  38 80 00 00 */	li r4, 0
/* 809824DC  38 A0 00 00 */	li r5, 0
/* 809824E0  3C C0 80 98 */	lis r6, m__17daNpcChat_Param_c@ha /* 0x80986D3C@ha */
/* 809824E4  38 C6 6D 3C */	addi r6, r6, m__17daNpcChat_Param_c@l /* 0x80986D3C@l */
/* 809824E8  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 809824EC  38 C0 00 00 */	li r6, 0
/* 809824F0  38 E0 00 00 */	li r7, 0
/* 809824F4  48 00 00 19 */	bl draw__11daNpcChat_cFiifP11_GXColorS10i
/* 809824F8  38 60 00 01 */	li r3, 1
/* 809824FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80982500  7C 08 03 A6 */	mtlr r0
/* 80982504  38 21 00 10 */	addi r1, r1, 0x10
/* 80982508  4E 80 00 20 */	blr 
