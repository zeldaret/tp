lbl_80038C6C:
/* 80038C6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80038C70  7C 08 02 A6 */	mflr r0
/* 80038C74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80038C78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80038C7C  7C 9F 23 78 */	mr r31, r4
/* 80038C80  4B FF FE 11 */	bl getView__Fv
/* 80038C84  28 03 00 00 */	cmplwi r3, 0
/* 80038C88  40 82 00 1C */	bne lbl_80038CA4
/* 80038C8C  C0 22 83 B0 */	lfs f1, lit_4040(r2)
/* 80038C90  D0 3F 00 00 */	stfs f1, 0(r31)
/* 80038C94  C0 02 83 B4 */	lfs f0, lit_4041(r2)
/* 80038C98  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80038C9C  D0 3F 00 08 */	stfs f1, 8(r31)
/* 80038CA0  48 00 00 1C */	b lbl_80038CBC
lbl_80038CA4:
/* 80038CA4  C0 03 00 F0 */	lfs f0, 0xf0(r3)
/* 80038CA8  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80038CAC  C0 03 00 F4 */	lfs f0, 0xf4(r3)
/* 80038CB0  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80038CB4  C0 03 00 F8 */	lfs f0, 0xf8(r3)
/* 80038CB8  D0 1F 00 08 */	stfs f0, 8(r31)
lbl_80038CBC:
/* 80038CBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80038CC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80038CC4  7C 08 03 A6 */	mtlr r0
/* 80038CC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80038CCC  4E 80 00 20 */	blr 
