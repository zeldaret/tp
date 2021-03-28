lbl_80B2BF08:
/* 80B2BF08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2BF0C  7C 08 02 A6 */	mflr r0
/* 80B2BF10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2BF14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B2BF18  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B2BF1C  41 82 00 1C */	beq lbl_80B2BF38
/* 80B2BF20  3C A0 80 B3 */	lis r5, __vt__18daNpcT_ActorMngr_c@ha
/* 80B2BF24  38 05 DC 00 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l
/* 80B2BF28  90 1F 00 04 */	stw r0, 4(r31)
/* 80B2BF2C  7C 80 07 35 */	extsh. r0, r4
/* 80B2BF30  40 81 00 08 */	ble lbl_80B2BF38
/* 80B2BF34  4B 7A 2E 08 */	b __dl__FPv
lbl_80B2BF38:
/* 80B2BF38  7F E3 FB 78 */	mr r3, r31
/* 80B2BF3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B2BF40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2BF44  7C 08 03 A6 */	mtlr r0
/* 80B2BF48  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2BF4C  4E 80 00 20 */	blr 
