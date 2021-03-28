lbl_80A0E1F4:
/* 80A0E1F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0E1F8  7C 08 02 A6 */	mflr r0
/* 80A0E1FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0E200  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A0E204  3C 60 80 A1 */	lis r3, __global_destructor_chain@ha
/* 80A0E208  3B E3 45 F0 */	addi r31, r3, __global_destructor_chain@l
/* 80A0E20C  48 00 00 20 */	b lbl_80A0E22C
lbl_80A0E210:
/* 80A0E210  80 05 00 00 */	lwz r0, 0(r5)
/* 80A0E214  90 1F 00 00 */	stw r0, 0(r31)
/* 80A0E218  80 65 00 08 */	lwz r3, 8(r5)
/* 80A0E21C  38 80 FF FF */	li r4, -1
/* 80A0E220  81 85 00 04 */	lwz r12, 4(r5)
/* 80A0E224  7D 89 03 A6 */	mtctr r12
/* 80A0E228  4E 80 04 21 */	bctrl 
lbl_80A0E22C:
/* 80A0E22C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80A0E230  28 05 00 00 */	cmplwi r5, 0
/* 80A0E234  40 82 FF DC */	bne lbl_80A0E210
/* 80A0E238  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A0E23C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0E240  7C 08 03 A6 */	mtlr r0
/* 80A0E244  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0E248  4E 80 00 20 */	blr 
