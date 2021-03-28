lbl_80878C04:
/* 80878C04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80878C08  7C 08 02 A6 */	mflr r0
/* 80878C0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80878C10  4B FF FF CD */	bl fopAcM_GetParam__FPCv
/* 80878C14  54 63 06 7E */	clrlwi r3, r3, 0x19
/* 80878C18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80878C1C  7C 08 03 A6 */	mtlr r0
/* 80878C20  38 21 00 10 */	addi r1, r1, 0x10
/* 80878C24  4E 80 00 20 */	blr 
