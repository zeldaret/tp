lbl_8035E08C:
/* 8035E08C  7C 08 02 A6 */	mflr r0
/* 8035E090  90 01 00 04 */	stw r0, 4(r1)
/* 8035E094  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8035E098  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8035E09C  83 E1 00 38 */	lwz r31, 0x38(r1)
/* 8035E0A0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8035E0A4  7C 7E 1B 78 */	mr r30, r3
/* 8035E0A8  4B FF FD 99 */	bl GXInitTexObj
/* 8035E0AC  88 1E 00 1F */	lbz r0, 0x1f(r30)
/* 8035E0B0  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8035E0B4  98 1E 00 1F */	stb r0, 0x1f(r30)
/* 8035E0B8  93 FE 00 18 */	stw r31, 0x18(r30)
/* 8035E0BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8035E0C0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8035E0C4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8035E0C8  38 21 00 30 */	addi r1, r1, 0x30
/* 8035E0CC  7C 08 03 A6 */	mtlr r0
/* 8035E0D0  4E 80 00 20 */	blr 
