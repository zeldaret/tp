lbl_80C0C364:
/* 80C0C364  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C0C368  7C 08 02 A6 */	mflr r0
/* 80C0C36C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C0C370  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C0C374  7C 7F 1B 78 */	mr r31, r3
/* 80C0C378  3C 80 80 C1 */	lis r4, lit_9223@ha /* 0x80C0FD7C@ha */
/* 80C0C37C  C0 24 FD 7C */	lfs f1, lit_9223@l(r4)  /* 0x80C0FD7C@l */
/* 80C0C380  38 80 00 01 */	li r4, 1
/* 80C0C384  4B FF FB B1 */	bl calcCatchPos__11daObj_GrA_cFfi
/* 80C0C388  A0 7F 0A 48 */	lhz r3, 0xa48(r31)
/* 80C0C38C  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80C0C390  41 82 00 20 */	beq lbl_80C0C3B0
/* 80C0C394  7F E3 FB 78 */	mr r3, r31
/* 80C0C398  38 80 00 00 */	li r4, 0
/* 80C0C39C  48 00 00 45 */	bl initCrazyCatch__11daObj_GrA_cFi
/* 80C0C3A0  A0 1F 0A 48 */	lhz r0, 0xa48(r31)
/* 80C0C3A4  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80C0C3A8  B0 1F 0A 48 */	sth r0, 0xa48(r31)
/* 80C0C3AC  48 00 00 20 */	b lbl_80C0C3CC
lbl_80C0C3B0:
/* 80C0C3B0  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 80C0C3B4  41 82 00 18 */	beq lbl_80C0C3CC
/* 80C0C3B8  7F E3 FB 78 */	mr r3, r31
/* 80C0C3BC  48 00 04 91 */	bl initCrazyAttack__11daObj_GrA_cFv
/* 80C0C3C0  A0 1F 0A 48 */	lhz r0, 0xa48(r31)
/* 80C0C3C4  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80C0C3C8  B0 1F 0A 48 */	sth r0, 0xa48(r31)
lbl_80C0C3CC:
/* 80C0C3CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C0C3D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C0C3D4  7C 08 03 A6 */	mtlr r0
/* 80C0C3D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C0C3DC  4E 80 00 20 */	blr 
