lbl_806D1214:
/* 806D1214  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D1218  7C 08 02 A6 */	mflr r0
/* 806D121C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D1220  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806D1224  3C 60 80 6D */	lis r3, __global_destructor_chain@ha
/* 806D1228  3B E3 7E 70 */	addi r31, r3, __global_destructor_chain@l
/* 806D122C  48 00 00 20 */	b lbl_806D124C
lbl_806D1230:
/* 806D1230  80 05 00 00 */	lwz r0, 0(r5)
/* 806D1234  90 1F 00 00 */	stw r0, 0(r31)
/* 806D1238  80 65 00 08 */	lwz r3, 8(r5)
/* 806D123C  38 80 FF FF */	li r4, -1
/* 806D1240  81 85 00 04 */	lwz r12, 4(r5)
/* 806D1244  7D 89 03 A6 */	mtctr r12
/* 806D1248  4E 80 04 21 */	bctrl 
lbl_806D124C:
/* 806D124C  80 BF 00 00 */	lwz r5, 0(r31)
/* 806D1250  28 05 00 00 */	cmplwi r5, 0
/* 806D1254  40 82 FF DC */	bne lbl_806D1230
/* 806D1258  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806D125C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D1260  7C 08 03 A6 */	mtlr r0
/* 806D1264  38 21 00 10 */	addi r1, r1, 0x10
/* 806D1268  4E 80 00 20 */	blr 
