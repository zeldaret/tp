lbl_80082F98:
/* 80082F98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80082F9C  7C 08 02 A6 */	mflr r0
/* 80082FA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80082FA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80082FA8  93 C1 00 08 */	stw r30, 8(r1)
/* 80082FAC  7C 7E 1B 78 */	mr r30, r3
/* 80082FB0  7C BF 2B 78 */	mr r31, r5
/* 80082FB4  38 A0 00 63 */	li r5, 0x63
/* 80082FB8  38 C0 00 00 */	li r6, 0
/* 80082FBC  4B FF 6F 7D */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80082FC0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80082FC4  41 82 00 0C */	beq lbl_80082FD0
/* 80082FC8  38 60 00 01 */	li r3, 1
/* 80082FCC  48 00 00 3C */	b lbl_80083008
lbl_80082FD0:
/* 80082FD0  9B FE 00 C4 */	stb r31, 0xc4(r30)
/* 80082FD4  88 1E 00 C4 */	lbz r0, 0xc4(r30)
/* 80082FD8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80082FDC  41 82 00 0C */	beq lbl_80082FE8
/* 80082FE0  38 60 00 00 */	li r3, 0
/* 80082FE4  48 00 00 24 */	b lbl_80083008
lbl_80082FE8:
/* 80082FE8  80 7E 00 A0 */	lwz r3, 0xa0(r30)
/* 80082FEC  80 03 00 00 */	lwz r0, 0(r3)
/* 80082FF0  1C 60 00 0C */	mulli r3, r0, 0xc
/* 80082FF4  48 24 BC D1 */	bl __nwa__FUl
/* 80082FF8  90 7E 00 C0 */	stw r3, 0xc0(r30)
/* 80082FFC  80 1E 00 C0 */	lwz r0, 0xc0(r30)
/* 80083000  7C 00 00 34 */	cntlzw r0, r0
/* 80083004  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
lbl_80083008:
/* 80083008  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8008300C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80083010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80083014  7C 08 03 A6 */	mtlr r0
/* 80083018  38 21 00 10 */	addi r1, r1, 0x10
/* 8008301C  4E 80 00 20 */	blr 
