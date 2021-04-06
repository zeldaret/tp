lbl_80529B44:
/* 80529B44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80529B48  7C 08 02 A6 */	mflr r0
/* 80529B4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80529B50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80529B54  7C 7F 1B 78 */	mr r31, r3
/* 80529B58  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80529B5C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80529B60  40 82 00 1C */	bne lbl_80529B7C
/* 80529B64  28 1F 00 00 */	cmplwi r31, 0
/* 80529B68  41 82 00 08 */	beq lbl_80529B70
/* 80529B6C  4B AE EF F9 */	bl __ct__10fopAc_ac_cFv
lbl_80529B70:
/* 80529B70  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80529B74  60 00 00 08 */	ori r0, r0, 8
/* 80529B78  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80529B7C:
/* 80529B7C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80529B80  98 1F 05 69 */	stb r0, 0x569(r31)
/* 80529B84  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80529B88  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80529B8C  98 1F 05 68 */	stb r0, 0x568(r31)
/* 80529B90  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80529B94  B0 1F 05 6A */	sth r0, 0x56a(r31)
/* 80529B98  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80529B9C  B0 1F 05 6C */	sth r0, 0x56c(r31)
/* 80529BA0  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80529BA4  98 1F 05 6E */	stb r0, 0x56e(r31)
/* 80529BA8  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80529BAC  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80529BB0  98 1F 05 6F */	stb r0, 0x56f(r31)
/* 80529BB4  88 7F 04 BA */	lbz r3, 0x4ba(r31)
/* 80529BB8  7C 60 07 74 */	extsb r0, r3
/* 80529BBC  2C 00 FF FF */	cmpwi r0, -1
/* 80529BC0  41 82 00 08 */	beq lbl_80529BC8
/* 80529BC4  98 7F 05 68 */	stb r3, 0x568(r31)
lbl_80529BC8:
/* 80529BC8  38 60 00 04 */	li r3, 4
/* 80529BCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80529BD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80529BD4  7C 08 03 A6 */	mtlr r0
/* 80529BD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80529BDC  4E 80 00 20 */	blr 
