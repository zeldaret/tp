lbl_80023E28:
/* 80023E28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80023E2C  7C 08 02 A6 */	mflr r0
/* 80023E30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80023E34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80023E38  7C 9F 23 78 */	mr r31, r4
/* 80023E3C  88 03 00 0E */	lbz r0, 0xe(r3)
/* 80023E40  7C 00 07 75 */	extsb. r0, r0
/* 80023E44  40 82 00 3C */	bne lbl_80023E80
/* 80023E48  38 00 00 01 */	li r0, 1
/* 80023E4C  98 03 00 0E */	stb r0, 0xe(r3)
/* 80023E50  99 03 00 0F */	stb r8, 0xf(r3)
/* 80023E54  99 23 00 10 */	stb r9, 0x10(r3)
/* 80023E58  48 00 03 45 */	bl set__19dStage_startStage_cFPCcScsSc
/* 80023E5C  7F E3 FB 78 */	mr r3, r31
/* 80023E60  3C 80 80 38 */	lis r4, d_d_stage__stringBase0@ha /* 0x80378A50@ha */
/* 80023E64  38 84 8A 50 */	addi r4, r4, d_d_stage__stringBase0@l /* 0x80378A50@l */
/* 80023E68  48 34 4B 2D */	bl strcmp
/* 80023E6C  2C 03 00 00 */	cmpwi r3, 0
/* 80023E70  40 82 00 10 */	bne lbl_80023E80
/* 80023E74  38 00 00 01 */	li r0, 1
/* 80023E78  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 80023E7C  90 03 00 00 */	stw r0, 0(r3)
lbl_80023E80:
/* 80023E80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80023E84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80023E88  7C 08 03 A6 */	mtlr r0
/* 80023E8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80023E90  4E 80 00 20 */	blr 
