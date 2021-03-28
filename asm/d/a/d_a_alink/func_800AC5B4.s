lbl_800AC5B4:
/* 800AC5B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800AC5B8  7C 08 02 A6 */	mflr r0
/* 800AC5BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AC5C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800AC5C4  93 C1 00 08 */	stw r30, 8(r1)
/* 800AC5C8  3B E0 00 00 */	li r31, 0
/* 800AC5CC  A0 03 1F 70 */	lhz r0, 0x1f70(r3)
/* 800AC5D0  28 00 FF FF */	cmplwi r0, 0xffff
/* 800AC5D4  40 82 00 20 */	bne lbl_800AC5F4
/* 800AC5D8  A3 C3 1F 6C */	lhz r30, 0x1f6c(r3)
/* 800AC5DC  4B FF FE 75 */	bl getMainBckData__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800AC5E0  A0 63 00 00 */	lhz r3, 0(r3)
/* 800AC5E4  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 800AC5E8  7C 00 18 40 */	cmplw r0, r3
/* 800AC5EC  40 82 00 08 */	bne lbl_800AC5F4
/* 800AC5F0  3B E0 00 01 */	li r31, 1
lbl_800AC5F4:
/* 800AC5F4  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800AC5F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800AC5FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800AC600  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AC604  7C 08 03 A6 */	mtlr r0
/* 800AC608  38 21 00 10 */	addi r1, r1, 0x10
/* 800AC60C  4E 80 00 20 */	blr 
