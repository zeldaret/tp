lbl_80263B58:
/* 80263B58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80263B5C  7C 08 02 A6 */	mflr r0
/* 80263B60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80263B64  38 63 00 20 */	addi r3, r3, 0x20
/* 80263B68  38 84 00 20 */	addi r4, r4, 0x20
/* 80263B6C  48 00 BC 45 */	bl cross__8cM3dGTriCFPC8cM3dGCylP3Vec
/* 80263B70  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80263B74  30 03 FF FF */	addic r0, r3, -1
/* 80263B78  7C 00 19 10 */	subfe r0, r0, r3
/* 80263B7C  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80263B80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80263B84  7C 08 03 A6 */	mtlr r0
/* 80263B88  38 21 00 10 */	addi r1, r1, 0x10
/* 80263B8C  4E 80 00 20 */	blr 
