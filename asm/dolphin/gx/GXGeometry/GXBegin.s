lbl_8035C764:
/* 8035C764  7C 08 02 A6 */	mflr r0
/* 8035C768  90 01 00 04 */	stw r0, 4(r1)
/* 8035C76C  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8035C770  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8035C774  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8035C778  3B C5 00 00 */	addi r30, r5, 0
/* 8035C77C  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 8035C780  3B A4 00 00 */	addi r29, r4, 0
/* 8035C784  93 81 00 18 */	stw r28, 0x18(r1)
/* 8035C788  3B 83 00 00 */	addi r28, r3, 0
/* 8035C78C  80 C2 CB 80 */	lwz r6, __GXData(r2)
/* 8035C790  83 E6 05 AC */	lwz r31, 0x5ac(r6)
/* 8035C794  28 1F 00 00 */	cmplwi r31, 0
/* 8035C798  41 82 00 58 */	beq lbl_8035C7F0
/* 8035C79C  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 8035C7A0  41 82 00 08 */	beq lbl_8035C7A8
/* 8035C7A4  48 00 20 4D */	bl __GXSetSUTexRegs
lbl_8035C7A8:
/* 8035C7A8  57 E0 07 BD */	rlwinm. r0, r31, 0, 0x1e, 0x1e
/* 8035C7AC  41 82 00 08 */	beq lbl_8035C7B4
/* 8035C7B0  48 00 29 91 */	bl __GXUpdateBPMask
lbl_8035C7B4:
/* 8035C7B4  57 E0 07 7B */	rlwinm. r0, r31, 0, 0x1d, 0x1d
/* 8035C7B8  41 82 00 08 */	beq lbl_8035C7C0
/* 8035C7BC  48 00 02 25 */	bl __GXSetGenMode
lbl_8035C7C0:
/* 8035C7C0  57 E0 07 39 */	rlwinm. r0, r31, 0, 0x1c, 0x1c
/* 8035C7C4  41 82 00 08 */	beq lbl_8035C7CC
/* 8035C7C8  4B FF EB E5 */	bl __GXSetVCD
lbl_8035C7CC:
/* 8035C7CC  57 E0 06 F7 */	rlwinm. r0, r31, 0, 0x1b, 0x1b
/* 8035C7D0  41 82 00 08 */	beq lbl_8035C7D8
/* 8035C7D4  4B FF F2 CD */	bl __GXSetVAT
lbl_8035C7D8:
/* 8035C7D8  57 E0 06 F9 */	rlwinm. r0, r31, 0, 0x1b, 0x1c
/* 8035C7DC  41 82 00 08 */	beq lbl_8035C7E4
/* 8035C7E0  4B FF EC 89 */	bl __GXCalculateVLim
lbl_8035C7E4:
/* 8035C7E4  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035C7E8  38 00 00 00 */	li r0, 0
/* 8035C7EC  90 03 05 AC */	stw r0, 0x5ac(r3)
lbl_8035C7F0:
/* 8035C7F0  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035C7F4  80 03 00 00 */	lwz r0, 0(r3)
/* 8035C7F8  28 00 00 00 */	cmplwi r0, 0
/* 8035C7FC  40 82 00 08 */	bne lbl_8035C804
/* 8035C800  48 00 00 35 */	bl __GXSendFlushPrim
lbl_8035C804:
/* 8035C804  7F A0 E3 78 */	or r0, r29, r28
/* 8035C808  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 8035C80C  98 03 80 00 */	stb r0, 0x8000(r3)  /* 0xCC008000@l */
/* 8035C810  B3 C3 80 00 */	sth r30, -0x8000(r3)
/* 8035C814  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8035C818  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8035C81C  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8035C820  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 8035C824  83 81 00 18 */	lwz r28, 0x18(r1)
/* 8035C828  38 21 00 28 */	addi r1, r1, 0x28
/* 8035C82C  7C 08 03 A6 */	mtlr r0
/* 8035C830  4E 80 00 20 */	blr 
