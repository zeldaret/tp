lbl_80B81CC8:
/* 80B81CC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B81CCC  7C 08 02 A6 */	mflr r0
/* 80B81CD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B81CD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B81CD8  7C 7F 1B 78 */	mr r31, r3
/* 80B81CDC  88 03 14 E9 */	lbz r0, 0x14e9(r3)
/* 80B81CE0  28 00 00 00 */	cmplwi r0, 0
/* 80B81CE4  41 82 00 6C */	beq lbl_80B81D50
/* 80B81CE8  88 1F 15 93 */	lbz r0, 0x1593(r31)
/* 80B81CEC  28 00 00 00 */	cmplwi r0, 0
/* 80B81CF0  41 82 00 28 */	beq lbl_80B81D18
/* 80B81CF4  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80B81CF8  88 04 00 11 */	lbz r0, 0x11(r4)
/* 80B81CFC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80B81D00  41 82 00 50 */	beq lbl_80B81D50
/* 80B81D04  4B FF FC 15 */	bl turnSwimInit__11daNpc_zrA_cFv
/* 80B81D08  7F E3 FB 78 */	mr r3, r31
/* 80B81D0C  4B FF FD 0D */	bl turnSwim__11daNpc_zrA_cFv
/* 80B81D10  38 60 00 01 */	li r3, 1
/* 80B81D14  48 00 00 40 */	b lbl_80B81D54
lbl_80B81D18:
/* 80B81D18  88 1F 15 92 */	lbz r0, 0x1592(r31)
/* 80B81D1C  28 00 00 00 */	cmplwi r0, 0
/* 80B81D20  40 82 00 30 */	bne lbl_80B81D50
/* 80B81D24  38 60 00 06 */	li r3, 6
/* 80B81D28  38 80 00 06 */	li r4, 6
/* 80B81D2C  4B FF D9 B9 */	bl func_80B7F6E4
/* 80B81D30  98 7F 15 92 */	stb r3, 0x1592(r31)
/* 80B81D34  4B 6E 5B 39 */	bl cM_rnd__Fv
/* 80B81D38  3C 60 80 B9 */	lis r3, lit_6507@ha /* 0x80B8CBA4@ha */
/* 80B81D3C  C0 03 CB A4 */	lfs f0, lit_6507@l(r3)  /* 0x80B8CBA4@l */
/* 80B81D40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B81D44  40 80 00 0C */	bge lbl_80B81D50
/* 80B81D48  38 00 00 01 */	li r0, 1
/* 80B81D4C  98 1F 15 93 */	stb r0, 0x1593(r31)
lbl_80B81D50:
/* 80B81D50  38 60 00 00 */	li r3, 0
lbl_80B81D54:
/* 80B81D54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B81D58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B81D5C  7C 08 03 A6 */	mtlr r0
/* 80B81D60  38 21 00 10 */	addi r1, r1, 0x10
/* 80B81D64  4E 80 00 20 */	blr 
