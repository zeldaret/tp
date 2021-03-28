lbl_8097C6B8:
/* 8097C6B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097C6BC  7C 08 02 A6 */	mflr r0
/* 8097C6C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097C6C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097C6C8  7C 7F 1B 78 */	mr r31, r3
/* 8097C6CC  88 03 0B 94 */	lbz r0, 0xb94(r3)
/* 8097C6D0  28 00 00 00 */	cmplwi r0, 0
/* 8097C6D4  41 82 00 48 */	beq lbl_8097C71C
/* 8097C6D8  38 80 00 32 */	li r4, 0x32
/* 8097C6DC  80 BF 0B 58 */	lwz r5, 0xb58(r31)
/* 8097C6E0  4B 7D BA 10 */	b getAnmP__10daNpcCd2_cFii
/* 8097C6E4  7C 64 1B 78 */	mr r4, r3
/* 8097C6E8  7F E3 FB 78 */	mr r3, r31
/* 8097C6EC  3C A0 80 98 */	lis r5, lit_4091@ha
/* 8097C6F0  C0 25 F5 44 */	lfs f1, lit_4091@l(r5)
/* 8097C6F4  3C A0 80 98 */	lis r5, lit_4092@ha
/* 8097C6F8  C0 45 F5 48 */	lfs f2, lit_4092@l(r5)
/* 8097C6FC  38 A0 00 02 */	li r5, 2
/* 8097C700  38 C0 00 00 */	li r6, 0
/* 8097C704  38 E0 FF FF */	li r7, -1
/* 8097C708  4B 7D C7 F8 */	b setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 8097C70C  38 00 00 01 */	li r0, 1
/* 8097C710  90 1F 0A A0 */	stw r0, 0xaa0(r31)
/* 8097C714  38 00 00 00 */	li r0, 0
/* 8097C718  98 1F 0B 94 */	stb r0, 0xb94(r31)
lbl_8097C71C:
/* 8097C71C  80 1F 0A A0 */	lwz r0, 0xaa0(r31)
/* 8097C720  7C 00 00 34 */	cntlzw r0, r0
/* 8097C724  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8097C728  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097C72C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097C730  7C 08 03 A6 */	mtlr r0
/* 8097C734  38 21 00 10 */	addi r1, r1, 0x10
/* 8097C738  4E 80 00 20 */	blr 
