lbl_80A6EEFC:
/* 80A6EEFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6EF00  7C 08 02 A6 */	mflr r0
/* 80A6EF04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6EF08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A6EF0C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A6EF10  41 82 00 1C */	beq lbl_80A6EF2C
/* 80A6EF14  3C A0 80 A7 */	lis r5, __vt__18daNpcT_ActorMngr_c@ha
/* 80A6EF18  38 05 0A 4C */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l
/* 80A6EF1C  90 1F 00 04 */	stw r0, 4(r31)
/* 80A6EF20  7C 80 07 35 */	extsh. r0, r4
/* 80A6EF24  40 81 00 08 */	ble lbl_80A6EF2C
/* 80A6EF28  4B 85 FE 14 */	b __dl__FPv
lbl_80A6EF2C:
/* 80A6EF2C  7F E3 FB 78 */	mr r3, r31
/* 80A6EF30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A6EF34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6EF38  7C 08 03 A6 */	mtlr r0
/* 80A6EF3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6EF40  4E 80 00 20 */	blr 
