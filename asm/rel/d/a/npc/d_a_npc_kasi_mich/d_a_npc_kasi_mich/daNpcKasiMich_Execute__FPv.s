lbl_80A29684:
/* 80A29684  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A29688  7C 08 02 A6 */	mflr r0
/* 80A2968C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A29690  4B FF D3 C9 */	bl Execute__15daNpcKasiMich_cFv
/* 80A29694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A29698  7C 08 03 A6 */	mtlr r0
/* 80A2969C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A296A0  4E 80 00 20 */	blr 
