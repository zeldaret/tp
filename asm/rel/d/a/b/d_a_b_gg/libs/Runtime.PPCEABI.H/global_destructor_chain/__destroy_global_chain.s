lbl_805DE3B4:
/* 805DE3B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DE3B8  7C 08 02 A6 */	mflr r0
/* 805DE3BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DE3C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DE3C4  3C 60 80 5F */	lis r3, __global_destructor_chain@ha
/* 805DE3C8  3B E3 D6 B8 */	addi r31, r3, __global_destructor_chain@l
/* 805DE3CC  48 00 00 20 */	b lbl_805DE3EC
lbl_805DE3D0:
/* 805DE3D0  80 05 00 00 */	lwz r0, 0(r5)
/* 805DE3D4  90 1F 00 00 */	stw r0, 0(r31)
/* 805DE3D8  80 65 00 08 */	lwz r3, 8(r5)
/* 805DE3DC  38 80 FF FF */	li r4, -1
/* 805DE3E0  81 85 00 04 */	lwz r12, 4(r5)
/* 805DE3E4  7D 89 03 A6 */	mtctr r12
/* 805DE3E8  4E 80 04 21 */	bctrl 
lbl_805DE3EC:
/* 805DE3EC  80 BF 00 00 */	lwz r5, 0(r31)
/* 805DE3F0  28 05 00 00 */	cmplwi r5, 0
/* 805DE3F4  40 82 FF DC */	bne lbl_805DE3D0
/* 805DE3F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DE3FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DE400  7C 08 03 A6 */	mtlr r0
/* 805DE404  38 21 00 10 */	addi r1, r1, 0x10
/* 805DE408  4E 80 00 20 */	blr 
