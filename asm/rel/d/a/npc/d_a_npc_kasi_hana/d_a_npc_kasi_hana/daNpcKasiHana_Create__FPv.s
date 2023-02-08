lbl_80A20544:
/* 80A20544  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A20548  7C 08 02 A6 */	mflr r0
/* 80A2054C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A20550  4B FF BD E5 */	bl Create__15daNpcKasiHana_cFv
/* 80A20554  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A20558  7C 08 03 A6 */	mtlr r0
/* 80A2055C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A20560  4E 80 00 20 */	blr 
