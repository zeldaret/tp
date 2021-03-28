lbl_805A09F4:
/* 805A09F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A09F8  7C 08 02 A6 */	mflr r0
/* 805A09FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A0A00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A0A04  7C 7F 1B 78 */	mr r31, r3
/* 805A0A08  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 805A0A0C  3C 80 80 5A */	lis r4, stringBase0@ha
/* 805A0A10  38 84 11 E4 */	addi r4, r4, stringBase0@l
/* 805A0A14  4B A8 C5 F4 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 805A0A18  88 1F 0B 58 */	lbz r0, 0xb58(r31)
/* 805A0A1C  28 00 00 00 */	cmplwi r0, 0
/* 805A0A20  41 82 00 10 */	beq lbl_805A0A30
/* 805A0A24  38 00 00 00 */	li r0, 0
/* 805A0A28  3C 60 80 5A */	lis r3, data_805A1330@ha
/* 805A0A2C  98 03 13 30 */	stb r0, data_805A1330@l(r3)
lbl_805A0A30:
/* 805A0A30  38 60 00 01 */	li r3, 1
/* 805A0A34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A0A38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A0A3C  7C 08 03 A6 */	mtlr r0
/* 805A0A40  38 21 00 10 */	addi r1, r1, 0x10
/* 805A0A44  4E 80 00 20 */	blr 
