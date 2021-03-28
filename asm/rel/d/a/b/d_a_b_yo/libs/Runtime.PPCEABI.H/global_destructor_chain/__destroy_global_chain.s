lbl_8062F414:
/* 8062F414  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062F418  7C 08 02 A6 */	mflr r0
/* 8062F41C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062F420  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062F424  3C 60 80 64 */	lis r3, __global_destructor_chain@ha
/* 8062F428  3B E3 9F 30 */	addi r31, r3, __global_destructor_chain@l
/* 8062F42C  48 00 00 20 */	b lbl_8062F44C
lbl_8062F430:
/* 8062F430  80 05 00 00 */	lwz r0, 0(r5)
/* 8062F434  90 1F 00 00 */	stw r0, 0(r31)
/* 8062F438  80 65 00 08 */	lwz r3, 8(r5)
/* 8062F43C  38 80 FF FF */	li r4, -1
/* 8062F440  81 85 00 04 */	lwz r12, 4(r5)
/* 8062F444  7D 89 03 A6 */	mtctr r12
/* 8062F448  4E 80 04 21 */	bctrl 
lbl_8062F44C:
/* 8062F44C  80 BF 00 00 */	lwz r5, 0(r31)
/* 8062F450  28 05 00 00 */	cmplwi r5, 0
/* 8062F454  40 82 FF DC */	bne lbl_8062F430
/* 8062F458  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062F45C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062F460  7C 08 03 A6 */	mtlr r0
/* 8062F464  38 21 00 10 */	addi r1, r1, 0x10
/* 8062F468  4E 80 00 20 */	blr 
