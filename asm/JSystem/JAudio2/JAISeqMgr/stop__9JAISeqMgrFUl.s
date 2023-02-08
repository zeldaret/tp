lbl_802A1E3C:
/* 802A1E3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A1E40  7C 08 02 A6 */	mflr r0
/* 802A1E44  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A1E48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A1E4C  93 C1 00 08 */	stw r30, 8(r1)
/* 802A1E50  7C 9E 23 78 */	mr r30, r4
/* 802A1E54  83 E3 00 64 */	lwz r31, 0x64(r3)
/* 802A1E58  48 00 00 14 */	b lbl_802A1E6C
lbl_802A1E5C:
/* 802A1E5C  80 7F 00 00 */	lwz r3, 0(r31)
/* 802A1E60  7F C4 F3 78 */	mr r4, r30
/* 802A1E64  48 00 06 79 */	bl stop__8JAISoundFUl
/* 802A1E68  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_802A1E6C:
/* 802A1E6C  28 1F 00 00 */	cmplwi r31, 0
/* 802A1E70  40 82 FF EC */	bne lbl_802A1E5C
/* 802A1E74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A1E78  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A1E7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A1E80  7C 08 03 A6 */	mtlr r0
/* 802A1E84  38 21 00 10 */	addi r1, r1, 0x10
/* 802A1E88  4E 80 00 20 */	blr 
