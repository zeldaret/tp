lbl_8035C6E4:
/* 8035C6E4  7C 08 02 A6 */	mflr r0
/* 8035C6E8  90 01 00 04 */	stw r0, 4(r1)
/* 8035C6EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035C6F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8035C6F4  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035C6F8  83 E3 05 AC */	lwz r31, 0x5ac(r3)
/* 8035C6FC  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 8035C700  41 82 00 08 */	beq lbl_8035C708
/* 8035C704  48 00 20 ED */	bl __GXSetSUTexRegs
lbl_8035C708:
/* 8035C708  57 E0 07 BD */	rlwinm. r0, r31, 0, 0x1e, 0x1e
/* 8035C70C  41 82 00 08 */	beq lbl_8035C714
/* 8035C710  48 00 2A 31 */	bl __GXUpdateBPMask
lbl_8035C714:
/* 8035C714  57 E0 07 7B */	rlwinm. r0, r31, 0, 0x1d, 0x1d
/* 8035C718  41 82 00 08 */	beq lbl_8035C720
/* 8035C71C  48 00 02 C5 */	bl __GXSetGenMode
lbl_8035C720:
/* 8035C720  57 E0 07 39 */	rlwinm. r0, r31, 0, 0x1c, 0x1c
/* 8035C724  41 82 00 08 */	beq lbl_8035C72C
/* 8035C728  4B FF EC 85 */	bl __GXSetVCD
lbl_8035C72C:
/* 8035C72C  57 E0 06 F7 */	rlwinm. r0, r31, 0, 0x1b, 0x1b
/* 8035C730  41 82 00 08 */	beq lbl_8035C738
/* 8035C734  4B FF F3 6D */	bl __GXSetVAT
lbl_8035C738:
/* 8035C738  57 E0 06 F9 */	rlwinm. r0, r31, 0, 0x1b, 0x1c
/* 8035C73C  41 82 00 08 */	beq lbl_8035C744
/* 8035C740  4B FF ED 29 */	bl __GXCalculateVLim
lbl_8035C744:
/* 8035C744  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035C748  38 00 00 00 */	li r0, 0
/* 8035C74C  90 03 05 AC */	stw r0, 0x5ac(r3)
/* 8035C750  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035C754  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8035C758  38 21 00 10 */	addi r1, r1, 0x10
/* 8035C75C  7C 08 03 A6 */	mtlr r0
/* 8035C760  4E 80 00 20 */	blr 
