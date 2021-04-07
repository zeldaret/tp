lbl_808772CC:
/* 808772CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808772D0  7C 08 02 A6 */	mflr r0
/* 808772D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 808772D8  4B AC 45 15 */	bl LCDisable
/* 808772DC  4B FF FE 7D */	bl daMP_audioQuitWithMSound__Fv
/* 808772E0  38 00 00 00 */	li r0, 0
/* 808772E4  3C 60 80 94 */	lis r3, daMP_Initialized@ha /* 0x80944888@ha */
/* 808772E8  90 03 48 88 */	stw r0, daMP_Initialized@l(r3)  /* 0x80944888@l */
/* 808772EC  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha /* 0x80879BD0@ha */
/* 808772F0  38 63 9B D0 */	addi r3, r3, daMP_ActivePlayer@l /* 0x80879BD0@l */
/* 808772F4  90 03 00 A8 */	stw r0, 0xa8(r3)
/* 808772F8  90 03 00 AC */	stw r0, 0xac(r3)
/* 808772FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80877300  7C 08 03 A6 */	mtlr r0
/* 80877304  38 21 00 10 */	addi r1, r1, 0x10
/* 80877308  4E 80 00 20 */	blr 
