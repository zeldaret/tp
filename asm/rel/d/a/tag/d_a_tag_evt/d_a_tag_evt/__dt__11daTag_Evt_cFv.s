lbl_8048C304:
/* 8048C304  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048C308  7C 08 02 A6 */	mflr r0
/* 8048C30C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048C310  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048C314  93 C1 00 08 */	stw r30, 8(r1)
/* 8048C318  7C 7E 1B 79 */	or. r30, r3, r3
/* 8048C31C  7C 9F 23 78 */	mr r31, r4
/* 8048C320  41 82 00 38 */	beq lbl_8048C358
/* 8048C324  3C 60 80 49 */	lis r3, __vt__11daTag_Evt_c@ha
/* 8048C328  38 03 C4 64 */	addi r0, r3, __vt__11daTag_Evt_c@l
/* 8048C32C  90 1E 05 E8 */	stw r0, 0x5e8(r30)
/* 8048C330  38 7E 05 78 */	addi r3, r30, 0x578
/* 8048C334  38 80 FF FF */	li r4, -1
/* 8048C338  4B DB DC 10 */	b __dt__10dMsgFlow_cFv
/* 8048C33C  7F C3 F3 78 */	mr r3, r30
/* 8048C340  38 80 00 00 */	li r4, 0
/* 8048C344  4B B8 C9 48 */	b __dt__10fopAc_ac_cFv
/* 8048C348  7F E0 07 35 */	extsh. r0, r31
/* 8048C34C  40 81 00 0C */	ble lbl_8048C358
/* 8048C350  7F C3 F3 78 */	mr r3, r30
/* 8048C354  4B E4 29 E8 */	b __dl__FPv
lbl_8048C358:
/* 8048C358  7F C3 F3 78 */	mr r3, r30
/* 8048C35C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048C360  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048C364  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048C368  7C 08 03 A6 */	mtlr r0
/* 8048C36C  38 21 00 10 */	addi r1, r1, 0x10
/* 8048C370  4E 80 00 20 */	blr 
