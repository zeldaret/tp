lbl_80D0DC4C:
/* 80D0DC4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0DC50  7C 08 02 A6 */	mflr r0
/* 80D0DC54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0DC58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0DC5C  7C 7F 1B 78 */	mr r31, r3
/* 80D0DC60  4B FF FE 69 */	bl action__13daObjThDoor_cFv
/* 80D0DC64  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D0DC68  54 00 47 FF */	rlwinm. r0, r0, 8, 0x1f, 0x1f
/* 80D0DC6C  41 82 00 48 */	beq lbl_80D0DCB4
/* 80D0DC70  7F E3 FB 78 */	mr r3, r31
/* 80D0DC74  48 00 03 F9 */	bl checkArea__13daObjThDoor_cFv
/* 80D0DC78  2C 03 00 00 */	cmpwi r3, 0
/* 80D0DC7C  41 82 00 38 */	beq lbl_80D0DCB4
/* 80D0DC80  38 00 00 01 */	li r0, 1
/* 80D0DC84  98 1F 05 AC */	stb r0, 0x5ac(r31)
/* 80D0DC88  7F E3 FB 78 */	mr r3, r31
/* 80D0DC8C  A8 9F 05 AE */	lha r4, 0x5ae(r31)
/* 80D0DC90  88 BF 05 AD */	lbz r5, 0x5ad(r31)
/* 80D0DC94  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80D0DC98  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80D0DC9C  38 E0 00 00 */	li r7, 0
/* 80D0DCA0  39 00 00 01 */	li r8, 1
/* 80D0DCA4  4B 30 D9 D8 */	b fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 80D0DCA8  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80D0DCAC  60 00 00 02 */	ori r0, r0, 2
/* 80D0DCB0  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80D0DCB4:
/* 80D0DCB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0DCB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0DCBC  7C 08 03 A6 */	mtlr r0
/* 80D0DCC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0DCC4  4E 80 00 20 */	blr 
