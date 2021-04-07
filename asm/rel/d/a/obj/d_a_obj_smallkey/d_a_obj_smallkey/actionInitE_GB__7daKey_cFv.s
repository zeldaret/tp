lbl_80CDB36C:
/* 80CDB36C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDB370  7C 08 02 A6 */	mflr r0
/* 80CDB374  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDB378  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDB37C  7C 7F 1B 78 */	mr r31, r3
/* 80CDB380  80 03 05 5C */	lwz r0, 0x55c(r3)
/* 80CDB384  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80CDB388  90 03 05 5C */	stw r0, 0x55c(r3)
/* 80CDB38C  80 03 07 F8 */	lwz r0, 0x7f8(r3)
/* 80CDB390  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80CDB394  90 03 07 F8 */	stw r0, 0x7f8(r3)
/* 80CDB398  80 03 08 0C */	lwz r0, 0x80c(r3)
/* 80CDB39C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80CDB3A0  90 03 08 0C */	stw r0, 0x80c(r3)
/* 80CDB3A4  4B FF FC 11 */	bl effectSet__7daKey_cFv
/* 80CDB3A8  3C 60 80 CE */	lis r3, lit_3875@ha /* 0x80CDB838@ha */
/* 80CDB3AC  C0 03 B8 38 */	lfs f0, lit_3875@l(r3)  /* 0x80CDB838@l */
/* 80CDB3B0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80CDB3B4  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80CDB3B8  38 00 00 07 */	li r0, 7
/* 80CDB3BC  98 1F 09 34 */	stb r0, 0x934(r31)
/* 80CDB3C0  38 60 00 01 */	li r3, 1
/* 80CDB3C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDB3C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDB3CC  7C 08 03 A6 */	mtlr r0
/* 80CDB3D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDB3D4  4E 80 00 20 */	blr 
