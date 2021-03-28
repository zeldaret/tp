lbl_8097BD00:
/* 8097BD00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097BD04  7C 08 02 A6 */	mflr r0
/* 8097BD08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097BD0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097BD10  7C 7F 1B 78 */	mr r31, r3
/* 8097BD14  88 03 0B 94 */	lbz r0, 0xb94(r3)
/* 8097BD18  28 00 00 00 */	cmplwi r0, 0
/* 8097BD1C  41 82 00 48 */	beq lbl_8097BD64
/* 8097BD20  38 80 00 12 */	li r4, 0x12
/* 8097BD24  80 BF 0B 58 */	lwz r5, 0xb58(r31)
/* 8097BD28  4B 7D C3 C8 */	b getAnmP__10daNpcCd2_cFii
/* 8097BD2C  7C 64 1B 78 */	mr r4, r3
/* 8097BD30  7F E3 FB 78 */	mr r3, r31
/* 8097BD34  3C A0 80 98 */	lis r5, lit_4091@ha
/* 8097BD38  C0 25 F5 44 */	lfs f1, lit_4091@l(r5)
/* 8097BD3C  3C A0 80 98 */	lis r5, lit_4092@ha
/* 8097BD40  C0 45 F5 48 */	lfs f2, lit_4092@l(r5)
/* 8097BD44  38 A0 00 02 */	li r5, 2
/* 8097BD48  38 C0 00 00 */	li r6, 0
/* 8097BD4C  38 E0 FF FF */	li r7, -1
/* 8097BD50  4B 7D D1 B0 */	b setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 8097BD54  38 00 00 01 */	li r0, 1
/* 8097BD58  90 1F 0A A0 */	stw r0, 0xaa0(r31)
/* 8097BD5C  38 00 00 00 */	li r0, 0
/* 8097BD60  98 1F 0B 94 */	stb r0, 0xb94(r31)
lbl_8097BD64:
/* 8097BD64  80 1F 0A A0 */	lwz r0, 0xaa0(r31)
/* 8097BD68  7C 00 00 34 */	cntlzw r0, r0
/* 8097BD6C  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8097BD70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097BD74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097BD78  7C 08 03 A6 */	mtlr r0
/* 8097BD7C  38 21 00 10 */	addi r1, r1, 0x10
/* 8097BD80  4E 80 00 20 */	blr 
