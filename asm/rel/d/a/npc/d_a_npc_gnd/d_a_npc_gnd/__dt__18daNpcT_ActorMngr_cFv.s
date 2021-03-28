lbl_809BDC50:
/* 809BDC50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BDC54  7C 08 02 A6 */	mflr r0
/* 809BDC58  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BDC5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BDC60  7C 7F 1B 79 */	or. r31, r3, r3
/* 809BDC64  41 82 00 1C */	beq lbl_809BDC80
/* 809BDC68  3C A0 80 9C */	lis r5, __vt__18daNpcT_ActorMngr_c@ha
/* 809BDC6C  38 05 E7 40 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l
/* 809BDC70  90 1F 00 04 */	stw r0, 4(r31)
/* 809BDC74  7C 80 07 35 */	extsh. r0, r4
/* 809BDC78  40 81 00 08 */	ble lbl_809BDC80
/* 809BDC7C  4B 91 10 C0 */	b __dl__FPv
lbl_809BDC80:
/* 809BDC80  7F E3 FB 78 */	mr r3, r31
/* 809BDC84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BDC88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BDC8C  7C 08 03 A6 */	mtlr r0
/* 809BDC90  38 21 00 10 */	addi r1, r1, 0x10
/* 809BDC94  4E 80 00 20 */	blr 
