lbl_802BDF48:
/* 802BDF48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BDF4C  7C 08 02 A6 */	mflr r0
/* 802BDF50  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BDF54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802BDF58  93 C1 00 08 */	stw r30, 8(r1)
/* 802BDF5C  7C 7E 1B 79 */	or. r30, r3, r3
/* 802BDF60  7C 9F 23 78 */	mr r31, r4
/* 802BDF64  41 82 00 30 */	beq lbl_802BDF94
/* 802BDF68  3C 80 80 3D */	lis r4, __vt__14Z2SoundObjBase@ha
/* 802BDF6C  38 04 AD 50 */	addi r0, r4, __vt__14Z2SoundObjBase@l
/* 802BDF70  90 1E 00 10 */	stw r0, 0x10(r30)
/* 802BDF74  48 00 00 85 */	bl deleteObject__14Z2SoundObjBaseFv
/* 802BDF78  7F C3 F3 78 */	mr r3, r30
/* 802BDF7C  38 80 00 00 */	li r4, 0
/* 802BDF80  4B FE D1 35 */	bl __dt__14Z2SoundHandlesFv
/* 802BDF84  7F E0 07 35 */	extsh. r0, r31
/* 802BDF88  40 81 00 0C */	ble lbl_802BDF94
/* 802BDF8C  7F C3 F3 78 */	mr r3, r30
/* 802BDF90  48 01 0D AD */	bl __dl__FPv
lbl_802BDF94:
/* 802BDF94  7F C3 F3 78 */	mr r3, r30
/* 802BDF98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802BDF9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802BDFA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BDFA4  7C 08 03 A6 */	mtlr r0
/* 802BDFA8  38 21 00 10 */	addi r1, r1, 0x10
/* 802BDFAC  4E 80 00 20 */	blr 
