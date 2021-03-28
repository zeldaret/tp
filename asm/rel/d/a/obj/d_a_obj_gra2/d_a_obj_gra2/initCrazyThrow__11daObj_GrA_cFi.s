lbl_80C0C5F0:
/* 80C0C5F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C0C5F4  7C 08 02 A6 */	mflr r0
/* 80C0C5F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C0C5FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C0C600  7C 7F 1B 78 */	mr r31, r3
/* 80C0C604  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 80C0C608  30 03 FF FF */	addic r0, r3, -1
/* 80C0C60C  7C 00 19 10 */	subfe r0, r0, r3
/* 80C0C610  98 1F 1F FC */	stb r0, 0x1ffc(r31)
/* 80C0C614  38 00 00 00 */	li r0, 0
/* 80C0C618  98 1F 1F F4 */	stb r0, 0x1ff4(r31)
/* 80C0C61C  38 00 00 03 */	li r0, 3
/* 80C0C620  90 1F 1F F0 */	stw r0, 0x1ff0(r31)
/* 80C0C624  3C 60 80 C1 */	lis r3, lit_4333@ha
/* 80C0C628  C0 03 FB 98 */	lfs f0, lit_4333@l(r3)
/* 80C0C62C  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80C0C630  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80C0C634  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80C0C638  88 1F 1F E8 */	lbz r0, 0x1fe8(r31)
/* 80C0C63C  7C 00 07 75 */	extsb. r0, r0
/* 80C0C640  40 82 00 0C */	bne lbl_80C0C64C
/* 80C0C644  38 00 00 01 */	li r0, 1
/* 80C0C648  B0 1F 20 54 */	sth r0, 0x2054(r31)
lbl_80C0C64C:
/* 80C0C64C  38 00 00 22 */	li r0, 0x22
/* 80C0C650  90 1F 1F F8 */	stw r0, 0x1ff8(r31)
/* 80C0C654  7F E3 FB 78 */	mr r3, r31
/* 80C0C658  3C 80 80 C1 */	lis r4, lit_9280@ha
/* 80C0C65C  C0 24 FD 80 */	lfs f1, lit_9280@l(r4)
/* 80C0C660  38 80 00 02 */	li r4, 2
/* 80C0C664  4B FF F8 D1 */	bl calcCatchPos__11daObj_GrA_cFfi
/* 80C0C668  38 00 00 00 */	li r0, 0
/* 80C0C66C  98 1F 20 04 */	stb r0, 0x2004(r31)
/* 80C0C670  3C 60 80 C1 */	lis r3, lit_4333@ha
/* 80C0C674  C0 03 FB 98 */	lfs f0, lit_4333@l(r3)
/* 80C0C678  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80C0C67C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C0C680  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C0C684  7C 08 03 A6 */	mtlr r0
/* 80C0C688  38 21 00 10 */	addi r1, r1, 0x10
/* 80C0C68C  4E 80 00 20 */	blr 
