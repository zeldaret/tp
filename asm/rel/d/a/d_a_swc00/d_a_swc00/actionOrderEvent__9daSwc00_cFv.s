lbl_805A1A28:
/* 805A1A28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A1A2C  7C 08 02 A6 */	mflr r0
/* 805A1A30  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A1A34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A1A38  7C 7F 1B 78 */	mr r31, r3
/* 805A1A3C  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 805A1A40  28 00 00 02 */	cmplwi r0, 2
/* 805A1A44  40 82 00 10 */	bne lbl_805A1A54
/* 805A1A48  38 00 00 02 */	li r0, 2
/* 805A1A4C  98 1F 05 82 */	stb r0, 0x582(r31)
/* 805A1A50  48 00 00 30 */	b lbl_805A1A80
lbl_805A1A54:
/* 805A1A54  A8 9F 05 80 */	lha r4, 0x580(r31)
/* 805A1A58  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805A1A5C  54 05 46 3E */	srwi r5, r0, 0x18
/* 805A1A60  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 805A1A64  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 805A1A68  38 E0 00 00 */	li r7, 0
/* 805A1A6C  39 00 00 01 */	li r8, 1
/* 805A1A70  4B A7 9C 0D */	bl fopAcM_orderOtherEventId__FP10fopAc_ac_csUcUsUsUs
/* 805A1A74  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 805A1A78  60 00 00 02 */	ori r0, r0, 2
/* 805A1A7C  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_805A1A80:
/* 805A1A80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A1A84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A1A88  7C 08 03 A6 */	mtlr r0
/* 805A1A8C  38 21 00 10 */	addi r1, r1, 0x10
/* 805A1A90  4E 80 00 20 */	blr 
