lbl_80A296A4:
/* 80A296A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A296A8  7C 08 02 A6 */	mflr r0
/* 80A296AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A296B0  4B FF D3 D5 */	bl Draw__15daNpcKasiMich_cFv
/* 80A296B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A296B8  7C 08 03 A6 */	mtlr r0
/* 80A296BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A296C0  4E 80 00 20 */	blr 
