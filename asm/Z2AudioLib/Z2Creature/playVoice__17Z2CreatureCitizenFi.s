lbl_802C0E18:
/* 802C0E18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C0E1C  7C 08 02 A6 */	mflr r0
/* 802C0E20  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C0E24  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C0E28  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802C0E2C  7C 7E 1B 78 */	mr r30, r3
/* 802C0E30  7C 9F 23 78 */	mr r31, r4
/* 802C0E34  88 03 00 A0 */	lbz r0, 0xa0(r3)
/* 802C0E38  7C 04 07 74 */	extsb r4, r0
/* 802C0E3C  1C 64 00 06 */	mulli r3, r4, 6
/* 802C0E40  3C 03 00 05 */	addis r0, r3, 5
/* 802C0E44  7C 60 FA 14 */	add r3, r0, r31
/* 802C0E48  2C 04 00 02 */	cmpwi r4, 2
/* 802C0E4C  38 63 01 11 */	addi r3, r3, 0x111
/* 802C0E50  40 80 00 20 */	bge lbl_802C0E70
/* 802C0E54  2C 04 00 00 */	cmpwi r4, 0
/* 802C0E58  40 80 00 08 */	bge lbl_802C0E60
/* 802C0E5C  48 00 00 14 */	b lbl_802C0E70
lbl_802C0E60:
/* 802C0E60  88 1E 00 A1 */	lbz r0, 0xa1(r30)
/* 802C0E64  2C 00 00 01 */	cmpwi r0, 1
/* 802C0E68  40 82 00 08 */	bne lbl_802C0E70
/* 802C0E6C  38 63 00 03 */	addi r3, r3, 3
lbl_802C0E70:
/* 802C0E70  90 61 00 08 */	stw r3, 8(r1)
/* 802C0E74  38 7E 00 50 */	addi r3, r30, 0x50
/* 802C0E78  38 81 00 08 */	addi r4, r1, 8
/* 802C0E7C  38 A0 00 00 */	li r5, 0
/* 802C0E80  38 C0 FF FF */	li r6, -1
/* 802C0E84  81 9E 00 60 */	lwz r12, 0x60(r30)
/* 802C0E88  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802C0E8C  7D 89 03 A6 */	mtctr r12
/* 802C0E90  4E 80 04 21 */	bctrl 
/* 802C0E94  2C 1F 00 00 */	cmpwi r31, 0
/* 802C0E98  41 82 00 0C */	beq lbl_802C0EA4
/* 802C0E9C  2C 1F 00 02 */	cmpwi r31, 2
/* 802C0EA0  40 82 00 20 */	bne lbl_802C0EC0
lbl_802C0EA4:
/* 802C0EA4  88 1E 00 A2 */	lbz r0, 0xa2(r30)
/* 802C0EA8  28 00 00 00 */	cmplwi r0, 0
/* 802C0EAC  40 82 00 14 */	bne lbl_802C0EC0
/* 802C0EB0  80 6D 86 08 */	lwz r3, __OSReport_disable-0x10(r13)
/* 802C0EB4  4B FE AA AD */	bl decrCrowdSize__7Z2SeMgrFv
/* 802C0EB8  38 00 00 01 */	li r0, 1
/* 802C0EBC  98 1E 00 A2 */	stb r0, 0xa2(r30)
lbl_802C0EC0:
/* 802C0EC0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C0EC4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802C0EC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C0ECC  7C 08 03 A6 */	mtlr r0
/* 802C0ED0  38 21 00 20 */	addi r1, r1, 0x20
/* 802C0ED4  4E 80 00 20 */	blr 
