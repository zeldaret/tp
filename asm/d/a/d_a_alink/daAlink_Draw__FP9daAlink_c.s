lbl_800CD78C:
/* 800CD78C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800CD790  7C 08 02 A6 */	mflr r0
/* 800CD794  90 01 00 14 */	stw r0, 0x14(r1)
/* 800CD798  4B FF F0 65 */	bl draw__9daAlink_cFv
/* 800CD79C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800CD7A0  7C 08 03 A6 */	mtlr r0
/* 800CD7A4  38 21 00 10 */	addi r1, r1, 0x10
/* 800CD7A8  4E 80 00 20 */	blr 
