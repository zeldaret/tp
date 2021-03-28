lbl_80CC3D54:
/* 80CC3D54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC3D58  7C 08 02 A6 */	mflr r0
/* 80CC3D5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC3D60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC3D64  3C 60 80 CC */	lis r3, __global_destructor_chain@ha
/* 80CC3D68  3B E3 46 48 */	addi r31, r3, __global_destructor_chain@l
/* 80CC3D6C  48 00 00 20 */	b lbl_80CC3D8C
lbl_80CC3D70:
/* 80CC3D70  80 05 00 00 */	lwz r0, 0(r5)
/* 80CC3D74  90 1F 00 00 */	stw r0, 0(r31)
/* 80CC3D78  80 65 00 08 */	lwz r3, 8(r5)
/* 80CC3D7C  38 80 FF FF */	li r4, -1
/* 80CC3D80  81 85 00 04 */	lwz r12, 4(r5)
/* 80CC3D84  7D 89 03 A6 */	mtctr r12
/* 80CC3D88  4E 80 04 21 */	bctrl 
lbl_80CC3D8C:
/* 80CC3D8C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80CC3D90  28 05 00 00 */	cmplwi r5, 0
/* 80CC3D94  40 82 FF DC */	bne lbl_80CC3D70
/* 80CC3D98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC3D9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC3DA0  7C 08 03 A6 */	mtlr r0
/* 80CC3DA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC3DA8  4E 80 00 20 */	blr 
