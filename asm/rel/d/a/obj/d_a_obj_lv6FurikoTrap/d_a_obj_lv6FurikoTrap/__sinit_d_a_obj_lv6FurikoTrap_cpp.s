lbl_80C730AC:
/* 80C730AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C730B0  7C 08 02 A6 */	mflr r0
/* 80C730B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C730B8  3C 60 80 C7 */	lis r3, l_HIO@ha /* 0x80C732D4@ha */
/* 80C730BC  38 63 32 D4 */	addi r3, r3, l_HIO@l /* 0x80C732D4@l */
/* 80C730C0  4B FF F3 CD */	bl __ct__21daLv6FurikoTrap_HIO_cFv
/* 80C730C4  3C 80 80 C7 */	lis r4, __dt__21daLv6FurikoTrap_HIO_cFv@ha /* 0x80C73050@ha */
/* 80C730C8  38 84 30 50 */	addi r4, r4, __dt__21daLv6FurikoTrap_HIO_cFv@l /* 0x80C73050@l */
/* 80C730CC  3C A0 80 C7 */	lis r5, lit_3619@ha /* 0x80C732C8@ha */
/* 80C730D0  38 A5 32 C8 */	addi r5, r5, lit_3619@l /* 0x80C732C8@l */
/* 80C730D4  4B FF F3 45 */	bl __register_global_object
/* 80C730D8  3C 60 80 C7 */	lis r3, mCcDSph__17daLv6FurikoTrap_c@ha /* 0x80C731A4@ha */
/* 80C730DC  38 63 31 A4 */	addi r3, r3, mCcDSph__17daLv6FurikoTrap_c@l /* 0x80C731A4@l */
/* 80C730E0  38 A3 FF FC */	addi r5, r3, -4
/* 80C730E4  3C 60 80 C7 */	lis r3, mCcDObjInfo__17daLv6FurikoTrap_c@ha /* 0x80C73138@ha */
/* 80C730E8  38 63 31 38 */	addi r3, r3, mCcDObjInfo__17daLv6FurikoTrap_c@l /* 0x80C73138@l */
/* 80C730EC  38 83 FF FC */	addi r4, r3, -4
/* 80C730F0  38 00 00 06 */	li r0, 6
/* 80C730F4  7C 09 03 A6 */	mtctr r0
lbl_80C730F8:
/* 80C730F8  80 64 00 04 */	lwz r3, 4(r4)
/* 80C730FC  84 04 00 08 */	lwzu r0, 8(r4)
/* 80C73100  90 65 00 04 */	stw r3, 4(r5)
/* 80C73104  94 05 00 08 */	stwu r0, 8(r5)
/* 80C73108  42 00 FF F0 */	bdnz lbl_80C730F8
/* 80C7310C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C73110  7C 08 03 A6 */	mtlr r0
/* 80C73114  38 21 00 10 */	addi r1, r1, 0x10
/* 80C73118  4E 80 00 20 */	blr 
