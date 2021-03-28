lbl_805EE6E0:
/* 805EE6E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EE6E4  7C 08 02 A6 */	mflr r0
/* 805EE6E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EE6EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EE6F0  7C 7F 1B 78 */	mr r31, r3
/* 805EE6F4  4B A2 A5 EC */	b fopAc_IsActor__FPv
/* 805EE6F8  2C 03 00 00 */	cmpwi r3, 0
/* 805EE6FC  41 82 00 24 */	beq lbl_805EE720
/* 805EE700  A8 1F 00 08 */	lha r0, 8(r31)
/* 805EE704  2C 00 01 BB */	cmpwi r0, 0x1bb
/* 805EE708  40 82 00 18 */	bne lbl_805EE720
/* 805EE70C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805EE710  28 00 00 03 */	cmplwi r0, 3
/* 805EE714  40 82 00 0C */	bne lbl_805EE720
/* 805EE718  7F E3 FB 78 */	mr r3, r31
/* 805EE71C  48 00 00 08 */	b lbl_805EE724
lbl_805EE720:
/* 805EE720  38 60 00 00 */	li r3, 0
lbl_805EE724:
/* 805EE724  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EE728  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EE72C  7C 08 03 A6 */	mtlr r0
/* 805EE730  38 21 00 10 */	addi r1, r1, 0x10
/* 805EE734  4E 80 00 20 */	blr 
