lbl_802DB730:
/* 802DB730  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DB734  7C 08 02 A6 */	mflr r0
/* 802DB738  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DB73C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DB740  93 C1 00 08 */	stw r30, 8(r1)
/* 802DB744  7C 7E 1B 79 */	or. r30, r3, r3
/* 802DB748  7C 9F 23 78 */	mr r31, r4
/* 802DB74C  41 82 00 28 */	beq lbl_802DB774
/* 802DB750  3C 80 80 3D */	lis r4, __vt__9JKRDecomp@ha
/* 802DB754  38 04 C4 A0 */	addi r0, r4, __vt__9JKRDecomp@l
/* 802DB758  90 1E 00 00 */	stw r0, 0(r30)
/* 802DB75C  38 80 00 00 */	li r4, 0
/* 802DB760  4B FF 5F F9 */	bl __dt__9JKRThreadFv
/* 802DB764  7F E0 07 35 */	extsh. r0, r31
/* 802DB768  40 81 00 0C */	ble lbl_802DB774
/* 802DB76C  7F C3 F3 78 */	mr r3, r30
/* 802DB770  4B FF 35 CD */	bl __dl__FPv
lbl_802DB774:
/* 802DB774  7F C3 F3 78 */	mr r3, r30
/* 802DB778  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DB77C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DB780  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DB784  7C 08 03 A6 */	mtlr r0
/* 802DB788  38 21 00 10 */	addi r1, r1, 0x10
/* 802DB78C  4E 80 00 20 */	blr 
